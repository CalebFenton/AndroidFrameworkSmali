.class public Lcom/android/internal/telephony/satellite/SatelliteSessionController;
.super Lcom/android/internal/telephony/StateMachine;
.source "SatelliteSessionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;,
        Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist DEFAULT_SATELLITE_STAY_AT_LISTENING_FROM_RECEIVING_MILLIS:J = 0x7530L

.field public static final blacklist DEFAULT_SATELLITE_STAY_AT_LISTENING_FROM_SENDING_MILLIS:J = 0x2bf20L

.field public static final blacklist DEMO_MODE_SATELLITE_STAY_AT_LISTENING_MILLIS:J = 0xbb8L

.field protected static final blacklist EVENT_ESOS_INACTIVITY_TIMER_TIMED_OUT:I = 0xb

.field protected static final blacklist EVENT_NB_IOT_INACTIVITY_TIMER_TIMED_OUT:I = 0x6

.field protected static final blacklist EVENT_P2P_SMS_INACTIVITY_TIMER_TIMED_OUT:I = 0xe

.field protected static final blacklist EVENT_SCREEN_OFF_INACTIVITY_TIMER_TIMED_OUT:I = 0xa

.field public static final blacklist SATELLITE_STAY_AT_LISTENING_FROM_RECEIVING_MILLIS:Ljava/lang/String; = "satellite_stay_at_listening_from_receiving_millis"

.field public static final blacklist SATELLITE_STAY_AT_LISTENING_FROM_SENDING_MILLIS:Ljava/lang/String; = "satellite_stay_at_listening_from_sending_millis"

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;


# instance fields
.field private final blacklist mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private final blacklist mConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentState:I

.field private final blacklist mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

.field private blacklist mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

.field private final blacklist mDisablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;

.field private final blacklist mEnablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

.field private final blacklist mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

.field private blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mIdleState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

.field private blacklist mIgnoreCellularServiceState:Z

.field private blacklist mInactivityStartTimestamp:J

.field private blacklist mIsBinding:Z

.field private blacklist mIsBound:Z

.field private blacklist mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

.field private blacklist mIsDemoMode:Z

.field private blacklist mIsDeviceAlignedWithSatellite:Z

.field private blacklist mIsRegisteredScreenStateChanged:Z

.field final blacklist mIsSatelliteSupported:Z

.field blacklist mIsScreenOn:Z

.field protected blacklist mIsSendingTriggeredDuringTransferringState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

.field private blacklist mLastDatagramTransferState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

.field private final blacklist mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/satellite/ISatelliteModemStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListeningState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNotConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

.field private blacklist mPersistentLogger:Landroid/telephony/PersistentLogger;

.field private final blacklist mPowerOffState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

.field private blacklist mPreviousState:I

.field private final blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

.field private blacklist mSatelliteGatewayService:Landroid/telephony/satellite/stub/ISatelliteGateway;

.field private blacklist mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

.field private blacklist mSatelliteGatewayServicePackageName:Ljava/lang/String;

.field private final blacklist mSatelliteModemInterface:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

.field private blacklist mSatelliteNbIotInactivityTimeoutMillis:J

.field private blacklist mSatelliteStayAtListeningFromReceivingMillis:J

.field private blacklist mSatelliteStayAtListeningFromSendingMillis:J

.field private blacklist mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

.field private final blacklist mTransferringState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

.field private final blacklist mUnavailableState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;


# direct methods
.method public static synthetic blacklist $r8$lambda$CwImlXTahQ1q4NLV7XY_7uEy7Sw(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ee1A9YvnJxi91cm4Gpl93hm6ABQ(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ILjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->lambda$notifyStateChangedEvent$3(ILjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jRffe7Dtw2078E_N2jjjJXAkt1E(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->lambda$notifyStateChangedEvent$4(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$txPc91CQN_C6IjHtdjmjMX02USQ(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->lambda$onEmergencyModeChanged$1(ZLjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yFMCRJf12iigJ9gvX17zJwQyNTg(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->lambda$onEmergencyModeChanged$2(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/DatagramController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnablingState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mEnablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExponentialBackoff(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/ExponentialBackoff;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIdleState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIgnoreCellularServiceState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListeningState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeningState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotConnectedState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mNotConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPowerOffState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPowerOffState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPreviousState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteModemInterface(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteModemInterface:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteStayAtListeningFromReceivingMillis(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromReceivingMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteStayAtListeningFromSendingMillis(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromSendingMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionMetricsStats(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferringState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mTransferringState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBound(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousState(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPreviousState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSatelliteGatewayService(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/telephony/satellite/stub/ISatelliteGateway;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayService:Landroid/telephony/satellite/stub/ISatelliteGateway;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbindService(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->bindService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mendUserInactivity(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->endUserInactivity()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mevaluateStartingEsosInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->evaluateStartingEsosInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mevaluateStartingP2pSmsInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->evaluateStartingP2pSmsInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSubId(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleEventP2pSmsInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->handleEventP2pSmsInactivityTimerTimedOut()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleEventScreenOffInactivityTimerTimedOut(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->handleEventScreenOffInactivityTimerTimedOut()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleEventScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->handleEventScreenStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSatelliteEnabledStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->handleSatelliteEnabledStateChanged(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSatelliteEnablementStarted(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->handleSatelliteEnablementStarted(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misConcurrentTnScanningSupported(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isConcurrentTnScanningSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misReceiving(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isReceiving(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSending(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isSending(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misTnScanningAllowedDuringSatelliteSession(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isTnScanningAllowedDuringSatelliteSession()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyStateChangedEvent(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->notifyStateChangedEvent(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mplogw(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->registerForScreenStateChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->startNbIotInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopEsosInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopEsosInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopNbIotInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopNbIotInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopP2pSmsInactivityTimer(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopP2pSmsInactivityTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munbindService(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->unbindService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForScreenStateChanged(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->unregisterForScreenStateChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 99
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->DEBUG:Z

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;ZLcom/android/internal/telephony/satellite/SatelliteModemInterface;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 276
    const-string v3, "SatelliteSessionController"

    move-object/from16 v10, p2

    invoke-direct {v0, v3, v10}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 151
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    .line 154
    const-string v3, ""

    iput-object v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServicePackageName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 158
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    .line 164
    new-instance v12, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;

    const/4 v4, 0x0

    invoke-direct {v12, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v12, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mUnavailableState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;

    .line 165
    new-instance v13, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    invoke-direct {v13, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v13, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPowerOffState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    .line 166
    new-instance v14, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

    invoke-direct {v14, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v14, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mEnablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

    .line 167
    new-instance v15, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;

    invoke-direct {v15, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v15, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDisablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;

    .line 168
    new-instance v5, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    invoke-direct {v5, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIdleState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    .line 169
    new-instance v6, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

    invoke-direct {v6, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v6, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mTransferringState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$TransferringState;

    .line 170
    new-instance v7, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;

    invoke-direct {v7, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v7, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeningState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ListeningState;

    .line 171
    new-instance v8, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    invoke-direct {v8, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v8, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mNotConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$NotConnectedState;

    .line 172
    new-instance v9, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

    invoke-direct {v9, v0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v9, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mConnectedState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$ConnectedState;

    .line 178
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    .line 179
    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    .line 180
    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    .line 185
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDemoMode:Z

    const/4 v11, 0x1

    .line 187
    iput-boolean v11, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsScreenOn:Z

    .line 188
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    move-object/from16 v16, v5

    const-wide/16 v4, 0x0

    .line 189
    iput-wide v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    .line 190
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;-><init>(III)V

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLastDatagramTransferState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    const/4 v11, 0x0

    .line 198
    iput-object v11, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 203
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteSessionController$1;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 278
    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 279
    iput-object v1, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    move-object/from16 v4, p3

    .line 280
    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object/from16 v4, p5

    .line 281
    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteModemInterface:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    .line 282
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramController;->getInstance()Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    move-object v11, v6

    .line 284
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteStayAtListeningFromSendingMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromSendingMillis:J

    .line 286
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteStayAtListeningFromReceivingMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromReceivingMillis:J

    .line 288
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteNbIotInactivityTimeoutMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteNbIotInactivityTimeoutMillis:J

    .line 289
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 290
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSendingTriggeredDuringTransferringState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, -0x1

    .line 291
    iput v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPreviousState:I

    .line 292
    iput v3, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    .line 293
    iput-boolean v2, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSatelliteSupported:Z

    move-object v3, v4

    .line 294
    new-instance v4, Lcom/android/internal/telephony/ExponentialBackoff;

    move-object v5, v11

    new-instance v11, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    move-object/from16 v17, v5

    const-wide/16 v5, 0x7d0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    const-wide/32 v7, 0xfa00

    move-object/from16 v20, v9

    const/4 v9, 0x2

    move-object/from16 v2, v16

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v17

    move-object/from16 v21, v18

    move-object/from16 v22, v19

    move-object/from16 v23, v20

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 311
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-nez v4, :cond_f7

    .line 313
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 315
    :cond_f7
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    .line 316
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->getInstance()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    .line 317
    const-class v4, Landroid/app/AlarmManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 319
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 320
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 321
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 322
    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 323
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 324
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    move-object/from16 v1, v21

    .line 325
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    move-object/from16 v1, v22

    .line 326
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    move-object/from16 v1, v23

    .line 327
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    move/from16 v2, p4

    .line 328
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->setInitialState(Z)V

    .line 329
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->start()V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V
    .registers 2

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Ljava/lang/String;)V
    .registers 2

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/satellite/SatelliteSessionController;I)V
    .registers 2

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method private blacklist bindService()V
    .registers 6

    .line 1540
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1541
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    if-nez v1, :cond_b8

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    if-eqz v1, :cond_d

    goto/16 :goto_b8

    :cond_d
    const/4 v1, 0x1

    .line 1542
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 1543
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_b6

    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    .line 1546
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteGatewayPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    .line 1548
    const-string v0, "Unable to bind to the satellite gateway service because the package is undefined."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    .line 1552
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1553
    :try_start_29
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 1554
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_32

    .line 1555
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    return-void

    :catchall_32
    move-exception p0

    .line 1554
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0

    .line 1558
    :cond_35
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.telephony.satellite.SatelliteGatewayService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;Lcom/android/internal/telephony/satellite/SatelliteSessionController-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    .line 1563
    :try_start_47
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1566
    const-string v0, "Successfully bound to the satellite gateway service."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    :catch_55
    move-exception v0

    goto :goto_85

    .line 1568
    :cond_57
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5a} :catch_55

    .line 1569
    :try_start_5a
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 1570
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_82

    .line 1571
    :try_start_5d
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error binding to the satellite gateway service. Retrying in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 1573
    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1572
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_81} :catch_55

    return-void

    :catchall_82
    move-exception v1

    .line 1570
    :try_start_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    :try_start_84
    throw v1
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_85} :catch_55

    .line 1576
    :goto_85
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1577
    :try_start_88
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 1578
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_b3

    .line 1579
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 1580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception binding to the satellite gateway service. Retrying in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 1581
    invoke-virtual {v2}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms. Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1580
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return-void

    :catchall_b3
    move-exception p0

    .line 1578
    :try_start_b4
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw p0

    :catchall_b6
    move-exception p0

    goto :goto_ba

    .line 1541
    :cond_b8
    :goto_b8
    :try_start_b8
    monitor-exit v0

    return-void

    .line 1543
    :goto_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_b6

    throw p0
.end method

.method private blacklist checkForInactivity()V
    .registers 5

    .line 1903
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    return-void

    .line 1907
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLastDatagramTransferState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    if-nez v0, :cond_1b

    .line 1909
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    :cond_1b
    return-void
.end method

.method private blacklist endUserInactivity()V
    .registers 7

    .line 1925
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 1926
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    .line 1927
    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 1928
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->updateMaxInactivityDurationSec(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    .line 1930
    iput-wide v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    :cond_1a
    return-void
.end method

.method private blacklist evaluateStartingEsosInactivityTimer()V
    .registers 5

    .line 1785
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isEsosInActivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1786
    const-string v0, "isEsosInActivityTimerStarted: ESOS inactivity timer already started"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1791
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result v0

    .line 1792
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEsosSupported(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1793
    const-string v0, "evaluateStartingEsosInactivityTimer: ESOS is not supported"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1797
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1798
    const-string v0, "evaluateStartingEsosInactivityTimer: request is not emergency"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1802
    :cond_2c
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    if-eqz v0, :cond_36

    .line 1803
    const-string v0, "evaluateStartingEsosInactivityTimer: can\'t start ESOS inactivity timer due to device aligned satellite"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1808
    :cond_36
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getEsosInactivityTimeoutDurationSec()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 1809
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramController;->getInstance()Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v1

    .line 1810
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->isSendingInIdleState()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1811
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v1

    if-eqz v1, :cond_67

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 1812
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    .line 1813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluateStartingEsosInactivityTimer: start ESOS inactivity timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1816
    :cond_67
    const-string v0, "evaluateStartingEsosInactivityTimer: can\'t start ESOS inactivity timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist evaluateStartingP2pSmsInactivityTimer()V
    .registers 5

    .line 1847
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isP2pSmsInActivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1848
    const-string v0, "isP2pSmsInActivityTimerStarted: P2P_SMS inactivity timer already started"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1853
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result v0

    .line 1854
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isP2pSmsSupportedOnCarrierRoamingNtn(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1855
    const-string v0, "evaluateStartingP2pSmsInactivityTimer: P2P_SMS is not supported"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1859
    :cond_1c
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    if-eqz v0, :cond_26

    .line 1860
    const-string v0, "evaluateStartingP2pSmsInactivityTimer: can\'t start P2P_SMS inactivity timer due to device aligned satellite"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1865
    :cond_26
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getP2pSmsInactivityTimeoutDurationSec()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 1866
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramController;->getInstance()Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v1

    .line 1867
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->isSendingInIdleState()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1868
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v1

    if-eqz v1, :cond_57

    const/16 v1, 0xe

    int-to-long v2, v0

    .line 1869
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    .line 1870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluateStartingP2pSmsInactivityTimer: start P2P_SMS inactivity timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1873
    :cond_57
    const-string v0, "evaluateStartingP2pSmsInactivityTimer: can\'t start P2P_SMS inactivity timer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getEsosInactivityTimeoutDurationSec()I
    .registers 3

    .line 1772
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 1774
    const-string v0, "satellite_roaming_esos_inactivity_timeout_sec_int"

    const/16 v1, 0x258

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/SatelliteSessionController;
    .registers 2

    .line 215
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    if-nez v0, :cond_b

    .line 216
    const-string v0, "SatelliteSessionController"

    const-string v1, "SatelliteSessionController was not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    return-object v0
.end method

.method private blacklist getP2pSmsInactivityTimeoutDurationSec()I
    .registers 3

    .line 1834
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 1836
    const-string v0, "satellite_roaming_p2p_sms_inactivity_timeout_sec_int"

    const/16 v1, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private blacklist getSatelliteGatewayPackageName()Ljava/lang/String;
    .registers 2

    .line 1532
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServicePackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1533
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServicePackageName:Ljava/lang/String;

    return-object p0

    .line 1535
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10402c5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSatelliteNbIotInactivityTimeoutMillis()J
    .registers 3

    .line 1984
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isDemoMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1985
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0119

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_13
    int-to-long v0, p0

    return-wide v0

    .line 1988
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e011e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_13
.end method

.method private blacklist getSatelliteStayAtListeningFromReceivingMillis()J
    .registers 3

    .line 1975
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isDemoMode()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0xbb8

    return-wide v0

    .line 1978
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e011f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist getSatelliteStayAtListeningFromSendingMillis()J
    .registers 3

    .line 1966
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isDemoMode()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0xbb8

    return-wide v0

    .line 1969
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0120

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist getScreenOffInactivityTimeoutDurationSec()I
    .registers 3

    .line 1765
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 1767
    const-string v0, "satellite_roaming_screen_off_inactivity_timeout_sec_int"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private blacklist getSubId()I
    .registers 1

    .line 1490
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result p0

    return p0
.end method

.method private blacklist handleEventP2pSmsInactivityTimerTimedOut()V
    .registers 4

    .line 1736
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isEsosInActivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1737
    const-string v0, "handleEventP2pSmsInactivityTimerTimedOut: processing: ESOS inactivity timer running can not move to IDLE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1740
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isTnScanningAllowedDuringSatelliteSession()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1741
    const-string v0, "handleEventP2pSmsInactivityTimerTimedOut: Transition to IDLE state"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIdleState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$IdleState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 1744
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1745
    const-string v0, "handleEventP2pSmsInactivityTimerTimedOut: Emergency mode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1749
    :cond_2b
    const-string v0, "handleEventP2pSmsInactivityTimerTimedOut: request disable satellite"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 1753
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteSessionController$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$2;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    const/4 p0, 0x0

    .line 1750
    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method

.method private blacklist handleEventScreenOffInactivityTimerTimedOut()V
    .registers 4

    .line 1935
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1936
    const-string v0, "handleEventScreenOffInactivityTimerTimedOut: Emergency mode"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->loge(Ljava/lang/String;)V

    return-void

    .line 1944
    :cond_e
    const-string v0, "handleEventScreenOffInactivityTimerTimedOut: request disable satellite"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 1946
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 1949
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteSessionController$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$3;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    const/4 p0, 0x0

    .line 1946
    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method

.method private blacklist handleEventScreenStateChanged(Landroid/os/AsyncResult;)V
    .registers 10

    if-nez p1, :cond_8

    .line 1679
    const-string p1, "handleEventScreenStateChanged: asyncResult is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return-void

    .line 1683
    :cond_8
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1684
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsScreenOn:Z

    if-ne v0, p1, :cond_1a

    .line 1685
    const-string p1, "handleEventScreenStateChanged: screen state is not changed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1688
    :cond_1a
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsScreenOn:Z

    .line 1690
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1691
    const-string p1, "handleEventScreenStateChanged: device is not in CarrierRoamingNbIotNtn"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void

    .line 1695
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1696
    const-string p1, "handleEventScreenStateChanged: Emergency mode"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void

    .line 1702
    :cond_38
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result v0

    .line 1703
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isP2pSmsSupportedOnCarrierRoamingNtn(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1704
    const-string p1, "handleEventScreenStateChanged: P2P_SMS is not supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    :cond_48
    if-nez p1, :cond_8c

    .line 1710
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getScreenOffInactivityTimeoutDurationSec()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 1712
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_5a

    .line 1713
    const-string p1, "handleEventScreenStateChanged: can not access AlarmManager to start timer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1718
    :cond_5a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    int-to-long v3, p1

    add-long v2, v1, v3

    new-instance v5, Landroid/os/HandlerExecutor;

    .line 1719
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6}, Landroid/os/WorkSource;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v1, 0x2

    .line 1717
    const-string v4, "SatelliteSessionController"

    invoke-virtual/range {v0 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/WorkSource;Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEventScreenStateChanged: start timer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    :cond_8c
    const/16 p1, 0xa

    .line 1723
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 1725
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez p1, :cond_9b

    .line 1726
    const-string p1, "handleEventScreenStateChanged: can not access AlarmManager to stop timer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1730
    :cond_9b
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1731
    const-string p1, "handleEventScreenStateChanged: stop timer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleSatelliteEnabledStateChanged(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 1513
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPowerOffState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 1515
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Unexpected satellite radio powered-on state changed event"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleSatelliteEnablementStarted(Z)V
    .registers 2

    if-nez p1, :cond_7

    .line 1635
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDisablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_7
    return-void
.end method

.method private blacklist isConcurrentTnScanningSupported()Z
    .registers 4

    .line 2059
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConcurrentTnScanningSupported: mIsConcurrentTnScanningSupportedForCtsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 2062
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 2065
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    move-exception v0

    .line 2068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConcurrentTnScanningSupported: ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isDemoMode()Z
    .registers 1

    .line 690
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDemoMode:Z

    return p0
.end method

.method private blacklist isMockModemAllowed()Z
    .registers 2

    .line 1962
    sget-boolean p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->DEBUG:Z

    if-nez p0, :cond_f

    const-string p0, "persist.radio.allow_mock_modem"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    return v0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isNbIotInactivityTimerStarted()Z
    .registers 2

    const/4 v0, 0x6

    .line 2024
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method private blacklist isP2pSmsSupportedOnCarrierRoamingNtn(I)Z
    .registers 4

    .line 2040
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteRoamingP2pSmSSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2041
    const-string p1, "isP2pSmsSupportedOnCarrierRoamingNtn: P2P_SMS is not supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return v1

    .line 2045
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSupportedServicesOnCarrierRoamingNtn(I)[I

    move-result-object p1

    const/4 v0, 0x3

    .line 2046
    invoke-static {p1, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_22

    .line 2048
    const-string p1, "isP2pSmsSupportedOnCarrierRoamingNtn: P2P_SMS service is not supported on carrier roaming ntn."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return v1

    .line 2054
    :cond_22
    const-string p1, "isP2pSmsSupportedOnCarrierRoamingNtn: P2_SMS is supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isReceiving(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_c

    const/4 p0, 0x5

    if-eq p1, p0, :cond_c

    const/4 p0, 0x6

    if-ne p1, p0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isSending(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method private blacklist isTnScanningAllowedDuringSatelliteSession()Z
    .registers 4

    .line 2074
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTnScanningAllowedDuringSatelliteSession: mIsTnScanningDuringSatelliteSessionAllowedForCtsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 2078
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 2081
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    move-exception v0

    .line 2084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTnScanningAllowedDuringSatelliteSession: ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayService:Landroid/telephony/satellite/stub/ISatelliteGateway;

    if-nez v1, :cond_12

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_2d

    :cond_e
    :goto_e
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    if-eqz v1, :cond_14

    .line 298
    :cond_12
    monitor-exit v0

    return-void

    .line 300
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_c

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    if-eqz v0, :cond_29

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 303
    :try_start_1d
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    .line 304
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 305
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_26

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->unbindService()V

    goto :goto_29

    :catchall_26
    move-exception p0

    .line 305
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0

    .line 308
    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->bindService()V

    return-void

    .line 300
    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_c

    throw p0
.end method

.method private synthetic blacklist lambda$notifyStateChangedEvent$3(ILjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 6

    .line 1499
    :try_start_0
    invoke-interface {p3, p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->onSatelliteModemStateChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStateChangedEvent RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 1502
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic blacklist lambda$notifyStateChangedEvent$4(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 2

    .line 1507
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic blacklist lambda$onEmergencyModeChanged$1(ZLjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 6

    .line 422
    :try_start_0
    invoke-interface {p3, p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->onEmergencyModeChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEmergencyModeChanged RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 425
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic blacklist lambda$onEmergencyModeChanged$2(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 2

    .line 430
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Z)Lcom/android/internal/telephony/satellite/SatelliteSessionController;
    .registers 13

    .line 235
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    if-eqz v0, :cond_8

    iget-boolean v1, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSatelliteSupported:Z

    if-eq p3, v1, :cond_52

    :cond_8
    if-eqz v0, :cond_12

    .line 239
    iget-object v1, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 240
    iget-boolean v2, v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    .line 241
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->cleanUpResource()V

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 244
    :goto_14
    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    .line 249
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;ZLcom/android/internal/telephony/satellite/SatelliteModemInterface;)V

    sput-object v3, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    .line 250
    const-string p0, "SatelliteSessionController"

    if-eqz v1, :cond_46

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "make() existingListeners: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-object p1, p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_46
    if-eqz v2, :cond_52

    .line 255
    const-string p1, "make() existIgnoreCellularServiceState is true"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    .line 259
    :cond_52
    sget-object p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    return-object p0
.end method

.method private blacklist notifyStateChangedEvent(I)V
    .registers 5

    .line 1494
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/DatagramController;->onSatelliteModemStateChanged(I)V

    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 1506
    new-instance p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist plogd(Ljava/lang/String;)V
    .registers 3

    .line 2090
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    .line 2091
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 2092
    const-string v0, "SatelliteSessionController"

    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist ploge(Ljava/lang/String;)V
    .registers 3

    .line 2104
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->loge(Ljava/lang/String;)V

    .line 2105
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 2106
    const-string v0, "SatelliteSessionController"

    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist plogw(Ljava/lang/String;)V
    .registers 3

    .line 2097
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logw(Ljava/lang/String;)V

    .line 2098
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 2099
    const-string v0, "SatelliteSessionController"

    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist registerForScreenStateChanged()V
    .registers 6

    .line 1645
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    if-eqz v0, :cond_1b

    .line 1647
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    .line 1646
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/DeviceStateMonitor;->registerForScreenStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1649
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    .line 1650
    const-string v0, "registerForScreenStateChanged: registered"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 1652
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForScreenStateChanged: skip register, mIsRegisteredScreenStateChanged="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceStateMonitor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    if-eqz v2, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogw(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setInitialState(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 1483
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mPowerOffState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$PowerOffState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    return-void

    .line 1485
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mUnavailableState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$UnavailableState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    return-void
.end method

.method private blacklist startNbIotInactivityTimer()V
    .registers 4

    .line 1999
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isSatelliteEnabledForNtnOnlySubscription()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2000
    const-string v0, "startNbIotInactivityTimer: Can\'t start timer because satellite was not enabled for OEM based NB IOT"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2005
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isNbIotInactivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2006
    const-string v0, "NB IOT inactivity timer is already started"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    return-void

    .line 2010
    :cond_18
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramController;->getInstance()Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v0

    .line 2011
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isSendingInIdleState()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2012
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x6

    .line 2013
    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteNbIotInactivityTimeoutMillis:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    :cond_2e
    return-void
.end method

.method private blacklist stopEsosInactivityTimer()V
    .registers 2

    .line 1822
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isEsosInActivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xb

    .line 1823
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 1824
    const-string v0, "stopEsosInactivityTimer: ESOS inactivity timer stopped"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private blacklist stopNbIotInactivityTimer()V
    .registers 2

    const/4 v0, 0x6

    .line 2020
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method private blacklist stopP2pSmsInactivityTimer()V
    .registers 2

    .line 1879
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isP2pSmsInActivityTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xe

    .line 1880
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 1881
    const-string v0, "stopP2pSmsInactivityTimer: P2P_SMS inactivity timer stopped"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private blacklist unbindService()V
    .registers 4

    .line 1586
    const-string v0, "unbindService"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 1587
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    const/4 v0, 0x0

    .line 1588
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayService:Landroid/telephony/satellite/stub/ISatelliteGateway;

    .line 1589
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 1590
    :try_start_11
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 1591
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    .line 1592
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_22

    .line 1593
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    if-eqz v1, :cond_21

    .line 1594
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1595
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    :cond_21
    return-void

    :catchall_22
    move-exception p0

    .line 1592
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method private blacklist unregisterForScreenStateChanged()V
    .registers 3

    .line 1664
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    if-eqz v0, :cond_27

    .line 1665
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->unregisterForScreenStateChanged(Landroid/os/Handler;)V

    const/16 v0, 0x9

    .line 1666
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/16 v1, 0xa

    .line 1667
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 1669
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    .line 1670
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    const/4 v0, 0x0

    .line 1672
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsRegisteredScreenStateChanged:Z

    .line 1673
    const-string v0, "unregisterForScreenStateChanged: unregistered"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    :cond_27
    return-void
.end method


# virtual methods
.method public blacklist cleanUpResource()V
    .registers 7

    .line 645
    const-string v0, "cleanUpResource"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 646
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    const-wide/16 v1, 0x0

    .line 647
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mInactivityStartTimestamp:J

    .line 648
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->unregisterForScreenStateChanged()V

    .line 649
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_18

    .line 650
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 655
    :cond_18
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v2, v1

    :goto_1d
    if-ge v0, v2, :cond_46

    aget-object v3, v1, v0

    if-nez v3, :cond_24

    goto :goto_43

    .line 658
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanUpResource: unregisterForServiceStateChanged phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 666
    :cond_46
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->quitNow()V

    return-void
.end method

.method protected blacklist getWhatToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_40

    .line 1476
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN EVENT "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1467
    :pswitch_15
    const-string p0, "EVENT_P2P_SMS_INACTIVITY_TIMER_TIMED_OUT"

    return-object p0

    .line 1473
    :pswitch_18
    const-string p0, "EVENT_SERVICE_STATE_CHANGED"

    return-object p0

    .line 1470
    :pswitch_1b
    const-string p0, "EVENT_ENABLE_CELLULAR_MODEM_WHILE_SATELLITE_MODE_IS_ON_DONE"

    return-object p0

    .line 1464
    :pswitch_1e
    const-string p0, "EVENT_ESOS_INACTIVITY_TIMER_TIMED_OUT"

    return-object p0

    .line 1461
    :pswitch_21
    const-string p0, "EVENT_SCREEN_OFF_INACTIVITY_TIMER_TIMED_OUT"

    return-object p0

    .line 1458
    :pswitch_24
    const-string p0, "EVENT_SCREEN_STATE_CHANGED"

    return-object p0

    .line 1455
    :pswitch_27
    const-string p0, "EVENT_SATELLITE_ENABLEMENT_FAILED"

    return-object p0

    .line 1452
    :pswitch_2a
    const-string p0, "EVENT_SATELLITE_ENABLEMENT_STARTED"

    return-object p0

    .line 1449
    :pswitch_2d
    const-string p0, "EVENT_NB_IOT_INACTIVITY_TIMER_TIMED_OUT"

    return-object p0

    .line 1443
    :pswitch_30
    const-string p0, "EVENT_DISABLE_CELLULAR_MODEM_WHILE_SATELLITE_MODE_IS_ON_DONE"

    return-object p0

    .line 1446
    :pswitch_33
    const-string p0, "EVENT_SATELLITE_MODEM_STATE_CHANGED"

    return-object p0

    .line 1440
    :pswitch_36
    const-string p0, "EVENT_SATELLITE_ENABLED_STATE_CHANGED"

    return-object p0

    .line 1437
    :pswitch_39
    const-string p0, "EVENT_LISTENING_TIMER_TIMEOUT"

    return-object p0

    .line 1434
    :pswitch_3c
    const-string p0, "EVENT_DATAGRAM_TRANSFER_STATE_CHANGED"

    return-object p0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public blacklist isEsosInActivityTimerStarted()Z
    .registers 2

    const/16 v0, 0xb

    .line 1830
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isInDisablingState()Z
    .registers 3

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInDisablingState: getCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mDisablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DisablingState;

    if-ne v0, p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInEnablingState()Z
    .registers 3

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInEnablingState: getCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mEnablingState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$EnablingState;

    if-ne v0, p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isP2pSmsInActivityTimerStarted()Z
    .registers 2

    const/16 v0, 0xe

    .line 1887
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method protected blacklist isSatelliteEnabledForNtnOnlySubscription()Z
    .registers 3

    .line 2029
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getNtnOnlySubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 2030
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 2031
    const-string v0, "isSatelliteEnabledForOemBasedNbIot: highest priority satellite subscription is not NTN-only subscription"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist onCellularServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4

    .line 676
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist onDatagramTransferStateChanged(III)V
    .registers 5

    .line 344
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;-><init>(III)V

    .line 346
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLastDatagramTransferState:Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;

    const/4 p2, 0x1

    .line 348
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    if-ne p1, p2, :cond_12

    .line 351
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsSendingTriggeredDuringTransferringState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 354
    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$DatagramTransferState;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 355
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->checkForInactivity()V

    return-void

    .line 357
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->endUserInactivity()V

    return-void
.end method

.method public blacklist onEmergencyModeChanged(Z)V
    .registers 5

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEmergencyModeChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 429
    new-instance p1, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;)V

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onSatelliteEnabledStateChanged(Z)V
    .registers 3

    .line 369
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist onSatelliteEnablementFailed(Z)V
    .registers 3

    .line 391
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist onSatelliteEnablementStarted(Z)V
    .registers 3

    .line 380
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .registers 3

    const/4 v0, 0x4

    .line 402
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public blacklist registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 4

    .line 442
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    invoke-interface {p1, v0}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->onSatelliteModemStateChanged(I)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getRequestIsEmergency()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->onEmergencyModeChanged(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerForSatelliteModemStateChanged: Got RemoteException ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setAlarmManager(Landroid/app/AlarmManager;)V
    .registers 2

    .line 686
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public blacklist setDemoMode(Z)V
    .registers 2

    .line 587
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDemoMode:Z

    return-void
.end method

.method public blacklist setDeviceAlignedWithSatellite(Z)V
    .registers 4

    .line 602
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceAlignedWithSatellite: isAligned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 605
    iget-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsDeviceAlignedWithSatellite:Z

    if-eqz p1, :cond_24

    .line 606
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopEsosInactivityTimer()V

    .line 607
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->stopP2pSmsInactivityTimer()V

    .line 608
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->endUserInactivity()V

    return-void

    .line 610
    :cond_24
    iget p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mCurrentState:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2e

    if-nez p1, :cond_34

    .line 613
    :cond_2e
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->evaluateStartingEsosInactivityTimer()V

    .line 614
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->evaluateStartingP2pSmsInactivityTimer()V

    .line 616
    :cond_34
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->checkForInactivity()V

    return-void
.end method

.method blacklist setSatelliteGatewayServicePackageName(Ljava/lang/String;)Z
    .registers 5

    .line 520
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isMockModemAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 521
    const-string p1, "setSatelliteGatewayServicePackageName: modifying satellite gateway service package name is not allowed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    return v1

    .line 526
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSatelliteGatewayServicePackageName: config_satellite_gateway_service_package is updated, new packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    .line 529
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2f

    .line 532
    :cond_2c
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServicePackageName:Ljava/lang/String;

    goto :goto_33

    .line 530
    :cond_2f
    :goto_2f
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServicePackageName:Ljava/lang/String;

    .line 535
    :goto_33
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteGatewayServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteSessionController$SatelliteGatewayServiceConnection;

    if-eqz p1, :cond_49

    .line 536
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 537
    :try_start_3a
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBound:Z

    .line 538
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsBinding:Z

    .line 539
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_46

    .line 540
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->unbindService()V

    .line 541
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->bindService()V

    goto :goto_49

    :catchall_46
    move-exception p0

    .line 539
    :try_start_47
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0

    :cond_49
    :goto_49
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setSatelliteIgnoreCellularServiceState(Z)Z
    .registers 4

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteIgnoreCellularServiceState : old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " new : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    .line 508
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIgnoreCellularServiceState:Z

    const/4 p0, 0x1

    return p0
.end method

.method blacklist setSatelliteListeningTimeoutDuration(J)Z
    .registers 5

    .line 473
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isMockModemAllowed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 474
    const-string p1, "Updating listening timeout duration is not allowed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 478
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteListeningTimeoutDuration: timeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_3a

    .line 481
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteStayAtListeningFromSendingMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromSendingMillis:J

    .line 483
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteStayAtListeningFromReceivingMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromReceivingMillis:J

    .line 485
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getSatelliteNbIotInactivityTimeoutMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteNbIotInactivityTimeoutMillis:J

    goto :goto_40

    .line 487
    :cond_3a
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromSendingMillis:J

    .line 488
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteStayAtListeningFromReceivingMillis:J

    .line 489
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mSatelliteNbIotInactivityTimeoutMillis:J

    :goto_40
    const/4 p0, 0x1

    return p0
.end method

.method blacklist setTnScanningSupport(ZZZ)Z
    .registers 6

    .line 557
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->isMockModemAllowed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 558
    const-string p1, "setTnScanningSupport: modifying TN scanning support is not allowed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 562
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTnScanningSupport: reset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", concurrentTnScanningSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tnScanningDuringSatelliteSessionAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->plogd(Ljava/lang/String;)V

    if-eqz p1, :cond_39

    const/4 p1, 0x0

    .line 567
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    .line 568
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    goto :goto_45

    .line 570
    :cond_39
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsConcurrentTnScanningSupportedForCtsTest:Ljava/lang/Boolean;

    .line 572
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mIsTnScanningDuringSatelliteSessionAllowedForCtsTest:Ljava/lang/Boolean;

    :goto_45
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist unregisterForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 2

    .line 461
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteModemStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

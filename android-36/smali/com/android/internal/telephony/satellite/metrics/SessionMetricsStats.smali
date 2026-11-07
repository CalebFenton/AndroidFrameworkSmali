.class public Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
.super Ljava/lang/Object;
.source "SessionMetricsStats.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SessionMetricsStats"

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mCountOfAutoExitDueToScreenOff:I

.field private blacklist mCountOfAutoExitDueToTnNetwork:I

.field private blacklist mCountOfFailedOutgoingDatagram:I

.field private blacklist mCountOfIncomingDatagramFailed:I

.field private blacklist mCountOfSatelliteNotificationDisplayed:I

.field private blacklist mCountOfSuccessfulIncomingDatagram:I

.field private blacklist mCountOfSuccessfulOutgoingDatagram:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForAck:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForConnection:I

.field private blacklist mDatagramStats:Landroid/telephony/satellite/SatelliteSessionStats;

.field private blacklist mInitializationProcessingTimeMillis:J

.field private blacklist mInitializationResult:I

.field private blacklist mIsDemoMode:Z

.field private blacklist mIsEmergency:Z

.field private blacklist mIsNtnOnlyCarrier:Z

.field private blacklist mMaxInactivityDurationSec:I

.field private blacklist mMaxNtnSignalStrengthLevel:I

.field private blacklist mRadioTechnology:I

.field private blacklist mSessionDurationSec:I

.field private blacklist mShadowCountOfFailedOutgoingDatagram:I

.field private blacklist mShadowCountOfSuccessfulOutgoingDatagram:I

.field private blacklist mShadowCountOfTimedOutUserMessagesWaitingForAck:I

.field private blacklist mShadowCountOfTimedOutUserMessagesWaitingForConnection:I

.field private blacklist mTerminationProcessingTimeMillis:J

.field private blacklist mTerminationResult:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->initializeSessionMetricsParam()V

    .line 71
    new-instance v0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSessionStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mDatagramStats:Landroid/telephony/satellite/SatelliteSessionStats;

    return-void
.end method

.method private blacklist addCountOfTimedOutUserMessagesWaitingForAck(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    return-object p0

    .line 196
    :cond_4
    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    .line 197
    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfTimedOutUserMessagesWaitingForAck:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfTimedOutUserMessagesWaitingForAck:I

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addCountOfTimedOutUserMessagesWaitingForAck: current count="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist addCountOfTimedOutUserMessagesWaitingForConnection(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    return-object p0

    .line 181
    :cond_4
    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    .line 182
    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfTimedOutUserMessagesWaitingForConnection:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfTimedOutUserMessagesWaitingForConnection:I

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addCountOfTimedOutUserMessagesWaitingForConnection: current count="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    if-nez v0, :cond_10

    .line 83
    const-string v0, "create new SessionMetricsStats."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->loge(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    .line 86
    :cond_10
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-object v0
.end method

.method private blacklist initializeSessionMetricsParam()V
    .registers 4

    const/4 v0, 0x0

    .line 357
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mInitializationResult:I

    .line 358
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mRadioTechnology:I

    .line 359
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mTerminationResult:I

    const-wide/16 v1, 0x0

    .line 360
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mInitializationProcessingTimeMillis:J

    .line 361
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mTerminationProcessingTimeMillis:J

    .line 362
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mSessionDurationSec:I

    .line 363
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSuccessfulOutgoingDatagram:I

    .line 364
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfFailedOutgoingDatagram:I

    .line 365
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    .line 366
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    .line 367
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSuccessfulIncomingDatagram:I

    .line 368
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfIncomingDatagramFailed:I

    .line 369
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsDemoMode:Z

    .line 370
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mMaxNtnSignalStrengthLevel:I

    const/4 v1, -0x1

    .line 371
    iput v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCarrierId:I

    .line 372
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSatelliteNotificationDisplayed:I

    .line 373
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfAutoExitDueToScreenOff:I

    .line 374
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfAutoExitDueToTnNetwork:I

    .line 375
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsEmergency:Z

    .line 376
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsNtnOnlyCarrier:Z

    .line 377
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mMaxInactivityDurationSec:I

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 390
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 394
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist addCountOfAutoExitDueToScreenOff()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 3

    .line 253
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfAutoExitDueToScreenOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfAutoExitDueToScreenOff:I

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCountOfAutoExitDueToScreenOff: current count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfAutoExitDueToScreenOff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist addCountOfAutoExitDueToTnNetwork()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 3

    .line 260
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfAutoExitDueToTnNetwork:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfAutoExitDueToTnNetwork:I

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCountOfAutoExitDueToTnNetwork: current count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfAutoExitDueToTnNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist addCountOfFailedIncomingDatagram()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 3

    .line 213
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfIncomingDatagramFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfIncomingDatagramFailed:I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCountOfFailedIncomingDatagram: current count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfIncomingDatagramFailed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist addCountOfFailedOutgoingDatagram(II)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 5

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCountOfFailedOutgoingDatagram: datagramType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mDatagramStats:Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/satellite/SatelliteSessionStats;->addCountOfUnsuccessfulUserMessages(II)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_25

    goto :goto_40

    .line 163
    :cond_25
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfFailedOutgoingDatagram:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfFailedOutgoingDatagram:I

    .line 164
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfFailedOutgoingDatagram:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfFailedOutgoingDatagram:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_39

    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfTimedOutUserMessagesWaitingForConnection(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-object p0

    :cond_39
    const/16 v0, 0x18

    if-ne p2, v0, :cond_40

    .line 168
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfTimedOutUserMessagesWaitingForAck(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    :cond_40
    :goto_40
    return-object p0
.end method

.method public blacklist addCountOfSatelliteNotificationDisplayed()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 3

    .line 245
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSatelliteNotificationDisplayed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSatelliteNotificationDisplayed:I

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCountOfSatelliteNotificationDisplayed: current count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSatelliteNotificationDisplayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist addCountOfSuccessfulIncomingDatagram()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 3

    .line 205
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSuccessfulIncomingDatagram:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSuccessfulIncomingDatagram:I

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCountOfSuccessfulIncomingDatagram: current count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSuccessfulIncomingDatagram:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist addCountOfSuccessfulOutgoingDatagram(IJ)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 6

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCountOfSuccessfulOutgoingDatagram: datagramType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mDatagramStats:Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/satellite/SatelliteSessionStats;->recordSuccessfulOutgoingDatagramStats(IJ)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1d

    return-object p0

    .line 146
    :cond_1d
    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSuccessfulOutgoingDatagram:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSuccessfulOutgoingDatagram:I

    .line 147
    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfSuccessfulOutgoingDatagram:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfSuccessfulOutgoingDatagram:I

    return-object p0
.end method

.method public blacklist getSessionInitializationProcessingTimeMillis()J
    .registers 3

    .line 348
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mInitializationProcessingTimeMillis:J

    return-wide v0
.end method

.method public blacklist getSessionTerminationProcessingTimeMillis()J
    .registers 3

    .line 353
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mTerminationProcessingTimeMillis:J

    return-wide v0
.end method

.method public blacklist reportSessionMetrics()V
    .registers 4

    .line 293
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mInitializationResult:I

    .line 295
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setSatelliteServiceInitializationResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mRadioTechnology:I

    .line 296
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setSatelliteTechnology(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mTerminationResult:I

    .line 297
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setTerminationResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mInitializationProcessingTimeMillis:J

    .line 298
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setInitializationProcessingTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mTerminationProcessingTimeMillis:J

    .line 299
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setTerminationProcessingTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mSessionDurationSec:I

    .line 300
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setSessionDuration(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSuccessfulOutgoingDatagram:I

    .line 301
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setCountOfOutgoingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfFailedOutgoingDatagram:I

    .line 302
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setCountOfOutgoingDatagramFailed(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSuccessfulIncomingDatagram:I

    .line 303
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setCountOfIncomingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfIncomingDatagramFailed:I

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setCountOfIncomingDatagramFailed(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsDemoMode:Z

    .line 305
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setIsDemoMode(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mMaxNtnSignalStrengthLevel:I

    .line 306
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setMaxNtnSignalStrengthLevel(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCarrierId:I

    .line 307
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfSatelliteNotificationDisplayed:I

    .line 308
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setCountOfSatelliteNotificationDisplayed(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfAutoExitDueToScreenOff:I

    .line 310
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setCountOfAutoExitDueToScreenOff(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCountOfAutoExitDueToTnNetwork:I

    .line 311
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setCountOfAutoExitDueToTnNetwork(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsEmergency:Z

    .line 312
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setIsEmergency(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsNtnOnlyCarrier:Z

    .line 313
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mMaxInactivityDurationSec:I

    .line 314
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->setMaxInactivityDurationSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;

    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportSessionMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteSessionMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;)V

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->initializeSessionMetricsParam()V

    return-void
.end method

.method public blacklist requestSatelliteSessionStats(ILandroid/os/ResultReceiver;)V
    .registers 6

    .line 323
    sget-object p1, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->TAG:Ljava/lang/String;

    const-string v0, "requestSatelliteSessionStats called"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    new-instance v1, Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    invoke-direct {v1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;-><init>()V

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfSuccessfulOutgoingDatagram:I

    .line 326
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->setCountOfSuccessfulUserMessages(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfFailedOutgoingDatagram:I

    .line 327
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->setCountOfUnsuccessfulUserMessages(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfTimedOutUserMessagesWaitingForConnection:I

    .line 328
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->setCountOfTimedOutUserMessagesWaitingForConnection(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfTimedOutUserMessagesWaitingForAck:I

    .line 330
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->setCountOfTimedOutUserMessagesWaitingForAck(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    move-result-object v1

    .line 333
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingUserMessagesCount()I

    move-result v2

    .line 332
    invoke-virtual {v1, v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->setCountOfUserMessagesInQueueToBeSent(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->build()Landroid/telephony/satellite/SatelliteSessionStats;

    move-result-object v1

    .line 335
    const-string v2, "session_stats"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mDatagramStats:Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {v1}, Landroid/telephony/satellite/SatelliteSessionStats;->resetCountOfUserMessagesInQueueToBeSent()V

    .line 340
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mDatagramStats:Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->updateSessionStatsWithPendingUserMsgCount(Landroid/telephony/satellite/SatelliteSessionStats;)V

    .line 341
    const-string v1, "session_stats_v2"

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mDatagramStats:Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[END] DatagramStats = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mDatagramStats:Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 343
    invoke-virtual {p2, p0, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public blacklist resetSessionStatsShadowCounters()V
    .registers 2

    .line 381
    const-string v0, "resetTheStatsCounters"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 382
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfSuccessfulOutgoingDatagram:I

    .line 383
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfFailedOutgoingDatagram:I

    .line 384
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfTimedOutUserMessagesWaitingForConnection:I

    .line 385
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mShadowCountOfTimedOutUserMessagesWaitingForAck:I

    .line 386
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mDatagramStats:Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSessionStats;->clear()V

    return-void
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 4

    .line 238
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mCarrierId:I

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCarrierId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setInitializationProcessingTime(J)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitializationProcessingTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    .line 116
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mInitializationProcessingTimeMillis:J

    return-object p0
.end method

.method public blacklist setInitializationResult(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitializationResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    .line 93
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mInitializationResult:I

    return-object p0
.end method

.method public blacklist setIsDemoMode(Z)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 3

    .line 220
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsDemoMode:Z

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIsDemoMode("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsDemoMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setIsEmergency(Z)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 3

    .line 267
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsEmergency:Z

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIsEmergency("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsEmergency:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 3

    .line 274
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsNtnOnlyCarrier:Z

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIsNtnOnlyCarrier("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mIsNtnOnlyCarrier:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setSatelliteTechnology(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteTechnology("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    .line 101
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mRadioTechnology:I

    return-object p0
.end method

.method public blacklist setSessionDurationSec(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 4

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSessionDuration("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    .line 130
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mSessionDurationSec:I

    return-object p0
.end method

.method public blacklist setTerminationProcessingTime(J)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 5

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTerminationProcessingTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    .line 123
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mTerminationProcessingTimeMillis:J

    return-object p0
.end method

.method public blacklist setTerminationResult(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTerminationResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    .line 109
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mTerminationResult:I

    return-object p0
.end method

.method public blacklist updateMaxInactivityDurationSec(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 4

    .line 281
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mMaxInactivityDurationSec:I

    if-le p1, v0, :cond_6

    .line 282
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mMaxInactivityDurationSec:I

    .line 284
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMaxInactivityDurationSec: latest inactivty duration (sec)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", max inactivity duration="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mMaxInactivityDurationSec:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist updateMaxNtnSignalStrengthLevel(I)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;
    .registers 4

    .line 228
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mMaxNtnSignalStrengthLevel:I

    if-le p1, v0, :cond_6

    .line 229
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mMaxNtnSignalStrengthLevel:I

    .line 231
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMaxNtnSignalsStrength: latest signal strength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", max signal strength="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->mMaxNtnSignalStrengthLevel:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->logd(Ljava/lang/String;)V

    return-object p0
.end method

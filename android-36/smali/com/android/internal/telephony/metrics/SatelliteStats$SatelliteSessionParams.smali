.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteSessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCarrierId:I

.field private final blacklist mCountOfAutoExitDueToScreenOff:I

.field private final blacklist mCountOfAutoExitDueToTnNetwork:I

.field private final blacklist mCountOfIncomingDatagramFailed:I

.field private final blacklist mCountOfIncomingDatagramSuccess:I

.field private final blacklist mCountOfOutgoingDatagramFailed:I

.field private final blacklist mCountOfOutgoingDatagramSuccess:I

.field private final blacklist mCountOfSatelliteNotificationDisplayed:I

.field private final blacklist mInitializationProcessingTimeMillis:J

.field private final blacklist mIsDemoMode:Z

.field private final blacklist mIsEmergency:Z

.field private final blacklist mIsNtnOnlyCarrier:Z

.field private final blacklist mMaxInactivityDurationSec:I

.field private final blacklist mMaxNtnSignalStrengthLevel:I

.field private final blacklist mSatelliteServiceInitializationResult:I

.field private final blacklist mSatelliteTechnology:I

.field private final blacklist mSessionDurationSec:I

.field private final blacklist mTerminationProcessingTimeMillis:J

.field private final blacklist mTerminationResult:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteServiceInitializationResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSatelliteServiceInitializationResult:I

    .line 953
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteTechnology(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSatelliteTechnology:I

    .line 954
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmTerminationResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationResult:I

    .line 955
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmInitializationProcessingTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mInitializationProcessingTimeMillis:J

    .line 956
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmTerminationProcessingTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationProcessingTimeMillis:J

    .line 958
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmSessionDurationSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSessionDurationSec:I

    .line 959
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfOutgoingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramSuccess:I

    .line 960
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfOutgoingDatagramFailed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramFailed:I

    .line 961
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfIncomingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramSuccess:I

    .line 962
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfIncomingDatagramFailed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramFailed:I

    .line 963
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmIsDemoMode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsDemoMode:Z

    .line 964
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmMaxNtnSignalStrengthLevel(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxNtnSignalStrengthLevel:I

    .line 965
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCarrierId:I

    .line 966
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfSatelliteNotificationDisplayed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfSatelliteNotificationDisplayed:I

    .line 968
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfAutoExitDueToScreenOff(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToScreenOff:I

    .line 969
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfAutoExitDueToTnNetwork(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToTnNetwork:I

    .line 970
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmIsEmergency(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsEmergency:Z

    .line 971
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsNtnOnlyCarrier:Z

    .line 972
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmMaxInactivityDurationSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxInactivityDurationSec:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getCarrierId()I
    .registers 1

    .line 1024
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCarrierId:I

    return p0
.end method

.method public blacklist getCountOfAutoExitDueToScreenOff()I
    .registers 1

    .line 1032
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToScreenOff:I

    return p0
.end method

.method public blacklist getCountOfAutoExitDueToTnNetwork()I
    .registers 1

    .line 1036
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToTnNetwork:I

    return p0
.end method

.method public blacklist getCountOfIncomingDatagramFailed()I
    .registers 1

    .line 1012
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramFailed:I

    return p0
.end method

.method public blacklist getCountOfIncomingDatagramSuccess()I
    .registers 1

    .line 1008
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramSuccess:I

    return p0
.end method

.method public blacklist getCountOfOutgoingDatagramFailed()I
    .registers 1

    .line 1004
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramFailed:I

    return p0
.end method

.method public blacklist getCountOfOutgoingDatagramSuccess()I
    .registers 1

    .line 1000
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramSuccess:I

    return p0
.end method

.method public blacklist getCountOfSatelliteNotificationDisplayed()I
    .registers 1

    .line 1028
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfSatelliteNotificationDisplayed:I

    return p0
.end method

.method public blacklist getInitializationProcessingTime()J
    .registers 3

    .line 988
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mInitializationProcessingTimeMillis:J

    return-wide v0
.end method

.method public blacklist getIsDemoMode()Z
    .registers 1

    .line 1016
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsDemoMode:Z

    return p0
.end method

.method public blacklist getIsEmergency()Z
    .registers 1

    .line 1040
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsEmergency:Z

    return p0
.end method

.method public blacklist getMaxInactivityDurationSec()I
    .registers 1

    .line 1048
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxInactivityDurationSec:I

    return p0
.end method

.method public blacklist getMaxNtnSignalStrengthLevel()I
    .registers 1

    .line 1020
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxNtnSignalStrengthLevel:I

    return p0
.end method

.method public blacklist getSatelliteServiceInitializationResult()I
    .registers 1

    .line 976
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSatelliteServiceInitializationResult:I

    return p0
.end method

.method public blacklist getSatelliteTechnology()I
    .registers 1

    .line 980
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSatelliteTechnology:I

    return p0
.end method

.method public blacklist getSessionDuration()I
    .registers 1

    .line 996
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSessionDurationSec:I

    return p0
.end method

.method public blacklist getTerminationProcessingTime()J
    .registers 3

    .line 992
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationProcessingTimeMillis:J

    return-wide v0
.end method

.method public blacklist getTerminationResult()I
    .registers 1

    .line 984
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationResult:I

    return p0
.end method

.method public blacklist isNtnOnlyCarrier()Z
    .registers 1

    .line 1044
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionParams(, satelliteServiceInitializationResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSatelliteServiceInitializationResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TerminationResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", InitializationProcessingTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mInitializationProcessingTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", TerminationProcessingTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationProcessingTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", SessionDurationSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSessionDurationSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfOutgoingDatagramSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfOutgoingDatagramFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramFailed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfIncomingDatagramSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfIncomingDatagramFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramFailed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsDemoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsDemoMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MaxNtnSignalStrengthLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxNtnSignalStrengthLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CarrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfSatelliteNotificationDisplayed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfSatelliteNotificationDisplayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfAutoExitDueToScreenOff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToScreenOff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfAutoExitDueToTnNetwork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToTnNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IsNtnOnlyCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsNtnOnlyCarrier:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MaxInactivityDurationSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxInactivityDurationSec:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

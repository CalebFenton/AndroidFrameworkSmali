.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mCountOfAutoExitDueToScreenOff:I

.field private blacklist mCountOfAutoExitDueToTnNetwork:I

.field private blacklist mCountOfIncomingDatagramFailed:I

.field private blacklist mCountOfIncomingDatagramSuccess:I

.field private blacklist mCountOfOutgoingDatagramFailed:I

.field private blacklist mCountOfOutgoingDatagramSuccess:I

.field private blacklist mCountOfSatelliteNotificationDisplayed:I

.field private blacklist mInitializationProcessingTimeMillis:J

.field private blacklist mIsDemoMode:Z

.field private blacklist mIsEmergency:Z

.field private blacklist mIsNtnOnlyCarrier:Z

.field private blacklist mMaxInactivityDurationSec:I

.field private blacklist mMaxNtnSignalStrengthLevel:I

.field private blacklist mSatelliteServiceInitializationResult:I

.field private blacklist mSatelliteTechnology:I

.field private blacklist mSessionDurationSec:I

.field private blacklist mTerminationProcessingTimeMillis:J

.field private blacklist mTerminationResult:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfAutoExitDueToScreenOff(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfAutoExitDueToScreenOff:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfAutoExitDueToTnNetwork(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfAutoExitDueToTnNetwork:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingDatagramFailed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfIncomingDatagramFailed:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfIncomingDatagramSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingDatagramFailed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfOutgoingDatagramFailed:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfOutgoingDatagramSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSatelliteNotificationDisplayed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfSatelliteNotificationDisplayed:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitializationProcessingTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mInitializationProcessingTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDemoMode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mIsDemoMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmergency(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mIsEmergency:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxInactivityDurationSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mMaxInactivityDurationSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxNtnSignalStrengthLevel(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mMaxNtnSignalStrengthLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteServiceInitializationResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mSatelliteServiceInitializationResult:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteTechnology(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mSatelliteTechnology:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionDurationSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mSessionDurationSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTerminationProcessingTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mTerminationProcessingTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTerminationResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mTerminationResult:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1055
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mSatelliteServiceInitializationResult:I

    .line 1056
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mSatelliteTechnology:I

    .line 1057
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mTerminationResult:I

    const-wide/16 v1, -0x1

    .line 1058
    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mInitializationProcessingTimeMillis:J

    .line 1059
    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mTerminationProcessingTimeMillis:J

    .line 1060
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mSessionDurationSec:I

    .line 1061
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfOutgoingDatagramSuccess:I

    .line 1062
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfOutgoingDatagramFailed:I

    .line 1063
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfIncomingDatagramSuccess:I

    .line 1064
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfIncomingDatagramFailed:I

    const/4 v1, 0x0

    .line 1065
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mIsDemoMode:Z

    .line 1066
    iput v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mMaxNtnSignalStrengthLevel:I

    .line 1068
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCarrierId:I

    .line 1069
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfSatelliteNotificationDisplayed:I

    .line 1070
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfAutoExitDueToScreenOff:I

    .line 1071
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfAutoExitDueToTnNetwork:I

    .line 1072
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mIsEmergency:Z

    .line 1073
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mIsNtnOnlyCarrier:Z

    .line 1074
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mMaxInactivityDurationSec:I

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;
    .registers 4

    .line 1219
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1159
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setCountOfAutoExitDueToScreenOff(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1179
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfAutoExitDueToScreenOff:I

    return-object p0
.end method

.method public blacklist setCountOfAutoExitDueToTnNetwork(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1189
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfAutoExitDueToTnNetwork:I

    return-object p0
.end method

.method public blacklist setCountOfIncomingDatagramFailed(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1140
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfIncomingDatagramFailed:I

    return-object p0
.end method

.method public blacklist setCountOfIncomingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1134
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfIncomingDatagramSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfOutgoingDatagramFailed(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1128
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfOutgoingDatagramFailed:I

    return-object p0
.end method

.method public blacklist setCountOfOutgoingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1122
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfOutgoingDatagramSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfSatelliteNotificationDisplayed(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1169
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mCountOfSatelliteNotificationDisplayed:I

    return-object p0
.end method

.method public blacklist setInitializationProcessingTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 3

    .line 1104
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mInitializationProcessingTimeMillis:J

    return-object p0
.end method

.method public blacklist setIsDemoMode(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1146
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mIsDemoMode:Z

    return-object p0
.end method

.method public blacklist setIsEmergency(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1195
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mIsEmergency:Z

    return-object p0
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1204
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mIsNtnOnlyCarrier:Z

    return-object p0
.end method

.method public blacklist setMaxInactivityDurationSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1210
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mMaxInactivityDurationSec:I

    return-object p0
.end method

.method public blacklist setMaxNtnSignalStrengthLevel(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1153
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mMaxNtnSignalStrengthLevel:I

    return-object p0
.end method

.method public blacklist setSatelliteServiceInitializationResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1082
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mSatelliteServiceInitializationResult:I

    return-object p0
.end method

.method public blacklist setSatelliteTechnology(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1091
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mSatelliteTechnology:I

    return-object p0
.end method

.method public blacklist setSessionDuration(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1116
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mSessionDurationSec:I

    return-object p0
.end method

.method public blacklist setTerminationProcessingTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 3

    .line 1110
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mTerminationProcessingTimeMillis:J

    return-object p0
.end method

.method public blacklist setTerminationResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    .registers 2

    .line 1098
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->mTerminationResult:I

    return-object p0
.end method

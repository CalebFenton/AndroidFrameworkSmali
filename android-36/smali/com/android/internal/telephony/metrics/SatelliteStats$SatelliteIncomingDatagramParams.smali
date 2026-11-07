.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteIncomingDatagramParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCarrierId:I

.field private final blacklist mDatagramSizeBytes:I

.field private final blacklist mDatagramTransferTimeMillis:J

.field private final blacklist mIsDemoMode:Z

.field private final blacklist mIsNtnOnlyCarrier:Z

.field private final blacklist mResultCode:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)V
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

    .line 1263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1264
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->-$$Nest$fgetmResultCode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mResultCode:I

    .line 1265
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->-$$Nest$fgetmDatagramSizeBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mDatagramSizeBytes:I

    .line 1266
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->-$$Nest$fgetmDatagramTransferTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mDatagramTransferTimeMillis:J

    .line 1267
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->-$$Nest$fgetmIsDemoMode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mIsDemoMode:Z

    .line 1268
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mCarrierId:I

    .line 1269
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;->-$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mIsNtnOnlyCarrier:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getCarrierId()I
    .registers 1

    .line 1289
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mCarrierId:I

    return p0
.end method

.method public blacklist getDatagramSizeBytes()I
    .registers 1

    .line 1277
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mDatagramSizeBytes:I

    return p0
.end method

.method public blacklist getDatagramTransferTimeMillis()J
    .registers 3

    .line 1281
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mDatagramTransferTimeMillis:J

    return-wide v0
.end method

.method public blacklist getIsDemoMode()Z
    .registers 1

    .line 1285
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mIsDemoMode:Z

    return p0
.end method

.method public blacklist getResultCode()I
    .registers 1

    .line 1273
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mResultCode:I

    return p0
.end method

.method public blacklist isNtnOnlyCarrier()Z
    .registers 1

    .line 1293
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IncomingDatagramParams(, resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", datagramSizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mDatagramSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", datagramTransferTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mDatagramTransferTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isDemoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mIsDemoMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", CarrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNtnOnlyCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->mIsNtnOnlyCarrier:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

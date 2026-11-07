.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteProvisionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCarrierId:I

.field private final blacklist mIsCanceled:Z

.field private final blacklist mIsNtnOnlyCarrier:Z

.field private final blacklist mIsProvisionRequest:Z

.field private final blacklist mProvisioningTimeSec:I

.field private final blacklist mResultCode:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)V
    .registers 3
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

    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->-$$Nest$fgetmResultCode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mResultCode:I

    .line 1542
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->-$$Nest$fgetmProvisioningTimeSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mProvisioningTimeSec:I

    .line 1543
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->-$$Nest$fgetmIsProvisionRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mIsProvisionRequest:Z

    .line 1544
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->-$$Nest$fgetmIsCanceled(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mIsCanceled:Z

    .line 1545
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mCarrierId:I

    .line 1546
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;->-$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mIsNtnOnlyCarrier:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getCarrierId()I
    .registers 1

    .line 1566
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mCarrierId:I

    return p0
.end method

.method public blacklist getIsCanceled()Z
    .registers 1

    .line 1562
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mIsCanceled:Z

    return p0
.end method

.method public blacklist getIsProvisionRequest()Z
    .registers 1

    .line 1558
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mIsProvisionRequest:Z

    return p0
.end method

.method public blacklist getProvisioningTimeSec()I
    .registers 1

    .line 1554
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mProvisioningTimeSec:I

    return p0
.end method

.method public blacklist getResultCode()I
    .registers 1

    .line 1550
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mResultCode:I

    return p0
.end method

.method public blacklist isNtnOnlyCarrier()Z
    .registers 1

    .line 1570
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisionParams(resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", provisioningTimeSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mProvisioningTimeSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isProvisionRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mIsProvisionRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCanceled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mIsCanceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", CarrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNtnOnlyCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->mIsNtnOnlyCarrier:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

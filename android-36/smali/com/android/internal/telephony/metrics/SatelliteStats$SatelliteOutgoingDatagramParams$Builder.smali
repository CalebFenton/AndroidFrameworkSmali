.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mDatagramSizeBytes:I

.field private blacklist mDatagramTransferTimeMillis:J

.field private blacklist mDatagramType:I

.field private blacklist mIsDemoMode:Z

.field private blacklist mIsNtnOnlyCarrier:Z

.field private blacklist mResultCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramSizeBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mDatagramSizeBytes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramTransferTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mDatagramTransferTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramType(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mDatagramType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDemoMode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mIsDemoMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultCode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mResultCode:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 1435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1436
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mDatagramType:I

    .line 1437
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mResultCode:I

    .line 1438
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mDatagramSizeBytes:I

    const-wide/16 v1, -0x1

    .line 1439
    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mDatagramTransferTimeMillis:J

    const/4 v1, 0x0

    .line 1440
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mIsDemoMode:Z

    .line 1441
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mCarrierId:I

    .line 1442
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mIsNtnOnlyCarrier:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;
    .registers 4

    .line 1509
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;
    .registers 2

    .line 1491
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setDatagramSizeBytes(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;
    .registers 2

    .line 1467
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mDatagramSizeBytes:I

    return-object p0
.end method

.method public blacklist setDatagramTransferTimeMillis(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;
    .registers 3

    .line 1476
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mDatagramTransferTimeMillis:J

    return-object p0
.end method

.method public blacklist setDatagramType(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;
    .registers 2

    .line 1449
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mDatagramType:I

    return-object p0
.end method

.method public blacklist setIsDemoMode(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;
    .registers 2

    .line 1485
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mIsDemoMode:Z

    return-object p0
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;
    .registers 2

    .line 1500
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mIsNtnOnlyCarrier:Z

    return-object p0
.end method

.method public blacklist setResultCode(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;
    .registers 2

    .line 1458
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->mResultCode:I

    return-object p0
.end method

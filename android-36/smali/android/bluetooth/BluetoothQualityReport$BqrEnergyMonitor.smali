.class public final Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;
.super Ljava/lang/Object;
.source "BluetoothQualityReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BqrEnergyMonitor"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mActiveStateEnterCount:J

.field private final blacklist mActiveTotalTime:J

.field private final blacklist mAvgCurrentConsume:I

.field private final blacklist mBredrRxStateEnterCount:J

.field private final blacklist mBredrRxTotalTime:J

.field private final blacklist mBredrTxAvgPowerLevel:I

.field private final blacklist mBredrTxStateEnterCount:J

.field private final blacklist mBredrTxTotalTime:J

.field private final blacklist mIdleStateEnterCount:J

.field private final blacklist mIdleTotalTime:J

.field private final blacklist mLeRxStateEnterCount:J

.field private final blacklist mLeRxTotalTime:J

.field private final blacklist mLeTxAvgPowerLevel:I

.field private final blacklist mLeTxStateEnterCount:J

.field private final blacklist mLeTxTotalTime:J

.field private final blacklist mReportTotalTime:J

.field private final blacklist mRxActiveOneChainTime:J

.field private final blacklist mRxActiveTwoChainTime:J

.field private final blacklist mTxePaActiveOneChainTime:J

.field private final blacklist mTxePaActiveTwoChainTime:J

.field private final blacklist mTxiPaActiveOneChainTime:J

.field private final blacklist mTxiPaActiveTwoChainTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2392
    const-class v1, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->TAG:Ljava/lang/String;

    .line 2784
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mAvgCurrentConsume:I

    .line 2453
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mIdleTotalTime:J

    .line 2454
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mIdleStateEnterCount:J

    .line 2455
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mActiveTotalTime:J

    .line 2456
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mActiveStateEnterCount:J

    .line 2457
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxTotalTime:J

    .line 2458
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxStateEnterCount:J

    .line 2459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxAvgPowerLevel:I

    .line 2460
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrRxTotalTime:J

    .line 2461
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrRxStateEnterCount:J

    .line 2462
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxTotalTime:J

    .line 2463
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxStateEnterCount:J

    .line 2464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxAvgPowerLevel:I

    .line 2465
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeRxTotalTime:J

    .line 2466
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeRxStateEnterCount:J

    .line 2467
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mReportTotalTime:J

    .line 2468
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mRxActiveOneChainTime:J

    .line 2469
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mRxActiveTwoChainTime:J

    .line 2470
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxiPaActiveOneChainTime:J

    .line 2471
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxiPaActiveTwoChainTime:J

    .line 2472
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxePaActiveOneChainTime:J

    .line 2473
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxePaActiveTwoChainTime:J

    .line 2474
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([BI)V
    .registers 8
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I

    .line 2417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2418
    if-eqz p1, :cond_cf

    array-length v0, p1

    if-le v0, p2, :cond_cf

    .line 2423
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 2424
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2425
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2427
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mAvgCurrentConsume:I

    .line 2428
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mIdleTotalTime:J

    .line 2429
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mIdleStateEnterCount:J

    .line 2430
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mActiveTotalTime:J

    .line 2431
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mActiveStateEnterCount:J

    .line 2432
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxTotalTime:J

    .line 2433
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxStateEnterCount:J

    .line 2434
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxAvgPowerLevel:I

    .line 2435
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrRxTotalTime:J

    .line 2436
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrRxStateEnterCount:J

    .line 2437
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxTotalTime:J

    .line 2438
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxStateEnterCount:J

    .line 2439
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxAvgPowerLevel:I

    .line 2440
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeRxTotalTime:J

    .line 2441
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeRxStateEnterCount:J

    .line 2442
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mReportTotalTime:J

    .line 2443
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mRxActiveOneChainTime:J

    .line 2444
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mRxActiveTwoChainTime:J

    .line 2445
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxiPaActiveOneChainTime:J

    .line 2446
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxiPaActiveTwoChainTime:J

    .line 2447
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxePaActiveOneChainTime:J

    .line 2448
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxePaActiveTwoChainTime:J

    .line 2449
    return-void

    .line 2419
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": BQR EnergyMonitor raw data length is abnormal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2747
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActiveStateEnterCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2533
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mActiveStateEnterCount:J

    return-wide v0
.end method

.method public whitelist getActiveStateTotalTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2522
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mActiveTotalTime:J

    return-wide v0
.end method

.method public whitelist getAverageCurrentConsumptionMicroamps()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2485
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mAvgCurrentConsume:I

    return v0
.end method

.method public whitelist getBredrAverageTxPowerLeveldBm()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2568
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxAvgPowerLevel:I

    return v0
.end method

.method public whitelist getBredrRxStateEnterCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2592
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrRxStateEnterCount:J

    return-wide v0
.end method

.method public whitelist getBredrRxTotalTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2581
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrRxTotalTime:J

    return-wide v0
.end method

.method public whitelist getBredrTxStateEnterCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2557
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxStateEnterCount:J

    return-wide v0
.end method

.method public whitelist getBredrTxTotalTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2546
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxTotalTime:J

    return-wide v0
.end method

.method public whitelist getIdleStateEnterCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2509
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mIdleStateEnterCount:J

    return-wide v0
.end method

.method public whitelist getIdleStateTotalTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2498
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mIdleTotalTime:J

    return-wide v0
.end method

.method public whitelist getLeAverageTxPowerLeveldBm()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2627
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxAvgPowerLevel:I

    return v0
.end method

.method public whitelist getLeRxStateEnterCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2651
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeRxStateEnterCount:J

    return-wide v0
.end method

.method public whitelist getLeRxTotalTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2640
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeRxTotalTime:J

    return-wide v0
.end method

.method public whitelist getLeTsTotalTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2605
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxTotalTime:J

    return-wide v0
.end method

.method public whitelist getLeTxStateEnterCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2616
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxStateEnterCount:J

    return-wide v0
.end method

.method public whitelist getPowerDataTotalTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2664
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mReportTotalTime:J

    return-wide v0
.end method

.method public whitelist getRxDualChainActiveDurationMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2690
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mRxActiveTwoChainTime:J

    return-wide v0
.end method

.method public whitelist getRxSingleChainActiveDurationMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2677
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mRxActiveOneChainTime:J

    return-wide v0
.end method

.method public whitelist getTxExternalPaDualChainActiveDurationMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2742
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxePaActiveTwoChainTime:J

    return-wide v0
.end method

.method public whitelist getTxExternalPaSingleChainActiveDurationMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2729
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxePaActiveOneChainTime:J

    return-wide v0
.end method

.method public whitelist getTxInternalPaDualChainActiveDurationMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2716
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxiPaActiveTwoChainTime:J

    return-wide v0
.end method

.method public whitelist getTxInternalPaSingleChainActiveDurationMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2703
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxiPaActiveOneChainTime:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrEnergyMonitor: {\n    AvgCurrentConsume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mAvgCurrentConsume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIdleTotalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mIdleTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIdleStateEnterCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mIdleStateEnterCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActiveTotalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mActiveTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActiveStateEnterCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mActiveStateEnterCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mBredrTxTotalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBredrTxStateEnterCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxStateEnterCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBredrTxAvgPowerLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxAvgPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBredrRxTotalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrRxTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBredrRxStateEnterCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrRxStateEnterCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLeTxTotalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLeTxStateEnterCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxStateEnterCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLeTxAvgPowerLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxAvgPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLeRxTotalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeRxTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLeRxStateEnterCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeRxStateEnterCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReportTotalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mReportTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxActiveOneChainTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mRxActiveOneChainTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxActiveTwoChainTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mRxActiveTwoChainTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxiPaActiveOneChainTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxiPaActiveOneChainTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxiPaActiveTwoChainTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxiPaActiveTwoChainTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxePaActiveOneChainTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxePaActiveOneChainTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxePaActiveTwoChainTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxePaActiveTwoChainTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2758
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mAvgCurrentConsume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2759
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mIdleTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2760
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mIdleStateEnterCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2761
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mActiveTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2762
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mActiveStateEnterCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2763
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2764
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxStateEnterCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2765
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrTxAvgPowerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2766
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrRxTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2767
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mBredrRxStateEnterCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2768
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2769
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxStateEnterCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2770
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeTxAvgPowerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2771
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeRxTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2772
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mLeRxStateEnterCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2773
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mReportTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2774
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mRxActiveOneChainTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2775
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mRxActiveTwoChainTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2776
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxiPaActiveOneChainTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2777
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxiPaActiveTwoChainTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2778
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxePaActiveOneChainTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2779
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->mTxePaActiveTwoChainTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2780
    return-void
.end method

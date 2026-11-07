.class public final Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;
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
    name = "BqrVsLsto"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBasebandStats:J

.field private final blacklist mConnState:I

.field private final blacklist mCxmDenials:I

.field private final blacklist mLastTxAckTimestamp:J

.field private final blacklist mNativeClock:J

.field private final blacklist mRfLoss:I

.field private final blacklist mSlotsUsed:J

.field private final blacklist mTxSkipped:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1417
    const-class v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->TAG:Ljava/lang/String;

    .line 1583
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mConnState:I

    .line 1449
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mBasebandStats:J

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mSlotsUsed:J

    .line 1451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mCxmDenials:I

    .line 1452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mTxSkipped:I

    .line 1453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mRfLoss:I

    .line 1454
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mNativeClock:J

    .line 1455
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mLastTxAckTimestamp:J

    .line 1456
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([BI)V
    .registers 8
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I

    .line 1428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1429
    if-eqz p1, :cond_5d

    array-length v0, p1

    if-le v0, p2, :cond_5d

    .line 1433
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 1434
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1435
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1437
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mConnState:I

    .line 1438
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mBasebandStats:J

    .line 1439
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mSlotsUsed:J

    .line 1440
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mCxmDenials:I

    .line 1441
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mTxSkipped:I

    .line 1442
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mRfLoss:I

    .line 1443
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mNativeClock:J

    .line 1444
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mLastTxAckTimestamp:J

    .line 1445
    return-void

    .line 1430
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": BQR raw data length is abnormal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;-><init>([BI)V

    return-void
.end method

.method public static whitelist connStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "connectionState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1478
    invoke-static {p0}, Landroid/bluetooth/BluetoothQualityReport$ConnState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1560
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBasebandStats()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1489
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mBasebandStats:J

    return-wide v0
.end method

.method public whitelist getConnState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1466
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mConnState:I

    return v0
.end method

.method public whitelist getCxmDenials()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1511
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mCxmDenials:I

    return v0
.end method

.method public whitelist getLastTxAckTimestamp()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1555
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mLastTxAckTimestamp:J

    return-wide v0
.end method

.method public whitelist getNativeClock()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1544
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mNativeClock:J

    return-wide v0
.end method

.method public whitelist getRfLoss()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1533
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mRfLoss:I

    return v0
.end method

.method public whitelist getSlotsUsed()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1500
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mSlotsUsed:J

    return-wide v0
.end method

.method public whitelist getTxSkipped()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1522
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mTxSkipped:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrVsLsto: {\n    mConnState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1602
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->getConnState()I

    move-result v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->connStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mConnState:I

    .line 1604
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mBasebandStats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mBasebandStats:J

    .line 1607
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSlotsUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mSlotsUsed:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCxmDenials: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mCxmDenials:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxSkipped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mTxSkipped:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRfLoss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mRfLoss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNativeClock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mNativeClock:J

    .line 1617
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastTxAckTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mLastTxAckTimestamp:J

    .line 1619
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1622
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1571
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mConnState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mBasebandStats:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1573
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mSlotsUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1574
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mTxSkipped:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1576
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mRfLoss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1577
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mNativeClock:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1578
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mLastTxAckTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1579
    return-void
.end method

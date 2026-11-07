.class public final Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;
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
    name = "BqrVsA2dpChoppy"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAclTxQueueLength:I

.field private final blacklist mArrivalTime:J

.field private final blacklist mGlitchCount:I

.field private final blacklist mLinkQuality:I

.field private final blacklist mRxCxmDenials:I

.field private final blacklist mScheduleTime:J

.field private final blacklist mTxCxmDenials:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1634
    const-class v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->TAG:Ljava/lang/String;

    .line 1786
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    .line 1664
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    .line 1665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    .line 1666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    .line 1667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    .line 1668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    .line 1669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    .line 1670
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([BI)V
    .registers 8
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I

    .line 1644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1645
    if-eqz p1, :cond_55

    array-length v0, p1

    if-le v0, p2, :cond_55

    .line 1649
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 1650
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1651
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1653
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    .line 1654
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    .line 1655
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    .line 1656
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    .line 1657
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    .line 1658
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    .line 1659
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    .line 1660
    return-void

    .line 1646
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->TAG:Ljava/lang/String;

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

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>([BI)V

    return-void
.end method

.method public static whitelist linkQualityToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "linkQuality"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1758
    invoke-static {p0}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    move-result-object v0

    .line 1759
    .local v0, "q":Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1764
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAclTxQueueLength()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1735
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    return v0
.end method

.method public whitelist getArrivalTime()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1680
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    return-wide v0
.end method

.method public whitelist getGlitchCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1702
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    return v0
.end method

.method public whitelist getLinkQuality()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1746
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    return v0
.end method

.method public whitelist getRxCxmDenials()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1724
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    return v0
.end method

.method public whitelist getScheduleTime()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1691
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    return-wide v0
.end method

.method public whitelist getTxCxmDenials()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1713
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrVsA2dpChoppy: {\n    mArrivalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    .line 1805
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScheduleTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    .line 1807
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGlitchCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxCxmDenials: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxCxmDenials: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAclTxQueueLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLinkQuality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    .line 1817
    invoke-static {v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->linkQualityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    .line 1819
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1823
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1775
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1776
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1777
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1778
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1779
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1780
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1781
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1782
    return-void
.end method

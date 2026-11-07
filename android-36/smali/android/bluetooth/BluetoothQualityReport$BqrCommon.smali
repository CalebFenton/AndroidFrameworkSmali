.class public final Landroid/bluetooth/BluetoothQualityReport$BqrCommon;
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
    name = "BqrCommon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothQualityReport$BqrCommon$ConnectionRole;
    }
.end annotation


# static fields
.field static final blacklist BQR_COMMON_LEN:I = 0x55

.field public static final whitelist CONNECTION_ROLE_CENTRAL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONNECTION_ROLE_PERIPHERAL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothQualityReport$BqrCommon;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAddr:Ljava/lang/String;

.field private blacklist mAfhSelectUnidealChannelCount:I

.field private blacklist mCalFailedItemCount:I

.field private blacklist mCoexInfoMask:I

.field private blacklist mConnectionHandle:I

.field private blacklist mConnectionRole:I

.field private blacklist mCrcErrorPackets:J

.field private blacklist mFlowOffCount:J

.field private blacklist mLastFlowOnTimestamp:J

.field private blacklist mLastTxAckTimestamp:J

.field private blacklist mLsto:I

.field private blacklist mNakCount:J

.field private blacklist mNoRxCount:J

.field private blacklist mOverflowCount:J

.field private blacklist mPacketType:I

.field private blacklist mPiconetClock:J

.field private final blacklist mQualityReportId:I

.field private blacklist mRetransmissionCount:J

.field private blacklist mRssi:I

.field private blacklist mRxDupPackets:J

.field private blacklist mRxUnRecvPackets:J

.field private blacklist mSnr:I

.field private blacklist mTxFlushPackets:J

.field private blacklist mTxLastSubeventPackets:J

.field private blacklist mTxPowerLevel:I

.field private blacklist mTxTotalPackets:J

.field private blacklist mTxUnackPackets:J

.field private blacklist mUnderflowCount:J

.field private blacklist mUnusedAfhChannelCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 745
    const-class v1, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->TAG:Ljava/lang/String;

    .line 1314
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionHandle:I

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionRole:I

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxPowerLevel:I

    .line 844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRssi:I

    .line 845
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mSnr:I

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnusedAfhChannelCount:I

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAfhSelectUnidealChannelCount:I

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLsto:I

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPiconetClock:J

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRetransmissionCount:J

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNoRxCount:J

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNakCount:J

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastTxAckTimestamp:J

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mFlowOffCount:J

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastFlowOnTimestamp:J

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mOverflowCount:J

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnderflowCount:J

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAddr:Ljava/lang/String;

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCalFailedItemCount:I

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxTotalPackets:J

    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxUnackPackets:J

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxFlushPackets:J

    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxLastSubeventPackets:J

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCrcErrorPackets:J

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRxDupPackets:J

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRxUnRecvPackets:J

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCoexInfoMask:I

    .line 868
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([BI)V
    .registers 16
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    .line 782
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->supportBluetoothQualityReportV6()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 783
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1b

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    .line 785
    :cond_1b
    return-void

    .line 789
    :cond_1c
    if-eqz p1, :cond_160

    array-length v0, p1

    add-int/lit8 v1, p2, 0x55

    if-lt v0, v1, :cond_160

    .line 793
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 794
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 795
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 797
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 798
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    .line 799
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionHandle:I

    .line 800
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionRole:I

    .line 801
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxPowerLevel:I

    .line 802
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRssi:I

    .line 803
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mSnr:I

    .line 804
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnusedAfhChannelCount:I

    .line 805
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAfhSelectUnidealChannelCount:I

    .line 806
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLsto:I

    .line 807
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPiconetClock:J

    .line 808
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v3, v1

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRetransmissionCount:J

    .line 809
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v3, v1

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNoRxCount:J

    .line 810
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v3, v1

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNakCount:J

    .line 811
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v3, v1

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastTxAckTimestamp:J

    .line 812
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v3, v1

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mFlowOffCount:J

    .line 813
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v3, v1

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastFlowOnTimestamp:J

    .line 814
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v3, v1

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mOverflowCount:J

    .line 815
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v3, v1

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnderflowCount:J

    .line 816
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 817
    .local v1, "currentOffset":I
    add-int/lit8 v3, v1, 0x5

    .line 820
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    add-int/lit8 v3, v1, 0x4

    .line 821
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    add-int/lit8 v3, v1, 0x3

    .line 822
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    add-int/lit8 v3, v1, 0x2

    .line 823
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    add-int/lit8 v3, v1, 0x1

    .line 824
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    add-int/lit8 v3, v1, 0x0

    .line 825
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    move-result-object v3

    .line 818
    const-string v4, "%02X:%02X:%02X:%02X:%02X:%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAddr:Ljava/lang/String;

    .line 826
    add-int/lit8 v3, v1, 0x6

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 827
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCalFailedItemCount:I

    .line 828
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxTotalPackets:J

    .line 829
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxUnackPackets:J

    .line 830
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxFlushPackets:J

    .line 831
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxLastSubeventPackets:J

    .line 832
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCrcErrorPackets:J

    .line 833
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRxDupPackets:J

    .line 834
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    iput-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRxUnRecvPackets:J

    .line 835
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int/2addr v2, v3

    iput v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCoexInfoMask:I

    .line 836
    return-void

    .line 790
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "currentOffset":I
    :cond_160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->TAG:Ljava/lang/String;

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

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;-><init>([BI)V

    return-void
.end method

.method public static whitelist connectionRoleToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "connectionRole"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 981
    if-nez p0, :cond_5

    .line 982
    const-string v0, "Central"

    return-object v0

    .line 983
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 984
    const-string v0, "Peripheral"

    return-object v0

    .line 986
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist packetTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "packetType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 921
    invoke-static {p0}, Landroid/bluetooth/BluetoothQualityReport$PacketType;->fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$PacketType;

    move-result-object v0

    .line 922
    .local v0, "type":Landroid/bluetooth/BluetoothQualityReport$PacketType;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist qualityReportIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "id"    # I

    .line 877
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->supportBluetoothQualityReportV6()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 878
    const/4 v0, 0x6

    if-ne v0, p0, :cond_c

    .line 879
    const-string v0, "Energy Monitor"

    return-object v0

    .line 880
    :cond_c
    const/16 v0, 0x9

    if-ne v0, p0, :cond_13

    .line 881
    const-string v0, "RF Stats"

    return-object v0

    .line 885
    :cond_13
    packed-switch p0, :pswitch_data_28

    .line 897
    :pswitch_16
    const-string v0, "INVALID"

    return-object v0

    .line 895
    :pswitch_19
    const-string v0, "Connect fail"

    return-object v0

    .line 893
    :pswitch_1c
    const-string v0, "SCO choppy"

    return-object v0

    .line 891
    :pswitch_1f
    const-string v0, "A2DP choppy"

    return-object v0

    .line 889
    :pswitch_22
    const-string v0, "Approaching LSTO"

    return-object v0

    .line 887
    :pswitch_25
    const-string v0, "Quality monitor"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1270
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAfhSelectUnidealChannelCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1043
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAfhSelectUnidealChannelCount:I

    return v0
.end method

.method public whitelist getCalFailedItemCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1166
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCalFailedItemCount:I

    return v0
.end method

.method public whitelist getCoexInfoMask()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1265
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCoexInfoMask:I

    return v0
.end method

.method public whitelist getConnectionHandle()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 933
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionHandle:I

    return v0
.end method

.method public whitelist getConnectionRole()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 969
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionRole:I

    return v0
.end method

.method public whitelist getCrcErrorPackets()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1228
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCrcErrorPackets:J

    return-wide v0
.end method

.method public whitelist getFlowOffCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1121
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mFlowOffCount:J

    return-wide v0
.end method

.method public whitelist getLastFlowOnTimestamp()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1132
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastFlowOnTimestamp:J

    return-wide v0
.end method

.method public whitelist getLastTxAckTimestamp()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1110
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastTxAckTimestamp:J

    return-wide v0
.end method

.method public whitelist getLsto()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1054
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLsto:I

    return v0
.end method

.method public whitelist getNakCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1099
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNakCount:J

    return-wide v0
.end method

.method public whitelist getNoRxCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1088
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNoRxCount:J

    return-wide v0
.end method

.method public whitelist getOverflowCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1144
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mOverflowCount:J

    return-wide v0
.end method

.method public whitelist getPacketType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 909
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    return v0
.end method

.method public whitelist getPiconetClock()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1066
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPiconetClock:J

    return-wide v0
.end method

.method blacklist getQualityReportId()I
    .registers 2

    .line 872
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    return v0
.end method

.method public whitelist getRetransmissionCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1077
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRetransmissionCount:J

    return-wide v0
.end method

.method public whitelist getRssi()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1009
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRssi:I

    return v0
.end method

.method public whitelist getRxDupPackets()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1240
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRxDupPackets:J

    return-wide v0
.end method

.method public whitelist getRxUnRecvPackets()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1253
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRxUnRecvPackets:J

    return-wide v0
.end method

.method public whitelist getSnr()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1020
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mSnr:I

    return v0
.end method

.method public whitelist getTxFlushPackets()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1202
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxFlushPackets:J

    return-wide v0
.end method

.method public whitelist getTxLastSubeventPackets()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1215
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxLastSubeventPackets:J

    return-wide v0
.end method

.method public whitelist getTxPowerLevel()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 998
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxPowerLevel:I

    return v0
.end method

.method public whitelist getTxTotalPackets()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1178
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxTotalPackets:J

    return-wide v0
.end method

.method public whitelist getTxUnackPackets()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1190
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxUnackPackets:J

    return-wide v0
.end method

.method public whitelist getUnderflowCount()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1155
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnderflowCount:J

    return-wide v0
.end method

.method public whitelist getUnusedAfhChannelCount()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1031
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnusedAfhChannelCount:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrCommon: {\n    mQualityReportId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1333
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->qualityReportIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    .line 1335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "0x%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), mPacketType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    .line 1338
    invoke-static {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->packetTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    .line 1340
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), mConnectionHandle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionHandle:I

    .line 1343
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "0x%04X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mConnectionRole: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1345
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getConnectionRole()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mTxPowerLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSnr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnusedAfhChannelCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnusedAfhChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mAfhSelectUnidealChannelCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAfhSelectUnidealChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLsto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLsto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPiconetClock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPiconetClock:J

    .line 1363
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRetransmissionCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRetransmissionCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNoRxCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNoRxCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNakCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNakCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastTxAckTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastTxAckTimestamp:J

    .line 1371
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFlowOffCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mFlowOffCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mLastFlowOnTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastFlowOnTimestamp:J

    .line 1376
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOverflowCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mOverflowCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnderflowCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnderflowCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCalFailedItemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCalFailedItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mTxTotalPackets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxTotalPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxUnackPackets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxUnackPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxFlushPackets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxFlushPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxLastSubeventPackets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxLastSubeventPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCrcErrorPackets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCrcErrorPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxDupPackets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRxDupPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxUnRecvPackets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRxUnRecvPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoexInfoMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCoexInfoMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1281
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxPowerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnusedAfhChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAfhSelectUnidealChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLsto:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1291
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPiconetClock:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1292
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRetransmissionCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1293
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNoRxCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1294
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNakCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1295
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastTxAckTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1296
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mFlowOffCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1297
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastFlowOnTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1298
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mOverflowCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1299
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnderflowCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1300
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAddr:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1301
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCalFailedItemCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxTotalPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1303
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxUnackPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1304
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxFlushPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1305
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxLastSubeventPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1306
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCrcErrorPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1307
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRxDupPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1308
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRxUnRecvPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1309
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mCoexInfoMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    return-void
.end method

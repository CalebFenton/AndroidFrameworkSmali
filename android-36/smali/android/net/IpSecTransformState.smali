.class public final Landroid/net/IpSecTransformState;
.super Ljava/lang/Object;
.source "IpSecTransformState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecTransformState$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mByteCount:J

.field private final blacklist mPacketCount:J

.field private final blacklist mReplayBitmap:[B

.field private final blacklist mRxHighestSequenceNumber:J

.field private final blacklist mTimestamp:J

.field private final blacklist mTxHighestSequenceNumber:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/net/IpSecTransformState$1;

    invoke-direct {v0}, Landroid/net/IpSecTransformState$1;-><init>()V

    sput-object v0, Landroid/net/IpSecTransformState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JJJJJ[B)V
    .registers 13
    .param p1, "timestamp"    # J
    .param p3, "txHighestSequenceNumber"    # J
    .param p5, "rxHighestSequenceNumber"    # J
    .param p7, "packetCount"    # J
    .param p9, "byteCount"    # J
    .param p11, "replayBitmap"    # [B

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Landroid/net/IpSecTransformState;->mTimestamp:J

    .line 58
    iput-wide p3, p0, Landroid/net/IpSecTransformState;->mTxHighestSequenceNumber:J

    .line 59
    iput-wide p5, p0, Landroid/net/IpSecTransformState;->mRxHighestSequenceNumber:J

    .line 60
    iput-wide p7, p0, Landroid/net/IpSecTransformState;->mPacketCount:J

    .line 61
    iput-wide p9, p0, Landroid/net/IpSecTransformState;->mByteCount:J

    .line 63
    const-string v0, "replayBitmap is null"

    invoke-static {p11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p11}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/IpSecTransformState;->mReplayBitmap:[B

    .line 66
    invoke-direct {p0}, Landroid/net/IpSecTransformState;->validate()V

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(JJJJJ[BLandroid/net/IpSecTransformState-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Landroid/net/IpSecTransformState;-><init>(JJJJJ[B)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "The input PersistableBundle is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/IpSecTransformState;->mTimestamp:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/IpSecTransformState;->mTxHighestSequenceNumber:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/IpSecTransformState;->mRxHighestSequenceNumber:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/IpSecTransformState;->mPacketCount:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/IpSecTransformState;->mByteCount:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecTransformState;->mReplayBitmap:[B

    .line 88
    invoke-direct {p0}, Landroid/net/IpSecTransformState;->validate()V

    .line 89
    return-void
.end method

.method private blacklist validate()V
    .registers 3

    .line 70
    iget-object v0, p0, Landroid/net/IpSecTransformState;->mReplayBitmap:[B

    const-string v1, "mReplayBitmap is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getByteCount()J
    .registers 3

    .line 171
    iget-wide v0, p0, Landroid/net/IpSecTransformState;->mByteCount:J

    return-wide v0
.end method

.method public whitelist getPacketCount()J
    .registers 3

    .line 159
    iget-wide v0, p0, Landroid/net/IpSecTransformState;->mPacketCount:J

    return-wide v0
.end method

.method public whitelist getReplayBitmap()[B
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/net/IpSecTransformState;->mReplayBitmap:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getRxHighestSequenceNumber()J
    .registers 3

    .line 147
    iget-wide v0, p0, Landroid/net/IpSecTransformState;->mRxHighestSequenceNumber:J

    return-wide v0
.end method

.method public whitelist getTimestampMillis()J
    .registers 3

    .line 129
    iget-wide v0, p0, Landroid/net/IpSecTransformState;->mTimestamp:J

    return-wide v0
.end method

.method public whitelist getTxHighestSequenceNumber()J
    .registers 3

    .line 138
    iget-wide v0, p0, Landroid/net/IpSecTransformState;->mTxHighestSequenceNumber:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget-wide v0, p0, Landroid/net/IpSecTransformState;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-wide v0, p0, Landroid/net/IpSecTransformState;->mTxHighestSequenceNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v0, p0, Landroid/net/IpSecTransformState;->mRxHighestSequenceNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Landroid/net/IpSecTransformState;->mPacketCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Landroid/net/IpSecTransformState;->mByteCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-object v0, p0, Landroid/net/IpSecTransformState;->mReplayBitmap:[B

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return-void
.end method

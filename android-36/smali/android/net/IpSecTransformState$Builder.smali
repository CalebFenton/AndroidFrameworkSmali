.class public final Landroid/net/IpSecTransformState$Builder;
.super Ljava/lang/Object;
.source "IpSecTransformState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransformState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mByteCount:J

.field private blacklist mPacketCount:J

.field private blacklist mReplayBitmap:[B

.field private blacklist mRxHighestSequenceNumber:J

.field private blacklist mTimestamp:J

.field private blacklist mTxHighestSequenceNumber:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/IpSecTransformState$Builder;->mTimestamp:J

    .line 210
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/IpSecTransformState;
    .registers 14

    .line 285
    new-instance v0, Landroid/net/IpSecTransformState;

    iget-wide v1, p0, Landroid/net/IpSecTransformState$Builder;->mTimestamp:J

    iget-wide v3, p0, Landroid/net/IpSecTransformState$Builder;->mTxHighestSequenceNumber:J

    iget-wide v5, p0, Landroid/net/IpSecTransformState$Builder;->mRxHighestSequenceNumber:J

    iget-wide v7, p0, Landroid/net/IpSecTransformState$Builder;->mPacketCount:J

    iget-wide v9, p0, Landroid/net/IpSecTransformState$Builder;->mByteCount:J

    iget-object v11, p0, Landroid/net/IpSecTransformState$Builder;->mReplayBitmap:[B

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/net/IpSecTransformState;-><init>(JJJJJ[BLandroid/net/IpSecTransformState-IA;)V

    return-object v0
.end method

.method public whitelist setByteCount(J)Landroid/net/IpSecTransformState$Builder;
    .registers 3
    .param p1, "byteCount"    # J

    .line 263
    iput-wide p1, p0, Landroid/net/IpSecTransformState$Builder;->mByteCount:J

    .line 264
    return-object p0
.end method

.method public whitelist setPacketCount(J)Landroid/net/IpSecTransformState$Builder;
    .registers 3
    .param p1, "packetCount"    # J

    .line 252
    iput-wide p1, p0, Landroid/net/IpSecTransformState$Builder;->mPacketCount:J

    .line 253
    return-object p0
.end method

.method public whitelist setReplayBitmap([B)Landroid/net/IpSecTransformState$Builder;
    .registers 3
    .param p1, "bitMap"    # [B

    .line 274
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/IpSecTransformState$Builder;->mReplayBitmap:[B

    .line 275
    return-object p0
.end method

.method public whitelist setRxHighestSequenceNumber(J)Landroid/net/IpSecTransformState$Builder;
    .registers 3
    .param p1, "seqNum"    # J

    .line 241
    iput-wide p1, p0, Landroid/net/IpSecTransformState$Builder;->mRxHighestSequenceNumber:J

    .line 242
    return-object p0
.end method

.method public whitelist setTimestampMillis(J)Landroid/net/IpSecTransformState$Builder;
    .registers 3
    .param p1, "timestamp"    # J

    .line 219
    iput-wide p1, p0, Landroid/net/IpSecTransformState$Builder;->mTimestamp:J

    .line 220
    return-object p0
.end method

.method public whitelist setTxHighestSequenceNumber(J)Landroid/net/IpSecTransformState$Builder;
    .registers 3
    .param p1, "seqNum"    # J

    .line 230
    iput-wide p1, p0, Landroid/net/IpSecTransformState$Builder;->mTxHighestSequenceNumber:J

    .line 231
    return-object p0
.end method

.class public final Landroid/net/thread/OperationalDatasetTimestamp;
.super Ljava/lang/Object;
.source "OperationalDatasetTimestamp.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist LENGTH_TIMESTAMP:I = 0x8

.field private static final blacklist TICKS_UPPER_BOUND:I = 0x8000


# instance fields
.field private final blacklist mIsAuthoritativeSource:Z

.field private final blacklist mSeconds:J

.field private final blacklist mTicks:I


# direct methods
.method public constructor whitelist <init>(JIZ)V
    .registers 10
    .param p1, "seconds"    # J
    .param p3, "ticks"    # I
    .param p4, "isAuthoritativeSource"    # Z

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_16

    const-wide v3, 0xffffffffffffL

    cmp-long v0, p1, v3

    if-gtz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 169
    :goto_17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 165
    const-string v4, "seconds exceeds allowed range (seconds = %d, allowedRange = [0x0, 0xffffffffffffL])"

    invoke-static {v0, v4, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    if-ltz p3, :cond_2b

    const/16 v0, 0x7fff

    if-gt p3, v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    .line 173
    :goto_2c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 170
    const-string v2, "ticks exceeds allowed ranged (ticks = %d, allowedRange = [0x0, 0x7fff])"

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iput-wide p1, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mSeconds:J

    .line 175
    iput p3, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mTicks:I

    .line 176
    iput-boolean p4, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mIsAuthoritativeSource:Z

    .line 177
    return-void
.end method

.method public static whitelist fromInstant(Ljava/time/Instant;)Landroid/net/thread/OperationalDatasetTimestamp;
    .registers 2
    .param p0, "instant"    # Ljava/time/Instant;

    .line 70
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/thread/OperationalDatasetTimestamp;->fromInstant(Ljava/time/Instant;Z)Landroid/net/thread/OperationalDatasetTimestamp;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromInstant(Ljava/time/Instant;Z)Landroid/net/thread/OperationalDatasetTimestamp;
    .registers 8
    .param p0, "instant"    # Ljava/time/Instant;
    .param p1, "isAuthoritativeSource"    # Z

    .line 91
    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/net/thread/OperationalDatasetTimestamp;->getRoundedTicks(J)I

    move-result v0

    .line 92
    .local v0, "ticks":I
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    const v3, 0x8000

    div-int v4, v0, v3

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 94
    .local v1, "seconds":J
    rem-int/2addr v0, v3

    .line 95
    new-instance v3, Landroid/net/thread/OperationalDatasetTimestamp;

    invoke-direct {v3, v1, v2, v0, p1}, Landroid/net/thread/OperationalDatasetTimestamp;-><init>(JIZ)V

    return-object v3
.end method

.method public static blacklist fromTlvValue([B)Landroid/net/thread/OperationalDatasetTimestamp;
    .registers 13
    .param p0, "encodedTimestamp"    # [B

    .line 120
    const-string v0, "encodedTimestamp cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v0, v3, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    array-length v4, p0

    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 121
    const-string v4, "Invalid Thread OperationalDatasetTimestamp length (length = %d, expectedLength=%d)"

    invoke-static {v0, v4, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 128
    .local v3, "longTimestamp":J
    new-instance v0, Landroid/net/thread/OperationalDatasetTimestamp;

    const/16 v5, 0x10

    shr-long v5, v3, v5

    const-wide v7, 0xffffffffffffL

    and-long/2addr v5, v7

    shr-long v7, v3, v2

    const-wide/16 v9, 0x7fff

    and-long/2addr v7, v9

    long-to-int v7, v7

    const-wide/16 v8, 0x1

    and-long/2addr v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_45

    move v1, v2

    :cond_45
    invoke-direct {v0, v5, v6, v7, v1}, Landroid/net/thread/OperationalDatasetTimestamp;-><init>(JIZ)V

    return-object v0
.end method

.method private static blacklist getRoundedTicks(J)I
    .registers 6
    .param p0, "nanos"    # J

    .line 185
    long-to-double v0, p0

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    mul-double/2addr v0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 220
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 221
    return v0

    .line 222
    :cond_4
    instance-of v1, p1, Landroid/net/thread/OperationalDatasetTimestamp;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 223
    return v2

    .line 225
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/thread/OperationalDatasetTimestamp;

    .line 226
    .local v1, "otherTimestamp":Landroid/net/thread/OperationalDatasetTimestamp;
    iget-wide v3, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mSeconds:J

    iget-wide v5, v1, Landroid/net/thread/OperationalDatasetTimestamp;->mSeconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    iget v3, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mTicks:I

    iget v4, v1, Landroid/net/thread/OperationalDatasetTimestamp;->mTicks:I

    if-ne v3, v4, :cond_22

    iget-boolean v3, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mIsAuthoritativeSource:Z

    iget-boolean v4, v1, Landroid/net/thread/OperationalDatasetTimestamp;->mIsAuthoritativeSource:Z

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public whitelist getSeconds()J
    .registers 3

    .line 190
    iget-wide v0, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mSeconds:J

    return-wide v0
.end method

.method public whitelist getTicks()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mTicks:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 234
    iget-wide v0, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mSeconds:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mTicks:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mIsAuthoritativeSource:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAuthoritativeSource()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mIsAuthoritativeSource:Z

    return v0
.end method

.method public whitelist toInstant()Ljava/time/Instant;
    .registers 5

    .line 108
    iget v0, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mTicks:I

    int-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 109
    .local v0, "nanos":J
    iget-wide v2, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mSeconds:J

    invoke-static {v2, v3, v0, v1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{seconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Landroid/net/thread/OperationalDatasetTimestamp;->getSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    const-string v2, ", ticks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Landroid/net/thread/OperationalDatasetTimestamp;->getTicks()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    const-string v2, ", isAuthoritativeSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Landroid/net/thread/OperationalDatasetTimestamp;->isAuthoritativeSource()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    const-string v2, ", instant="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    invoke-virtual {p0}, Landroid/net/thread/OperationalDatasetTimestamp;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toTlvValue()[B
    .registers 7

    .line 141
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 142
    .local v0, "tlv":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 143
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mSeconds:J

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    iget v4, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mTicks:I

    shl-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    or-long/2addr v2, v4

    iget-boolean v4, p0, Landroid/net/thread/OperationalDatasetTimestamp;->mIsAuthoritativeSource:Z

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 144
    .local v2, "encodedValue":J
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 145
    return-object v0
.end method

.class public Landroid/util/NtpTrustedTime$TimeResult;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeResult"
.end annotation


# instance fields
.field private final blacklist mElapsedRealtimeMillis:J

.field private final blacklist mNtpServerSocketAddress:Ljava/net/InetSocketAddress;

.field private final blacklist mUncertaintyMillis:I

.field private final blacklist mUnixEpochTimeMillis:J


# direct methods
.method public constructor blacklist <init>(JJILjava/net/InetSocketAddress;)V
    .registers 8
    .param p1, "unixEpochTimeMillis"    # J
    .param p3, "elapsedRealtimeMillis"    # J
    .param p5, "uncertaintyMillis"    # I
    .param p6, "ntpServerSocketAddress"    # Ljava/net/InetSocketAddress;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-wide p1, p0, Landroid/util/NtpTrustedTime$TimeResult;->mUnixEpochTimeMillis:J

    .line 143
    iput-wide p3, p0, Landroid/util/NtpTrustedTime$TimeResult;->mElapsedRealtimeMillis:J

    .line 144
    iput p5, p0, Landroid/util/NtpTrustedTime$TimeResult;->mUncertaintyMillis:I

    .line 145
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$TimeResult;->mNtpServerSocketAddress:Ljava/net/InetSocketAddress;

    .line 146
    return-void
.end method


# virtual methods
.method public blacklist currentTimeMillis()J
    .registers 5

    .line 164
    iget-wide v0, p0, Landroid/util/NtpTrustedTime$TimeResult;->mUnixEpochTimeMillis:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 183
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 184
    return v0

    .line 186
    :cond_4
    instance-of v1, p1, Landroid/util/NtpTrustedTime$TimeResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 187
    return v2

    .line 189
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/util/NtpTrustedTime$TimeResult;

    .line 190
    .local v1, "that":Landroid/util/NtpTrustedTime$TimeResult;
    iget-wide v3, p0, Landroid/util/NtpTrustedTime$TimeResult;->mUnixEpochTimeMillis:J

    iget-wide v5, v1, Landroid/util/NtpTrustedTime$TimeResult;->mUnixEpochTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    iget-wide v3, p0, Landroid/util/NtpTrustedTime$TimeResult;->mElapsedRealtimeMillis:J

    iget-wide v5, v1, Landroid/util/NtpTrustedTime$TimeResult;->mElapsedRealtimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    iget v3, p0, Landroid/util/NtpTrustedTime$TimeResult;->mUncertaintyMillis:I

    iget v4, v1, Landroid/util/NtpTrustedTime$TimeResult;->mUncertaintyMillis:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/util/NtpTrustedTime$TimeResult;->mNtpServerSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v4, v1, Landroid/util/NtpTrustedTime$TimeResult;->mNtpServerSocketAddress:Ljava/net/InetSocketAddress;

    .line 193
    invoke-virtual {v3, v4}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 190
    :goto_2f
    return v0
.end method

.method public blacklist getAgeMillis()J
    .registers 3

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAgeMillis(J)J
    .registers 5
    .param p1, "currentElapsedRealtimeMillis"    # J

    .line 178
    iget-wide v0, p0, Landroid/util/NtpTrustedTime$TimeResult;->mElapsedRealtimeMillis:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public blacklist getElapsedRealtimeMillis()J
    .registers 3

    .line 153
    iget-wide v0, p0, Landroid/util/NtpTrustedTime$TimeResult;->mElapsedRealtimeMillis:J

    return-wide v0
.end method

.method public blacklist getTimeMillis()J
    .registers 3

    .line 149
    iget-wide v0, p0, Landroid/util/NtpTrustedTime$TimeResult;->mUnixEpochTimeMillis:J

    return-wide v0
.end method

.method public blacklist getUncertaintyMillis()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/util/NtpTrustedTime$TimeResult;->mUncertaintyMillis:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 199
    iget-wide v0, p0, Landroid/util/NtpTrustedTime$TimeResult;->mUnixEpochTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/util/NtpTrustedTime$TimeResult;->mElapsedRealtimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroid/util/NtpTrustedTime$TimeResult;->mUncertaintyMillis:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/util/NtpTrustedTime$TimeResult;->mNtpServerSocketAddress:Ljava/net/InetSocketAddress;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeResult{unixEpochTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/util/NtpTrustedTime$TimeResult;->mUnixEpochTimeMillis:J

    .line 206
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elapsedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/util/NtpTrustedTime$TimeResult;->mElapsedRealtimeMillis:J

    .line 207
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUncertaintyMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/NtpTrustedTime$TimeResult;->mUncertaintyMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNtpServerSocketAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime$TimeResult;->mNtpServerSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    return-object v0
.end method

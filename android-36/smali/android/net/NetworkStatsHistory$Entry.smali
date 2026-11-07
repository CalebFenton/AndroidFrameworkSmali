.class public final Landroid/net/NetworkStatsHistory$Entry;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# static fields
.field public static final greylist-max-o UNKNOWN:J = -0x1L


# instance fields
.field public greylist-max-o activeTime:J

.field public greylist-max-r bucketDuration:J

.field public greylist-max-r bucketStart:J

.field public greylist-max-o operations:J

.field public greylist rxBytes:J

.field public greylist-max-r rxPackets:J

.field public greylist txBytes:J

.field public greylist-max-r txPackets:J


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(JJJJJJJ)V
    .registers 15
    .param p1, "bucketStart"    # J
    .param p3, "activeTime"    # J
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 179
    iput-wide p3, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 180
    iput-wide p5, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 181
    iput-wide p7, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 182
    iput-wide p9, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 183
    iput-wide p11, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 184
    iput-wide p13, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 185
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 228
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 229
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    .line 230
    :cond_10
    move-object v1, p1

    check-cast v1, Landroid/net/NetworkStatsHistory$Entry;

    .line 231
    .local v1, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v6, v1, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4c

    iget-wide v4, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    iget-wide v6, v1, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4c

    iget-wide v4, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4c

    iget-wide v4, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iget-wide v6, v1, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4c

    iget-wide v4, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iget-wide v6, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4c

    iget-wide v4, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iget-wide v6, v1, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4c

    iget-wide v4, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iget-wide v6, v1, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v3

    :goto_4d
    return v0
.end method

.method public blacklist getActiveTime()J
    .registers 3

    .line 198
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    return-wide v0
.end method

.method public blacklist getBucketStart()J
    .registers 3

    .line 191
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    return-wide v0
.end method

.method public blacklist getOperations()J
    .registers 3

    .line 223
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    return-wide v0
.end method

.method public blacklist getRxBytes()J
    .registers 3

    .line 203
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    return-wide v0
.end method

.method public blacklist getRxPackets()J
    .registers 3

    .line 208
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    return-wide v0
.end method

.method public blacklist getTxBytes()J
    .registers 3

    .line 213
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    return-wide v0
.end method

.method public blacklist getTxPackets()J
    .registers 3

    .line 218
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 239
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    const-wide/16 v4, 0x7

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    const-wide/16 v4, 0xb

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    const-wide/16 v4, 0xd

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    const-wide/16 v4, 0x11

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist plus(Landroid/net/NetworkStatsHistory$Entry;J)Landroid/net/NetworkStatsHistory$Entry;
    .registers 27
    .param p1, "another"    # Landroid/net/NetworkStatsHistory$Entry;
    .param p2, "bucketDuration"    # J

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v4, v1, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4f

    .line 273
    new-instance v3, Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v6, v0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    iget-wide v8, v1, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    add-long/2addr v6, v8

    .line 275
    move-wide/from16 v8, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    add-long/2addr v10, v12

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iget-wide v14, v1, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    add-long/2addr v12, v14

    iget-wide v14, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-object/from16 v16, v3

    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v14, v2

    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-wide/from16 v17, v2

    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    add-long v2, v17, v2

    move-wide/from16 v17, v2

    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    add-long v2, v19, v2

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v17

    move-wide/from16 v21, v2

    move-object/from16 v3, v16

    move-wide/from16 v16, v21

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStatsHistory$Entry;-><init>(JJJJJJJ)V

    .line 273
    move-object/from16 v16, v3

    return-object v16

    .line 270
    :cond_4f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucketStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not equal to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{bucketStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

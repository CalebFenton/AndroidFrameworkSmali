.class public final Landroid/media/internal/exo/util/TimestampAdjuster;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# instance fields
.field private blacklist firstSampleTimestampUs:J

.field private blacklist lastUnadjustedTimestampUs:J

.field private final blacklist nextSampleTimestampUs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist timestampOffsetUs:J


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/util/TimestampAdjuster;->reset(J)V

    return-void
.end method

.method public static blacklist ptsToUs(J)J
    .registers 4

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    const-wide/32 v0, 0x15f90

    .line 213
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist usToNonWrappedPts(J)J
    .registers 4

    const-wide/32 v0, 0x15f90

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    .line 237
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public declared-synchronized blacklist adjustSampleTimestamp(J)J
    .registers 7

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 191
    monitor-exit p0

    return-wide v0

    .line 193
    :cond_c
    :try_start_c
    iget-wide v2, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->timestampOffsetUs:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_38

    .line 195
    iget-wide v0, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    .line 196
    iget-object v0, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_32

    :catchall_30
    move-exception p1

    goto :goto_3f

    :cond_32
    :goto_32
    sub-long/2addr v0, p1

    .line 198
    iput-wide v0, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 202
    :cond_38
    iput-wide p1, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    .line 203
    iget-wide v0, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_30

    add-long/2addr p1, v0

    monitor-exit p0

    return-wide p1

    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_30

    throw p1
.end method

.method public declared-synchronized blacklist adjustTsTimestamp(J)J
    .registers 11

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 166
    monitor-exit p0

    return-wide v0

    .line 168
    :cond_c
    :try_start_c
    iget-wide v2, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3e

    .line 171
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    .line 172
    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long/2addr v6, v4

    add-long/2addr v6, p1

    mul-long/2addr v2, v4

    add-long/2addr p1, v2

    sub-long v2, v6, v0

    .line 176
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_3e

    move-wide p1, v6

    goto :goto_3e

    :catchall_3c
    move-exception p1

    goto :goto_48

    .line 180
    :cond_3e
    :goto_3e
    invoke-static {p1, p2}, Landroid/media/internal/exo/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p1
    :try_end_46
    .catchall {:try_start_c .. :try_end_46} :catchall_3c

    monitor-exit p0

    return-wide p1

    :goto_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_3c

    throw p1
.end method

.method public declared-synchronized blacklist getFirstSampleTimestampUs()J
    .registers 5

    monitor-enter p0

    .line 122
    :try_start_1
    iget-wide v0, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    :cond_15
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :cond_1a
    monitor-exit p0

    return-wide v0

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public declared-synchronized blacklist getLastAdjustedTimestampUs()J
    .registers 5

    monitor-enter p0

    .line 132
    :try_start_1
    iget-wide v0, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 133
    iget-wide v2, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v0, v2

    goto :goto_16

    :catchall_10
    move-exception v0

    goto :goto_18

    .line 134
    :cond_12
    invoke-virtual {p0}, Landroid/media/internal/exo/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_10

    .line 132
    :goto_16
    monitor-exit p0

    return-wide v0

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_10

    throw v0
.end method

.method public declared-synchronized blacklist getTimestampOffsetUs()J
    .registers 3

    monitor-enter p0

    .line 142
    :try_start_1
    iget-wide v0, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist reset(J)V
    .registers 5

    monitor-enter p0

    .line 153
    :try_start_1
    iput-wide p1, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, p1, v0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p1, :cond_14

    const-wide/16 p1, 0x0

    goto :goto_15

    :cond_14
    move-wide p1, v0

    .line 154
    :goto_15
    iput-wide p1, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 155
    iput-wide v0, p0, Landroid/media/internal/exo/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 156
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

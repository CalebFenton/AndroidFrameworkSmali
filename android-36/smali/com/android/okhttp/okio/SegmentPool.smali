.class final Lcom/android/okhttp/okio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final blacklist MAX_SIZE:J = 0x10000L

.field static blacklist byteCount:J

.field static blacklist next:Lcom/android/okhttp/okio/Segment;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist recycle(Lcom/android/okhttp/okio/Segment;)V
    .registers 10

    .line 51
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    if-nez v0, :cond_33

    .line 52
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    if-eqz v0, :cond_d

    return-void

    .line 53
    :cond_d
    const-class v0, Lcom/android/okhttp/okio/SegmentPool;

    monitor-enter v0

    .line 54
    :try_start_10
    sget-wide v1, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    const-wide/16 v3, 0x2000

    add-long v5, v1, v3

    const-wide/32 v7, 0x10000

    cmp-long v5, v5, v7

    if-lez v5, :cond_21

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    goto :goto_31

    :cond_21
    add-long/2addr v1, v3

    .line 55
    sput-wide v1, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    .line 56
    sget-object v1, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    iput v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 58
    sput-object p0, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    .line 59
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_1f

    throw p0

    .line 51
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static blacklist take()Lcom/android/okhttp/okio/Segment;
    .registers 6

    .line 38
    const-class v0, Lcom/android/okhttp/okio/SegmentPool;

    monitor-enter v0

    .line 39
    :try_start_3
    sget-object v1, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    if-eqz v1, :cond_19

    .line 41
    iget-object v2, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    sput-object v2, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    const/4 v2, 0x0

    .line 42
    iput-object v2, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 43
    sget-wide v2, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    .line 44
    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    goto :goto_20

    .line 46
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_17

    .line 47
    new-instance v0, Lcom/android/okhttp/okio/Segment;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Segment;-><init>()V

    return-object v0

    .line 46
    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_17

    throw v1
.end method

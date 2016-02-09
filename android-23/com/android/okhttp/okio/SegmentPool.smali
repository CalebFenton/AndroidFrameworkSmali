.class final Lcom/android/okhttp/okio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lcom/android/okhttp/okio/Segment;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static recycle(Lcom/android/okhttp/okio/Segment;)V
    .locals 8
    .param p0, "segment"    # Lcom/android/okhttp/okio/Segment;

    #@0
    .prologue
    const-wide/16 v6, 0x800

    #@2
    .line 50
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@8
    if-eqz v0, :cond_1

    #@a
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v0

    #@10
    .line 51
    :cond_1
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    #@12
    if-eqz v0, :cond_2

    #@14
    return-void

    #@15
    .line 52
    :cond_2
    const-class v1, Lcom/android/okhttp/okio/SegmentPool;

    #@17
    monitor-enter v1

    #@18
    .line 53
    :try_start_0
    sget-wide v2, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    add-long/2addr v2, v6

    #@1b
    const-wide/32 v4, 0x10000

    #@1e
    cmp-long v0, v2, v4

    #@20
    if-lez v0, :cond_3

    #@22
    monitor-exit v1

    #@23
    return-void

    #@24
    .line 54
    :cond_3
    :try_start_1
    sget-wide v2, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    #@26
    add-long/2addr v2, v6

    #@27
    sput-wide v2, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    #@29
    .line 55
    sget-object v0, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    #@2b
    iput-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@2d
    .line 56
    const/4 v0, 0x0

    #@2e
    iput v0, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    #@30
    const/4 v0, 0x0

    #@31
    iput v0, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@33
    .line 57
    sput-object p0, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    monitor-exit v1

    #@36
    .line 49
    return-void

    #@37
    .line 52
    :catchall_0
    move-exception v0

    #@38
    monitor-exit v1

    #@39
    throw v0
.end method

.method static take()Lcom/android/okhttp/okio/Segment;
    .locals 8

    #@0
    .prologue
    .line 37
    const-class v2, Lcom/android/okhttp/okio/SegmentPool;

    #@2
    monitor-enter v2

    #@3
    .line 38
    :try_start_0
    sget-object v1, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 39
    sget-object v0, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    #@9
    .line 40
    .local v0, "result":Lcom/android/okhttp/okio/Segment;
    iget-object v1, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@b
    sput-object v1, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    #@d
    .line 41
    const/4 v1, 0x0

    #@e
    iput-object v1, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@10
    .line 42
    sget-wide v4, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    #@12
    const-wide/16 v6, 0x800

    #@14
    sub-long/2addr v4, v6

    #@15
    sput-wide v4, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 43
    return-object v0

    #@19
    .end local v0    # "result":Lcom/android/okhttp/okio/Segment;
    :cond_0
    monitor-exit v2

    #@1a
    .line 46
    new-instance v1, Lcom/android/okhttp/okio/Segment;

    #@1c
    invoke-direct {v1}, Lcom/android/okhttp/okio/Segment;-><init>()V

    #@1f
    return-object v1

    #@20
    .line 37
    .restart local v0    # "result":Lcom/android/okhttp/okio/Segment;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

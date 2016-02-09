.class public Landroid/hardware/camera2/legacy/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# static fields
.field private static final INVALID_FRAME:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "RequestQueue"


# instance fields
.field private mCurrentFrameNumber:J

.field private mCurrentRepeatingFrameNumber:J

.field private mCurrentRequestId:I

.field private final mJpegSurfaceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

.field private final mRequestQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/legacy/BurstHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    .local p1, "jpegSurfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    #@6
    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@b
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    #@d
    .line 39
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    #@11
    .line 40
    const-wide/16 v0, -0x1

    #@13
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    #@15
    .line 41
    const/4 v0, 0x0

    #@16
    iput v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    #@18
    .line 45
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mJpegSurfaceIds:Ljava/util/List;

    #@1a
    .line 44
    return-void
.end method

.method private calculateLastFrame(I)J
    .locals 6
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 142
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    #@2
    .line 143
    .local v2, "total":J
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    #@4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "b$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/hardware/camera2/legacy/BurstHolder;

    #@14
    .line 144
    .local v0, "b":Landroid/hardware/camera2/legacy/BurstHolder;
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    #@17
    move-result v4

    #@18
    int-to-long v4, v4

    #@19
    add-long/2addr v2, v4

    #@1a
    .line 145
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    #@1d
    move-result v4

    #@1e
    if-ne v4, p1, :cond_0

    #@20
    .line 146
    const-wide/16 v4, 0x1

    #@22
    sub-long v4, v2, v4

    #@24
    return-wide v4

    #@25
    .line 149
    .end local v0    # "b":Landroid/hardware/camera2/legacy/BurstHolder;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    #@27
    .line 150
    const-string/jumbo v5, "At least one request must be in the queue to calculate frame number"

    #@2a
    .line 149
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v4
.end method


# virtual methods
.method public declared-synchronized getNext()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Landroid/hardware/camera2/legacy/BurstHolder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 56
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/hardware/camera2/legacy/BurstHolder;

    #@a
    .line 57
    .local v0, "next":Landroid/hardware/camera2/legacy/BurstHolder;
    if-nez v0, :cond_0

    #@c
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 58
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    #@12
    .line 59
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    #@14
    .line 60
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    #@17
    move-result v4

    #@18
    int-to-long v4, v4

    #@19
    .line 59
    add-long/2addr v2, v4

    #@1a
    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 63
    :cond_0
    if-nez v0, :cond_1

    #@1e
    monitor-exit p0

    #@1f
    .line 64
    return-object v6

    #@20
    .line 67
    :cond_1
    :try_start_1
    new-instance v1, Landroid/util/Pair;

    #@22
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    #@24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@2b
    .line 68
    .local v1, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    #@2d
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    #@30
    move-result v4

    #@31
    int-to-long v4, v4

    #@32
    add-long/2addr v2, v4

    #@33
    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    monitor-exit p0

    #@36
    .line 69
    return-object v1

    #@37
    .end local v0    # "next":Landroid/hardware/camera2/legacy/BurstHolder;
    .end local v1    # "ret":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    #@38
    monitor-exit p0

    #@39
    throw v2
.end method

.method public declared-synchronized stopRepeating()J
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 101
    const-string/jumbo v0, "RequestQueue"

    #@8
    const-string/jumbo v1, "cancel failed: no repeating request exists."

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 102
    const-wide/16 v0, -0x1

    #@10
    monitor-exit p0

    #@11
    return-wide v0

    #@12
    .line 104
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    #@14
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    #@17
    move-result v0

    #@18
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/legacy/RequestQueue;->stopRepeating(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result-wide v0

    #@1c
    monitor-exit p0

    #@1d
    return-wide v0

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method public declared-synchronized stopRepeating(I)J
    .locals 6
    .param p1, "requestId"    # I

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    monitor-enter p0

    #@3
    .line 80
    const-wide/16 v0, -0x1

    #@5
    .line 81
    .local v0, "ret":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    #@7
    if-eqz v2, :cond_1

    #@9
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    #@b
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    #@e
    move-result v2

    #@f
    if-ne v2, p1, :cond_1

    #@11
    .line 82
    const/4 v2, 0x0

    #@12
    iput-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    #@14
    .line 83
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    #@16
    cmp-long v2, v2, v4

    #@18
    if-nez v2, :cond_0

    #@1a
    const-wide/16 v0, -0x1

    #@1c
    .line 85
    :goto_0
    const-wide/16 v2, -0x1

    #@1e
    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    #@20
    .line 86
    const-string/jumbo v2, "RequestQueue"

    #@23
    const-string/jumbo v3, "Repeating capture request cancelled."

    #@26
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    :goto_1
    monitor-exit p0

    #@2a
    .line 90
    return-wide v0

    #@2b
    .line 84
    :cond_0
    :try_start_1
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    #@2d
    const-wide/16 v4, 0x1

    #@2f
    sub-long v0, v2, v4

    #@31
    goto :goto_0

    #@32
    .line 88
    :cond_1
    const-string/jumbo v2, "RequestQueue"

    #@35
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v4, "cancel failed: no repeating request exists for request id: "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    goto :goto_1

    #@4d
    :catchall_0
    move-exception v2

    #@4e
    monitor-exit p0

    #@4f
    throw v2
.end method

.method public declared-synchronized submit(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 8
    .param p2, "repeating"    # Z
    .param p3, "frameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;Z",
            "Landroid/hardware/camera2/utils/LongParcelable;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const-wide/16 v6, -0x1

    #@2
    monitor-enter p0

    #@3
    .line 122
    :try_start_0
    iget v1, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    #@5
    add-int/lit8 v4, v1, 0x1

    #@7
    iput v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    #@9
    .line 123
    .local v1, "requestId":I
    new-instance v0, Landroid/hardware/camera2/legacy/BurstHolder;

    #@b
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mJpegSurfaceIds:Ljava/util/List;

    #@d
    invoke-direct {v0, v1, p2, p1, v4}, Landroid/hardware/camera2/legacy/BurstHolder;-><init>(IZLjava/util/List;Ljava/util/Collection;)V

    #@10
    .line 124
    .local v0, "burst":Landroid/hardware/camera2/legacy/BurstHolder;
    const-wide/16 v2, -0x1

    #@12
    .line 125
    .local v2, "ret":J
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->isRepeating()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_2

    #@18
    .line 126
    const-string/jumbo v4, "RequestQueue"

    #@1b
    const-string/jumbo v5, "Repeating capture request set."

    #@1e
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 127
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    #@23
    if-eqz v4, :cond_0

    #@25
    .line 128
    iget-wide v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    #@27
    cmp-long v4, v4, v6

    #@29
    if-nez v4, :cond_1

    #@2b
    const-wide/16 v2, -0x1

    #@2d
    .line 131
    :cond_0
    :goto_0
    const-wide/16 v4, -0x1

    #@2f
    iput-wide v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    #@31
    .line 132
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    #@33
    .line 137
    :goto_1
    invoke-virtual {p3, v2, v3}, Landroid/hardware/camera2/utils/LongParcelable;->setNumber(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    monitor-exit p0

    #@37
    .line 138
    return v1

    #@38
    .line 129
    :cond_1
    :try_start_1
    iget-wide v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    #@3a
    const-wide/16 v6, 0x1

    #@3c
    sub-long v2, v4, v6

    #@3e
    goto :goto_0

    #@3f
    .line 134
    :cond_2
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    #@41
    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    #@44
    .line 135
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    #@47
    move-result v4

    #@48
    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/RequestQueue;->calculateLastFrame(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    move-result-wide v2

    #@4c
    goto :goto_1

    #@4d
    .end local v0    # "burst":Landroid/hardware/camera2/legacy/BurstHolder;
    .end local v1    # "requestId":I
    .end local v2    # "ret":J
    :catchall_0
    move-exception v4

    #@4e
    monitor-exit p0

    #@4f
    throw v4
.end method

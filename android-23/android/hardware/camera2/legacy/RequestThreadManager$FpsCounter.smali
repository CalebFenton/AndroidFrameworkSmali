.class public Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FpsCounter"
.end annotation


# static fields
.field private static final NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "FpsCounter"


# instance fields
.field private mFrameCount:I

.field private mLastFps:D

.field private mLastPrintTime:J

.field private mLastTime:J

.field private final mStreamType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "streamType"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 134
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    #@8
    .line 135
    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    #@a
    .line 136
    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastPrintTime:J

    #@c
    .line 137
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D

    #@10
    .line 142
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mStreamType:Ljava/lang/String;

    #@12
    .line 141
    return-void
.end method


# virtual methods
.method public declared-synchronized checkFps()D
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 160
    :try_start_0
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-wide v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized countAndLog()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->countFrame()V

    #@4
    .line 172
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->staggeredLog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 170
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized countFrame()V
    .locals 10

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 146
    :try_start_0
    iget v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    #@3
    add-int/lit8 v4, v4, 0x1

    #@5
    iput v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    #@7
    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@a
    move-result-wide v2

    #@b
    .line 148
    .local v2, "nextTime":J
    iget-wide v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    #@d
    const-wide/16 v6, 0x0

    #@f
    cmp-long v4, v4, v6

    #@11
    if-nez v4, :cond_0

    #@13
    .line 149
    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    #@15
    .line 151
    :cond_0
    iget-wide v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    #@17
    const-wide/32 v6, 0x3b9aca00

    #@1a
    add-long/2addr v4, v6

    #@1b
    cmp-long v4, v2, v4

    #@1d
    if-lez v4, :cond_1

    #@1f
    .line 152
    iget-wide v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    #@21
    sub-long v0, v2, v4

    #@23
    .line 153
    .local v0, "elapsed":J
    iget v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    #@25
    int-to-double v4, v4

    #@26
    long-to-double v6, v0

    #@27
    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    #@2c
    div-double v6, v8, v6

    #@2e
    mul-double/2addr v4, v6

    #@2f
    iput-wide v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D

    #@31
    .line 154
    const/4 v4, 0x0

    #@32
    iput v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    #@34
    .line 155
    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .end local v0    # "elapsed":J
    :cond_1
    monitor-exit p0

    #@37
    .line 145
    return-void

    #@38
    .end local v2    # "nextTime":J
    :catchall_0
    move-exception v4

    #@39
    monitor-exit p0

    #@3a
    throw v4
.end method

.method public declared-synchronized staggeredLog()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 164
    :try_start_0
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    #@3
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastPrintTime:J

    #@5
    const-wide v4, 0x12a05f200L

    #@a
    add-long/2addr v2, v4

    #@b
    cmp-long v0, v0, v2

    #@d
    if-lez v0, :cond_0

    #@f
    .line 165
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    #@11
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastPrintTime:J

    #@13
    .line 166
    const-string/jumbo v0, "FpsCounter"

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "FPS for "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mStreamType:Ljava/lang/String;

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, " stream: "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D

    #@31
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    :cond_0
    monitor-exit p0

    #@3d
    .line 163
    return-void

    #@3e
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit p0

    #@40
    throw v0
.end method

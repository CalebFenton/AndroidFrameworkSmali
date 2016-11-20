.class Landroid/hardware/camera2/legacy/PerfMeasurement;
.super Ljava/lang/Object;
.source "PerfMeasurement.java"


# static fields
.field public static final DEFAULT_MAX_QUERIES:I = 0x3

.field private static final FAILED_TIMING:J = -0x2L

.field private static final NO_DURATION_YET:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "PerfMeasurement"


# instance fields
.field private mCollectedCpuDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectedGpuDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectedTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCompletedQueryCount:I

.field private mCpuDurationsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeContext:J

.field private mStartTimeNs:J

.field private mTimestampQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    #@6
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    #@d
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    #@14
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    #@1b
    .line 72
    new-instance v0, Ljava/util/LinkedList;

    #@1d
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@20
    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    #@22
    .line 73
    new-instance v0, Ljava/util/LinkedList;

    #@24
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@27
    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    #@29
    .line 94
    const/4 v0, 0x3

    #@2a
    invoke-static {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeCreateContext(I)J

    #@2d
    move-result-wide v0

    #@2e
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    #@30
    .line 93
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxQueries"    # I

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    #@6
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    #@d
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    #@14
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    #@1b
    .line 72
    new-instance v0, Ljava/util/LinkedList;

    #@1d
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@20
    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    #@22
    .line 73
    new-instance v0, Ljava/util/LinkedList;

    #@24
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@27
    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    #@29
    .line 105
    const/4 v0, 0x1

    #@2a
    if-ge p1, v0, :cond_0

    #@2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v1, "maxQueries is less than 1"

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 106
    :cond_0
    invoke-static {p1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeCreateContext(I)J

    #@38
    move-result-wide v0

    #@39
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    #@3b
    .line 104
    return-void
.end method

.method private getNextGlDuration()J
    .locals 4

    #@0
    .prologue
    .line 228
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    #@2
    invoke-static {v2, v3}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeGetNextGlDuration(J)J

    #@5
    move-result-wide v0

    #@6
    .line 229
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    #@8
    cmp-long v2, v0, v2

    #@a
    if-lez v2, :cond_0

    #@c
    .line 230
    iget v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    #@e
    add-int/lit8 v2, v2, 0x1

    #@10
    iput v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    #@12
    .line 232
    :cond_0
    return-wide v0
.end method

.method public static isGlTimingSupported()Z
    .locals 1

    #@0
    .prologue
    .line 115
    invoke-static {}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeQuerySupport()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native nativeCreateContext(I)J
.end method

.method private static native nativeDeleteContext(J)V
.end method

.method protected static native nativeGetNextGlDuration(J)J
.end method

.method private static native nativeQuerySupport()Z
.end method

.method protected static native nativeStartGlTimer(J)V
.end method

.method protected static native nativeStopGlTimer(J)V
.end method


# virtual methods
.method public addTimestamp(J)V
    .locals 3
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    #@2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@9
    .line 207
    return-void
.end method

.method public dumpPerformanceData(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 134
    const/4 v0, 0x0

    #@2
    .local v0, "dump":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    #@4
    new-instance v4, Ljava/io/FileWriter;

    #@6
    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    #@9
    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 135
    .end local v0    # "dump":Ljava/io/BufferedWriter;
    .local v1, "dump":Ljava/io/BufferedWriter;
    :try_start_1
    const-string/jumbo v4, "timestamp gpu_duration cpu_duration\n"

    #@f
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@12
    .line 136
    const/4 v3, 0x0

    #@13
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v4

    #@19
    if-ge v3, v4, :cond_0

    #@1b
    .line 137
    const-string/jumbo v4, "%d %d %d\n"

    #@1e
    const/4 v6, 0x3

    #@1f
    new-array v6, v6, [Ljava/lang/Object;

    #@21
    .line 138
    iget-object v7, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v7

    #@27
    const/4 v8, 0x0

    #@28
    aput-object v7, v6, v8

    #@2a
    .line 139
    iget-object v7, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v7

    #@30
    const/4 v8, 0x1

    #@31
    aput-object v7, v6, v8

    #@33
    .line 140
    iget-object v7, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v7

    #@39
    const/4 v8, 0x2

    #@3a
    aput-object v7, v6, v8

    #@3c
    .line 137
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@43
    .line 136
    add-int/lit8 v3, v3, 0x1

    #@45
    goto :goto_0

    #@46
    .line 142
    :cond_0
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@4b
    .line 143
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@50
    .line 144
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@55
    .line 147
    if-eqz v1, :cond_1

    #@57
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@5a
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    #@5c
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@5d
    .line 145
    :catch_0
    move-exception v2

    #@5e
    .local v2, "e":Ljava/io/IOException;
    move-object v0, v1

    #@5f
    .line 146
    .end local v1    # "dump":Ljava/io/BufferedWriter;
    .end local v3    # "i":I
    :goto_2
    const-string/jumbo v4, "PerfMeasurement"

    #@62
    new-instance v5, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v6, "Error writing data dump to "

    #@6a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    const-string/jumbo v6, ":"

    #@75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 133
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    return-void

    #@85
    .line 147
    .restart local v1    # "dump":Ljava/io/BufferedWriter;
    .restart local v3    # "i":I
    :catch_1
    move-exception v5

    #@86
    goto :goto_1

    #@87
    :cond_2
    move-object v0, v1

    #@88
    .end local v1    # "dump":Ljava/io/BufferedWriter;
    .local v0, "dump":Ljava/io/BufferedWriter;
    goto :goto_3

    #@89
    .end local v3    # "i":I
    .local v0, "dump":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v4

    #@8a
    .end local v0    # "dump":Ljava/io/BufferedWriter;
    :goto_4
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8b
    :catchall_0
    move-exception v5

    #@8c
    move-object v9, v5

    #@8d
    move-object v5, v4

    #@8e
    move-object v4, v9

    #@8f
    :goto_5
    if-eqz v0, :cond_3

    #@91
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@94
    :cond_3
    :goto_6
    if-eqz v5, :cond_5

    #@96
    :try_start_6
    throw v5

    #@97
    .line 145
    :catch_3
    move-exception v2

    #@98
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    #@99
    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    #@9a
    if-nez v5, :cond_4

    #@9c
    move-object v5, v6

    #@9d
    goto :goto_6

    #@9e
    :cond_4
    if-eq v5, v6, :cond_3

    #@a0
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@a3
    goto :goto_6

    #@a4
    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@a5
    .restart local v0    # "dump":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    #@a6
    goto :goto_5

    #@a7
    .end local v0    # "dump":Ljava/io/BufferedWriter;
    .restart local v1    # "dump":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v4

    #@a8
    move-object v0, v1

    #@a9
    .end local v1    # "dump":Ljava/io/BufferedWriter;
    .local v0, "dump":Ljava/io/BufferedWriter;
    goto :goto_5

    #@aa
    .end local v0    # "dump":Ljava/io/BufferedWriter;
    .restart local v1    # "dump":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v4

    #@ab
    move-object v0, v1

    #@ac
    .end local v1    # "dump":Ljava/io/BufferedWriter;
    .restart local v0    # "dump":Ljava/io/BufferedWriter;
    goto :goto_4
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 245
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    #@2
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeDeleteContext(J)V

    #@5
    .line 244
    return-void
.end method

.method public getCompletedQueryCount()I
    .locals 1

    #@0
    .prologue
    .line 240
    iget v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    #@2
    return v0
.end method

.method public startTimer()V
    .locals 2

    #@0
    .prologue
    .line 161
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    #@2
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeStartGlTimer(J)V

    #@5
    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mStartTimeNs:J

    #@b
    .line 160
    return-void
.end method

.method public stopTimer()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v6, -0x1

    #@2
    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@5
    move-result-wide v2

    #@6
    .line 178
    .local v2, "endTimeNs":J
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    #@8
    iget-wide v8, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mStartTimeNs:J

    #@a
    sub-long v8, v2, v8

    #@c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f
    move-result-object v5

    #@10
    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@13
    .line 180
    iget-wide v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    #@15
    invoke-static {v4, v5}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeStopGlTimer(J)V

    #@18
    .line 184
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->getNextGlDuration()J

    #@1b
    move-result-wide v0

    #@1c
    .line 185
    .local v0, "duration":J
    const-wide/16 v4, 0x0

    #@1e
    cmp-long v4, v0, v4

    #@20
    if-lez v4, :cond_0

    #@22
    .line 186
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    #@24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 187
    iget-object v8, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    #@2d
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    #@2f
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_3

    #@35
    move-wide v4, v6

    #@36
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 189
    iget-object v5, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    #@3f
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    #@41
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_4

    #@47
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4e
    .line 192
    :cond_0
    const-wide/16 v4, -0x2

    #@50
    cmp-long v4, v0, v4

    #@52
    if-nez v4, :cond_2

    #@54
    .line 194
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    #@56
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    #@59
    move-result v4

    #@5a
    if-nez v4, :cond_1

    #@5c
    .line 195
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    #@5e
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@61
    .line 197
    :cond_1
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    #@63
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    #@66
    move-result v4

    #@67
    if-nez v4, :cond_2

    #@69
    .line 198
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    #@6b
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@6e
    .line 175
    :cond_2
    return-void

    #@6f
    .line 188
    :cond_3
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    #@71
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@74
    move-result-object v4

    #@75
    check-cast v4, Ljava/lang/Long;

    #@77
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@7a
    move-result-wide v4

    #@7b
    goto :goto_0

    #@7c
    .line 190
    :cond_4
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    #@7e
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@81
    move-result-object v4

    #@82
    check-cast v4, Ljava/lang/Long;

    #@84
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@87
    move-result-wide v6

    #@88
    goto :goto_1
.end method

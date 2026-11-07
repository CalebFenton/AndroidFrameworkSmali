.class public final Landroid/content/res/ResourceTimer;
.super Ljava/lang/Object;
.source "ResourceTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourceTimer$Config;,
        Landroid/content/res/ResourceTimer$Timer;
    }
.end annotation


# static fields
.field private static blacklist ENABLE_DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ResourceTimer"

.field private static blacklist mHandler:Landroid/os/Handler;

.field private static blacklist sApiMap:[I

.field private static blacklist sConfig:Landroid/content/res/ResourceTimer$Config;

.field private static blacklist sCurrentPoint:I

.field private static blacklist sEnabled:Z

.field private static blacklist sIncrementalMetrics:Z

.field private static blacklist sLastUpdated:J

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sManager:Landroid/content/res/ResourceTimer;

.field private static final blacklist sProcessStart:J

.field private static final blacklist sPublicationPoints:[J

.field private static blacklist sTimers:[Landroid/content/res/ResourceTimer$Timer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhandleMessage(Landroid/os/Message;)V
    .registers 1

    invoke-static {p0}, Landroid/content/res/ResourceTimer;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/ResourceTimer;->sEnabled:Z

    .line 52
    sput-boolean v0, Landroid/content/res/ResourceTimer;->sIncrementalMetrics:Z

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/ResourceTimer;->ENABLE_DEBUG:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sProcessStart:J

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_22

    sput-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    .line 135
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    return-void

    :array_22
    .array-data 8
        0x5
        0x3c
        0x2d0
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ResourceTimer constructor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist dumpTimers(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 20
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;

    .line 279
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    .line 280
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_d
    const-string v0, "\nDumping ResourceTimers"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    sget-object v3, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_af

    .line 284
    :try_start_15
    sget-boolean v0, Landroid/content/res/ResourceTimer;->sEnabled:Z

    if-eqz v0, :cond_1f

    sget-object v0, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move v4, v0

    .line 285
    .local v4, "enabled":Z
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_ac

    .line 286
    if-nez v4, :cond_2d

    .line 287
    :try_start_24
    const-string v0, "  Timers are not enabled in this process"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_af

    .line 311
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 288
    return-void

    .line 293
    :cond_2d
    :try_start_2d
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "-refresh"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v3, v0

    .line 295
    .local v3, "refresh":Z
    sget-object v5, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_af

    .line 296
    :try_start_3b
    invoke-static {v3}, Landroid/content/res/ResourceTimer;->update(Z)V

    .line 297
    sget-wide v6, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    sget-wide v8, Landroid/content/res/ResourceTimer;->sProcessStart:J

    sub-long/2addr v6, v8

    .line 298
    .local v6, "runtime":J
    const-string v0, "  config runtime=%d proc=%s\n"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v0, v8}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_55
    sget-object v8, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v8, v8

    if-ge v0, v8, :cond_a2

    .line 300
    sget-object v8, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v8, v8, v0

    .line 301
    .local v8, "t":Landroid/content/res/ResourceTimer$Timer;
    iget v9, v8, Landroid/content/res/ResourceTimer$Timer;->count:I

    if-eqz v9, :cond_9d

    .line 302
    sget-object v9, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v9, v9, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v9, v9, v0

    move-object v10, v9

    .line 303
    .local v10, "name":Ljava/lang/String;
    const-string v9, "  stats timer=%s cnt=%d avg=%d min=%d max=%d pval=%s largest=%s\n"

    iget v11, v8, Landroid/content/res/ResourceTimer$Timer;->count:I

    .line 305
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-wide v12, v8, Landroid/content/res/ResourceTimer$Timer;->total:J

    iget v14, v8, Landroid/content/res/ResourceTimer$Timer;->count:I

    int-to-long v14, v14

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v13, v8, Landroid/content/res/ResourceTimer$Timer;->mintime:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v8, Landroid/content/res/ResourceTimer$Timer;->maxtime:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v8, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    .line 306
    invoke-static {v15}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    iget-object v0, v8, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    .line 307
    invoke-static {v0}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v10 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    .line 303
    invoke-virtual {v1, v9, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_9f

    .line 301
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "i":I
    .restart local v0    # "i":I
    :cond_9d
    move/from16 v17, v0

    .line 299
    .end local v0    # "i":I
    .end local v8    # "t":Landroid/content/res/ResourceTimer$Timer;
    .restart local v17    # "i":I
    :goto_9f
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "i":I
    .restart local v0    # "i":I
    goto :goto_55

    :cond_a2
    move/from16 v17, v0

    .line 310
    .end local v0    # "i":I
    .end local v6    # "runtime":J
    monitor-exit v5
    :try_end_a5
    .catchall {:try_start_3b .. :try_end_a5} :catchall_a9

    .line 311
    .end local v3    # "refresh":Z
    .end local v4    # "enabled":Z
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 312
    .end local v1    # "pw":Ljava/io/PrintWriter;
    return-void

    .line 310
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "refresh":Z
    .restart local v4    # "enabled":Z
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v5
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "args":[Ljava/lang/String;
    :try_start_ab
    throw v0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_af

    .line 285
    .end local v3    # "refresh":Z
    .end local v4    # "enabled":Z
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "args":[Ljava/lang/String;
    :try_start_ae
    throw v0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_af

    .line 279
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_af
    move-exception v0

    move-object v3, v0

    :try_start_b1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_b9

    :catchall_b5
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b9
    throw v3
.end method

.method private static blacklist handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p0, "msg"    # Landroid/os/Message;

    .line 200
    sget-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    invoke-static {}, Landroid/content/res/ResourceTimer;->publish()V

    .line 202
    invoke-static {}, Landroid/content/res/ResourceTimer;->startTimer()V

    .line 203
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private static native blacklist nativeEnableTimers(Landroid/content/res/ResourceTimer$Config;)I
.end method

.method private static native blacklist nativeGetTimers([Landroid/content/res/ResourceTimer$Timer;Z)I
.end method

.method private static blacklist packedString([I)Ljava/lang/String;
    .registers 4
    .param p0, "a"    # [I

    .line 271
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\]\\[ ]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist publish()V
    .registers 18

    .line 246
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/res/ResourceTimer;->update(Z)V

    .line 248
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget-object v2, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v2, v2

    if-ge v1, v2, :cond_73

    .line 249
    sget-object v2, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v2, v2, v1

    .line 250
    .local v2, "timer":Landroid/content/res/ResourceTimer$Timer;
    iget v3, v2, Landroid/content/res/ResourceTimer$Timer;->count:I

    if-lez v3, :cond_70

    .line 251
    sget-object v3, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v3, v3, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget v4, v2, Landroid/content/res/ResourceTimer$Timer;->count:I

    .line 252
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    invoke-static {v5}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 251
    const-string v4, "%s count=%d pvalues=%s"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResourceTimer"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aget v3, v3, v1

    if-eqz v3, :cond_70

    .line 254
    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aget v5, v3, v1

    iget v6, v2, Landroid/content/res/ResourceTimer$Timer;->count:I

    iget-wide v7, v2, Landroid/content/res/ResourceTimer$Timer;->total:J

    iget-object v3, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v4, 0x0

    aget v9, v3, v4

    iget-object v3, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    aget v10, v3, v0

    iget-object v3, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v11, 0x2

    aget v3, v3, v11

    iget-object v12, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    iget-object v14, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v4, v14, v4

    iget-object v14, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v14, v14, v0

    iget-object v15, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v15, v15, v11

    iget-object v11, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v16, v11, v13

    iget-object v11, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    const/4 v13, 0x4

    aget v17, v11, v13

    move v13, v4

    const/16 v4, 0x205

    move v11, v3

    invoke-static/range {v4 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIIIIIIIII)V

    .line 248
    .end local v2    # "timer":Landroid/content/res/ResourceTimer$Timer;
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 264
    .end local v1    # "i":I
    :cond_73
    sget v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    add-int/2addr v1, v0

    sput v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    .line 265
    return-void
.end method

.method public static blacklist start()V
    .registers 5

    .line 148
    sget-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    sget-boolean v1, Landroid/content/res/ResourceTimer;->sEnabled:Z

    if-nez v1, :cond_9

    .line 150
    monitor-exit v0

    return-void

    .line 152
    :cond_9
    sget-object v1, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_f

    .line 154
    monitor-exit v0

    return-void

    .line 156
    :cond_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 159
    new-instance v1, Landroid/content/res/ResourceTimer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/ResourceTimer$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v1, Landroid/content/res/ResourceTimer$Config;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/res/ResourceTimer$Config;-><init>(Landroid/content/res/ResourceTimer-IA;)V

    sput-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    .line 169
    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    invoke-static {v1}, Landroid/content/res/ResourceTimer;->nativeEnableTimers(Landroid/content/res/ResourceTimer$Config;)I

    .line 170
    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v1, v1, Landroid/content/res/ResourceTimer$Config;->maxTimer:I

    new-array v1, v1, [Landroid/content/res/ResourceTimer$Timer;

    sput-object v1, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v3, v3

    if-ge v1, v3, :cond_5f

    .line 172
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    new-instance v4, Landroid/content/res/ResourceTimer$Timer;

    invoke-direct {v4, v2}, Landroid/content/res/ResourceTimer$Timer;-><init>(Landroid/content/res/ResourceTimer-IA;)V

    aput-object v4, v3, v1

    .line 173
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v3, v3, v1

    sget-object v4, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v4, v4, Landroid/content/res/ResourceTimer$Config;->maxBuckets:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    .line 174
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v3, v3, v1

    sget-object v4, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v4, v4, Landroid/content/res/ResourceTimer$Config;->maxLargest:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 179
    .end local v1    # "i":I
    :cond_5f
    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v1, v1, Landroid/content/res/ResourceTimer$Config;->maxTimer:I

    new-array v1, v1, [I

    sput-object v1, Landroid/content/res/ResourceTimer;->sApiMap:[I

    .line 180
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_68
    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_9d

    .line 181
    sget-object v2, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v2, v2, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v4, "GetResourceValue"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 182
    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    const/4 v3, 0x1

    aput v3, v2, v1

    goto :goto_9a

    .line 183
    :cond_82
    sget-object v2, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v2, v2, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v4, "RetrieveAttributes"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 184
    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    const/4 v3, 0x2

    aput v3, v2, v1

    goto :goto_9a

    .line 186
    :cond_96
    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aput v3, v2, v1

    .line 180
    :goto_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 190
    .end local v1    # "i":I
    :cond_9d
    sput v3, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    .line 191
    invoke-static {}, Landroid/content/res/ResourceTimer;->startTimer()V

    .line 192
    monitor-exit v0

    .line 193
    return-void

    .line 157
    :cond_a4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ResourceTimer started too early"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :catchall_ac
    move-exception v1

    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_ac

    throw v1
.end method

.method private static blacklist startTimer()V
    .registers 6

    .line 214
    sget v0, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    sget-object v1, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 215
    sget-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    sget v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    aget-wide v0, v0, v1

    .local v0, "delay":J
    goto :goto_22

    .line 218
    .end local v0    # "delay":J
    :cond_e
    sget-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    sget-object v1, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    .line 219
    .local v0, "repeated":J
    sget-object v2, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 220
    .local v2, "prelude":I
    sget v3, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    sub-int/2addr v3, v2

    int-to-long v3, v3

    mul-long/2addr v3, v0

    move-wide v0, v3

    .line 223
    .end local v2    # "prelude":I
    .local v0, "delay":J
    :goto_22
    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 225
    sget-boolean v2, Landroid/content/res/ResourceTimer;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_2d

    .line 226
    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    .line 228
    :cond_2d
    sget-object v2, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    sget-wide v3, Landroid/content/res/ResourceTimer;->sProcessStart:J

    add-long/2addr v3, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 229
    return-void
.end method

.method private static blacklist update(Z)V
    .registers 3
    .param p0, "reset"    # Z

    .line 236
    sget-object v0, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    invoke-static {v0, p0}, Landroid/content/res/ResourceTimer;->nativeGetTimers([Landroid/content/res/ResourceTimer$Timer;Z)I

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    .line 238
    return-void
.end method

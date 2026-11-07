.class public Lcom/android/internal/os/KernelMemoryBandwidthStats;
.super Ljava/lang/Object;
.source "KernelMemoryBandwidthStats.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "KernelMemoryBandwidthStats"

.field private static final greylist-max-o mSysfsFile:Ljava/lang/String; = "/sys/kernel/memory_state_time/show_stat"


# instance fields
.field protected final greylist-max-o mBandwidthEntries:Landroid/util/LongSparseLongArray;

.field private greylist-max-o mStatsDoNotExist:Z


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z

    return-void
.end method


# virtual methods
.method public greylist-max-o getBandwidthEntries()Landroid/util/LongSparseLongArray;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method public greylist-max-o parseStats(Ljava/io/BufferedReader;)V
    .registers 15
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 67
    .local v0, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v1, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clear()V

    .line 68
    :goto_c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_56

    .line 69
    invoke-virtual {v0, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    .line 74
    .local v1, "bandwidth":I
    :cond_1a
    iget-object v3, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v3

    move v4, v3

    .local v4, "index":I
    const-wide/32 v5, 0xf4240

    if-ltz v3, :cond_3e

    .line 75
    iget-object v3, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v7, v1

    iget-object v9, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v9, v4}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v9

    .line 76
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    div-long/2addr v11, v5

    add-long/2addr v9, v11

    .line 75
    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/LongSparseLongArray;->put(JJ)V

    goto :goto_4d

    .line 78
    :cond_3e
    iget-object v3, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v7, v1

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    div-long/2addr v9, v5

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 84
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    .line 85
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 86
    .end local v1    # "bandwidth":I
    .end local v4    # "index":I
    goto :goto_c

    .line 87
    :cond_56
    return-void
.end method

.method public greylist-max-o updateStats()V
    .registers 9

    .line 36
    const-string v0, "KernelMemoryBandwidthStats"

    iget-boolean v1, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z

    if-eqz v1, :cond_7

    .line 38
    return-void

    .line 41
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 43
    .local v1, "startTime":J
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 44
    .local v3, "policy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_f
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/kernel/memory_state_time/show_stat"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1b} :catch_4f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_2e
    .catchall {:try_start_f .. :try_end_1b} :catchall_2c

    .line 45
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1b
    invoke-virtual {p0, v4}, Lcom/android/internal/os/KernelMemoryBandwidthStats;->parseStats(Ljava/io/BufferedReader;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_22

    .line 46
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_21} :catch_4f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2e
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    goto :goto_5d

    .line 44
    :catchall_22
    move-exception v5

    :try_start_23
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v6

    :try_start_28
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "startTime":J
    .end local v3    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p0    # "this":Lcom/android/internal/os/KernelMemoryBandwidthStats;
    :goto_2b
    throw v5
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2c} :catch_4f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_2e
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    .line 54
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "startTime":J
    .restart local v3    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/internal/os/KernelMemoryBandwidthStats;
    :catchall_2c
    move-exception v0

    goto :goto_89

    .line 50
    :catch_2e
    move-exception v4

    .line 51
    .local v4, "e":Ljava/io/IOException;
    :try_start_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read memory bandwidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v5, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5}, Landroid/util/LongSparseLongArray;->clear()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5d

    .line 46
    :catch_4f
    move-exception v4

    .line 47
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v5, "No kernel memory bandwidth stats available"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v5, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5}, Landroid/util/LongSparseLongArray;->clear()V

    .line 49
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z
    :try_end_5d
    .catchall {:try_start_2f .. :try_end_5d} :catchall_2c

    .line 54
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_5d
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 55
    nop

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 58
    .local v4, "readTime":J
    const-wide/16 v6, 0x64

    cmp-long v6, v4, v6

    if-lez v6, :cond_88

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading memory bandwidth file took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_88
    return-void

    .line 54
    .end local v4    # "readTime":J
    :goto_89
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 55
    throw v0
.end method

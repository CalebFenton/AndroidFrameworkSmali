.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelCpuSpeedReader"


# instance fields
.field private final mDeltaSpeedTimes:[J

.field private final mJiffyMillis:J

.field private final mLastSpeedTimes:[J

.field private final mProcFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .param p1, "cpuNumber"    # I
    .param p2, "numSpeedSteps"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    const-string/jumbo v2, "/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state"

    #@6
    const/4 v3, 0x1

    #@7
    new-array v3, v3, [Ljava/lang/Object;

    #@9
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v4

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    .line 51
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    #@16
    .line 53
    new-array v2, p2, [J

    #@18
    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    #@1a
    .line 54
    new-array v2, p2, [J

    #@1c
    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    #@1e
    .line 55
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@20
    sget v3, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    #@22
    invoke-interface {v2, v3}, Llibcore/io/Os;->sysconf(I)J

    #@25
    move-result-wide v0

    #@26
    .line 56
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    #@28
    div-long/2addr v2, v0

    #@29
    iput-wide v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    #@2b
    .line 50
    return-void
.end method


# virtual methods
.method public readDelta()[J
    .locals 15

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 65
    const/4 v2, 0x0

    #@2
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    #@4
    new-instance v8, Ljava/io/FileReader;

    #@6
    iget-object v10, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    #@8
    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@b
    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 66
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    #@10
    const/16 v8, 0x20

    #@12
    invoke-direct {v5, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@15
    .line 68
    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v4, 0x0

    #@16
    .line 69
    .local v4, "speedIndex":I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    #@18
    array-length v8, v8

    #@19
    if-ge v4, v8, :cond_2

    #@1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@21
    .line 70
    invoke-virtual {v5, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@24
    .line 71
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@2b
    .line 73
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@32
    move-result-wide v10

    #@33
    iget-wide v12, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    #@35
    mul-long v6, v10, v12

    #@37
    .line 74
    .local v6, "time":J
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    #@39
    aget-wide v10, v8, v4

    #@3b
    cmp-long v8, v6, v10

    #@3d
    if-gez v8, :cond_0

    #@3f
    .line 77
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    #@41
    aput-wide v6, v8, v4

    #@43
    .line 81
    :goto_1
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    #@45
    aput-wide v6, v8, v4

    #@47
    .line 82
    add-int/lit8 v4, v4, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 79
    :cond_0
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    #@4c
    iget-object v10, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    #@4e
    aget-wide v10, v10, v4

    #@50
    sub-long v10, v6, v10

    #@52
    aput-wide v10, v8, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@54
    goto :goto_1

    #@55
    .line 87
    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "speedIndex":I
    .end local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v6    # "time":J
    :catch_0
    move-exception v8

    #@56
    move-object v2, v3

    #@57
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    :catchall_0
    move-exception v9

    #@59
    move-object v14, v9

    #@5a
    move-object v9, v8

    #@5b
    move-object v8, v14

    #@5c
    :goto_3
    if-eqz v2, :cond_1

    #@5e
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@61
    :cond_1
    :goto_4
    if-eqz v9, :cond_6

    #@63
    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@64
    .line 84
    :catch_1
    move-exception v0

    #@65
    .line 85
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    const-string/jumbo v8, "KernelCpuSpeedReader"

    #@68
    new-instance v9, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v10, "Failed to read cpu-freq: "

    #@70
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@77
    move-result-object v10

    #@78
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 86
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    #@85
    const-wide/16 v10, 0x0

    #@87
    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    #@8a
    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    #@8c
    return-object v8

    #@8d
    .line 87
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "speedIndex":I
    .restart local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_2
    if-eqz v3, :cond_3

    #@8f
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@92
    :cond_3
    :goto_7
    if-eqz v9, :cond_4

    #@94
    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    #@95
    .line 84
    :catch_2
    move-exception v0

    #@96
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@97
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    #@98
    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v9

    #@99
    goto :goto_7

    #@9a
    :cond_4
    move-object v2, v3

    #@9b
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    #@9c
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "speedIndex":I
    .end local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_4
    move-exception v10

    #@9d
    if-nez v9, :cond_5

    #@9f
    move-object v9, v10

    #@a0
    goto :goto_4

    #@a1
    :cond_5
    if-eq v9, v10, :cond_1

    #@a3
    :try_start_7
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@a6
    goto :goto_4

    #@a7
    :cond_6
    throw v8
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    #@a8
    .local v2, "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    #@a9
    goto :goto_3

    #@aa
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    #@ab
    move-object v2, v3

    #@ac
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    #@ad
    .local v2, "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v8

    #@ae
    goto :goto_2
.end method

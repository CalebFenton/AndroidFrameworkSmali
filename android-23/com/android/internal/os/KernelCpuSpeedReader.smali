.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final MAX_SPEEDS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "KernelCpuSpeedReader"

.field private static final sProcFile:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"


# instance fields
.field private mDeltaSpeedTimes:[J

.field private mLastSpeedTimes:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x3c

    #@2
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 40
    new-array v0, v1, [J

    #@7
    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    #@9
    .line 41
    new-array v0, v1, [J

    #@b
    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    #@d
    .line 34
    return-void
.end method


# virtual methods
.method public readDelta()[J
    .locals 15

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 49
    const/4 v2, 0x0

    #@2
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    #@4
    new-instance v8, Ljava/io/FileReader;

    #@6
    const-string/jumbo v10, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    #@9
    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@c
    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    .line 50
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    #@11
    const/16 v8, 0x20

    #@13
    invoke-direct {v5, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@16
    .line 52
    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v4, 0x0

    #@17
    .line 53
    .local v4, "speedIndex":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@1d
    .line 54
    invoke-virtual {v5, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@20
    .line 55
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@23
    move-result-object v8

    #@24
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@27
    .line 58
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@2e
    move-result-wide v10

    #@2f
    const-wide/16 v12, 0xa

    #@31
    mul-long v6, v10, v12

    #@33
    .line 59
    .local v6, "time":J
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    #@35
    iget-object v10, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    #@37
    aget-wide v10, v10, v4

    #@39
    sub-long v10, v6, v10

    #@3b
    aput-wide v10, v8, v4

    #@3d
    .line 60
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    #@3f
    aput-wide v6, v8, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@41
    .line 61
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_0

    #@44
    .line 66
    .end local v6    # "time":J
    :cond_0
    if-eqz v3, :cond_1

    #@46
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@49
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    #@4b
    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@4c
    .line 63
    :catch_0
    move-exception v0

    #@4d
    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    #@4e
    .line 64
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "speedIndex":I
    .end local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :goto_2
    const-string/jumbo v8, "KernelCpuSpeedReader"

    #@51
    const-string/jumbo v9, "Failed to read cpu-freq"

    #@54
    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    .line 65
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    #@59
    const-wide/16 v10, 0x0

    #@5b
    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    #@5e
    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    #@60
    return-object v8

    #@61
    .line 66
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "speedIndex":I
    .restart local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_1
    move-exception v9

    #@62
    goto :goto_1

    #@63
    :cond_2
    move-object v2, v3

    #@64
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    #@65
    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "speedIndex":I
    .end local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .local v2, "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v8

    #@66
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@67
    :catchall_0
    move-exception v9

    #@68
    move-object v14, v9

    #@69
    move-object v9, v8

    #@6a
    move-object v8, v14

    #@6b
    :goto_5
    if-eqz v2, :cond_3

    #@6d
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@70
    :cond_3
    :goto_6
    if-eqz v9, :cond_5

    #@72
    :try_start_6
    throw v9

    #@73
    .line 63
    :catch_3
    move-exception v0

    #@74
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    #@75
    .line 66
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    #@76
    if-nez v9, :cond_4

    #@78
    move-object v9, v10

    #@79
    goto :goto_6

    #@7a
    :cond_4
    if-eq v9, v10, :cond_3

    #@7c
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@7f
    goto :goto_6

    #@80
    :cond_5
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@81
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    #@82
    goto :goto_5

    #@83
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    #@84
    move-object v2, v3

    #@85
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    #@86
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v8

    #@87
    move-object v2, v3

    #@88
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

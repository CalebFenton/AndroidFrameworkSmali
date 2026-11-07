.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "KernelCpuSpeedReader"


# instance fields
.field private final greylist-max-o mDeltaSpeedTimesMs:[J

.field private final greylist-max-o mJiffyMillis:J

.field private final greylist-max-o mLastSpeedTimesMs:[J

.field private final greylist-max-o mNumSpeedSteps:I

.field private final greylist-max-o mProcFile:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 7
    .param p1, "cpuNumber"    # I
    .param p2, "numSpeedSteps"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    nop

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 52
    const-string v1, "/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mNumSpeedSteps:I

    .line 55
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    .line 56
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    .line 57
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 58
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    .line 59
    return-void
.end method


# virtual methods
.method public greylist-max-o readAbsolute()[J
    .registers 12

    .line 101
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 102
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    iget v1, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mNumSpeedSteps:I

    new-array v1, v1, [J

    .line 103
    .local v1, "speedTimeMs":[J
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_4e
    .catchall {:try_start_8 .. :try_end_14} :catchall_4c

    .line 104
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_14
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 106
    .local v3, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v4, 0x0

    .line 107
    .local v4, "speedIndex":I
    :goto_1c
    iget v5, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mNumSpeedSteps:I

    if-ge v4, v5, :cond_3e

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_3e

    .line 108
    invoke-virtual {v3, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 110
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    mul-long/2addr v7, v9

    .line 111
    .local v7, "time":J
    aput-wide v7, v1, v4
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_42

    .line 112
    nop

    .end local v7    # "time":J
    add-int/lit8 v4, v4, 0x1

    .line 113
    goto :goto_1c

    .line 114
    .end local v3    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v4    # "speedIndex":I
    .end local v6    # "line":Ljava/lang/String;
    :cond_3e
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4e
    .catchall {:try_start_3e .. :try_end_41} :catchall_4c

    goto :goto_70

    .line 103
    :catchall_42
    move-exception v3

    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v4

    :try_start_48
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "speedTimeMs":[J
    .end local p0    # "this":Lcom/android/internal/os/KernelCpuSpeedReader;
    :goto_4b
    throw v3
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_4e
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    .line 118
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v1    # "speedTimeMs":[J
    .restart local p0    # "this":Lcom/android/internal/os/KernelCpuSpeedReader;
    :catchall_4c
    move-exception v2

    goto :goto_75

    .line 114
    :catch_4e
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/IOException;
    :try_start_4f
    const-string v3, "KernelCpuSpeedReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read cpu-freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_70
    .catchall {:try_start_4f .. :try_end_70} :catchall_4c

    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    :goto_70
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 119
    nop

    .line 120
    return-object v1

    .line 118
    :goto_75
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 119
    throw v2
.end method

.method public greylist-max-o readDelta()[J
    .registers 11

    .line 67
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 68
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_64
    .catchall {:try_start_4 .. :try_end_10} :catchall_62

    .line 69
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_10
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 71
    .local v2, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v3, 0x0

    .line 72
    .local v3, "speedIndex":I
    :goto_18
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    array-length v4, v4

    if-ge v3, v4, :cond_54

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_54

    .line 73
    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 76
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    mul-long/2addr v6, v8

    .line 77
    .local v6, "time":J
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aget-wide v8, v4, v3

    cmp-long v4, v6, v8

    if-gez v4, :cond_42

    .line 80
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    aput-wide v6, v4, v3

    goto :goto_4c

    .line 82
    :cond_42
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aget-wide v8, v8, v3

    sub-long v8, v6, v8

    aput-wide v8, v4, v3

    .line 84
    :goto_4c
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aput-wide v6, v4, v3
    :try_end_50
    .catchall {:try_start_10 .. :try_end_50} :catchall_58

    .line 85
    nop

    .end local v6    # "time":J
    add-int/lit8 v3, v3, 0x1

    .line 86
    goto :goto_18

    .line 87
    .end local v2    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3    # "speedIndex":I
    .end local v5    # "line":Ljava/lang/String;
    :cond_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_64
    .catchall {:try_start_54 .. :try_end_57} :catchall_62

    goto :goto_88

    .line 68
    :catchall_58
    move-exception v2

    :try_start_59
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception v3

    :try_start_5e
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p0    # "this":Lcom/android/internal/os/KernelCpuSpeedReader;
    :goto_61
    throw v2
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_64
    .catchall {:try_start_5e .. :try_end_62} :catchall_62

    .line 91
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/internal/os/KernelCpuSpeedReader;
    :catchall_62
    move-exception v1

    goto :goto_8f

    .line 87
    :catch_64
    move-exception v1

    .line 88
    .local v1, "e":Ljava/io/IOException;
    :try_start_65
    const-string v2, "KernelCpuSpeedReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read cpu-freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_88
    .catchall {:try_start_65 .. :try_end_88} :catchall_62

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :goto_88
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 92
    nop

    .line 93
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    return-object v1

    .line 91
    :goto_8f
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 92
    throw v1
.end method

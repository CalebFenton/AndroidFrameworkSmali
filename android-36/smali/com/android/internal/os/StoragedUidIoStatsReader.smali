.class public Lcom/android/internal/os/StoragedUidIoStatsReader;
.super Ljava/lang/Object;
.source "StoragedUidIoStatsReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sUidIoFile:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "/proc/uid_io/stats"

    sput-object v0, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sput-object p1, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private blacklist readAbsoluteInternal(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V
    .registers 32
    .param p1, "callback"    # Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;

    .line 87
    const-string v1, ": "

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 88
    .local v2, "file":Ljava/io/File;
    :try_start_a
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_de

    move-object v3, v0

    .line 90
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_13
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .local v4, "line":Ljava/lang/String;
    if-eqz v0, :cond_cb

    .line 91
    const-string v0, " "

    invoke-static {v4, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 92
    .local v5, "fields":[Ljava/lang/String;
    array-length v0, v5

    const/16 v6, 0xb

    if-eq v0, v6, :cond_49

    .line 93
    sget-object v0, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed entry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_d1

    .line 94
    goto :goto_13

    .line 97
    :cond_49
    const/4 v0, 0x0

    :try_start_4a
    aget-object v6, v5, v0

    .line 98
    .local v6, "uidStr":Ljava/lang/String;
    aget-object v0, v5, v0

    const/16 v7, 0xa

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 99
    .local v9, "uid":I
    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    .line 100
    .local v10, "fgCharsRead":J
    const/4 v0, 0x2

    aget-object v0, v5, v0

    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    .line 101
    .local v12, "fgCharsWrite":J
    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14

    .line 102
    .local v14, "fgBytesRead":J
    const/4 v0, 0x4

    aget-object v0, v5, v0

    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16

    .line 103
    .local v16, "fgBytesWrite":J
    const/4 v0, 0x5

    aget-object v0, v5, v0

    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    .line 104
    .local v18, "bgCharsRead":J
    const/4 v0, 0x6

    aget-object v0, v5, v0

    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    .line 105
    .local v20, "bgCharsWrite":J
    const/4 v0, 0x7

    aget-object v0, v5, v0

    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v22

    .line 106
    .local v22, "bgBytesRead":J
    const/16 v0, 0x8

    aget-object v0, v5, v0

    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24

    .line 107
    .local v24, "bgBytesWrite":J
    const/16 v0, 0x9

    aget-object v0, v5, v0

    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v26

    .line 108
    .local v26, "fgFsync":J
    aget-object v0, v5, v7

    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v28

    .line 109
    .local v28, "bgFsync":J
    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v29}, Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;->onUidStorageStats(IJJJJJJJJJJ)V
    :try_end_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_a1} :catch_a2
    .catchall {:try_start_4a .. :try_end_a1} :catchall_d1

    .line 114
    .end local v6    # "uidStr":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "fgCharsRead":J
    .end local v12    # "fgCharsWrite":J
    .end local v14    # "fgBytesRead":J
    .end local v16    # "fgBytesWrite":J
    .end local v18    # "bgCharsRead":J
    .end local v20    # "bgCharsWrite":J
    .end local v22    # "bgBytesRead":J
    .end local v24    # "bgBytesWrite":J
    .end local v26    # "fgFsync":J
    .end local v28    # "bgFsync":J
    goto :goto_c9

    .line 112
    :catch_a2
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_a3
    sget-object v6, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse entry in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_a3 .. :try_end_c9} :catchall_d1

    .line 115
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "fields":[Ljava/lang/String;
    :goto_c9
    goto/16 :goto_13

    .line 116
    .end local v4    # "line":Ljava/lang/String;
    :cond_cb
    if-eqz v3, :cond_d0

    :try_start_cd
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_de

    .line 118
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :cond_d0
    goto :goto_105

    .line 88
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_d1
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_dd

    :try_start_d5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_d9

    goto :goto_dd

    :catchall_d9
    move-exception v0

    :try_start_da
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/internal/os/StoragedUidIoStatsReader;
    .end local p1    # "callback":Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;
    :cond_dd
    :goto_dd
    throw v4
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_de} :catch_de

    .line 116
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/internal/os/StoragedUidIoStatsReader;
    .restart local p1    # "callback":Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;
    :catch_de
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :goto_105
    return-void
.end method


# virtual methods
.method public blacklist readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;

    .line 78
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 80
    .local v0, "oldMask":I
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsoluteInternal(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 82
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 83
    nop

    .line 84
    return-void

    .line 82
    :catchall_c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 83
    throw v1
.end method

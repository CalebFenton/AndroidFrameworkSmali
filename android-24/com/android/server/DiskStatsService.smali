.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiskStatsService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    #@5
    .line 41
    return-void
.end method

.method private reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "path"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 93
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    #@4
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@7
    move-result-object v8

    #@8
    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #@b
    .line 94
    .local v5, "statfs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    #@e
    move-result v8

    #@f
    int-to-long v2, v8

    #@10
    .line 95
    .local v2, "bsize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    #@13
    move-result v8

    #@14
    int-to-long v0, v8

    #@15
    .line 96
    .local v0, "avail":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    #@18
    move-result v8

    #@19
    int-to-long v6, v8

    #@1a
    .line 97
    .local v6, "total":J
    cmp-long v8, v2, v10

    #@1c
    if-lez v8, :cond_0

    #@1e
    cmp-long v8, v6, v10

    #@20
    if-gtz v8, :cond_1

    #@22
    .line 98
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@24
    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v10, "Invalid stat: bsize="

    #@2c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@33
    move-result-object v9

    #@34
    const-string/jumbo v10, " avail="

    #@37
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v9

    #@3f
    const-string/jumbo v10, " total="

    #@42
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v9

    #@46
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v9

    #@4e
    .line 98
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 110
    .end local v0    # "avail":J
    .end local v2    # "bsize":J
    .end local v5    # "statfs":Landroid/os/StatFs;
    .end local v6    # "total":J
    :catch_0
    move-exception v4

    #@53
    .line 111
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 112
    const-string/jumbo v8, "-Error: "

    #@59
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    .line 113
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63
    .line 114
    return-void

    #@64
    .line 102
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "avail":J
    .restart local v2    # "bsize":J
    .restart local v5    # "statfs":Landroid/os/StatFs;
    .restart local v6    # "total":J
    :cond_1
    :try_start_1
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@67
    .line 103
    const-string/jumbo v8, "-Free: "

    #@6a
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    .line 104
    mul-long v8, v0, v2

    #@6f
    const-wide/16 v10, 0x400

    #@71
    div-long/2addr v8, v10

    #@72
    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    #@75
    .line 105
    const-string/jumbo v8, "K / "

    #@78
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    .line 106
    mul-long v8, v6, v2

    #@7d
    const-wide/16 v10, 0x400

    #@7f
    div-long/2addr v8, v10

    #@80
    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    #@83
    .line 107
    const-string/jumbo v8, "K total = "

    #@86
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@89
    .line 108
    const-wide/16 v8, 0x64

    #@8b
    mul-long/2addr v8, v0

    #@8c
    div-long/2addr v8, v6

    #@8d
    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    #@90
    .line 109
    const-string/jumbo v8, "% free"

    #@93
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@96
    .line 91
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 47
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v14, "android.permission.DUMP"

    #@7
    const-string/jumbo v15, "DiskStatsService"

    #@a
    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 50
    const/16 v13, 0x200

    #@f
    new-array v11, v13, [B

    #@11
    .line 51
    .local v11, "junk":[B
    const/4 v10, 0x0

    #@12
    .local v10, "i":I
    :goto_0
    array-length v13, v11

    #@13
    if-ge v10, v13, :cond_0

    #@15
    int-to-byte v13, v10

    #@16
    aput-byte v13, v11, v10

    #@18
    add-int/lit8 v10, v10, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 53
    :cond_0
    new-instance v12, Ljava/io/File;

    #@1d
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@20
    move-result-object v13

    #@21
    const-string/jumbo v14, "system/perftest.tmp"

    #@24
    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@27
    .line 54
    .local v12, "tmp":Ljava/io/File;
    const/4 v8, 0x0

    #@28
    .line 55
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    #@29
    .line 57
    .local v7, "error":Ljava/io/IOException;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2c
    move-result-wide v4

    #@2d
    .line 59
    .local v4, "before":J
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    #@2f
    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 60
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v9, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@35
    .line 64
    if-eqz v9, :cond_1

    #@37
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@3a
    :cond_1
    :goto_1
    move-object v8, v9

    #@3b
    .line 67
    .end local v7    # "error":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3e
    move-result-wide v2

    #@3f
    .line 68
    .local v2, "after":J
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@42
    move-result v13

    #@43
    if-eqz v13, :cond_3

    #@45
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    #@48
    .line 70
    :cond_3
    if-eqz v7, :cond_6

    #@4a
    .line 71
    const-string/jumbo v13, "Test-Error: "

    #@4d
    move-object/from16 v0, p2

    #@4f
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52
    .line 72
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@55
    move-result-object v13

    #@56
    move-object/from16 v0, p2

    #@58
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b
    .line 79
    :goto_3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@5e
    move-result-object v13

    #@5f
    const-string/jumbo v14, "Data"

    #@62
    move-object/from16 v0, p0

    #@64
    move-object/from16 v1, p2

    #@66
    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@69
    .line 80
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    #@6c
    move-result-object v13

    #@6d
    const-string/jumbo v14, "Cache"

    #@70
    move-object/from16 v0, p0

    #@72
    move-object/from16 v1, p2

    #@74
    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@77
    .line 81
    new-instance v13, Ljava/io/File;

    #@79
    const-string/jumbo v14, "/system"

    #@7c
    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@7f
    const-string/jumbo v14, "System"

    #@82
    move-object/from16 v0, p0

    #@84
    move-object/from16 v1, p2

    #@86
    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@89
    .line 83
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    #@8c
    move-result v13

    #@8d
    if-eqz v13, :cond_4

    #@8f
    .line 84
    const-string/jumbo v13, "File-based Encryption: true"

    #@92
    move-object/from16 v0, p2

    #@94
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@97
    .line 46
    :cond_4
    return-void

    #@98
    .line 64
    .end local v2    # "after":J
    .restart local v7    # "error":Ljava/io/IOException;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    #@99
    .local v6, "e":Ljava/io/IOException;
    goto :goto_1

    #@9a
    .line 61
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    #@9b
    .line 62
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_4
    move-object v7, v6

    #@9c
    .line 64
    .local v7, "error":Ljava/io/IOException;
    if-eqz v8, :cond_2

    #@9e
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@a1
    goto :goto_2

    #@a2
    :catch_2
    move-exception v6

    #@a3
    goto :goto_2

    #@a4
    .line 63
    .end local v6    # "e":Ljava/io/IOException;
    .local v7, "error":Ljava/io/IOException;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v13

    #@a5
    .line 64
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    if-eqz v8, :cond_5

    #@a7
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@aa
    .line 63
    :cond_5
    :goto_6
    throw v13

    #@ab
    .line 64
    :catch_3
    move-exception v6

    #@ac
    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_6

    #@ad
    .line 74
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "error":Ljava/io/IOException;
    .restart local v2    # "after":J
    :cond_6
    const-string/jumbo v13, "Latency: "

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b5
    .line 75
    sub-long v14, v2, v4

    #@b7
    move-object/from16 v0, p2

    #@b9
    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    #@bc
    .line 76
    const-string/jumbo v13, "ms [512B Data Write]"

    #@bf
    move-object/from16 v0, p2

    #@c1
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c4
    goto :goto_3

    #@c5
    .line 63
    .end local v2    # "after":J
    .restart local v7    # "error":Ljava/io/IOException;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v13

    #@c6
    move-object v8, v9

    #@c7
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    #@c8
    .line 61
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    #@c9
    .restart local v6    # "e":Ljava/io/IOException;
    move-object v8, v9

    #@ca
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

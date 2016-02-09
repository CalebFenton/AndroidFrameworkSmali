.class Lcom/android/server/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PersistentDataBlockService;

    #@0
    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@2
    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    #@5
    return-void
.end method

.method private enforcePersistentDataBlockAccess()V
    .locals 2

    #@0
    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@2
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get1(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.ACCESS_PDB_STATE"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 478
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@14
    move-result v1

    #@15
    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;I)V

    #@18
    .line 475
    :cond_0
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 453
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    #@4
    .line 457
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    #@6
    new-instance v3, Ljava/io/FileInputStream;

    #@8
    new-instance v4, Ljava/io/File;

    #@a
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@c
    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@16
    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 464
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@1b
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get3(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@20
    .line 465
    :try_start_2
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@22
    invoke-static {v3, v2}, Lcom/android/server/PersistentDataBlockService;->-wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    move-result v3

    #@26
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@27
    .line 471
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2a
    .line 465
    return v3

    #@2b
    .line 458
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    #@2c
    .line 459
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, "partition not available"

    #@33
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 460
    return v6

    #@37
    .line 464
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v3

    #@38
    :try_start_4
    monitor-exit v4

    #@39
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3a
    .line 467
    :catch_1
    move-exception v1

    #@3b
    .line 468
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    const-string/jumbo v4, "error reading data block size"

    #@42
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@45
    .line 471
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@48
    .line 469
    return v6

    #@49
    .line 470
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    #@4a
    .line 471
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4d
    .line 470
    throw v3
.end method

.method public getMaximumDataBlockSize()J
    .locals 8

    #@0
    .prologue
    const-wide/32 v2, 0x19000

    #@3
    .line 484
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@5
    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->-wrap5(Lcom/android/server/PersistentDataBlockService;)J

    #@8
    move-result-wide v4

    #@9
    const-wide/16 v6, 0x8

    #@b
    sub-long/2addr v4, v6

    #@c
    const-wide/16 v6, 0x1

    #@e
    sub-long v0, v4, v6

    #@10
    .line 485
    .local v0, "actualSize":J
    cmp-long v4, v0, v2

    #@12
    if-gtz v4, :cond_0

    #@14
    .end local v0    # "actualSize":J
    :goto_0
    return-wide v0

    #@15
    .restart local v0    # "actualSize":J
    :cond_0
    move-wide v0, v2

    #@16
    goto :goto_0
.end method

.method public getOemUnlockEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@2
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap8(Lcom/android/server/PersistentDataBlockService;)V

    #@5
    .line 448
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@7
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap1(Lcom/android/server/PersistentDataBlockService;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public read()[B
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 374
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v7

    #@8
    invoke-static {v6, v7}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;I)V

    #@b
    .line 375
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@d
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->-wrap2(Lcom/android/server/PersistentDataBlockService;)Z

    #@10
    move-result v6

    #@11
    if-nez v6, :cond_0

    #@13
    .line 376
    new-array v6, v8, [B

    #@15
    return-object v6

    #@16
    .line 381
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    #@18
    new-instance v6, Ljava/io/FileInputStream;

    #@1a
    new-instance v7, Ljava/io/File;

    #@1c
    iget-object v8, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@1e
    invoke-static {v8}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    #@21
    move-result-object v8

    #@22
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@25
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@28
    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 388
    .local v3, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@2d
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->-get3(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    #@30
    move-result-object v7

    #@31
    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    .line 389
    :try_start_2
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@34
    invoke-static {v6, v3}, Lcom/android/server/PersistentDataBlockService;->-wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    #@37
    move-result v5

    #@38
    .line 391
    .local v5, "totalDataSize":I
    if-nez v5, :cond_1

    #@3a
    .line 392
    const/4 v6, 0x0

    #@3b
    new-array v6, v6, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3e
    .line 410
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@41
    .line 392
    :goto_0
    return-object v6

    #@42
    .line 382
    .end local v3    # "inputStream":Ljava/io/DataInputStream;
    .end local v5    # "totalDataSize":I
    :catch_0
    move-exception v1

    #@43
    .line 383
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    const-string/jumbo v7, "partition not available?"

    #@4a
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    .line 384
    return-object v10

    #@4e
    .line 411
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "totalDataSize":I
    :catch_1
    move-exception v2

    #@4f
    .line 412
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    const-string/jumbo v8, "failed to close OutputStream"

    #@56
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    goto :goto_0

    #@5a
    .line 395
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_5
    new-array v0, v5, [B

    #@5c
    .line 396
    .local v0, "data":[B
    const/4 v6, 0x0

    #@5d
    invoke-virtual {v3, v0, v6, v5}, Ljava/io/DataInputStream;->read([BII)I

    #@60
    move-result v4

    #@61
    .line 397
    .local v4, "read":I
    if-ge v4, v5, :cond_2

    #@63
    .line 399
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    new-instance v8, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v9, "failed to read entire data block. bytes read: "

    #@6f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v8

    #@73
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v8

    #@77
    .line 400
    const-string/jumbo v9, "/"

    #@7a
    .line 399
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v8

    #@82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v8

    #@86
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@89
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@8a
    .line 410
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    #@8d
    .line 401
    :goto_1
    return-object v10

    #@8e
    .line 411
    :catch_2
    move-exception v2

    #@8f
    .line 412
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    const-string/jumbo v7, "failed to close OutputStream"

    #@96
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    goto :goto_1

    #@9a
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@9b
    .line 410
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    #@9e
    .line 403
    :goto_2
    return-object v0

    #@9f
    .line 411
    :catch_3
    move-exception v2

    #@a0
    .line 412
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@a3
    move-result-object v6

    #@a4
    const-string/jumbo v7, "failed to close OutputStream"

    #@a7
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    goto :goto_2

    #@ab
    .line 388
    .end local v0    # "data":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "read":I
    .end local v5    # "totalDataSize":I
    :catchall_0
    move-exception v6

    #@ac
    :try_start_a
    monitor-exit v7

    #@ad
    throw v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@ae
    .line 405
    :catch_4
    move-exception v2

    #@af
    .line 406
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_b
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@b2
    move-result-object v6

    #@b3
    const-string/jumbo v7, "failed to read data"

    #@b6
    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@b9
    .line 410
    :try_start_c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    #@bc
    .line 407
    :goto_3
    return-object v10

    #@bd
    .line 411
    :catch_5
    move-exception v2

    #@be
    .line 412
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@c1
    move-result-object v6

    #@c2
    const-string/jumbo v7, "failed to close OutputStream"

    #@c5
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    goto :goto_3

    #@c9
    .line 408
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    #@ca
    .line 410
    :try_start_d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    #@cd
    .line 408
    :goto_4
    throw v6

    #@ce
    .line 411
    :catch_6
    move-exception v2

    #@cf
    .line 412
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@d2
    move-result-object v7

    #@d3
    const-string/jumbo v8, "failed to close OutputStream"

    #@d6
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d9
    goto :goto_4
.end method

.method public setOemUnlockEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 433
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 434
    return-void

    #@7
    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@9
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap8(Lcom/android/server/PersistentDataBlockService;)V

    #@c
    .line 437
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@e
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap7(Lcom/android/server/PersistentDataBlockService;)V

    #@11
    .line 439
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@13
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get3(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    monitor-enter v1

    #@18
    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@1a
    invoke-static {v0, p1}, Lcom/android/server/PersistentDataBlockService;->-wrap6(Lcom/android/server/PersistentDataBlockService;Z)V

    #@1d
    .line 441
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@1f
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v1

    #@23
    .line 431
    return-void

    #@24
    .line 439
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method

.method public wipe()V
    .locals 4

    #@0
    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@2
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-wrap8(Lcom/android/server/PersistentDataBlockService;)V

    #@5
    .line 421
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@7
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-get3(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    monitor-enter v2

    #@c
    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@e
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@10
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-static {v1, v3}, Lcom/android/server/PersistentDataBlockService;->-wrap4(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I

    #@17
    move-result v0

    #@18
    .line 424
    .local v0, "ret":I
    if-gez v0, :cond_0

    #@1a
    .line 425
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v3, "failed to wipe persistent partition"

    #@21
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_0
    monitor-exit v2

    #@25
    .line 418
    return-void

    #@26
    .line 421
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1
.end method

.method public write([B)I
    .locals 13
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, -0x1

    #@1
    .line 329
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v8

    #@7
    invoke-static {v7, v8}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;I)V

    #@a
    .line 332
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@c
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-wrap5(Lcom/android/server/PersistentDataBlockService;)J

    #@f
    move-result-wide v8

    #@10
    const-wide/16 v10, 0x8

    #@12
    sub-long/2addr v8, v10

    #@13
    const-wide/16 v10, 0x1

    #@15
    sub-long v4, v8, v10

    #@17
    .line 333
    .local v4, "maxBlockSize":J
    array-length v7, p1

    #@18
    int-to-long v8, v7

    #@19
    cmp-long v7, v8, v4

    #@1b
    if-lez v7, :cond_0

    #@1d
    .line 335
    neg-long v8, v4

    #@1e
    long-to-int v7, v8

    #@1f
    return v7

    #@20
    .line 340
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/DataOutputStream;

    #@22
    new-instance v7, Ljava/io/FileOutputStream;

    #@24
    new-instance v8, Ljava/io/File;

    #@26
    iget-object v9, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@28
    invoke-static {v9}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2f
    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@32
    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 346
    .local v6, "outputStream":Ljava/io/DataOutputStream;
    array-length v7, p1

    #@36
    add-int/lit8 v7, v7, 0x8

    #@38
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@3b
    move-result-object v3

    #@3c
    .line 347
    .local v3, "headerAndData":Ljava/nio/ByteBuffer;
    const v7, 0x19901873

    #@3f
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@42
    .line 348
    array-length v7, p1

    #@43
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@46
    .line 349
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@49
    .line 351
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@4b
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-get3(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    #@4e
    move-result-object v8

    #@4f
    monitor-enter v8

    #@50
    .line 353
    const/16 v7, 0x20

    #@52
    :try_start_1
    new-array v0, v7, [B

    #@54
    .line 354
    .local v0, "checksum":[B
    const/4 v7, 0x0

    #@55
    const/16 v9, 0x20

    #@57
    invoke-virtual {v6, v0, v7, v9}, Ljava/io/DataOutputStream;->write([BII)V

    #@5a
    .line 355
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write([B)V

    #@61
    .line 356
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    .line 361
    :try_start_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@67
    .line 364
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@69
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z

    #@6c
    move-result v7

    #@6d
    if-eqz v7, :cond_1

    #@6f
    .line 365
    array-length v7, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@70
    monitor-exit v8

    #@71
    return v7

    #@72
    .line 341
    .end local v0    # "checksum":[B
    .end local v3    # "headerAndData":Ljava/nio/ByteBuffer;
    .end local v6    # "outputStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    #@73
    .line 342
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    const-string/jumbo v8, "partition not available?"

    #@7a
    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7d
    .line 343
    return v12

    #@7e
    .line 357
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "headerAndData":Ljava/nio/ByteBuffer;
    .restart local v6    # "outputStream":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v2

    #@7f
    .line 358
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@82
    move-result-object v7

    #@83
    const-string/jumbo v9, "failed writing to the persistent data block"

    #@86
    invoke-static {v7, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@89
    .line 361
    :try_start_4
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@8c
    monitor-exit v8

    #@8d
    .line 359
    return v12

    #@8e
    .line 360
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@8f
    .line 361
    :try_start_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@92
    .line 360
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@93
    .line 351
    :catchall_1
    move-exception v7

    #@94
    monitor-exit v8

    #@95
    throw v7

    #@96
    .restart local v0    # "checksum":[B
    :cond_1
    monitor-exit v8

    #@97
    .line 367
    return v12
.end method

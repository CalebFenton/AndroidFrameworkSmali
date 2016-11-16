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
    .line 354
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
    .line 524
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
    .line 526
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@14
    move-result v1

    #@15
    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap10(Lcom/android/server/PersistentDataBlockService;I)V

    #@18
    .line 523
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
    .line 501
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    #@4
    .line 505
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
    .line 512
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
    .line 513
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
    .line 519
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2a
    .line 513
    return v3

    #@2b
    .line 506
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    #@2c
    .line 507
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, "partition not available"

    #@33
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 508
    return v6

    #@37
    .line 512
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
    .line 515
    :catch_1
    move-exception v1

    #@3b
    .line 516
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
    .line 519
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@48
    .line 517
    return v6

    #@49
    .line 518
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    #@4a
    .line 519
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4d
    .line 518
    throw v3
.end method

.method public getFlashLockState()I
    .locals 2

    #@0
    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@2
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-wrap8(Lcom/android/server/PersistentDataBlockService;)V

    #@5
    .line 488
    const-string/jumbo v1, "ro.boot.flash.locked"

    #@8
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 489
    .local v0, "locked":Ljava/lang/String;
    const-string/jumbo v1, "1"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 491
    const/4 v1, 0x1

    #@16
    return v1

    #@17
    .line 489
    :cond_0
    const-string/jumbo v1, "0"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 493
    const/4 v1, 0x0

    #@21
    return v1

    #@22
    .line 495
    :cond_1
    const/4 v1, -0x1

    #@23
    return v1
.end method

.method public getMaximumDataBlockSize()J
    .locals 8

    #@0
    .prologue
    const-wide/32 v2, 0x19000

    #@3
    .line 532
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
    .line 533
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
    .line 481
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@2
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap8(Lcom/android/server/PersistentDataBlockService;)V

    #@5
    .line 482
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
    .line 402
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v7

    #@8
    invoke-static {v6, v7}, Lcom/android/server/PersistentDataBlockService;->-wrap10(Lcom/android/server/PersistentDataBlockService;I)V

    #@b
    .line 403
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@d
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->-wrap2(Lcom/android/server/PersistentDataBlockService;)Z

    #@10
    move-result v6

    #@11
    if-nez v6, :cond_0

    #@13
    .line 404
    new-array v6, v8, [B

    #@15
    return-object v6

    #@16
    .line 409
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
    .line 416
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
    .line 417
    :try_start_2
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@34
    invoke-static {v6, v3}, Lcom/android/server/PersistentDataBlockService;->-wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    #@37
    move-result v5

    #@38
    .line 419
    .local v5, "totalDataSize":I
    if-nez v5, :cond_1

    #@3a
    .line 420
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
    .line 438
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@41
    .line 420
    :goto_0
    return-object v6

    #@42
    .line 410
    .end local v3    # "inputStream":Ljava/io/DataInputStream;
    .end local v5    # "totalDataSize":I
    :catch_0
    move-exception v1

    #@43
    .line 411
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    const-string/jumbo v7, "partition not available?"

    #@4a
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    .line 412
    return-object v10

    #@4e
    .line 439
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "totalDataSize":I
    :catch_1
    move-exception v2

    #@4f
    .line 440
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
    .line 423
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_5
    new-array v0, v5, [B

    #@5c
    .line 424
    .local v0, "data":[B
    const/4 v6, 0x0

    #@5d
    invoke-virtual {v3, v0, v6, v5}, Ljava/io/DataInputStream;->read([BII)I

    #@60
    move-result v4

    #@61
    .line 425
    .local v4, "read":I
    if-ge v4, v5, :cond_2

    #@63
    .line 427
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
    .line 428
    const-string/jumbo v9, "/"

    #@7a
    .line 427
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
    .line 438
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    #@8d
    .line 429
    :goto_1
    return-object v10

    #@8e
    .line 439
    :catch_2
    move-exception v2

    #@8f
    .line 440
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
    .line 438
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    #@9e
    .line 431
    :goto_2
    return-object v0

    #@9f
    .line 439
    :catch_3
    move-exception v2

    #@a0
    .line 440
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
    .line 416
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
    .line 433
    :catch_4
    move-exception v2

    #@af
    .line 434
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
    .line 438
    :try_start_c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    #@bc
    .line 435
    :goto_3
    return-object v10

    #@bd
    .line 439
    :catch_5
    move-exception v2

    #@be
    .line 440
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
    .line 436
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    #@ca
    .line 438
    :try_start_d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    #@cd
    .line 436
    :goto_4
    throw v6

    #@ce
    .line 439
    :catch_6
    move-exception v2

    #@cf
    .line 440
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 461
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 462
    return-void

    #@7
    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@9
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;)V

    #@c
    .line 466
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@e
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap7(Lcom/android/server/PersistentDataBlockService;)V

    #@11
    .line 468
    if-eqz p1, :cond_1

    #@13
    .line 470
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@15
    const-string/jumbo v1, "no_oem_unlock"

    #@18
    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap11(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    #@1b
    .line 471
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@1d
    const-string/jumbo v1, "no_factory_reset"

    #@20
    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap11(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    #@23
    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@25
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get3(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    monitor-enter v1

    #@2a
    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@2c
    invoke-static {v0, p1}, Lcom/android/server/PersistentDataBlockService;->-wrap6(Lcom/android/server/PersistentDataBlockService;Z)V

    #@2f
    .line 475
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@31
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit v1

    #@35
    .line 459
    return-void

    #@36
    .line 473
    :catchall_0
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0
.end method

.method public wipe()V
    .locals 4

    #@0
    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@2
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;)V

    #@5
    .line 449
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@7
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-get3(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    monitor-enter v2

    #@c
    .line 450
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
    .line 452
    .local v0, "ret":I
    if-gez v0, :cond_0

    #@1a
    .line 453
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
    .line 446
    return-void

    #@26
    .line 449
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
    .line 357
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v8

    #@7
    invoke-static {v7, v8}, Lcom/android/server/PersistentDataBlockService;->-wrap10(Lcom/android/server/PersistentDataBlockService;I)V

    #@a
    .line 360
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
    .line 361
    .local v4, "maxBlockSize":J
    array-length v7, p1

    #@18
    int-to-long v8, v7

    #@19
    cmp-long v7, v8, v4

    #@1b
    if-lez v7, :cond_0

    #@1d
    .line 363
    neg-long v8, v4

    #@1e
    long-to-int v7, v8

    #@1f
    return v7

    #@20
    .line 368
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
    .line 374
    .local v6, "outputStream":Ljava/io/DataOutputStream;
    array-length v7, p1

    #@36
    add-int/lit8 v7, v7, 0x8

    #@38
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@3b
    move-result-object v3

    #@3c
    .line 375
    .local v3, "headerAndData":Ljava/nio/ByteBuffer;
    const v7, 0x19901873

    #@3f
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@42
    .line 376
    array-length v7, p1

    #@43
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@46
    .line 377
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@49
    .line 379
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@4b
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-get3(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    #@4e
    move-result-object v8

    #@4f
    monitor-enter v8

    #@50
    .line 381
    const/16 v7, 0x20

    #@52
    :try_start_1
    new-array v0, v7, [B

    #@54
    .line 382
    .local v0, "checksum":[B
    const/4 v7, 0x0

    #@55
    const/16 v9, 0x20

    #@57
    invoke-virtual {v6, v0, v7, v9}, Ljava/io/DataOutputStream;->write([BII)V

    #@5a
    .line 383
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write([B)V

    #@61
    .line 384
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    .line 389
    :try_start_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@67
    .line 392
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    #@69
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z

    #@6c
    move-result v7

    #@6d
    if-eqz v7, :cond_1

    #@6f
    .line 393
    array-length v7, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@70
    monitor-exit v8

    #@71
    return v7

    #@72
    .line 369
    .end local v0    # "checksum":[B
    .end local v3    # "headerAndData":Ljava/nio/ByteBuffer;
    .end local v6    # "outputStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    #@73
    .line 370
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    const-string/jumbo v8, "partition not available?"

    #@7a
    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7d
    .line 371
    return v12

    #@7e
    .line 385
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "headerAndData":Ljava/nio/ByteBuffer;
    .restart local v6    # "outputStream":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v2

    #@7f
    .line 386
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
    .line 389
    :try_start_4
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@8c
    monitor-exit v8

    #@8d
    .line 387
    return v12

    #@8e
    .line 388
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@8f
    .line 389
    :try_start_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@92
    .line 388
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@93
    .line 379
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
    .line 395
    return v12
.end method

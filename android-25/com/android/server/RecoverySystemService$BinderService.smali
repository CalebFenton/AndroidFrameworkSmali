.class final Lcom/android/server/RecoverySystemService$BinderService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecoverySystemService;


# direct methods
.method private constructor <init>(Lcom/android/server/RecoverySystemService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/RecoverySystemService;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    #@2
    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/RecoverySystemService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;)V

    #@3
    return-void
.end method

.method private checkAndWaitForUncryptService()Z
    .locals 10

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 204
    const/4 v3, 0x0

    #@2
    .local v3, "retry":I
    :goto_0
    const/16 v7, 0x1e

    #@4
    if-ge v3, v7, :cond_2

    #@6
    .line 205
    const-string/jumbo v7, "init.svc.uncrypt"

    #@9
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 206
    .local v5, "uncryptService":Ljava/lang/String;
    const-string/jumbo v7, "init.svc.setup-bcb"

    #@10
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 207
    .local v4, "setupBcbService":Ljava/lang/String;
    const-string/jumbo v7, "init.svc.clear-bcb"

    #@17
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 208
    .local v1, "clearBcbService":Ljava/lang/String;
    const-string/jumbo v7, "running"

    #@1e
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v7

    #@22
    if-nez v7, :cond_0

    #@24
    .line 209
    const-string/jumbo v7, "running"

    #@27
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v7

    #@2b
    .line 208
    if-nez v7, :cond_0

    #@2d
    .line 209
    const-string/jumbo v7, "running"

    #@30
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    .line 217
    .local v0, "busy":Z
    :goto_1
    if-nez v0, :cond_1

    #@36
    .line 218
    return v6

    #@37
    .end local v0    # "busy":Z
    :cond_0
    move v0, v6

    #@38
    .line 208
    goto :goto_1

    #@39
    .line 222
    .restart local v0    # "busy":Z
    :cond_1
    const-wide/16 v8, 0x3e8

    #@3b
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 204
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@40
    goto :goto_0

    #@41
    .line 223
    :catch_0
    move-exception v2

    #@42
    .line 224
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "RecoverySystemService"

    #@45
    const-string/jumbo v8, "Interrupted:"

    #@48
    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    goto :goto_2

    #@4c
    .line 228
    .end local v0    # "busy":Z
    .end local v1    # "clearBcbService":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "setupBcbService":Ljava/lang/String;
    .end local v5    # "uncryptService":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    #@4d
    return v6
.end method

.method private connectService()Landroid/net/LocalSocket;
    .locals 8

    #@0
    .prologue
    .line 232
    new-instance v4, Landroid/net/LocalSocket;

    #@2
    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    #@5
    .line 233
    .local v4, "socket":Landroid/net/LocalSocket;
    const/4 v0, 0x0

    #@6
    .line 237
    .local v0, "done":Z
    const/4 v3, 0x0

    #@7
    .local v3, "retry":I
    :goto_0
    const/16 v5, 0x1e

    #@9
    if-ge v3, v5, :cond_0

    #@b
    .line 239
    :try_start_0
    new-instance v5, Landroid/net/LocalSocketAddress;

    #@d
    const-string/jumbo v6, "uncrypt"

    #@10
    .line 240
    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@12
    .line 239
    invoke-direct {v5, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    #@15
    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 241
    const/4 v0, 0x1

    #@19
    .line 251
    :cond_0
    if-nez v0, :cond_1

    #@1b
    .line 252
    const-string/jumbo v5, "RecoverySystemService"

    #@1e
    const-string/jumbo v6, "Timed out connecting to uncrypt socket"

    #@21
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 253
    const/4 v5, 0x0

    #@25
    return-object v5

    #@26
    .line 243
    :catch_0
    move-exception v2

    #@27
    .line 245
    .local v2, "ignored":Ljava/io/IOException;
    const-wide/16 v6, 0x3e8

    #@29
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@2c
    .line 237
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 246
    :catch_1
    move-exception v1

    #@30
    .line 247
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "RecoverySystemService"

    #@33
    const-string/jumbo v6, "Interrupted:"

    #@36
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_1

    #@3a
    .line 255
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "ignored":Ljava/io/IOException;
    :cond_1
    return-object v4
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .locals 12
    .param p1, "isSetup"    # Z
    .param p2, "command"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v11, 0x0

    #@2
    .line 259
    iget-object v8, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    #@4
    invoke-static {v8}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    #@7
    move-result-object v8

    #@8
    const-string/jumbo v9, "android.permission.RECOVERY"

    #@b
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 261
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    #@11
    move-result v0

    #@12
    .line 262
    .local v0, "available":Z
    if-nez v0, :cond_0

    #@14
    .line 263
    const-string/jumbo v8, "RecoverySystemService"

    #@17
    const-string/jumbo v9, "uncrypt service is unavailable."

    #@1a
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 264
    return v11

    #@1e
    .line 267
    :cond_0
    if-eqz p1, :cond_1

    #@20
    .line 268
    const-string/jumbo v8, "ctl.start"

    #@23
    const-string/jumbo v9, "setup-bcb"

    #@26
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    #@2c
    move-result-object v6

    #@2d
    .line 275
    .local v6, "socket":Landroid/net/LocalSocket;
    if-nez v6, :cond_2

    #@2f
    .line 276
    const-string/jumbo v8, "RecoverySystemService"

    #@32
    const-string/jumbo v9, "Failed to connect to uncrypt socket"

    #@35
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 277
    return v11

    #@39
    .line 270
    .end local v6    # "socket":Landroid/net/LocalSocket;
    :cond_1
    const-string/jumbo v8, "ctl.start"

    #@3c
    const-string/jumbo v9, "clear-bcb"

    #@3f
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@42
    goto :goto_0

    #@43
    .line 280
    .restart local v6    # "socket":Landroid/net/LocalSocket;
    :cond_2
    const/4 v1, 0x0

    #@44
    .line 281
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    #@45
    .line 283
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    #@47
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@4a
    move-result-object v8

    #@4b
    invoke-direct {v2, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 284
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    #@50
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@53
    move-result-object v8

    #@54
    invoke-direct {v4, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@57
    .line 287
    .local v4, "dos":Ljava/io/DataOutputStream;
    if-eqz p1, :cond_3

    #@59
    .line 288
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5c
    move-result v8

    #@5d
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@60
    .line 289
    invoke-virtual {v4, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@63
    .line 290
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    #@66
    .line 294
    :cond_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    #@69
    move-result v7

    #@6a
    .line 298
    .local v7, "status":I
    const/4 v8, 0x0

    #@6b
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@6e
    .line 300
    const/16 v8, 0x64

    #@70
    if-ne v7, v8, :cond_5

    #@72
    .line 301
    const-string/jumbo v9, "RecoverySystemService"

    #@75
    new-instance v8, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v10, "uncrypt "

    #@7d
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v10

    #@81
    if-eqz p1, :cond_4

    #@83
    const-string/jumbo v8, "setup"

    #@86
    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    .line 302
    const-string/jumbo v10, " bcb successfully finished."

    #@8d
    .line 301
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v8

    #@91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v8

    #@95
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@98
    .line 312
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@9b
    .line 313
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@9e
    .line 314
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a1
    .line 317
    const/4 v8, 0x1

    #@a2
    return v8

    #@a3
    .line 301
    :cond_4
    :try_start_3
    const-string/jumbo v8, "clear"

    #@a6
    goto :goto_1

    #@a7
    .line 305
    :cond_5
    const-string/jumbo v8, "RecoverySystemService"

    #@aa
    new-instance v9, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v10, "uncrypt failed with status: "

    #@b2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v9

    #@b6
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v9

    #@ba
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v9

    #@be
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@c1
    .line 312
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c4
    .line 313
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c7
    .line 314
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ca
    .line 306
    return v11

    #@cb
    .line 308
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "status":I
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v5

    #@cc
    .line 309
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .local v5, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v8, "RecoverySystemService"

    #@cf
    const-string/jumbo v9, "IOException when communicating with uncrypt:"

    #@d2
    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d5
    .line 312
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d8
    .line 313
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@db
    .line 314
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@de
    .line 310
    return v11

    #@df
    .line 311
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    #@e0
    .line 312
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e3
    .line 313
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e6
    .line 314
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e9
    .line 311
    throw v8

    #@ea
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v8

    #@eb
    move-object v1, v2

    #@ec
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    goto :goto_3

    #@ed
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v8

    #@ee
    move-object v3, v4

    #@ef
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    move-object v1, v2

    #@f0
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_3

    #@f1
    .line 308
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v5

    #@f2
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@f3
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    #@f4
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v5

    #@f5
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v3, v4

    #@f6
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    move-object v1, v2

    #@f7
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_2
.end method


# virtual methods
.method public clearBcb()Z
    .locals 3

    #@0
    .prologue
    .line 170
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    monitor-enter v0

    #@5
    .line 171
    const/4 v1, 0x0

    #@6
    const/4 v2, 0x0

    #@7
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v1

    #@b
    monitor-exit v0

    #@c
    return v1

    #@d
    .line 170
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v0

    #@f
    throw v1
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 186
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 187
    const/4 v1, 0x1

    #@6
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    monitor-exit v2

    #@d
    .line 188
    return-void

    #@e
    .line 192
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    #@10
    invoke-static {v1}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v3, "power"

    #@17
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/os/PowerManager;

    #@1d
    .line 193
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "recovery"

    #@20
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit v2

    #@24
    .line 184
    return-void

    #@25
    .line 186
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 178
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    monitor-enter v0

    #@5
    .line 179
    const/4 v1, 0x1

    #@6
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v1

    #@a
    monitor-exit v0

    #@b
    return v1

    #@c
    .line 178
    :catchall_0
    move-exception v1

    #@d
    monitor-exit v0

    #@e
    throw v1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 18
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    #@0
    .prologue
    .line 80
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    #@3
    move-result-object v16

    #@4
    monitor-enter v16

    #@5
    .line 81
    :try_start_0
    move-object/from16 v0, p0

    #@7
    iget-object v13, v0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    #@9
    invoke-static {v13}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    #@c
    move-result-object v13

    #@d
    const-string/jumbo v14, "android.permission.RECOVERY"

    #@10
    const/4 v15, 0x0

    #@11
    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    #@17
    move-result v1

    #@18
    .line 84
    .local v1, "available":Z
    if-nez v1, :cond_0

    #@1a
    .line 85
    const-string/jumbo v13, "RecoverySystemService"

    #@1d
    const-string/jumbo v14, "uncrypt service is unavailable."

    #@20
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@23
    .line 86
    const/4 v13, 0x0

    #@24
    monitor-exit v16

    #@25
    return v13

    #@26
    .line 91
    :cond_0
    :try_start_1
    sget-object v13, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@28
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2b
    .line 93
    const/4 v14, 0x0

    #@2c
    const/4 v11, 0x0

    #@2d
    .local v11, "uncryptFile":Ljava/io/FileWriter;
    :try_start_2
    new-instance v12, Ljava/io/FileWriter;

    #@2f
    sget-object v13, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@31
    invoke-direct {v12, v13}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    #@34
    .line 94
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .local v12, "uncryptFile":Ljava/io/FileWriter;
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    move-object/from16 v0, p1

    #@3b
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v13

    #@3f
    const-string/jumbo v15, "\n"

    #@42
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v13

    #@46
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v13

    #@4a
    invoke-virtual {v12, v13}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    #@4d
    .line 99
    if-eqz v12, :cond_1

    #@4f
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@52
    :cond_1
    :goto_0
    if-eqz v14, :cond_5

    #@54
    :try_start_5
    throw v14
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@55
    .line 95
    :catch_0
    move-exception v6

    #@56
    .local v6, "e":Ljava/io/IOException;
    move-object v11, v12

    #@57
    .line 96
    .end local v12    # "uncryptFile":Ljava/io/FileWriter;
    :goto_1
    :try_start_6
    const-string/jumbo v13, "RecoverySystemService"

    #@5a
    new-instance v14, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v15, "IOException when writing \""

    #@62
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v14

    #@66
    .line 97
    sget-object v15, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@68
    .line 96
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v14

    #@6c
    .line 97
    const-string/jumbo v15, "\":"

    #@6f
    .line 96
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v14

    #@73
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v14

    #@77
    invoke-static {v13, v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@7a
    .line 98
    const/4 v13, 0x0

    #@7b
    monitor-exit v16

    #@7c
    return v13

    #@7d
    .line 99
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v12    # "uncryptFile":Ljava/io/FileWriter;
    :catch_1
    move-exception v14

    #@7e
    goto :goto_0

    #@7f
    .end local v12    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :catch_2
    move-exception v13

    #@80
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    :goto_2
    :try_start_7
    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@81
    :catchall_0
    move-exception v14

    #@82
    move-object/from16 v17, v14

    #@84
    move-object v14, v13

    #@85
    move-object/from16 v13, v17

    #@87
    :goto_3
    if-eqz v11, :cond_2

    #@89
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@8c
    :cond_2
    :goto_4
    if-eqz v14, :cond_4

    #@8e
    :try_start_9
    throw v14

    #@8f
    .line 95
    :catch_3
    move-exception v6

    #@90
    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_1

    #@91
    .line 99
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v15

    #@92
    if-nez v14, :cond_3

    #@94
    move-object v14, v15

    #@95
    goto :goto_4

    #@96
    :cond_3
    if-eq v14, v15, :cond_2

    #@98
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@9b
    goto :goto_4

    #@9c
    .line 80
    .end local v1    # "available":Z
    :catchall_1
    move-exception v13

    #@9d
    monitor-exit v16

    #@9e
    throw v13

    #@9f
    .line 99
    .restart local v1    # "available":Z
    :cond_4
    :try_start_a
    throw v13
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@a0
    .line 102
    .restart local v12    # "uncryptFile":Ljava/io/FileWriter;
    :cond_5
    :try_start_b
    const-string/jumbo v13, "ctl.start"

    #@a3
    const-string/jumbo v14, "uncrypt"

    #@a6
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@a9
    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    #@ac
    move-result-object v9

    #@ad
    .line 106
    .local v9, "socket":Landroid/net/LocalSocket;
    if-nez v9, :cond_6

    #@af
    .line 107
    const-string/jumbo v13, "RecoverySystemService"

    #@b2
    const-string/jumbo v14, "Failed to connect to uncrypt socket"

    #@b5
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@b8
    .line 108
    const/4 v13, 0x0

    #@b9
    monitor-exit v16

    #@ba
    return v13

    #@bb
    .line 112
    :cond_6
    const/4 v2, 0x0

    #@bc
    .line 113
    .local v2, "dis":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    #@bd
    .line 115
    .local v4, "dos":Ljava/io/DataOutputStream;
    :try_start_c
    new-instance v3, Ljava/io/DataInputStream;

    #@bf
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@c2
    move-result-object v13

    #@c3
    invoke-direct {v3, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@c6
    .line 116
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_d
    new-instance v5, Ljava/io/DataOutputStream;

    #@c8
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@cb
    move-result-object v13

    #@cc
    invoke-direct {v5, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@cf
    .line 117
    .local v5, "dos":Ljava/io/DataOutputStream;
    const/high16 v8, -0x80000000

    #@d1
    .line 119
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v8, "lastStatus":I
    :cond_7
    :try_start_e
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@d4
    move-result v10

    #@d5
    .line 121
    .local v10, "status":I
    if-ne v10, v8, :cond_8

    #@d7
    const/high16 v13, -0x80000000

    #@d9
    if-ne v8, v13, :cond_7

    #@db
    .line 124
    :cond_8
    move v8, v10

    #@dc
    .line 126
    if-ltz v10, :cond_a

    #@de
    const/16 v13, 0x64

    #@e0
    if-gt v10, v13, :cond_a

    #@e2
    .line 128
    const-string/jumbo v13, "RecoverySystemService"

    #@e5
    new-instance v14, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v15, "uncrypt read status: "

    #@ed
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v14

    #@f1
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v14

    #@f5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v14

    #@f9
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    #@fc
    .line 129
    if-eqz p2, :cond_9

    #@fe
    .line 131
    :try_start_f
    move-object/from16 v0, p2

    #@100
    invoke-interface {v0, v10}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    #@103
    .line 136
    :cond_9
    :goto_5
    const/16 v13, 0x64

    #@105
    if-ne v10, v13, :cond_7

    #@107
    .line 137
    :try_start_10
    const-string/jumbo v13, "RecoverySystemService"

    #@10a
    const-string/jumbo v14, "uncrypt successfully finished."

    #@10d
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@110
    .line 141
    const/4 v13, 0x0

    #@111
    invoke-virtual {v5, v13}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    #@114
    .line 158
    :try_start_11
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@117
    .line 159
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@11a
    .line 160
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    #@11d
    .line 163
    const/4 v13, 0x1

    #@11e
    monitor-exit v16

    #@11f
    return v13

    #@120
    .line 132
    :catch_5
    move-exception v7

    #@121
    .line 133
    .local v7, "ignored":Landroid/os/RemoteException;
    :try_start_12
    const-string/jumbo v13, "RecoverySystemService"

    #@124
    const-string/jumbo v14, "RemoteException when posting progress"

    #@127
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    #@12a
    goto :goto_5

    #@12b
    .line 154
    .end local v7    # "ignored":Landroid/os/RemoteException;
    .end local v10    # "status":I
    :catch_6
    move-exception v6

    #@12c
    .restart local v6    # "e":Ljava/io/IOException;
    move-object v4, v5

    #@12d
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    #@12e
    .line 155
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v8    # "lastStatus":I
    :goto_6
    :try_start_13
    const-string/jumbo v13, "RecoverySystemService"

    #@131
    const-string/jumbo v14, "IOException when reading status: "

    #@134
    invoke-static {v13, v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    #@137
    .line 158
    :try_start_14
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@13a
    .line 159
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@13d
    .line 160
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    #@140
    .line 156
    const/4 v13, 0x0

    #@141
    monitor-exit v16

    #@142
    return v13

    #@143
    .line 146
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v8    # "lastStatus":I
    .restart local v10    # "status":I
    :cond_a
    :try_start_15
    const-string/jumbo v13, "RecoverySystemService"

    #@146
    new-instance v14, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    const-string/jumbo v15, "uncrypt failed with status: "

    #@14e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v14

    #@152
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@155
    move-result-object v14

    #@156
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v14

    #@15a
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15d
    .line 150
    const/4 v13, 0x0

    #@15e
    invoke-virtual {v5, v13}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    #@161
    .line 158
    :try_start_16
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@164
    .line 159
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@167
    .line 160
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    #@16a
    .line 151
    const/4 v13, 0x0

    #@16b
    monitor-exit v16

    #@16c
    return v13

    #@16d
    .line 157
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .end local v8    # "lastStatus":I
    .end local v10    # "status":I
    :catchall_2
    move-exception v13

    #@16e
    .line 158
    :goto_7
    :try_start_17
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@171
    .line 159
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@174
    .line 160
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@177
    .line 157
    throw v13
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    #@178
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    :catchall_3
    move-exception v13

    #@179
    move-object v2, v3

    #@17a
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    goto :goto_7

    #@17b
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v8    # "lastStatus":I
    :catchall_4
    move-exception v13

    #@17c
    move-object v4, v5

    #@17d
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    #@17e
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto :goto_7

    #@17f
    .line 154
    .end local v8    # "lastStatus":I
    .local v2, "dis":Ljava/io/DataInputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v6

    #@180
    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_6

    #@181
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catch_8
    move-exception v6

    #@182
    .restart local v6    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@183
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    goto :goto_6

    #@184
    .line 99
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "socket":Landroid/net/LocalSocket;
    .end local v12    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_5
    move-exception v13

    #@185
    goto/16 :goto_3

    #@187
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v12    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_6
    move-exception v13

    #@188
    move-object v11, v12

    #@189
    .end local v12    # "uncryptFile":Ljava/io/FileWriter;
    .local v11, "uncryptFile":Ljava/io/FileWriter;
    goto/16 :goto_3

    #@18b
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v12    # "uncryptFile":Ljava/io/FileWriter;
    :catch_9
    move-exception v13

    #@18c
    move-object v11, v12

    #@18d
    .end local v12    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    goto/16 :goto_2
.end method

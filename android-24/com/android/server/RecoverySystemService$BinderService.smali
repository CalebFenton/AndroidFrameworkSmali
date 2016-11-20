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
    .line 67
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

.method private connectService()Landroid/net/LocalSocket;
    .locals 8

    #@0
    .prologue
    .line 164
    new-instance v4, Landroid/net/LocalSocket;

    #@2
    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    #@5
    .line 165
    .local v4, "socket":Landroid/net/LocalSocket;
    const/4 v0, 0x0

    #@6
    .line 169
    .local v0, "done":Z
    const/4 v3, 0x0

    #@7
    .local v3, "retry":I
    :goto_0
    const/16 v5, 0x1e

    #@9
    if-ge v3, v5, :cond_0

    #@b
    .line 171
    :try_start_0
    new-instance v5, Landroid/net/LocalSocketAddress;

    #@d
    const-string/jumbo v6, "uncrypt"

    #@10
    .line 172
    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@12
    .line 171
    invoke-direct {v5, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    #@15
    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 173
    const/4 v0, 0x1

    #@19
    .line 183
    :cond_0
    if-nez v0, :cond_1

    #@1b
    .line 184
    const-string/jumbo v5, "RecoverySystemService"

    #@1e
    const-string/jumbo v6, "Timed out connecting to uncrypt socket"

    #@21
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 185
    const/4 v5, 0x0

    #@25
    return-object v5

    #@26
    .line 175
    :catch_0
    move-exception v2

    #@27
    .line 177
    .local v2, "ignored":Ljava/io/IOException;
    const-wide/16 v6, 0x3e8

    #@29
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@2c
    .line 169
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 178
    :catch_1
    move-exception v1

    #@30
    .line 179
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "RecoverySystemService"

    #@33
    const-string/jumbo v6, "Interrupted: "

    #@36
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_1

    #@3a
    .line 187
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "ignored":Ljava/io/IOException;
    :cond_1
    return-object v4
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .locals 11
    .param p1, "isSetup"    # Z
    .param p2, "command"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 191
    iget-object v7, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    #@4
    invoke-static {v7}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    #@7
    move-result-object v7

    #@8
    const-string/jumbo v8, "android.permission.RECOVERY"

    #@b
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 193
    if-eqz p1, :cond_0

    #@10
    .line 194
    const-string/jumbo v7, "ctl.start"

    #@13
    const-string/jumbo v8, "setup-bcb"

    #@16
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 200
    :goto_0
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    #@1c
    move-result-object v5

    #@1d
    .line 201
    .local v5, "socket":Landroid/net/LocalSocket;
    if-nez v5, :cond_1

    #@1f
    .line 202
    const-string/jumbo v7, "RecoverySystemService"

    #@22
    const-string/jumbo v8, "Failed to connect to uncrypt socket"

    #@25
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 203
    return v10

    #@29
    .line 196
    .end local v5    # "socket":Landroid/net/LocalSocket;
    :cond_0
    const-string/jumbo v7, "ctl.start"

    #@2c
    const-string/jumbo v8, "clear-bcb"

    #@2f
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    goto :goto_0

    #@33
    .line 206
    .restart local v5    # "socket":Landroid/net/LocalSocket;
    :cond_1
    const/4 v0, 0x0

    #@34
    .line 207
    .local v0, "dis":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    #@35
    .line 209
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    #@37
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@3a
    move-result-object v7

    #@3b
    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 210
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    #@40
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@43
    move-result-object v7

    #@44
    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@47
    .line 213
    .local v3, "dos":Ljava/io/DataOutputStream;
    if-eqz p1, :cond_2

    #@49
    .line 214
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@4c
    move-result v7

    #@4d
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@50
    .line 215
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@53
    .line 216
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    #@56
    .line 220
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@59
    move-result v6

    #@5a
    .line 224
    .local v6, "status":I
    const/4 v7, 0x0

    #@5b
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@5e
    .line 226
    const/16 v7, 0x64

    #@60
    if-ne v6, v7, :cond_4

    #@62
    .line 227
    const-string/jumbo v8, "RecoverySystemService"

    #@65
    new-instance v7, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v9, "uncrypt "

    #@6d
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v9

    #@71
    if-eqz p1, :cond_3

    #@73
    const-string/jumbo v7, "setup"

    #@76
    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v7

    #@7a
    .line 228
    const-string/jumbo v9, " bcb successfully finished."

    #@7d
    .line 227
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v7

    #@81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v7

    #@85
    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@88
    .line 238
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8b
    .line 239
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8e
    .line 240
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@91
    .line 243
    const/4 v7, 0x1

    #@92
    return v7

    #@93
    .line 227
    :cond_3
    :try_start_3
    const-string/jumbo v7, "clear"

    #@96
    goto :goto_1

    #@97
    .line 231
    :cond_4
    const-string/jumbo v7, "RecoverySystemService"

    #@9a
    new-instance v8, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v9, "uncrypt failed with status: "

    #@a2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v8

    #@a6
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v8

    #@aa
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v8

    #@ae
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@b1
    .line 238
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b4
    .line 239
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b7
    .line 240
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ba
    .line 232
    return v10

    #@bb
    .line 234
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "status":I
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    #@bc
    .line 235
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v7, "RecoverySystemService"

    #@bf
    const-string/jumbo v8, "IOException when communicating with uncrypt: "

    #@c2
    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c5
    .line 238
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c8
    .line 239
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@cb
    .line 240
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ce
    .line 236
    return v10

    #@cf
    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@d0
    .line 238
    :goto_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d3
    .line 239
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d6
    .line 240
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d9
    .line 237
    throw v7

    #@da
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v7

    #@db
    move-object v0, v1

    #@dc
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v0, "dis":Ljava/io/DataInputStream;
    goto :goto_3

    #@dd
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v7

    #@de
    move-object v2, v3

    #@df
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    #@e0
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_3

    #@e1
    .line 234
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v4

    #@e2
    .restart local v4    # "e":Ljava/io/IOException;
    move-object v0, v1

    #@e3
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    #@e4
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v4

    #@e5
    .restart local v4    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@e6
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    #@e7
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2
.end method


# virtual methods
.method public clearBcb()Z
    .locals 2

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 16
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    #@0
    .prologue
    .line 72
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    #@4
    invoke-static {v12}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    #@7
    move-result-object v12

    #@8
    const-string/jumbo v13, "android.permission.RECOVERY"

    #@b
    const/4 v14, 0x0

    #@c
    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 76
    sget-object v12, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@11
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    #@14
    .line 78
    const/4 v13, 0x0

    #@15
    const/4 v10, 0x0

    #@16
    .local v10, "uncryptFile":Ljava/io/FileWriter;
    :try_start_0
    new-instance v11, Ljava/io/FileWriter;

    #@18
    sget-object v12, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@1a
    invoke-direct {v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    #@1d
    .line 79
    .end local v10    # "uncryptFile":Ljava/io/FileWriter;
    .local v11, "uncryptFile":Ljava/io/FileWriter;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v12

    #@28
    const-string/jumbo v14, "\n"

    #@2b
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v12

    #@2f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v12

    #@33
    invoke-virtual {v11, v12}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    #@36
    .line 84
    if-eqz v11, :cond_0

    #@38
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@3b
    :cond_0
    :goto_0
    if-eqz v13, :cond_4

    #@3d
    :try_start_3
    throw v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@3e
    .line 80
    :catch_0
    move-exception v5

    #@3f
    .local v5, "e":Ljava/io/IOException;
    move-object v10, v11

    #@40
    .line 81
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    :goto_1
    const-string/jumbo v12, "RecoverySystemService"

    #@43
    new-instance v13, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v14, "IOException when writing \""

    #@4b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v13

    #@4f
    sget-object v14, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@51
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v13

    #@55
    .line 82
    const-string/jumbo v14, "\": "

    #@58
    .line 81
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v13

    #@5c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v13

    #@60
    invoke-static {v12, v13, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@63
    .line 83
    const/4 v12, 0x0

    #@64
    return v12

    #@65
    .line 84
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :catch_1
    move-exception v13

    #@66
    goto :goto_0

    #@67
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v10    # "uncryptFile":Ljava/io/FileWriter;
    :catch_2
    move-exception v12

    #@68
    .end local v10    # "uncryptFile":Ljava/io/FileWriter;
    :goto_2
    :try_start_4
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@69
    :catchall_0
    move-exception v13

    #@6a
    move-object v15, v13

    #@6b
    move-object v13, v12

    #@6c
    move-object v12, v15

    #@6d
    :goto_3
    if-eqz v10, :cond_1

    #@6f
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@72
    :cond_1
    :goto_4
    if-eqz v13, :cond_3

    #@74
    :try_start_6
    throw v13

    #@75
    .line 80
    :catch_3
    move-exception v5

    #@76
    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    #@77
    .line 84
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v14

    #@78
    if-nez v13, :cond_2

    #@7a
    move-object v13, v14

    #@7b
    goto :goto_4

    #@7c
    :cond_2
    if-eq v13, v14, :cond_1

    #@7e
    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@81
    goto :goto_4

    #@82
    :cond_3
    throw v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@83
    .line 87
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :cond_4
    const-string/jumbo v12, "ctl.start"

    #@86
    const-string/jumbo v13, "uncrypt"

    #@89
    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@8c
    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    #@8f
    move-result-object v8

    #@90
    .line 91
    .local v8, "socket":Landroid/net/LocalSocket;
    if-nez v8, :cond_5

    #@92
    .line 92
    const-string/jumbo v12, "RecoverySystemService"

    #@95
    const-string/jumbo v13, "Failed to connect to uncrypt socket"

    #@98
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9b
    .line 93
    const/4 v12, 0x0

    #@9c
    return v12

    #@9d
    .line 97
    :cond_5
    const/4 v1, 0x0

    #@9e
    .line 98
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    #@9f
    .line 100
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_7
    new-instance v2, Ljava/io/DataInputStream;

    #@a1
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@a4
    move-result-object v12

    #@a5
    invoke-direct {v2, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@a8
    .line 101
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_8
    new-instance v4, Ljava/io/DataOutputStream;

    #@aa
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@ad
    move-result-object v12

    #@ae
    invoke-direct {v4, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@b1
    .line 102
    .local v4, "dos":Ljava/io/DataOutputStream;
    const/high16 v7, -0x80000000

    #@b3
    .line 104
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .local v7, "lastStatus":I
    :cond_6
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    #@b6
    move-result v9

    #@b7
    .line 106
    .local v9, "status":I
    if-ne v9, v7, :cond_7

    #@b9
    const/high16 v12, -0x80000000

    #@bb
    if-ne v7, v12, :cond_6

    #@bd
    .line 109
    :cond_7
    move v7, v9

    #@be
    .line 111
    if-ltz v9, :cond_9

    #@c0
    const/16 v12, 0x64

    #@c2
    if-gt v9, v12, :cond_9

    #@c4
    .line 113
    const-string/jumbo v12, "RecoverySystemService"

    #@c7
    new-instance v13, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v14, "uncrypt read status: "

    #@cf
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v13

    #@d3
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v13

    #@d7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v13

    #@db
    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@de
    .line 114
    if-eqz p2, :cond_8

    #@e0
    .line 116
    :try_start_a
    move-object/from16 v0, p2

    #@e2
    invoke-interface {v0, v9}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@e5
    .line 121
    :cond_8
    :goto_5
    const/16 v12, 0x64

    #@e7
    if-ne v9, v12, :cond_6

    #@e9
    .line 122
    :try_start_b
    const-string/jumbo v12, "RecoverySystemService"

    #@ec
    const-string/jumbo v13, "uncrypt successfully finished."

    #@ef
    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f2
    .line 126
    const/4 v12, 0x0

    #@f3
    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@f6
    .line 143
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f9
    .line 144
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@fc
    .line 145
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ff
    .line 148
    const/4 v12, 0x1

    #@100
    return v12

    #@101
    .line 117
    :catch_5
    move-exception v6

    #@102
    .line 118
    .local v6, "ignored":Landroid/os/RemoteException;
    :try_start_c
    const-string/jumbo v12, "RecoverySystemService"

    #@105
    const-string/jumbo v13, "RemoteException when posting progress"

    #@108
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@10b
    goto :goto_5

    #@10c
    .line 139
    .end local v6    # "ignored":Landroid/os/RemoteException;
    .end local v9    # "status":I
    :catch_6
    move-exception v5

    #@10d
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v3, v4

    #@10e
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    move-object v1, v2

    #@10f
    .line 140
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "lastStatus":I
    :goto_6
    :try_start_d
    const-string/jumbo v12, "RecoverySystemService"

    #@112
    const-string/jumbo v13, "IOException when reading status: "

    #@115
    invoke-static {v12, v13, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@118
    .line 141
    const/4 v12, 0x0

    #@119
    .line 143
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@11c
    .line 144
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@11f
    .line 145
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@122
    .line 141
    return v12

    #@123
    .line 131
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v7    # "lastStatus":I
    .restart local v9    # "status":I
    :cond_9
    :try_start_e
    const-string/jumbo v12, "RecoverySystemService"

    #@126
    new-instance v13, Ljava/lang/StringBuilder;

    #@128
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    const-string/jumbo v14, "uncrypt failed with status: "

    #@12e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v13

    #@132
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@135
    move-result-object v13

    #@136
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v13

    #@13a
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13d
    .line 135
    const/4 v12, 0x0

    #@13e
    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    #@141
    .line 136
    const/4 v12, 0x0

    #@142
    .line 143
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@145
    .line 144
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@148
    .line 145
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@14b
    .line 136
    return v12

    #@14c
    .line 142
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "lastStatus":I
    .end local v9    # "status":I
    :catchall_1
    move-exception v12

    #@14d
    .line 143
    :goto_7
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@150
    .line 144
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@153
    .line 145
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@156
    .line 142
    throw v12

    #@157
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v12

    #@158
    move-object v1, v2

    #@159
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    goto :goto_7

    #@15a
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v7    # "lastStatus":I
    :catchall_3
    move-exception v12

    #@15b
    move-object v3, v4

    #@15c
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    move-object v1, v2

    #@15d
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_7

    #@15e
    .line 139
    .end local v7    # "lastStatus":I
    .local v1, "dis":Ljava/io/DataInputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v5

    #@15f
    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_6

    #@160
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catch_8
    move-exception v5

    #@161
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@162
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    goto :goto_6

    #@163
    .line 84
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "socket":Landroid/net/LocalSocket;
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v10    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_4
    move-exception v12

    #@164
    goto/16 :goto_3

    #@166
    .end local v10    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_5
    move-exception v12

    #@167
    move-object v10, v11

    #@168
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .local v10, "uncryptFile":Ljava/io/FileWriter;
    goto/16 :goto_3

    #@16a
    .end local v10    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :catch_9
    move-exception v12

    #@16b
    move-object v10, v11

    #@16c
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v10    # "uncryptFile":Ljava/io/FileWriter;
    goto/16 :goto_2
.end method

.class public Lcom/android/internal/os/InstallerConnection;
.super Ljava/lang/Object;
.source "InstallerConnection.java"


# static fields
.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InstallerConnection"


# instance fields
.field private final buf:[B

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const/16 v0, 0x400

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@9
    .line 46
    return-void
.end method

.method private connect()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 123
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 124
    return v4

    #@6
    .line 126
    :cond_0
    const-string/jumbo v2, "InstallerConnection"

    #@9
    const-string/jumbo v3, "connecting..."

    #@c
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 128
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    #@11
    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    #@14
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@16
    .line 130
    new-instance v0, Landroid/net/LocalSocketAddress;

    #@18
    const-string/jumbo v2, "installd"

    #@1b
    .line 131
    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@1d
    .line 130
    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    #@20
    .line 133
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@22
    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    #@25
    .line 135
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@27
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    #@2d
    .line 136
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@2f
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 141
    return v4

    #@36
    .line 137
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    #@37
    .line 138
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@3a
    .line 139
    const/4 v2, 0x0

    #@3b
    return v2
.end method

.method private readFully([BI)Z
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {v1, p1, v2, p2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 169
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 159
    :catch_0
    move-exception v0

    #@a
    .line 160
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v1, "InstallerConnection"

    #@d
    const-string/jumbo v2, "read exception"

    #@10
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 161
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@16
    .line 162
    return v3
.end method

.method private readReply()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    .line 173
    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@4
    const/4 v2, 0x2

    #@5
    invoke-direct {p0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->readFully([BI)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 174
    return v4

    #@c
    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@e
    const/4 v2, 0x0

    #@f
    aget-byte v1, v1, v2

    #@11
    and-int/lit16 v1, v1, 0xff

    #@13
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@15
    aget-byte v2, v2, v3

    #@17
    and-int/lit16 v2, v2, 0xff

    #@19
    shl-int/lit8 v2, v2, 0x8

    #@1b
    or-int v0, v1, v2

    #@1d
    .line 178
    .local v0, "len":I
    if-lt v0, v3, :cond_1

    #@1f
    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@21
    array-length v1, v1

    #@22
    if-le v0, v1, :cond_2

    #@24
    .line 179
    :cond_1
    const-string/jumbo v1, "InstallerConnection"

    #@27
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "invalid reply length ("

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    const-string/jumbo v3, ")"

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 180
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@48
    .line 181
    return v4

    #@49
    .line 184
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@4b
    invoke-direct {p0, v1, v0}, Lcom/android/internal/os/InstallerConnection;->readFully([BI)Z

    #@4e
    move-result v1

    #@4f
    if-nez v1, :cond_3

    #@51
    .line 185
    return v4

    #@52
    .line 188
    :cond_3
    return v0
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .locals 9
    .param p1, "cmdString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@5
    move-result-object v0

    #@6
    .line 193
    .local v0, "cmd":[B
    array-length v2, v0

    #@7
    .line 194
    .local v2, "len":I
    if-lt v2, v8, :cond_0

    #@9
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@b
    array-length v3, v3

    #@c
    if-le v2, v3, :cond_1

    #@e
    .line 195
    :cond_0
    return v7

    #@f
    .line 198
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@11
    and-int/lit16 v4, v2, 0xff

    #@13
    int-to-byte v4, v4

    #@14
    aput-byte v4, v3, v7

    #@16
    .line 199
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@18
    shr-int/lit8 v4, v2, 0x8

    #@1a
    and-int/lit16 v4, v4, 0xff

    #@1c
    int-to-byte v4, v4

    #@1d
    aput-byte v4, v3, v8

    #@1f
    .line 201
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    #@21
    iget-object v4, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@23
    const/4 v5, 0x0

    #@24
    const/4 v6, 0x2

    #@25
    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    #@28
    .line 202
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 208
    return v8

    #@2f
    .line 203
    :catch_0
    move-exception v1

    #@30
    .line 204
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "InstallerConnection"

    #@33
    const-string/jumbo v4, "write error"

    #@36
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 205
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@3c
    .line 206
    return v7
.end method


# virtual methods
.method public dexopt(Ljava/lang/String;IZLjava/lang/String;I)I
    .locals 10
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 96
    const-string/jumbo v4, "*"

    #@4
    .line 97
    const/4 v9, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move v2, p2

    #@8
    move v3, p3

    #@9
    move-object v5, p4

    #@a
    move v6, p5

    #@b
    move v8, v7

    #@c
    .line 96
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)I
    .locals 3
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "dexopt"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 104
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    .line 108
    if-eqz p3, :cond_0

    #@18
    const-string/jumbo v1, " 1"

    #@1b
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 110
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 112
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 114
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    .line 115
    if-eqz p7, :cond_1

    #@32
    const-string/jumbo v1, " 1"

    #@35
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 116
    if-eqz p8, :cond_2

    #@3a
    const-string/jumbo v1, " 1"

    #@3d
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    .line 118
    if-eqz p9, :cond_3

    #@45
    .end local p9    # "outputPath":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {p0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@4f
    move-result v1

    #@50
    return v1

    #@51
    .line 108
    .restart local p9    # "outputPath":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, " 0"

    #@54
    goto :goto_0

    #@55
    .line 115
    :cond_1
    const-string/jumbo v1, " 0"

    #@58
    goto :goto_1

    #@59
    .line 116
    :cond_2
    const-string/jumbo v1, " 0"

    #@5c
    goto :goto_2

    #@5d
    .line 118
    :cond_3
    const-string/jumbo p9, "!"

    #@60
    goto :goto_3
.end method

.method public disconnect()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 145
    const-string/jumbo v0, "InstallerConnection"

    #@4
    const-string/jumbo v1, "disconnecting..."

    #@7
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 146
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f
    .line 147
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    #@11
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@14
    .line 148
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    #@16
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@19
    .line 150
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@1b
    .line 151
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    #@1d
    .line 152
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    #@1f
    .line 144
    return-void
.end method

.method public execute(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/internal/os/InstallerConnection;->transact(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 88
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 89
    :catch_0
    move-exception v0

    #@a
    .line 90
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    #@b
    return v2
.end method

.method public declared-synchronized transact(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 50
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->connect()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 51
    const-string/jumbo v2, "InstallerConnection"

    #@a
    const-string/jumbo v3, "connection failed"

    #@d
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 52
    const-string/jumbo v2, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    return-object v2

    #@15
    .line 55
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/os/InstallerConnection;->writeCommand(Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 61
    const-string/jumbo v2, "InstallerConnection"

    #@1e
    const-string/jumbo v3, "write command failed? reconnect!"

    #@21
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 62
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->connect()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    invoke-direct {p0, p1}, Lcom/android/internal/os/InstallerConnection;->writeCommand(Ljava/lang/String;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->readReply()I

    #@33
    move-result v0

    #@34
    .line 71
    .local v0, "replyLength":I
    if-lez v0, :cond_3

    #@36
    .line 72
    new-instance v1, Ljava/lang/String;

    #@38
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@3a
    const/4 v3, 0x0

    #@3b
    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .local v1, "s":Ljava/lang/String;
    monitor-exit p0

    #@3f
    .line 76
    return-object v1

    #@40
    .line 63
    .end local v0    # "replyLength":I
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string/jumbo v2, "-1"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    monitor-exit p0

    #@44
    return-object v2

    #@45
    .line 81
    .restart local v0    # "replyLength":I
    :cond_3
    :try_start_3
    const-string/jumbo v2, "-1"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    monitor-exit p0

    #@49
    return-object v2

    #@4a
    .end local v0    # "replyLength":I
    :catchall_0
    move-exception v2

    #@4b
    monitor-exit p0

    #@4c
    throw v2
.end method

.method public waitForConnection()V
    .locals 2

    #@0
    .prologue
    .line 213
    :goto_0
    const-string/jumbo v0, "ping"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    if-ltz v0, :cond_0

    #@9
    .line 214
    return-void

    #@a
    .line 216
    :cond_0
    const-string/jumbo v0, "InstallerConnection"

    #@d
    const-string/jumbo v1, "installd not ready"

    #@10
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 217
    const-wide/16 v0, 0x3e8

    #@15
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    #@18
    goto :goto_0
.end method

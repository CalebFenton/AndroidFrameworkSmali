.class public Lcom/android/internal/os/InstallerConnection;
.super Ljava/lang/Object;
.source "InstallerConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/InstallerConnection$InstallerException;
    }
.end annotation


# static fields
.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InstallerConnection"


# instance fields
.field private final buf:[B

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    const/16 v0, 0x400

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@9
    .line 53
    return-void
.end method

.method private connect()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 187
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 188
    return v4

    #@6
    .line 190
    :cond_0
    const-string/jumbo v2, "InstallerConnection"

    #@9
    const-string/jumbo v3, "connecting..."

    #@c
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 192
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    #@11
    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    #@14
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@16
    .line 194
    new-instance v0, Landroid/net/LocalSocketAddress;

    #@18
    const-string/jumbo v2, "installd"

    #@1b
    .line 195
    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@1d
    .line 194
    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    #@20
    .line 197
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@22
    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    #@25
    .line 199
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@27
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    #@2d
    .line 200
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
    .line 205
    return v4

    #@36
    .line 201
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    #@37
    .line 202
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@3a
    .line 203
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
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {v1, p1, v2, p2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 233
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 223
    :catch_0
    move-exception v0

    #@a
    .line 224
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v1, "InstallerConnection"

    #@d
    const-string/jumbo v2, "read exception"

    #@10
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 225
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@16
    .line 226
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
    .line 237
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
    .line 238
    return v4

    #@c
    .line 241
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
    .line 242
    .local v0, "len":I
    if-lt v0, v3, :cond_1

    #@1f
    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@21
    array-length v1, v1

    #@22
    if-le v0, v1, :cond_2

    #@24
    .line 243
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
    .line 244
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@48
    .line 245
    return v4

    #@49
    .line 248
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@4b
    invoke-direct {p0, v1, v0}, Lcom/android/internal/os/InstallerConnection;->readFully([BI)Z

    #@4e
    move-result v1

    #@4f
    if-nez v1, :cond_3

    #@51
    .line 249
    return v4

    #@52
    .line 252
    :cond_3
    return v0
.end method

.method private safeParseBooleanResult([Ljava/lang/String;)Z
    .locals 3
    .param p1, "res"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 161
    if-eqz p1, :cond_0

    #@3
    array-length v0, p1

    #@4
    const/4 v1, 0x2

    #@5
    if-eq v0, v1, :cond_1

    #@7
    .line 162
    :cond_0
    new-instance v0, Lcom/android/internal/os/InstallerConnection$InstallerException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Invalid size result: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 166
    :cond_1
    aget-object v0, p1, v2

    #@27
    const-string/jumbo v1, "true"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_2

    #@30
    aget-object v0, p1, v2

    #@32
    const-string/jumbo v1, "false"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_3

    #@3b
    .line 170
    :cond_2
    aget-object v0, p1, v2

    #@3d
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@40
    move-result v0

    #@41
    return v0

    #@42
    .line 167
    :cond_3
    new-instance v0, Lcom/android/internal/os/InstallerConnection$InstallerException;

    #@44
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "Invalid boolean result: "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    invoke-direct {v0, v1}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v0
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
    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@5
    move-result-object v0

    #@6
    .line 257
    .local v0, "cmd":[B
    array-length v2, v0

    #@7
    .line 258
    .local v2, "len":I
    if-lt v2, v8, :cond_0

    #@9
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@b
    array-length v3, v3

    #@c
    if-le v2, v3, :cond_1

    #@e
    .line 259
    :cond_0
    return v7

    #@f
    .line 262
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@11
    and-int/lit16 v4, v2, 0xff

    #@13
    int-to-byte v4, v4

    #@14
    aput-byte v4, v3, v7

    #@16
    .line 263
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
    .line 265
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
    .line 266
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 272
    return v8

    #@2f
    .line 267
    :catch_0
    move-exception v1

    #@30
    .line 268
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "InstallerConnection"

    #@33
    const-string/jumbo v4, "write error"

    #@36
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 269
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@3c
    .line 270
    return v7
.end method


# virtual methods
.method public dexopt(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "dexoptNeeded"    # I
    .param p5, "dexFlags"    # I
    .param p6, "compilerFilter"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "sharedLibraries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    const-string/jumbo v3, "*"

    #@3
    const/4 v6, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move-object v4, p3

    #@8
    move v5, p4

    #@9
    move/from16 v7, p5

    #@b
    move-object/from16 v8, p6

    #@d
    move-object/from16 v9, p7

    #@f
    move-object/from16 v10, p8

    #@11
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 139
    return-void
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I
    .param p6, "outputPath"    # Ljava/lang/String;
    .param p7, "dexFlags"    # I
    .param p8, "compilerFilter"    # Ljava/lang/String;
    .param p9, "volumeUuid"    # Ljava/lang/String;
    .param p10, "sharedLibraries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    const-string/jumbo v0, "dexopt"

    #@3
    const/16 v1, 0xa

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    .line 148
    const/4 v2, 0x0

    #@8
    aput-object p1, v1, v2

    #@a
    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x1

    #@f
    aput-object v2, v1, v3

    #@11
    .line 150
    const/4 v2, 0x2

    #@12
    aput-object p3, v1, v2

    #@14
    .line 151
    const/4 v2, 0x3

    #@15
    aput-object p4, v1, v2

    #@17
    .line 152
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v2

    #@1b
    const/4 v3, 0x4

    #@1c
    aput-object v2, v1, v3

    #@1e
    .line 153
    const/4 v2, 0x5

    #@1f
    aput-object p6, v1, v2

    #@21
    .line 154
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v2

    #@25
    const/4 v3, 0x6

    #@26
    aput-object v2, v1, v3

    #@28
    .line 155
    const/4 v2, 0x7

    #@29
    aput-object p8, v1, v2

    #@2b
    .line 156
    const/16 v2, 0x8

    #@2d
    aput-object p9, v1, v2

    #@2f
    .line 157
    const/16 v2, 0x9

    #@31
    aput-object p10, v1, v2

    #@33
    .line 147
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@36
    .line 146
    return-void
.end method

.method public disconnect()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 209
    const-string/jumbo v0, "InstallerConnection"

    #@4
    const-string/jumbo v1, "disconnecting..."

    #@7
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 210
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f
    .line 211
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    #@11
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@14
    .line 212
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    #@16
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@19
    .line 214
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    #@1b
    .line 215
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    #@1d
    .line 216
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    #@1f
    .line 208
    return-void
.end method

.method public dumpProfiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "codePaths"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    const-string/jumbo v1, "dump_profiles"

    #@3
    const/4 v2, 0x3

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    const/4 v3, 0x0

    #@7
    aput-object p1, v2, v3

    #@9
    const/4 v3, 0x1

    #@a
    aput-object p2, v2, v3

    #@c
    const/4 v3, 0x2

    #@d
    aput-object p3, v2, v3

    #@f
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 183
    .local v0, "res":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/os/InstallerConnection;->safeParseBooleanResult([Ljava/lang/String;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;
    .locals 12
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v11, 0x20

    #@2
    const/4 v10, -0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 108
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v8, p2

    #@a
    move v6, v7

    #@b
    :goto_0
    if-ge v6, v8, :cond_4

    #@d
    aget-object v0, p2, v6

    #@f
    .line 110
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@11
    .line 111
    const-string/jumbo v2, ""

    #@14
    .line 115
    .local v2, "escaped":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v9

    #@18
    if-ne v9, v10, :cond_0

    #@1a
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    #@1d
    move-result v9

    #@1e
    if-eq v9, v10, :cond_2

    #@20
    .line 116
    :cond_0
    new-instance v6, Lcom/android/internal/os/InstallerConnection$InstallerException;

    #@22
    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v8, "Invalid argument while executing "

    #@2a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    const-string/jumbo v8, " "

    #@35
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    .line 116
    invoke-direct {v6, v7}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    #@48
    throw v6

    #@49
    .line 113
    .end local v2    # "escaped":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    .restart local v2    # "escaped":Ljava/lang/String;
    goto :goto_1

    #@4e
    .line 115
    :cond_2
    const-string/jumbo v9, "!"

    #@51
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v9

    #@55
    if-nez v9, :cond_0

    #@57
    .line 119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5a
    move-result v9

    #@5b
    if-eqz v9, :cond_3

    #@5d
    .line 120
    const-string/jumbo v2, "!"

    #@60
    .line 122
    :cond_3
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 108
    add-int/lit8 v6, v6, 0x1

    #@69
    goto :goto_0

    #@6a
    .line 124
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v2    # "escaped":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {p0, v6}, Lcom/android/internal/os/InstallerConnection;->transact(Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    const-string/jumbo v7, " "

    #@75
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    .line 125
    .local v5, "resRaw":[Ljava/lang/String;
    const/4 v4, -0x1

    #@7a
    .line 127
    .local v4, "res":I
    const/4 v6, 0x0

    #@7b
    :try_start_0
    aget-object v6, v5, v6

    #@7d
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@80
    move-result v4

    #@81
    .line 130
    :goto_2
    if-eqz v4, :cond_5

    #@83
    .line 131
    new-instance v6, Lcom/android/internal/os/InstallerConnection$InstallerException;

    #@85
    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v8, "Failed to execute "

    #@8d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v7

    #@91
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    const-string/jumbo v8, " "

    #@98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v7

    #@9c
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@9f
    move-result-object v8

    #@a0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v7

    #@a4
    const-string/jumbo v8, ": "

    #@a7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v7

    #@ab
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v7

    #@af
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v7

    #@b3
    .line 131
    invoke-direct {v6, v7}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v6

    #@b7
    .line 134
    :cond_5
    return-object v5

    #@b8
    .line 128
    :catch_0
    move-exception v3

    #@b9
    .local v3, "ignored":Ljava/lang/RuntimeException;
    goto :goto_2
.end method

.method public mergeProfiles(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    const-string/jumbo v1, "merge_profiles"

    #@3
    const/4 v2, 0x2

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v3

    #@a
    const/4 v4, 0x0

    #@b
    aput-object v3, v2, v4

    #@d
    const/4 v3, 0x1

    #@e
    aput-object p2, v2, v3

    #@10
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 176
    .local v0, "res":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/os/InstallerConnection;->safeParseBooleanResult([Ljava/lang/String;)Z

    #@17
    move-result v1

    #@18
    return v1
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .locals 1
    .param p1, "warnIfHeld"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mWarnIfHeld:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@8
    .line 62
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mWarnIfHeld:Ljava/lang/Object;

    #@e
    .line 60
    return-void

    #@f
    .line 61
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public declared-synchronized transact(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mWarnIfHeld:Ljava/lang/Object;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mWarnIfHeld:Ljava/lang/Object;

    #@7
    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 67
    const-string/jumbo v2, "InstallerConnection"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Calling thread "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, " is holding 0x"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 68
    iget-object v4, p0, Lcom/android/internal/os/InstallerConnection;->mWarnIfHeld:Ljava/lang/Object;

    #@31
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@34
    move-result v4

    #@35
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 68
    new-instance v4, Ljava/lang/Throwable;

    #@43
    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    #@46
    .line 67
    invoke-static {v2, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@49
    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->connect()Z

    #@4c
    move-result v2

    #@4d
    if-nez v2, :cond_1

    #@4f
    .line 72
    const-string/jumbo v2, "InstallerConnection"

    #@52
    const-string/jumbo v3, "connection failed"

    #@55
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 73
    const-string/jumbo v2, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5b
    monitor-exit p0

    #@5c
    return-object v2

    #@5d
    .line 76
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/os/InstallerConnection;->writeCommand(Ljava/lang/String;)Z

    #@60
    move-result v2

    #@61
    if-nez v2, :cond_2

    #@63
    .line 82
    const-string/jumbo v2, "InstallerConnection"

    #@66
    const-string/jumbo v3, "write command failed? reconnect!"

    #@69
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 83
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->connect()Z

    #@6f
    move-result v2

    #@70
    if-eqz v2, :cond_3

    #@72
    invoke-direct {p0, p1}, Lcom/android/internal/os/InstallerConnection;->writeCommand(Ljava/lang/String;)Z

    #@75
    move-result v2

    #@76
    if-eqz v2, :cond_3

    #@78
    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->readReply()I

    #@7b
    move-result v0

    #@7c
    .line 92
    .local v0, "replyLength":I
    if-lez v0, :cond_4

    #@7e
    .line 93
    new-instance v1, Ljava/lang/String;

    #@80
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    #@82
    const/4 v3, 0x0

    #@83
    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@86
    .local v1, "s":Ljava/lang/String;
    monitor-exit p0

    #@87
    .line 97
    return-object v1

    #@88
    .line 84
    .end local v0    # "replyLength":I
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v2, "-1"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8b
    monitor-exit p0

    #@8c
    return-object v2

    #@8d
    .line 102
    .restart local v0    # "replyLength":I
    :cond_4
    :try_start_3
    const-string/jumbo v2, "-1"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@90
    monitor-exit p0

    #@91
    return-object v2

    #@92
    .end local v0    # "replyLength":I
    :catchall_0
    move-exception v2

    #@93
    monitor-exit p0

    #@94
    throw v2
.end method

.method public waitForConnection()V
    .locals 4

    #@0
    .prologue
    .line 278
    :goto_0
    :try_start_0
    const-string/jumbo v1, "ping"

    #@3
    const/4 v2, 0x0

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 279
    return-void

    #@a
    .line 280
    :catch_0
    move-exception v0

    #@b
    .line 282
    .local v0, "ignored":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v1, "InstallerConnection"

    #@e
    const-string/jumbo v2, "installd not ready"

    #@11
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 283
    const-wide/16 v2, 0x3e8

    #@16
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    #@19
    goto :goto_0
.end method

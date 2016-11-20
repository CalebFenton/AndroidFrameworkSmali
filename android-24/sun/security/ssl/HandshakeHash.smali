.class final Lsun/security/ssl/HandshakeHash;
.super Ljava/lang/Object;
.source "HandshakeHash.java"


# instance fields
.field private final clonesNeeded:I

.field private cvAlg:Ljava/lang/String;

.field private cvAlgDetermined:Z

.field private data:Ljava/io/ByteArrayOutputStream;

.field private finMD:Ljava/security/MessageDigest;

.field private final isServer:Z

.field private md5:Ljava/security/MessageDigest;

.field private sha:Ljava/security/MessageDigest;

.field private version:I


# direct methods
.method constructor <init>(ZZLjava/util/Set;)V
    .locals 1
    .param p1, "isServer"    # Z
    .param p2, "needCertificateVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 130
    .local p3, "algs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    #@6
    .line 110
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@b
    iput-object v0, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    #@d
    .line 119
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lsun/security/ssl/HandshakeHash;->cvAlgDetermined:Z

    #@10
    .line 132
    iput-boolean p1, p0, Lsun/security/ssl/HandshakeHash;->isServer:Z

    #@12
    .line 133
    if-eqz p2, :cond_0

    #@14
    const/4 v0, 0x3

    #@15
    :goto_0
    iput v0, p0, Lsun/security/ssl/HandshakeHash;->clonesNeeded:I

    #@17
    .line 131
    return-void

    #@18
    .line 133
    :cond_0
    const/4 v0, 0x2

    #@19
    goto :goto_0
.end method

.method private static cloneDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .locals 3
    .param p0, "digest"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 217
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 218
    :catch_0
    move-exception v0

    #@8
    .line 220
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Could not clone digest"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method private static normalizeAlgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "alg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 229
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    .line 230
    const-string/jumbo v0, "SHA"

    #@a
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@13
    move-result v0

    #@14
    if-ne v0, v2, :cond_0

    #@16
    .line 232
    const-string/jumbo v0, "SHA-1"

    #@19
    return-object v0

    #@1a
    .line 234
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v0

    #@1e
    const/16 v1, 0x2d

    #@20
    if-eq v0, v1, :cond_1

    #@22
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, "SHA-"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0

    #@3b
    .line 238
    :cond_1
    return-object p0
.end method


# virtual methods
.method getAllHandshakeMessages()[B
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getFinishedHash()[B
    .locals 3

    #@0
    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;

    #@2
    invoke-static {v1}, Lsun/security/ssl/HandshakeHash;->cloneDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 310
    :catch_0
    move-exception v0

    #@c
    .line 311
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    #@e
    const-string/jumbo v2, "BAD"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@14
    throw v1
.end method

.method getMD5Clone()Ljava/security/MessageDigest;
    .locals 2

    #@0
    .prologue
    .line 197
    iget v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    .line 199
    const-string/jumbo v1, "getMD5Clone() can be only be called for TLS 1.1"

    #@a
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 201
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->md5:Ljava/security/MessageDigest;

    #@10
    invoke-static {v0}, Lsun/security/ssl/HandshakeHash;->cloneDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method getSHAClone()Ljava/security/MessageDigest;
    .locals 2

    #@0
    .prologue
    .line 208
    iget v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 209
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    .line 210
    const-string/jumbo v1, "getSHAClone() can be only be called for TLS 1.1"

    #@a
    .line 209
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 212
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->sha:Ljava/security/MessageDigest;

    #@10
    invoke-static {v0}, Lsun/security/ssl/HandshakeHash;->cloneDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method protocolDetermined(Lsun/security/ssl/ProtocolVersion;)V
    .locals 5
    .param p1, "pv"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 168
    iget v2, p0, Lsun/security/ssl/HandshakeHash;->version:I

    #@3
    const/4 v3, -0x1

    #@4
    if-eq v2, v3, :cond_0

    #@6
    return-void

    #@7
    .line 170
    :cond_0
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@9
    invoke-virtual {p1, v2}, Lsun/security/ssl/ProtocolVersion;->compareTo(Lsun/security/ssl/ProtocolVersion;)I

    #@c
    move-result v2

    #@d
    if-ltz v2, :cond_1

    #@f
    const/4 v2, 0x2

    #@10
    :goto_0
    iput v2, p0, Lsun/security/ssl/HandshakeHash;->version:I

    #@12
    .line 171
    iget v2, p0, Lsun/security/ssl/HandshakeHash;->version:I

    #@14
    packed-switch v2, :pswitch_data_0

    #@17
    .line 165
    :goto_1
    :pswitch_0
    return-void

    #@18
    .line 170
    :cond_1
    const/4 v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 175
    :pswitch_1
    :try_start_0
    const-string/jumbo v2, "MD5"

    #@1d
    iget v3, p0, Lsun/security/ssl/HandshakeHash;->clonesNeeded:I

    #@1f
    invoke-static {v2, v3}, Lsun/security/ssl/CloneableDigest;->getDigest(Ljava/lang/String;I)Ljava/security/MessageDigest;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Lsun/security/ssl/HandshakeHash;->md5:Ljava/security/MessageDigest;

    #@25
    .line 176
    const-string/jumbo v2, "SHA"

    #@28
    iget v3, p0, Lsun/security/ssl/HandshakeHash;->clonesNeeded:I

    #@2a
    invoke-static {v2, v3}, Lsun/security/ssl/CloneableDigest;->getDigest(Ljava/lang/String;I)Ljava/security/MessageDigest;

    #@2d
    move-result-object v2

    #@2e
    iput-object v2, p0, Lsun/security/ssl/HandshakeHash;->sha:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 181
    iget-object v2, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    #@32
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@35
    move-result-object v0

    #@36
    .line 182
    .local v0, "bytes":[B
    array-length v2, v0

    #@37
    invoke-virtual {p0, v0, v4, v2}, Lsun/security/ssl/HandshakeHash;->update([BII)V

    #@3a
    goto :goto_1

    #@3b
    .line 177
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    #@3c
    .line 178
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@3e
    .line 179
    const-string/jumbo v3, "Algorithm MD5 or SHA not available"

    #@41
    .line 178
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw v2

    #@45
    .line 171
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reset()V
    .locals 2

    #@0
    .prologue
    .line 157
    iget v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    .line 159
    const-string/jumbo v1, "reset() can be only be called before protocolDetermined"

    #@a
    .line 158
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 161
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    #@10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@13
    .line 156
    return-void
.end method

.method restrictCertificateVerifyAlgs(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 270
    .local p1, "algs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    .line 272
    const-string/jumbo v1, "setCertificateVerifyAlg() cannot be called for TLS 1.1"

    #@a
    .line 271
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 269
    :cond_0
    return-void
.end method

.method setCertificateVerifyAlg(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 284
    iget-boolean v1, p0, Lsun/security/ssl/HandshakeHash;->cvAlgDetermined:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    return-void

    #@6
    .line 286
    :cond_0
    if-nez p1, :cond_1

    #@8
    :goto_0
    iput-object v0, p0, Lsun/security/ssl/HandshakeHash;->cvAlg:Ljava/lang/String;

    #@a
    .line 287
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lsun/security/ssl/HandshakeHash;->cvAlgDetermined:Z

    #@d
    .line 281
    return-void

    #@e
    .line 286
    :cond_1
    invoke-static {p1}, Lsun/security/ssl/HandshakeHash;->normalizeAlgName(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    goto :goto_0
.end method

.method setFinishedAlg(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 246
    if-nez p1, :cond_0

    #@2
    .line 247
    new-instance v1, Ljava/lang/RuntimeException;

    #@4
    .line 248
    const-string/jumbo v2, "setFinishedAlg\'s argument cannot be null"

    #@7
    .line 247
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 252
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;

    #@d
    if-eqz v1, :cond_1

    #@f
    return-void

    #@10
    .line 255
    :cond_1
    :try_start_0
    invoke-static {p1}, Lsun/security/ssl/HandshakeHash;->normalizeAlgName(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x2

    #@15
    invoke-static {v1, v2}, Lsun/security/ssl/CloneableDigest;->getDigest(Ljava/lang/String;I)Ljava/security/MessageDigest;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 259
    iget-object v1, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;

    #@1d
    iget-object v2, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    #@1f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    #@26
    .line 245
    return-void

    #@27
    .line 256
    :catch_0
    move-exception v0

    #@28
    .line 257
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/Error;

    #@2a
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v1
.end method

.method update([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 137
    iget v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 143
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 144
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;

    #@b
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    #@e
    .line 146
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    #@10
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@13
    .line 136
    :goto_0
    return-void

    #@14
    .line 139
    :pswitch_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->md5:Ljava/security/MessageDigest;

    #@16
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    #@19
    .line 140
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->sha:Ljava/security/MessageDigest;

    #@1b
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    #@1e
    goto :goto_0

    #@1f
    .line 137
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

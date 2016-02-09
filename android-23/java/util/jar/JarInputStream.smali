.class public Ljava/util/jar/JarInputStream;
.super Ljava/util/zip/ZipInputStream;
.source "JarInputStream.java"


# instance fields
.field private currentJarEntry:Ljava/util/jar/JarEntry;

.field private isMeta:Z

.field private manifest:Ljava/util/jar/Manifest;

.field private pendingJarEntry:Ljava/util/jar/JarEntry;

.field private verStream:Ljava/io/OutputStream;

.field private verified:Z

.field private verifier:Ljava/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@4
    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 69
    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 45
    const/4 v2, 0x0

    #@5
    iput-boolean v2, p0, Ljava/util/jar/JarInputStream;->verified:Z

    #@7
    .line 71
    iput-object v5, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    #@9
    .line 72
    iput-object v5, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    #@b
    .line 73
    iput-object v5, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@d
    .line 75
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    #@10
    move-result-object v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 76
    return-void

    #@14
    .line 79
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@16
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, "META-INF/"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 81
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->closeEntry()V

    #@26
    .line 82
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    #@29
    .line 85
    :cond_1
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@2b
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, "META-INF/MANIFEST.MF"

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_2

    #@38
    .line 86
    invoke-static {p0}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    #@3b
    move-result-object v0

    #@3c
    .line 87
    .local v0, "manifestBytes":[B
    new-instance v2, Ljava/util/jar/Manifest;

    #@3e
    invoke-direct {v2, v0, p2}, Ljava/util/jar/Manifest;-><init>([BZ)V

    #@41
    iput-object v2, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    #@43
    .line 88
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->closeEntry()V

    #@46
    .line 90
    if-eqz p2, :cond_2

    #@48
    .line 91
    new-instance v1, Ljava/util/HashMap;

    #@4a
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@4d
    .line 92
    .local v1, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    #@50
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 93
    new-instance v2, Ljava/util/jar/JarVerifier;

    #@55
    const-string/jumbo v3, "JarInputStream"

    #@58
    iget-object v4, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    #@5a
    invoke-direct {v2, v3, v4, v1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/util/HashMap;)V

    #@5d
    iput-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    #@5f
    .line 99
    .end local v0    # "manifestBytes":[B
    .end local v1    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_2
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@61
    iput-object v2, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    #@63
    .line 100
    iput-object v5, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@65
    .line 68
    return-void
.end method


# virtual methods
.method public closeEntry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 235
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 236
    return-void

    #@6
    .line 239
    :cond_0
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    #@9
    .line 240
    iput-object v1, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@b
    .line 230
    return-void
.end method

.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    new-instance v0, Ljava/util/jar/JarEntry;

    #@2
    invoke-direct {v0, p1}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    #@5
    .line 246
    .local v0, "entry":Ljava/util/jar/JarEntry;
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 247
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/util/jar/JarEntry;->setAttributes(Ljava/util/jar/Attributes;)V

    #@12
    .line 249
    :cond_0
    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    #@2
    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 203
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 204
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    #@8
    .line 205
    .local v1, "pending":Ljava/util/jar/JarEntry;
    iput-object v3, p0, Ljava/util/jar/JarInputStream;->pendingJarEntry:Ljava/util/jar/JarEntry;

    #@a
    .line 206
    iput-object v1, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@c
    .line 207
    return-object v1

    #@d
    .line 210
    .end local v1    # "pending":Ljava/util/jar/JarEntry;
    :cond_0
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Ljava/util/jar/JarEntry;

    #@13
    iput-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@15
    .line 211
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@17
    if-nez v2, :cond_1

    #@19
    .line 212
    return-object v3

    #@1a
    .line 215
    :cond_1
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 216
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@20
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, "META-INF/"

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@30
    move-result v2

    #@31
    iput-boolean v2, p0, Ljava/util/jar/JarInputStream;->isMeta:Z

    #@33
    .line 217
    iget-boolean v2, p0, Ljava/util/jar/JarInputStream;->isMeta:Z

    #@35
    if-eqz v2, :cond_4

    #@37
    .line 218
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@39
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getSize()J

    #@3c
    move-result-wide v2

    #@3d
    long-to-int v0, v2

    #@3e
    .line 219
    .local v0, "entrySize":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@40
    if-lez v0, :cond_3

    #@42
    .end local v0    # "entrySize":I
    :goto_0
    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@45
    iput-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    #@47
    .line 225
    :cond_2
    :goto_1
    iput-boolean v4, p0, Ljava/util/jar/JarInputStream;->verified:Z

    #@49
    .line 226
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@4b
    return-object v2

    #@4c
    .line 219
    .restart local v0    # "entrySize":I
    :cond_3
    const/16 v0, 0x2000

    #@4e
    goto :goto_0

    #@4f
    .line 221
    .end local v0    # "entrySize":I
    :cond_4
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    #@51
    iget-object v3, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@53
    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v2, v3}, Ljava/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;

    #@5a
    move-result-object v2

    #@5b
    iput-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    #@5d
    goto :goto_1
.end method

.method public getNextJarEntry()Ljava/util/jar/JarEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/jar/JarEntry;

    #@6
    return-object v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 154
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 155
    return v3

    #@7
    .line 158
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    #@a
    move-result v1

    #@b
    .line 165
    .local v1, "r":I
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    #@d
    if-eqz v2, :cond_1

    #@f
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    #@11
    if-eqz v2, :cond_1

    #@13
    iget-boolean v2, p0, Ljava/util/jar/JarInputStream;->verified:Z

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 187
    :cond_1
    :goto_0
    return v1

    #@18
    .line 166
    :cond_2
    if-ne v1, v3, :cond_4

    #@1a
    .line 169
    const/4 v2, 0x1

    #@1b
    iput-boolean v2, p0, Ljava/util/jar/JarInputStream;->verified:Z

    #@1d
    .line 170
    iget-boolean v2, p0, Ljava/util/jar/JarInputStream;->isMeta:Z

    #@1f
    if-eqz v2, :cond_3

    #@21
    .line 171
    iget-object v3, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    #@23
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->currentJarEntry:Ljava/util/jar/JarEntry;

    #@25
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 172
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    #@2b
    check-cast v2, Ljava/io/ByteArrayOutputStream;

    #@2d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@30
    move-result-object v2

    #@31
    .line 171
    invoke-virtual {v3, v4, v2}, Ljava/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    #@34
    .line 174
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    #@36
    invoke-virtual {v2}, Ljava/util/jar/JarVerifier;->readCertificates()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    goto :goto_0

    #@3a
    .line 175
    :catch_0
    move-exception v0

    #@3b
    .line 176
    .local v0, "e":Ljava/lang/SecurityException;
    iput-object v5, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    #@3d
    .line 177
    throw v0

    #@3e
    .line 180
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_3
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    #@40
    check-cast v2, Ljava/util/jar/JarVerifier$VerifierEntry;

    #@42
    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    #@45
    goto :goto_0

    #@46
    .line 183
    :cond_4
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    #@48
    invoke-virtual {v2, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    #@4b
    goto :goto_0
.end method

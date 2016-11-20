.class public Ljava/util/jar/JarInputStream;
.super Ljava/util/zip/ZipInputStream;
.source "JarInputStream.java"


# instance fields
.field private final doVerify:Z

.field private first:Ljava/util/jar/JarEntry;

.field private jv:Ljava/util/jar/JarVerifier;

.field private man:Ljava/util/jar/Manifest;

.field private mev:Lsun/security/util/ManifestEntryVerifier;

.field private tryManifest:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@4
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 77
    iput-boolean p2, p0, Ljava/util/jar/JarInputStream;->doVerify:Z

    #@5
    .line 83
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/jar/JarEntry;

    #@b
    .line 84
    .local v0, "e":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, "META-INF/"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 85
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    #@1d
    move-result-object v0

    #@1e
    .end local v0    # "e":Ljava/util/jar/JarEntry;
    check-cast v0, Ljava/util/jar/JarEntry;

    #@20
    .line 86
    .restart local v0    # "e":Ljava/util/jar/JarEntry;
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/jar/JarInputStream;->checkManifest(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    #@26
    .line 75
    return-void
.end method

.method private checkManifest(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .locals 3
    .param p1, "e"    # Ljava/util/jar/JarEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    if-eqz p1, :cond_1

    #@2
    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    #@5
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 93
    new-instance v1, Ljava/util/jar/Manifest;

    #@11
    invoke-direct {v1}, Ljava/util/jar/Manifest;-><init>()V

    #@14
    iput-object v1, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    #@16
    .line 94
    new-instance v1, Ljava/io/BufferedInputStream;

    #@18
    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@1b
    invoke-direct {p0, v1}, Ljava/util/jar/JarInputStream;->getBytes(Ljava/io/InputStream;)[B

    #@1e
    move-result-object v0

    #@1f
    .line 95
    .local v0, "bytes":[B
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    #@21
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@23
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@26
    invoke-virtual {v1, v2}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    #@29
    .line 96
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    #@2c
    .line 97
    iget-boolean v1, p0, Ljava/util/jar/JarInputStream;->doVerify:Z

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 98
    new-instance v1, Ljava/util/jar/JarVerifier;

    #@32
    invoke-direct {v1, v0}, Ljava/util/jar/JarVerifier;-><init>([B)V

    #@35
    iput-object v1, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    #@37
    .line 99
    new-instance v1, Lsun/security/util/ManifestEntryVerifier;

    #@39
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    #@3b
    invoke-direct {v1, v2}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V

    #@3e
    iput-object v1, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@40
    .line 101
    :cond_0
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Ljava/util/jar/JarEntry;

    #@46
    return-object v1

    #@47
    .line 103
    .end local v0    # "bytes":[B
    :cond_1
    return-object p1
.end method

.method private getBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 109
    const/16 v3, 0x2000

    #@3
    new-array v1, v3, [B

    #@5
    .line 110
    .local v1, "buffer":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@7
    const/16 v3, 0x800

    #@9
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@c
    .line 112
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    array-length v3, v1

    #@d
    invoke-virtual {p1, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    #@10
    move-result v2

    #@11
    .local v2, "n":I
    const/4 v3, -0x1

    #@12
    if-eq v2, v3, :cond_0

    #@14
    .line 113
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@17
    goto :goto_0

    #@18
    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1b
    move-result-object v3

    #@1c
    return-object v3
.end method


# virtual methods
.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 227
    new-instance v0, Ljava/util/jar/JarEntry;

    #@2
    invoke-direct {v0, p1}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    #@5
    .line 228
    .local v0, "e":Ljava/util/jar/JarEntry;
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 229
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Ljava/util/jar/JarEntry;->attr:Ljava/util/jar/Attributes;

    #@11
    .line 231
    :cond_0
    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    #@2
    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 141
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    #@3
    if-nez v1, :cond_2

    #@5
    .line 142
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/jar/JarEntry;

    #@b
    .line 143
    .local v0, "e":Ljava/util/jar/JarEntry;
    iget-boolean v1, p0, Ljava/util/jar/JarInputStream;->tryManifest:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 144
    invoke-direct {p0, v0}, Ljava/util/jar/JarInputStream;->checkManifest(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;

    #@12
    move-result-object v0

    #@13
    .line 145
    const/4 v1, 0x0

    #@14
    iput-boolean v1, p0, Ljava/util/jar/JarInputStream;->tryManifest:Z

    #@16
    .line 153
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    #@18
    if-eqz v1, :cond_1

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 157
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    #@1e
    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->nothingToVerify()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_4

    #@24
    .line 158
    iput-object v3, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    #@26
    .line 159
    iput-object v3, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@28
    .line 164
    :cond_1
    :goto_1
    return-object v0

    #@29
    .line 148
    .end local v0    # "e":Ljava/util/jar/JarEntry;
    :cond_2
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    #@2b
    .line 149
    .restart local v0    # "e":Ljava/util/jar/JarEntry;
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    #@2d
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, "META-INF/INDEX.LIST"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 150
    const/4 v1, 0x1

    #@3b
    iput-boolean v1, p0, Ljava/util/jar/JarInputStream;->tryManifest:Z

    #@3d
    .line 151
    :cond_3
    iput-object v3, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    #@3f
    goto :goto_0

    #@40
    .line 161
    :cond_4
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    #@42
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@44
    invoke-virtual {v1, v0, v2}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    #@47
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
    .line 179
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
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 207
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    #@7
    move-result v1

    #@8
    .line 211
    .local v1, "n":I
    :goto_0
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 212
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    #@e
    iget-object v5, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    #@10
    move-object v2, p1

    #@11
    move v3, p2

    #@12
    move v4, p3

    #@13
    invoke-virtual/range {v0 .. v5}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    #@16
    .line 214
    :cond_0
    return v1

    #@17
    .line 209
    .end local v1    # "n":I
    :cond_1
    const/4 v1, -0x1

    #@18
    .restart local v1    # "n":I
    goto :goto_0
.end method

.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarFileInputStream;,
        Ljava/util/jar/JarFile$JarFileEnumerator;
    }
.end annotation


# static fields
.field public static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field static final META_DIR:Ljava/lang/String; = "META-INF/"


# instance fields
.field private closed:Z

.field private manifest:Ljava/util/jar/Manifest;

.field private manifestBytes:[B

.field verifier:Ljava/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    #@4
    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    #@4
    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZI)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 199
    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    #@4
    .line 58
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Ljava/util/jar/JarFile;->closed:Z

    #@7
    .line 203
    invoke-static {p0, p2}, Ljava/util/jar/JarFile;->readMetaEntries(Ljava/util/zip/ZipFile;Z)Ljava/util/HashMap;

    #@a
    move-result-object v0

    #@b
    .line 213
    .local v0, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    if-eqz p2, :cond_0

    #@d
    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    #@10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 214
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@19
    move-result v1

    #@1a
    if-le v1, v3, :cond_0

    #@1c
    .line 217
    new-instance v2, Ljava/util/jar/Manifest;

    #@1e
    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    #@21
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, [B

    #@27
    invoke-direct {v2, v1, v3}, Ljava/util/jar/Manifest;-><init>([BZ)V

    #@2a
    iput-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    #@2c
    .line 218
    new-instance v1, Ljava/util/jar/JarVerifier;

    #@2e
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    iget-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    #@34
    invoke-direct {v1, v2, v3, v0}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/util/HashMap;)V

    #@37
    iput-object v1, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@39
    .line 198
    :goto_0
    return-void

    #@3a
    .line 220
    :cond_0
    const/4 v1, 0x0

    #@3b
    iput-object v1, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@3d
    .line 221
    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    #@40
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, [B

    #@46
    iput-object v1, p0, Ljava/util/jar/JarFile;->manifestBytes:[B

    #@48
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    #@4
    .line 234
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {p0, v0, p2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    #@9
    .line 249
    return-void
.end method

.method private static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 360
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    sub-int v2, v0, v1

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v5

    #@e
    const/4 v1, 0x1

    #@f
    const/4 v4, 0x0

    #@10
    move-object v0, p0

    #@11
    move-object v3, p1

    #@12
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method private static getMetaEntries(Ljava/util/zip/ZipFile;)Ljava/util/List;
    .locals 5
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 426
    new-instance v1, Ljava/util/ArrayList;

    #@2
    const/16 v3, 0x8

    #@4
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@7
    .line 428
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@a
    move-result-object v0

    #@b
    .line 429
    .local v0, "allEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 430
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/util/zip/ZipEntry;

    #@17
    .line 431
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    const-string/jumbo v4, "META-INF/"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 432
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@2b
    move-result v3

    #@2c
    const-string/jumbo v4, "META-INF/"

    #@2f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@32
    move-result v4

    #@33
    if-le v3, v4, :cond_0

    #@35
    .line 433
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 437
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    :cond_1
    return-object v1
.end method

.method static readMetaEntries(Ljava/util/zip/ZipFile;Z)Ljava/util/HashMap;
    .locals 8
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "verificationRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 324
    invoke-static {p0}, Ljava/util/jar/JarFile;->getMetaEntries(Ljava/util/zip/ZipFile;)Ljava/util/List;

    #@3
    move-result-object v4

    #@4
    .line 326
    .local v4, "metaEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    new-instance v5, Ljava/util/HashMap;

    #@6
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@9
    .line 328
    .local v5, "metaEntriesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_4

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/zip/ZipEntry;

    #@19
    .line 329
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 334
    .local v2, "entryName":Ljava/lang/String;
    const-string/jumbo v6, "META-INF/MANIFEST.MF"

    #@20
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_1

    #@26
    .line 335
    const-string/jumbo v6, "META-INF/MANIFEST.MF"

    #@29
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_3

    #@2f
    .line 344
    :cond_1
    if-eqz p1, :cond_0

    #@31
    .line 346
    const-string/jumbo v6, ".SF"

    #@34
    invoke-static {v2, v6}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@37
    move-result v6

    #@38
    if-nez v6, :cond_2

    #@3a
    .line 347
    const-string/jumbo v6, ".DSA"

    #@3d
    invoke-static {v2, v6}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@40
    move-result v6

    #@41
    .line 346
    if-nez v6, :cond_2

    #@43
    .line 348
    const-string/jumbo v6, ".RSA"

    #@46
    invoke-static {v2, v6}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@49
    move-result v6

    #@4a
    .line 346
    if-nez v6, :cond_2

    #@4c
    .line 349
    const-string/jumbo v6, ".EC"

    #@4f
    invoke-static {v2, v6}, Ljava/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@52
    move-result v6

    #@53
    .line 346
    if-eqz v6, :cond_0

    #@55
    .line 350
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@58
    move-result-object v3

    #@59
    .line 351
    .local v3, "is":Ljava/io/InputStream;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@5b
    invoke-virtual {v2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    goto :goto_0

    #@67
    .line 337
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_3
    const-string/jumbo v6, "META-INF/MANIFEST.MF"

    #@6a
    .line 338
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@6d
    move-result-object v7

    #@6e
    .line 337
    invoke-static {v7}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 341
    if-nez p1, :cond_0

    #@77
    .line 356
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "entryName":Ljava/lang/String;
    :cond_4
    return-object v5
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 448
    invoke-super {p0}, Ljava/util/zip/ZipFile;->close()V

    #@3
    .line 449
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    #@6
    .line 447
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/util/jar/JarFile$JarFileEnumerator;

    #@2
    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0}, Ljava/util/jar/JarFile$JarFileEnumerator;-><init>(Ljava/util/Enumeration;Ljava/util/jar/JarFile;)V

    #@9
    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 414
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@3
    move-result-object v0

    #@4
    .line 415
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    #@6
    .line 416
    return-object v0

    #@7
    .line 418
    :cond_0
    new-instance v1, Ljava/util/jar/JarEntry;

    #@9
    invoke-direct {v1, v0, p0}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;Ljava/util/jar/JarFile;)V

    #@c
    return-object v1
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 6
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 375
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifestBytes:[B

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 376
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@8
    .line 379
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 380
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@e
    invoke-virtual {v2}, Ljava/util/jar/JarVerifier;->readCertificates()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 381
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@16
    invoke-virtual {v2}, Ljava/util/jar/JarVerifier;->removeMetaEntries()V

    #@19
    .line 382
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    #@1b
    invoke-virtual {v2}, Ljava/util/jar/Manifest;->removeChunks()V

    #@1e
    .line 384
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@20
    invoke-virtual {v2}, Ljava/util/jar/JarVerifier;->isSignedJar()Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_1

    #@26
    .line 385
    iput-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@28
    .line 390
    :cond_1
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@2b
    move-result-object v1

    #@2c
    .line 391
    .local v1, "in":Ljava/io/InputStream;
    if-nez v1, :cond_2

    #@2e
    .line 392
    return-object v3

    #@2f
    .line 394
    :cond_2
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@31
    if-eqz v2, :cond_3

    #@33
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@36
    move-result-wide v2

    #@37
    const-wide/16 v4, -0x1

    #@39
    cmp-long v2, v2, v4

    #@3b
    if-nez v2, :cond_4

    #@3d
    .line 395
    :cond_3
    return-object v1

    #@3e
    .line 397
    :cond_4
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@40
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v2, v3}, Ljava/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;

    #@47
    move-result-object v0

    #@48
    .line 398
    .local v0, "entry":Ljava/util/jar/JarVerifier$VerifierEntry;
    if-nez v0, :cond_5

    #@4a
    .line 399
    return-object v1

    #@4b
    .line 401
    :cond_5
    new-instance v2, Ljava/util/jar/JarFile$JarFileInputStream;

    #@4d
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@50
    move-result-wide v4

    #@51
    invoke-direct {v2, v1, v4, v5, v0}, Ljava/util/jar/JarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;JLjava/util/jar/JarVerifier$VerifierEntry;)V

    #@54
    return-object v2
.end method

.method public getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 275
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/jar/JarEntry;

    #@6
    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
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
    .line 290
    iget-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "JarFile has been closed"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 294
    :cond_0
    iget-object v0, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 295
    iget-object v0, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    #@14
    return-object v0

    #@15
    .line 299
    :cond_1
    iget-object v0, p0, Ljava/util/jar/JarFile;->manifestBytes:[B

    #@17
    if-nez v0, :cond_2

    #@19
    .line 300
    return-object v3

    #@1a
    .line 306
    :cond_2
    new-instance v0, Ljava/util/jar/Manifest;

    #@1c
    iget-object v1, p0, Ljava/util/jar/JarFile;->manifestBytes:[B

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-direct {v0, v1, v2}, Ljava/util/jar/Manifest;-><init>([BZ)V

    #@22
    iput-object v0, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    #@24
    .line 307
    iput-object v3, p0, Ljava/util/jar/JarFile;->manifestBytes:[B

    #@26
    .line 309
    iget-object v0, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    #@28
    return-object v0
.end method

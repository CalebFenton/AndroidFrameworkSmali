.class public final Landroid/util/jar/StrictJarFile;
.super Ljava/lang/Object;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarFile$EntryIterator;,
        Landroid/util/jar/StrictJarFile$JarFileInputStream;,
        Landroid/util/jar/StrictJarFile$RAFStream;,
        Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isSigned:Z

.field private final manifest:Landroid/util/jar/StrictJarManifest;

.field private final nativeHandle:J

.field private final raf:Ljava/io/RandomAccessFile;

.field private final verifier:Landroid/util/jar/StrictJarVerifier;


# direct methods
.method static synthetic -wrap0(J)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p0, "iterationHandle"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/util/jar/StrictJarFile;->nativeNextEntry(J)Ljava/util/zip/ZipEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(JLjava/lang/String;)J
    .locals 2
    .param p0, "nativeHandle"    # J
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/util/jar/StrictJarFile;->nativeStartIteration(JLjava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 61
    invoke-direct {p0, p1, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    #@4
    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .param p3, "signatureSchemeRollbackProtectionsEnforced"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@7
    move-result-object v5

    #@8
    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    #@a
    .line 77
    invoke-static {p1}, Landroid/util/jar/StrictJarFile;->nativeOpenJarFile(Ljava/lang/String;)J

    #@d
    move-result-wide v8

    #@e
    iput-wide v8, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    #@10
    .line 78
    new-instance v5, Ljava/io/RandomAccessFile;

    #@12
    const-string/jumbo v7, "r"

    #@15
    invoke-direct {v5, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    #@1a
    .line 84
    if-eqz p2, :cond_3

    #@1c
    .line 85
    :try_start_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarFile;->getMetaEntries()Ljava/util/HashMap;

    #@1f
    move-result-object v4

    #@20
    .line 86
    .local v4, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v7, Landroid/util/jar/StrictJarManifest;

    #@22
    const-string/jumbo v5, "META-INF/MANIFEST.MF"

    #@25
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, [B

    #@2b
    const/4 v8, 0x1

    #@2c
    invoke-direct {v7, v5, v8}, Landroid/util/jar/StrictJarManifest;-><init>([BZ)V

    #@2f
    iput-object v7, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    #@31
    .line 88
    new-instance v5, Landroid/util/jar/StrictJarVerifier;

    #@33
    .line 90
    iget-object v7, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    #@35
    .line 88
    invoke-direct {v5, p1, v7, v4, p3}, Landroid/util/jar/StrictJarVerifier;-><init>(Ljava/lang/String;Landroid/util/jar/StrictJarManifest;Ljava/util/HashMap;Z)V

    #@38
    .line 87
    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    #@3a
    .line 93
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    #@3c
    invoke-virtual {v5}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    #@3f
    move-result-object v5

    #@40
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@43
    move-result-object v3

    #@44
    .line 94
    .local v3, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v2

    #@48
    .local v2, "file$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v5

    #@4c
    if-eqz v5, :cond_1

    #@4e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Ljava/lang/String;

    #@54
    .line 95
    .local v1, "file":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@57
    move-result-object v5

    #@58
    if-nez v5, :cond_0

    #@5a
    .line 96
    new-instance v5, Ljava/lang/SecurityException;

    #@5c
    new-instance v6, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    const-string/jumbo v7, ": File "

    #@68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    const-string/jumbo v7, " in manifest does not exist"

    #@73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@7f
    .line 106
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "file$iterator":Ljava/util/Iterator;
    .end local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :catch_0
    move-exception v0

    #@80
    .line 107
    .local v0, "e":Ljava/lang/Exception;
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    #@82
    invoke-static {v6, v7}, Landroid/util/jar/StrictJarFile;->nativeClose(J)V

    #@85
    .line 108
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    #@87
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8a
    .line 109
    throw v0

    #@8b
    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "file$iterator":Ljava/util/Iterator;
    .restart local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    #@8d
    invoke-virtual {v5}, Landroid/util/jar/StrictJarVerifier;->readCertificates()Z

    #@90
    move-result v5

    #@91
    if-eqz v5, :cond_2

    #@93
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    #@95
    invoke-virtual {v5}, Landroid/util/jar/StrictJarVerifier;->isSignedJar()Z

    #@98
    move-result v5

    #@99
    :goto_0
    iput-boolean v5, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@9b
    .line 112
    .end local v2    # "file$iterator":Ljava/util/Iterator;
    .end local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :goto_1
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    #@9d
    const-string/jumbo v6, "close"

    #@a0
    invoke-virtual {v5, v6}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@a3
    .line 76
    return-void

    #@a4
    .restart local v2    # "file$iterator":Ljava/util/Iterator;
    .restart local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_2
    move v5, v6

    #@a5
    .line 100
    goto :goto_0

    #@a6
    .line 102
    .end local v2    # "file$iterator":Ljava/util/Iterator;
    .end local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_3
    const/4 v5, 0x0

    #@a7
    :try_start_2
    iput-boolean v5, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    #@a9
    .line 103
    const/4 v5, 0x0

    #@aa
    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    #@ac
    .line 104
    const/4 v5, 0x0

    #@ad
    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    #@af
    goto :goto_1
.end method

.method private getMetaEntries()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 254
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 256
    .local v2, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v1, Landroid/util/jar/StrictJarFile$EntryIterator;

    #@7
    iget-wide v4, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    #@9
    const-string/jumbo v3, "META-INF/"

    #@c
    invoke-direct {v1, v4, v5, v3}, Landroid/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    #@f
    .line 257
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/zip/ZipEntry;

    #@1b
    .line 259
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@22
    move-result-object v4

    #@23
    invoke-static {v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    goto :goto_0

    #@2b
    .line 262
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    return-object v2
.end method

.method private getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 10
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    .line 204
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 205
    new-instance v0, Landroid/util/jar/StrictJarFile$RAFStream;

    #@8
    iget-object v1, p0, Landroid/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    #@a
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    #@d
    move-result-wide v2

    #@e
    .line 206
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    #@11
    move-result-wide v4

    #@12
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@15
    move-result-wide v8

    #@16
    add-long/2addr v4, v8

    #@17
    .line 205
    invoke-direct/range {v0 .. v5}, Landroid/util/jar/StrictJarFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    #@1a
    return-object v0

    #@1b
    .line 208
    :cond_0
    new-instance v0, Landroid/util/jar/StrictJarFile$RAFStream;

    #@1d
    .line 209
    iget-object v1, p0, Landroid/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    #@1f
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    #@22
    move-result-wide v2

    #@23
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    #@26
    move-result-wide v4

    #@27
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    #@2a
    move-result-wide v8

    #@2b
    add-long/2addr v4, v8

    #@2c
    .line 208
    invoke-direct/range {v0 .. v5}, Landroid/util/jar/StrictJarFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    #@2f
    .line 211
    .local v0, "wrapped":Landroid/util/jar/StrictJarFile$RAFStream;
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@32
    move-result-wide v2

    #@33
    const-wide/32 v4, 0xffff

    #@36
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@39
    move-result-wide v2

    #@3a
    long-to-int v1, v2

    #@3b
    const/16 v2, 0x400

    #@3d
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@40
    move-result v6

    #@41
    .line 212
    .local v6, "bufSize":I
    new-instance v1, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;

    #@43
    new-instance v2, Ljava/util/zip/Inflater;

    #@45
    const/4 v3, 0x1

    #@46
    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@49
    invoke-direct {v1, v0, v2, v6, p1}, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

    #@4c
    return-object v1
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;
.end method

.method private static native nativeNextEntry(J)Ljava/util/zip/ZipEntry;
.end method

.method private static native nativeOpenJarFile(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeStartIteration(JLjava/lang/String;)J
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 195
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@9
    .line 197
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    #@b
    invoke-static {v0, v1}, Landroid/util/jar/StrictJarFile;->nativeClose(J)V

    #@e
    .line 198
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    #@10
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@13
    .line 199
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    #@16
    .line 193
    :cond_0
    return-void
.end method

.method public findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/util/jar/StrictJarFile;->nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    .line 136
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 137
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    #@6
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 140
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;
    .locals 9
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 155
    iget-boolean v5, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    #@3
    if-eqz v5, :cond_2

    #@5
    .line 156
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    #@7
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@a
    move-result-object v7

    #@b
    invoke-virtual {v5, v7}, Landroid/util/jar/StrictJarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    #@e
    move-result-object v0

    #@f
    .line 159
    .local v0, "certChains":[[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    #@10
    .line 160
    .local v3, "count":I
    array-length v7, v0

    #@11
    move v5, v6

    #@12
    :goto_0
    if-ge v5, v7, :cond_0

    #@14
    aget-object v2, v0, v5

    #@16
    .line 161
    .local v2, "chain":[Ljava/security/cert/Certificate;
    array-length v8, v2

    #@17
    add-int/2addr v3, v8

    #@18
    .line 160
    add-int/lit8 v5, v5, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 165
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_0
    new-array v1, v3, [Ljava/security/cert/Certificate;

    #@1d
    .line 166
    .local v1, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    #@1e
    .line 167
    .local v4, "i":I
    array-length v7, v0

    #@1f
    move v5, v6

    #@20
    :goto_1
    if-ge v5, v7, :cond_1

    #@22
    aget-object v2, v0, v5

    #@24
    .line 168
    .restart local v2    # "chain":[Ljava/security/cert/Certificate;
    array-length v8, v2

    #@25
    invoke-static {v2, v6, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 169
    array-length v8, v2

    #@29
    add-int/2addr v4, v8

    #@2a
    .line 167
    add-int/lit8 v5, v5, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 172
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_1
    return-object v1

    #@2e
    .line 175
    .end local v0    # "certChains":[[Ljava/security/cert/Certificate;
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_2
    const/4 v5, 0x0

    #@2f
    return-object v5
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 6
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    .line 179
    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarFile;->getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@3
    move-result-object v1

    #@4
    .line 181
    .local v1, "is":Ljava/io/InputStream;
    iget-boolean v2, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 182
    iget-object v2, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    #@a
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Landroid/util/jar/StrictJarVerifier;->initEntry(Ljava/lang/String;)Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    #@11
    move-result-object v0

    #@12
    .line 183
    .local v0, "entry":Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    if-nez v0, :cond_0

    #@14
    .line 184
    return-object v1

    #@15
    .line 187
    :cond_0
    new-instance v2, Landroid/util/jar/StrictJarFile$JarFileInputStream;

    #@17
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@1a
    move-result-wide v4

    #@1b
    invoke-direct {v2, v1, v4, v5, v0}, Landroid/util/jar/StrictJarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;JLandroid/util/jar/StrictJarVerifier$VerifierEntry;)V

    #@1e
    return-object v2

    #@1f
    .line 190
    .end local v0    # "entry":Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    :cond_1
    return-object v1
.end method

.method public getManifest()Landroid/util/jar/StrictJarManifest;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    #@2
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    new-instance v0, Landroid/util/jar/StrictJarFile$EntryIterator;

    #@2
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    #@4
    const-string/jumbo v1, ""

    #@7
    invoke-direct {v0, v2, v3, v1}, Landroid/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    #@a
    return-object v0
.end method

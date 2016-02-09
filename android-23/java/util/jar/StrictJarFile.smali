.class public final Ljava/util/jar/StrictJarFile;
.super Ljava/lang/Object;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/StrictJarFile$EntryIterator;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isSigned:Z

.field private final manifest:Ljava/util/jar/Manifest;

.field private final nativeHandle:J

.field private final raf:Ljava/io/RandomAccessFile;

.field private final verifier:Ljava/util/jar/JarVerifier;


# direct methods
.method static synthetic -wrap0(J)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p0, "iterationHandle"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/jar/StrictJarFile;->nativeNextEntry(J)Ljava/util/zip/ZipEntry;

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
    invoke-static {p0, p1, p2}, Ljava/util/jar/StrictJarFile;->nativeStartIteration(JLjava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v5

    #@7
    iput-object v5, p0, Ljava/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 58
    invoke-static {p1}, Ljava/util/jar/StrictJarFile;->nativeOpenJarFile(Ljava/lang/String;)J

    #@c
    move-result-wide v6

    #@d
    iput-wide v6, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    #@f
    .line 59
    new-instance v5, Ljava/io/RandomAccessFile;

    #@11
    const-string/jumbo v6, "r"

    #@14
    invoke-direct {v5, p1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    iput-object v5, p0, Ljava/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    #@19
    .line 65
    :try_start_0
    invoke-direct {p0}, Ljava/util/jar/StrictJarFile;->getMetaEntries()Ljava/util/HashMap;

    #@1c
    move-result-object v4

    #@1d
    .line 66
    .local v4, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v6, Ljava/util/jar/Manifest;

    #@1f
    const-string/jumbo v5, "META-INF/MANIFEST.MF"

    #@22
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, [B

    #@28
    const/4 v7, 0x1

    #@29
    invoke-direct {v6, v5, v7}, Ljava/util/jar/Manifest;-><init>([BZ)V

    #@2c
    iput-object v6, p0, Ljava/util/jar/StrictJarFile;->manifest:Ljava/util/jar/Manifest;

    #@2e
    .line 67
    new-instance v5, Ljava/util/jar/JarVerifier;

    #@30
    iget-object v6, p0, Ljava/util/jar/StrictJarFile;->manifest:Ljava/util/jar/Manifest;

    #@32
    invoke-direct {v5, p1, v6, v4}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/util/HashMap;)V

    #@35
    iput-object v5, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@37
    .line 68
    iget-object v5, p0, Ljava/util/jar/StrictJarFile;->manifest:Ljava/util/jar/Manifest;

    #@39
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@3c
    move-result-object v5

    #@3d
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@40
    move-result-object v3

    #@41
    .line 69
    .local v3, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v2

    #@45
    .local v2, "file$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_1

    #@4b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v1

    #@4f
    check-cast v1, Ljava/lang/String;

    #@51
    .line 70
    .local v1, "file":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@54
    move-result-object v5

    #@55
    if-nez v5, :cond_0

    #@57
    .line 71
    new-instance v5, Ljava/lang/SecurityException;

    #@59
    new-instance v6, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    const-string/jumbo v7, ": File "

    #@65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    const-string/jumbo v7, " in manifest does not exist"

    #@70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    .line 76
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "file$iterator":Ljava/util/Iterator;
    .end local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :catch_0
    move-exception v0

    #@7d
    .line 77
    .local v0, "e":Ljava/lang/Exception;
    iget-wide v6, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    #@7f
    invoke-static {v6, v7}, Ljava/util/jar/StrictJarFile;->nativeClose(J)V

    #@82
    .line 78
    iget-object v5, p0, Ljava/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    #@84
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@87
    .line 79
    throw v0

    #@88
    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "file$iterator":Ljava/util/Iterator;
    .restart local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_1
    :try_start_1
    iget-object v5, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@8a
    invoke-virtual {v5}, Ljava/util/jar/JarVerifier;->readCertificates()Z

    #@8d
    move-result v5

    #@8e
    if-eqz v5, :cond_2

    #@90
    iget-object v5, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@92
    invoke-virtual {v5}, Ljava/util/jar/JarVerifier;->isSignedJar()Z

    #@95
    move-result v5

    #@96
    :goto_0
    iput-boolean v5, p0, Ljava/util/jar/StrictJarFile;->isSigned:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@98
    .line 82
    iget-object v5, p0, Ljava/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    #@9a
    const-string/jumbo v6, "close"

    #@9d
    invoke-virtual {v5, v6}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@a0
    .line 57
    return-void

    #@a1
    .line 75
    :cond_2
    const/4 v5, 0x0

    #@a2
    goto :goto_0
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
    .line 224
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 226
    .local v2, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v1, Ljava/util/jar/StrictJarFile$EntryIterator;

    #@7
    iget-wide v4, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    #@9
    const-string/jumbo v3, "META-INF/"

    #@c
    invoke-direct {v1, v4, v5, v3}, Ljava/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    #@f
    .line 227
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/zip/ZipEntry;

    #@1b
    .line 229
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p0, v0}, Ljava/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

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
    .line 232
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    return-object v2
.end method

.method private getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 10
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    .line 174
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 175
    new-instance v0, Ljava/util/zip/ZipFile$RAFStream;

    #@8
    iget-object v1, p0, Ljava/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    #@a
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    #@d
    move-result-wide v2

    #@e
    .line 176
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
    .line 175
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    #@1a
    return-object v0

    #@1b
    .line 178
    :cond_0
    new-instance v0, Ljava/util/zip/ZipFile$RAFStream;

    #@1d
    .line 179
    iget-object v1, p0, Ljava/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

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
    .line 178
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    #@2f
    .line 181
    .local v0, "wrapped":Ljava/util/zip/ZipFile$RAFStream;
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
    .line 182
    .local v6, "bufSize":I
    new-instance v1, Ljava/util/zip/ZipFile$ZipInflaterInputStream;

    #@43
    new-instance v2, Ljava/util/zip/Inflater;

    #@45
    const/4 v3, 0x1

    #@46
    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@49
    invoke-direct {v1, v0, v2, v6, p1}, Ljava/util/zip/ZipFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

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
    .line 164
    iget-boolean v0, p0, Ljava/util/jar/StrictJarFile;->closed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 165
    iget-object v0, p0, Ljava/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@9
    .line 167
    iget-wide v0, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    #@b
    invoke-static {v0, v1}, Ljava/util/jar/StrictJarFile;->nativeClose(J)V

    #@e
    .line 168
    iget-object v0, p0, Ljava/util/jar/StrictJarFile;->raf:Ljava/io/RandomAccessFile;

    #@10
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@13
    .line 169
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Ljava/util/jar/StrictJarFile;->closed:Z

    #@16
    .line 163
    :cond_0
    return-void
.end method

.method public findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    iget-wide v0, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    #@2
    invoke-static {v0, v1, p1}, Ljava/util/jar/StrictJarFile;->nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;

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
    .line 106
    iget-boolean v0, p0, Ljava/util/jar/StrictJarFile;->isSigned:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 107
    iget-object v0, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@6
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/util/jar/JarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 110
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
    .line 125
    iget-boolean v5, p0, Ljava/util/jar/StrictJarFile;->isSigned:Z

    #@3
    if-eqz v5, :cond_2

    #@5
    .line 126
    iget-object v5, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@7
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@a
    move-result-object v7

    #@b
    invoke-virtual {v5, v7}, Ljava/util/jar/JarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    #@e
    move-result-object v0

    #@f
    .line 129
    .local v0, "certChains":[[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    #@10
    .line 130
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
    .line 131
    .local v2, "chain":[Ljava/security/cert/Certificate;
    array-length v8, v2

    #@17
    add-int/2addr v3, v8

    #@18
    .line 130
    add-int/lit8 v5, v5, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 135
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_0
    new-array v1, v3, [Ljava/security/cert/Certificate;

    #@1d
    .line 136
    .local v1, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    #@1e
    .line 137
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
    .line 138
    .restart local v2    # "chain":[Ljava/security/cert/Certificate;
    array-length v8, v2

    #@25
    invoke-static {v2, v6, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 139
    array-length v8, v2

    #@29
    add-int/2addr v4, v8

    #@2a
    .line 137
    add-int/lit8 v5, v5, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 142
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_1
    return-object v1

    #@2e
    .line 145
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
    .line 149
    invoke-direct {p0, p1}, Ljava/util/jar/StrictJarFile;->getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@3
    move-result-object v1

    #@4
    .line 151
    .local v1, "is":Ljava/io/InputStream;
    iget-boolean v2, p0, Ljava/util/jar/StrictJarFile;->isSigned:Z

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 152
    iget-object v2, p0, Ljava/util/jar/StrictJarFile;->verifier:Ljava/util/jar/JarVerifier;

    #@a
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Ljava/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;

    #@11
    move-result-object v0

    #@12
    .line 153
    .local v0, "entry":Ljava/util/jar/JarVerifier$VerifierEntry;
    if-nez v0, :cond_0

    #@14
    .line 154
    return-object v1

    #@15
    .line 157
    :cond_0
    new-instance v2, Ljava/util/jar/JarFile$JarFileInputStream;

    #@17
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@1a
    move-result-wide v4

    #@1b
    invoke-direct {v2, v1, v4, v5, v0}, Ljava/util/jar/JarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;JLjava/util/jar/JarVerifier$VerifierEntry;)V

    #@1e
    return-object v2

    #@1f
    .line 160
    .end local v0    # "entry":Ljava/util/jar/JarVerifier$VerifierEntry;
    :cond_1
    return-object v1
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Ljava/util/jar/StrictJarFile;->manifest:Ljava/util/jar/Manifest;

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
    .line 90
    new-instance v0, Ljava/util/jar/StrictJarFile$EntryIterator;

    #@2
    iget-wide v2, p0, Ljava/util/jar/StrictJarFile;->nativeHandle:J

    #@4
    const-string/jumbo v1, ""

    #@7
    invoke-direct {v0, v2, v3, v1}, Ljava/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    #@a
    return-object v0
.end method

.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarFileEntry;,
        Ljava/util/jar/JarFile$JarEntryIterator;
    }
.end annotation


# static fields
.field private static final greylist-max-o CLASSPATH_CHARS:[C

.field private static final greylist-max-o CLASSPATH_LASTOCC:[I

.field private static final greylist-max-o CLASSPATH_OPTOSFT:[I

.field public static final whitelist test-api MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"


# instance fields
.field private volatile greylist-max-o hasCheckedSpecialAttributes:Z

.field private greylist-max-o hasClassPathAttribute:Z

.field private greylist-max-o jv:Ljava/util/jar/JarVerifier;

.field private greylist-max-o jvInitialized:Z

.field private greylist-max-o manEntry:Ljava/util/jar/JarEntry;

.field private greylist manifest:Ljava/util/jar/Manifest;

.field private greylist-max-o verify:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetjv(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;
    .registers 1

    iget-object p0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeInstantiateVerifier(Ljava/util/jar/JarFile;)V
    .registers 1

    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 568
    const/16 v0, 0xa

    new-array v1, v0, [C

    fill-array-data v1, :array_5c

    sput-object v1, Ljava/util/jar/JarFile;->CLASSPATH_CHARS:[C

    .line 575
    const/16 v1, 0x80

    new-array v1, v1, [I

    sput-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    .line 576
    new-array v1, v0, [I

    sput-object v1, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    .line 577
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x63

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 578
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x2

    const/16 v4, 0x6c

    aput v2, v1, v4

    .line 579
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x5

    const/16 v4, 0x73

    aput v2, v1, v4

    .line 580
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x6

    const/16 v4, 0x2d

    aput v2, v1, v4

    .line 581
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/4 v2, 0x7

    const/16 v4, 0x70

    aput v2, v1, v4

    .line 582
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x8

    const/16 v4, 0x61

    aput v2, v1, v4

    .line 583
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x74

    const/16 v4, 0x9

    aput v4, v1, v2

    .line 584
    sget-object v1, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    const/16 v2, 0x68

    aput v0, v1, v2

    .line 585
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4d
    if-ge v1, v4, :cond_56

    .line 586
    sget-object v2, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    aput v0, v2, v1

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 587
    .end local v1    # "i":I
    :cond_56
    sget-object v0, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    aput v3, v0, v4

    .line 588
    return-void

    nop

    :array_5c
    .array-data 2
        0x63s
        0x6cs
        0x61s
        0x73s
        0x73s
        0x2ds
        0x70s
        0x61s
        0x74s
        0x68s
    .end array-data
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 134
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Z)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 149
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;ZI)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZZI)V

    .line 171
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;ZZI)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "enableZipPathValidator"    # Z
    .param p3, "verify"    # Z
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p4, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;IZ)V

    .line 184
    iput-boolean p3, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 185
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 107
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 121
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZ)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enableZipPathValidator"    # Z
    .param p3, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZZI)V

    .line 177
    return-void
.end method

.method static synthetic blacklist access$001(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
    .registers 2
    .param p0, "x0"    # Ljava/util/jar/JarFile;

    .line 69
    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o checkForSpecialAttributes()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    iget-boolean v0, p0, Ljava/util/jar/JarFile;->hasCheckedSpecialAttributes:Z

    if-eqz v0, :cond_5

    return-void

    .line 674
    :cond_5
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 675
    .local v0, "manEntry":Ljava/util/jar/JarEntry;
    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 676
    invoke-direct {p0, v0}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v2

    .line 677
    .local v2, "b":[B
    sget-object v3, Ljava/util/jar/JarFile;->CLASSPATH_CHARS:[C

    sget-object v4, Ljava/util/jar/JarFile;->CLASSPATH_LASTOCC:[I

    sget-object v5, Ljava/util/jar/JarFile;->CLASSPATH_OPTOSFT:[I

    invoke-direct {p0, v3, v2, v4, v5}, Ljava/util/jar/JarFile;->match([C[B[I[I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 678
    iput-boolean v1, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    .line 681
    .end local v0    # "manEntry":Ljava/util/jar/JarEntry;
    .end local v2    # "b":[B
    :cond_1e
    iput-boolean v1, p0, Ljava/util/jar/JarFile;->hasCheckedSpecialAttributes:Z

    .line 682
    return-void
.end method

.method private greylist-max-o getBytes(Ljava/util/zip/ZipEntry;)[B
    .registers 5
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 524
    .local v0, "is":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B

    move-result-object v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    .line 525
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 524
    :cond_13
    return-object v1

    .line 523
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1f

    :try_start_17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    throw v1
.end method

.method private declared-synchronized greylist-max-o getManEntry()Ljava/util/jar/JarEntry;
    .registers 3

    monitor-enter p0

    .line 616
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_14

    .line 619
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getManifestName(Z)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 621
    invoke-super {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    iput-object v1, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    .line 625
    .end local v0    # "name":Ljava/lang/String;
    .end local p0    # "this":Ljava/util/jar/JarFile;
    :cond_14
    iget-object v0, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 615
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private declared-synchronized greylist-max-o getManifestFromReference()Ljava/util/jar/Manifest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    .line 208
    .local v0, "man":Ljava/util/jar/Manifest;
    if-nez v0, :cond_3a

    .line 210
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 213
    .local v1, "manEntry":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_3a

    .line 214
    iget-boolean v2, p0, Ljava/util/jar/JarFile;->verify:Z

    if-eqz v2, :cond_2e

    .line 215
    invoke-direct {p0, v1}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v2

    .line 216
    .local v2, "b":[B
    new-instance v3, Ljava/util/jar/Manifest;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 217
    .end local v0    # "man":Ljava/util/jar/Manifest;
    .local v3, "man":Ljava/util/jar/Manifest;
    iget-boolean v0, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    if-nez v0, :cond_2c

    .line 218
    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 220
    .end local v2    # "b":[B
    .end local p0    # "this":Ljava/util/jar/JarFile;
    :cond_2c
    move-object v0, v3

    goto :goto_38

    .line 221
    .end local v3    # "man":Ljava/util/jar/Manifest;
    .restart local v0    # "man":Ljava/util/jar/Manifest;
    :cond_2e
    new-instance v2, Ljava/util/jar/Manifest;

    invoke-super {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .end local v0    # "man":Ljava/util/jar/Manifest;
    .local v2, "man":Ljava/util/jar/Manifest;
    move-object v0, v2

    .line 225
    .end local v2    # "man":Ljava/util/jar/Manifest;
    .restart local v0    # "man":Ljava/util/jar/Manifest;
    :goto_38
    iput-object v0, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 228
    .end local v1    # "manEntry":Ljava/util/jar/JarEntry;
    :cond_3a
    monitor-exit p0

    return-object v0

    .line 206
    .end local v0    # "man":Ljava/util/jar/Manifest;
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method private native greylist-max-o getMetaInfEntryNames()[Ljava/lang/String;
.end method

.method private greylist-max-o initializeVerifier()V
    .registers 14

    .line 418
    const/4 v1, 0x0

    .line 459
    .local v1, "mev":Lsun/security/util/ManifestEntryVerifier;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifestAndSignatureRelatedFiles()Ljava/util/List;

    move-result-object v0

    .line 460
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 461
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    .line 463
    .local v6, "e":Ljava/util/jar/JarEntry;
    if-eqz v6, :cond_61

    .line 466
    if-nez v1, :cond_2a

    .line 472
    new-instance v7, Lsun/security/util/ManifestEntryVerifier;

    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v8

    invoke-direct {v7, v8}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_28} :catch_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_28} :catch_6a

    move-object v12, v7

    .end local v1    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .local v7, "mev":Lsun/security/util/ManifestEntryVerifier;
    goto :goto_2b

    .line 466
    .end local v7    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v1    # "mev":Lsun/security/util/ManifestEntryVerifier;
    :cond_2a
    move-object v12, v1

    .line 475
    .end local v1    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .local v12, "mev":Lsun/security/util/ManifestEntryVerifier;
    :goto_2b
    :try_start_2b
    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 476
    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    iget-object v1, v1, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    move-object v9, v1

    .local v1, "b":[B
    goto :goto_3e

    .line 478
    .end local v1    # "b":[B
    :cond_39
    invoke-direct {p0, v6}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    move-result-object v1

    move-object v9, v1

    .line 480
    .local v9, "b":[B
    :goto_3e
    if-eqz v9, :cond_5b

    array-length v1, v9

    if-lez v1, :cond_5b

    .line 481
    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1, v6, v12}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    .line 482
    iget-object v7, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    array-length v8, v9

    array-length v11, v9

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    move-object v1, v9

    .line 483
    .end local v9    # "b":[B
    .restart local v1    # "b":[B
    iget-object v7, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_5a} :catch_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_5a} :catch_5e

    goto :goto_5c

    .line 480
    .end local v1    # "b":[B
    .restart local v9    # "b":[B
    :cond_5b
    move-object v1, v9

    .line 485
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/jar/JarEntry;
    .end local v9    # "b":[B
    :goto_5c
    move-object v1, v12

    goto :goto_b

    .line 486
    .end local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_5e
    move-exception v0

    move-object v1, v12

    goto :goto_6b

    .line 464
    .end local v12    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "e":Ljava/util/jar/JarEntry;
    :cond_61
    :try_start_61
    new-instance v4, Ljava/util/jar/JarException;

    const-string v7, "corrupted jar file"

    invoke-direct {v4, v7}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    .end local v1    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local p0    # "this":Ljava/util/jar/JarFile;
    throw v4
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_69} :catch_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_61 .. :try_end_69} :catch_6a

    .line 495
    .end local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/jar/JarEntry;
    .restart local v1    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local p0    # "this":Ljava/util/jar/JarFile;
    :cond_69
    goto :goto_7d

    .line 486
    :catch_6a
    move-exception v0

    .line 489
    .local v0, "ex":Ljava/lang/Exception;
    :goto_6b
    iput-object v3, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 490
    iput-boolean v2, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 491
    sget-object v4, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_7d

    .line 492
    sget-object v4, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v5, "jarfile parsing error!"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_7d
    :goto_7d
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v0, :cond_a8

    .line 503
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v0}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    .line 504
    sget-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_91

    .line 505
    sget-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v4, "done with meta!"

    invoke-virtual {v0, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 508
    :cond_91
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v0}, Ljava/util/jar/JarVerifier;->nothingToVerify()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 509
    sget-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_a4

    .line 510
    sget-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string v4, "nothing to verify!"

    invoke-virtual {v0, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 512
    :cond_a4
    iput-object v3, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    .line 513
    iput-boolean v2, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 516
    :cond_a8
    return-void
.end method

.method private greylist-max-o match([C[B[I[I)Z
    .registers 12
    .param p1, "src"    # [C
    .param p2, "b"    # [B
    .param p3, "lastOcc"    # [I
    .param p4, "optoSft"    # [I

    .line 647
    array-length v0, p1

    .line 648
    .local v0, "len":I
    array-length v1, p2

    sub-int/2addr v1, v0

    .line 649
    .local v1, "last":I
    const/4 v2, 0x0

    .line 651
    .local v2, "i":I
    :goto_4
    if-gt v2, v1, :cond_33

    .line 652
    add-int/lit8 v3, v0, -0x1

    .local v3, "j":I
    :goto_8
    if-ltz v3, :cond_31

    .line 653
    add-int v4, v2, v3

    aget-byte v4, p2, v4

    int-to-char v4, v4

    .line 654
    .local v4, "c":C
    add-int/lit8 v5, v4, -0x41

    rsub-int/lit8 v6, v4, 0x5a

    or-int/2addr v5, v6

    if-ltz v5, :cond_1a

    add-int/lit8 v5, v4, 0x20

    int-to-char v5, v5

    goto :goto_1b

    :cond_1a
    move v5, v4

    .line 655
    .end local v4    # "c":C
    .local v5, "c":C
    :goto_1b
    aget-char v4, p1, v3

    if-eq v5, v4, :cond_2e

    .line 656
    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v6, v5, 0x7f

    aget v6, p3, v6

    sub-int/2addr v4, v6

    aget v6, p4, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 657
    goto :goto_4

    .line 652
    .end local v5    # "c":C
    :cond_2e
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 660
    .end local v3    # "j":I
    :cond_31
    const/4 v3, 0x1

    return v3

    .line 662
    :cond_33
    const/4 v3, 0x0

    return v3
.end method

.method private greylist-max-o maybeInstantiateVerifier()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v0, :cond_5

    .line 369
    return-void

    .line 372
    :cond_5
    iget-boolean v0, p0, Ljava/util/jar/JarFile;->verify:Z

    if-eqz v0, :cond_17

    .line 400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getManifestName(Z)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 402
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    .line 403
    return-void

    .line 407
    :cond_14
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/jar/JarFile;->verify:Z

    .line 410
    .end local v0    # "name":Ljava/lang/String;
    :cond_17
    return-void
.end method


# virtual methods
.method public whitelist test-api entries()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/jar/JarFile$JarEntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/jar/JarFile$JarEntryIterator;-><init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile-IA;)V

    return-object v0
.end method

.method public blacklist entryFor(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/util/jar/JarFile$JarFileEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist test-api getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 264
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 265
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_c

    .line 266
    new-instance v1, Ljava/util/jar/JarFile$JarFileEntry;

    invoke-direct {v1, p0, v0}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v1

    .line 268
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public declared-synchronized whitelist test-api getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 7
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 544
    :try_start_1
    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    .line 545
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-nez v0, :cond_e

    .line 546
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_43

    monitor-exit p0

    return-object v0

    .line 548
    .end local p0    # "this":Ljava/util/jar/JarFile;
    :cond_e
    :try_start_e
    iget-boolean v0, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    if-nez v0, :cond_22

    .line 549
    invoke-direct {p0}, Ljava/util/jar/JarFile;->initializeVerifier()V

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    .line 554
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    if-nez v0, :cond_22

    .line 555
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_43

    monitor-exit p0

    return-object v0

    .line 559
    :cond_22
    :try_start_22
    new-instance v0, Ljava/util/jar/JarVerifier$VerifierStream;

    .line 560
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v1

    .line 561
    instance-of v2, p1, Ljava/util/jar/JarFile$JarFileEntry;

    if-eqz v2, :cond_30

    .line 562
    move-object v2, p1

    check-cast v2, Ljava/util/jar/JarEntry;

    goto :goto_38

    :cond_30
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 563
    :goto_38
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/jar/JarVerifier$VerifierStream;-><init>(Ljava/util/jar/Manifest;Ljava/util/jar/JarEntry;Ljava/io/InputStream;Ljava/util/jar/JarVerifier;)V
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_43

    .line 559
    monitor-exit p0

    return-object v0

    .line 543
    .end local p1    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public whitelist test-api getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 247
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public whitelist test-api getManifest()Ljava/util/jar/Manifest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o hasClassPathAttribute()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    invoke-direct {p0}, Ljava/util/jar/JarFile;->checkForSpecialAttributes()V

    .line 638
    iget-boolean v0, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    return v0
.end method

.method greylist-max-o newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;
    .registers 3
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .line 746
    new-instance v0, Ljava/util/jar/JarFile$JarFileEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/jar/JarFile$JarEntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/jar/JarFile$JarEntryIterator;-><init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile-IA;)V

    .line 304
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->size()I

    move-result v1

    int-to-long v1, v1

    .line 303
    const/16 v3, 0x511

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

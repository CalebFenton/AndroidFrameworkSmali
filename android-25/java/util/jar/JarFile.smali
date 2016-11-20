.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarFileEntry;
    }
.end annotation


# static fields
.field public static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field static final META_DIR:Ljava/lang/String; = "META-INF/"

.field private static jarNames:[Ljava/lang/String;

.field private static javaHome:Ljava/lang/String;

.field private static lastOcc:[I

.field private static optoSft:[I

.field private static src:[C


# instance fields
.field private computedHasClassPathAttribute:Z

.field private hasClassPathAttribute:Z

.field private jv:Ljava/util/jar/JarVerifier;

.field private jvInitialized:Z

.field private manEntry:Ljava/util/jar/JarEntry;

.field private manRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/jar/Manifest;",
            ">;"
        }
    .end annotation
.end field

.field private verify:Z


# direct methods
.method static synthetic -get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/jar/JarFile;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/16 v5, 0x9

    #@3
    const/16 v4, 0xa

    #@5
    .line 444
    new-array v1, v4, [C

    #@7
    fill-array-data v1, :array_0

    #@a
    sput-object v1, Ljava/util/jar/JarFile;->src:[C

    #@c
    .line 446
    const/16 v1, 0x80

    #@e
    new-array v1, v1, [I

    #@10
    sput-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    #@12
    .line 447
    new-array v1, v4, [I

    #@14
    sput-object v1, Ljava/util/jar/JarFile;->optoSft:[I

    #@16
    .line 448
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    #@18
    const/16 v2, 0x63

    #@1a
    aput v6, v1, v2

    #@1c
    .line 449
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    #@1e
    const/4 v2, 0x2

    #@1f
    const/16 v3, 0x6c

    #@21
    aput v2, v1, v3

    #@23
    .line 450
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    #@25
    const/4 v2, 0x5

    #@26
    const/16 v3, 0x73

    #@28
    aput v2, v1, v3

    #@2a
    .line 451
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    #@2c
    const/4 v2, 0x6

    #@2d
    const/16 v3, 0x2d

    #@2f
    aput v2, v1, v3

    #@31
    .line 452
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    #@33
    const/4 v2, 0x7

    #@34
    const/16 v3, 0x70

    #@36
    aput v2, v1, v3

    #@38
    .line 453
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    #@3a
    const/16 v2, 0x8

    #@3c
    const/16 v3, 0x61

    #@3e
    aput v2, v1, v3

    #@40
    .line 454
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    #@42
    const/16 v2, 0x74

    #@44
    aput v5, v1, v2

    #@46
    .line 455
    sget-object v1, Ljava/util/jar/JarFile;->lastOcc:[I

    #@48
    const/16 v2, 0x68

    #@4a
    aput v4, v1, v2

    #@4c
    .line 456
    const/4 v0, 0x0

    #@4d
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    #@4f
    .line 457
    sget-object v1, Ljava/util/jar/JarFile;->optoSft:[I

    #@51
    aput v4, v1, v0

    #@53
    .line 456
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_0

    #@56
    .line 458
    :cond_0
    sget-object v1, Ljava/util/jar/JarFile;->optoSft:[I

    #@58
    aput v6, v1, v5

    #@5a
    .line 64
    return-void

    #@5b
    .line 444
    nop

    #@5c
    :array_0
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
    const/4 v0, 0x1

    #@1
    .line 125
    invoke-direct {p0, p1, v0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    #@4
    .line 124
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
    .line 140
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    #@4
    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZI)V
    .locals 0
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
    .line 161
    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    #@3
    .line 162
    iput-boolean p2, p0, Ljava/util/jar/JarFile;->verify:Z

    #@5
    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 98
    new-instance v0, Ljava/io/File;

    #@3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    invoke-direct {p0, v0, v1, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    #@9
    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {p0, v0, p2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    #@9
    .line 111
    return-void
.end method

.method private declared-synchronized ensureInitialization()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 564
    :try_start_0
    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    .line 568
    :try_start_1
    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    if-eqz v1, :cond_1

    #@c
    :cond_0
    :goto_0
    monitor-exit p0

    #@d
    .line 562
    return-void

    #@e
    .line 565
    :catch_0
    move-exception v0

    #@f
    .line 566
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@14
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@15
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p0

    #@17
    throw v1

    #@18
    .line 569
    :cond_1
    :try_start_3
    invoke-direct {p0}, Ljava/util/jar/JarFile;->initializeVerifier()V

    #@1b
    .line 570
    const/4 v1, 0x1

    #@1c
    iput-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1e
    goto :goto_0
.end method

.method private getBytes(Ljava/util/zip/ZipEntry;)[B
    .locals 7
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 394
    const/4 v0, 0x0

    #@2
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    .line 395
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@9
    move-result-wide v4

    #@a
    long-to-int v1, v4

    #@b
    const/4 v3, 0x1

    #@c
    invoke-static {v0, v1, v3}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    move-result-object v1

    #@10
    .line 396
    if-eqz v0, :cond_0

    #@12
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@15
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    #@17
    throw v2

    #@18
    :catch_0
    move-exception v2

    #@19
    goto :goto_0

    #@1a
    .line 395
    :cond_1
    return-object v1

    #@1b
    .line 396
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    #@1c
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    :catchall_0
    move-exception v2

    #@1e
    move-object v6, v2

    #@1f
    move-object v2, v1

    #@20
    move-object v1, v6

    #@21
    :goto_1
    if-eqz v0, :cond_2

    #@23
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    #@26
    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    #@28
    throw v2

    #@29
    :catch_2
    move-exception v3

    #@2a
    if-nez v2, :cond_3

    #@2c
    move-object v2, v3

    #@2d
    goto :goto_2

    #@2e
    :cond_3
    if-eq v2, v3, :cond_2

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@33
    goto :goto_2

    #@34
    :cond_4
    throw v1

    #@35
    :catchall_1
    move-exception v1

    #@36
    goto :goto_1
.end method

.method private declared-synchronized getManEntry()Ljava/util/jar/JarEntry;
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 462
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 464
    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    #@8
    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@b
    move-result-object v2

    #@c
    iput-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    #@e
    .line 465
    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    #@10
    if-nez v2, :cond_0

    #@12
    .line 468
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 469
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@18
    .line 470
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@1a
    if-ge v0, v2, :cond_0

    #@1c
    .line 471
    const-string/jumbo v2, "META-INF/MANIFEST.MF"

    #@1f
    .line 472
    aget-object v3, v1, v0

    #@21
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 471
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 473
    aget-object v2, v1, v0

    #@2f
    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;

    #@35
    .line 480
    .end local v0    # "i":I
    .end local v1    # "names":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarFile;->manEntry:Ljava/util/jar/JarEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit p0

    #@38
    return-object v2

    #@39
    .line 470
    .restart local v0    # "i":I
    .restart local v1    # "names":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .end local v0    # "i":I
    .end local v1    # "names":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit p0

    #@3e
    throw v2
.end method

.method private declared-synchronized getManifestFromReference()Ljava/util/jar/Manifest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 178
    :try_start_0
    iget-object v3, p0, Ljava/util/jar/JarFile;->manRef:Ljava/lang/ref/SoftReference;

    #@3
    if-eqz v3, :cond_2

    #@5
    iget-object v3, p0, Ljava/util/jar/JarFile;->manRef:Ljava/lang/ref/SoftReference;

    #@7
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/util/jar/Manifest;

    #@d
    .line 180
    :goto_0
    if-nez v1, :cond_1

    #@f
    .line 182
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    #@12
    move-result-object v2

    #@13
    .line 185
    .local v2, "manEntry":Ljava/util/jar/JarEntry;
    if-eqz v2, :cond_1

    #@15
    .line 186
    iget-boolean v3, p0, Ljava/util/jar/JarFile;->verify:Z

    #@17
    if-eqz v3, :cond_3

    #@19
    .line 187
    invoke-direct {p0, v2}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    #@1c
    move-result-object v0

    #@1d
    .line 188
    .local v0, "b":[B
    new-instance v1, Ljava/util/jar/Manifest;

    #@1f
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@21
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@24
    invoke-direct {v1, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    #@27
    .line 189
    .local v1, "man":Ljava/util/jar/Manifest;
    iget-boolean v3, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    #@29
    if-nez v3, :cond_0

    #@2b
    .line 190
    new-instance v3, Ljava/util/jar/JarVerifier;

    #@2d
    invoke-direct {v3, v0}, Ljava/util/jar/JarVerifier;-><init>([B)V

    #@30
    iput-object v3, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@32
    .line 195
    .end local v0    # "b":[B
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/ref/SoftReference;

    #@34
    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@37
    iput-object v3, p0, Ljava/util/jar/JarFile;->manRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .end local v1    # "man":Ljava/util/jar/Manifest;
    .end local v2    # "manEntry":Ljava/util/jar/JarEntry;
    :cond_1
    monitor-exit p0

    #@3a
    .line 198
    return-object v1

    #@3b
    .line 178
    :cond_2
    const/4 v1, 0x0

    #@3c
    .local v1, "man":Ljava/util/jar/Manifest;
    goto :goto_0

    #@3d
    .line 193
    .end local v1    # "man":Ljava/util/jar/Manifest;
    .restart local v2    # "manEntry":Ljava/util/jar/JarEntry;
    :cond_3
    :try_start_1
    new-instance v1, Ljava/util/jar/Manifest;

    #@3f
    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@42
    move-result-object v3

    #@43
    invoke-direct {v1, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .local v1, "man":Ljava/util/jar/Manifest;
    goto :goto_1

    #@47
    .end local v1    # "man":Ljava/util/jar/Manifest;
    .end local v2    # "manEntry":Ljava/util/jar/JarEntry;
    :catchall_0
    move-exception v3

    #@48
    monitor-exit p0

    #@49
    throw v3
.end method

.method private native getMetaInfEntryNames()[Ljava/lang/String;
.end method

.method private initializeVerifier()V
    .locals 18

    #@0
    .prologue
    .line 333
    const/4 v6, 0x0

    #@1
    .line 337
    .local v6, "mev":Lsun/security/util/ManifestEntryVerifier;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@4
    move-result-object v17

    #@5
    .line 338
    .local v17, "names":[Ljava/lang/String;
    if-eqz v17, :cond_0

    #@7
    .line 339
    const/4 v15, 0x0

    #@8
    .local v15, "i":I
    move-object/from16 v16, v6

    #@a
    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .local v16, "mev":Lsun/security/util/ManifestEntryVerifier;
    :goto_0
    :try_start_1
    move-object/from16 v0, v17

    #@c
    array-length v1, v0

    #@d
    if-ge v15, v1, :cond_8

    #@f
    .line 340
    aget-object v1, v17, v15

    #@11
    move-object/from16 v0, p0

    #@13
    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@16
    move-result-object v13

    #@17
    .line 341
    .local v13, "e":Ljava/util/jar/JarEntry;
    if-nez v13, :cond_4

    #@19
    .line 342
    new-instance v1, Ljava/util/jar/JarException;

    #@1b
    const-string/jumbo v2, "corrupted jar file"

    #@1e
    invoke-direct {v1, v2}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@22
    .line 358
    .end local v13    # "e":Ljava/util/jar/JarEntry;
    :catch_0
    move-exception v14

    #@23
    .local v14, "ex":Ljava/io/IOException;
    move-object/from16 v6, v16

    #@25
    .line 361
    .end local v15    # "i":I
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local v17    # "names":[Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    #@26
    move-object/from16 v0, p0

    #@28
    iput-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@2a
    .line 362
    const/4 v1, 0x0

    #@2b
    move-object/from16 v0, p0

    #@2d
    iput-boolean v1, v0, Ljava/util/jar/JarFile;->verify:Z

    #@2f
    .line 363
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@31
    if-eqz v1, :cond_0

    #@33
    .line 364
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@35
    const-string/jumbo v2, "jarfile parsing error!"

    #@38
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3b
    .line 365
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    #@3e
    .line 372
    .end local v14    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    #@40
    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@42
    if-eqz v1, :cond_3

    #@44
    .line 374
    move-object/from16 v0, p0

    #@46
    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@48
    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    #@4b
    .line 375
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@4d
    if-eqz v1, :cond_1

    #@4f
    .line 376
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@51
    const-string/jumbo v2, "done with meta!"

    #@54
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@57
    .line 379
    :cond_1
    move-object/from16 v0, p0

    #@59
    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@5b
    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->nothingToVerify()Z

    #@5e
    move-result v1

    #@5f
    if-eqz v1, :cond_3

    #@61
    .line 380
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@63
    if-eqz v1, :cond_2

    #@65
    .line 381
    sget-object v1, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    #@67
    const-string/jumbo v2, "nothing to verify!"

    #@6a
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@6d
    .line 383
    :cond_2
    const/4 v1, 0x0

    #@6e
    move-object/from16 v0, p0

    #@70
    iput-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@72
    .line 384
    const/4 v1, 0x0

    #@73
    move-object/from16 v0, p0

    #@75
    iput-boolean v1, v0, Ljava/util/jar/JarFile;->verify:Z

    #@77
    .line 332
    :cond_3
    return-void

    #@78
    .line 344
    .restart local v13    # "e":Ljava/util/jar/JarEntry;
    .restart local v15    # "i":I
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v17    # "names":[Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->isDirectory()Z

    #@7b
    move-result v1

    #@7c
    if-nez v1, :cond_7

    #@7e
    .line 345
    if-nez v16, :cond_6

    #@80
    .line 346
    new-instance v6, Lsun/security/util/ManifestEntryVerifier;

    #@82
    .line 347
    invoke-direct/range {p0 .. p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    #@85
    move-result-object v1

    #@86
    .line 346
    invoke-direct {v6, v1}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@89
    .line 349
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .local v6, "mev":Lsun/security/util/ManifestEntryVerifier;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    #@8b
    invoke-direct {v0, v13}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    #@8e
    move-result-object v3

    #@8f
    .line 350
    .local v3, "b":[B
    if-eqz v3, :cond_5

    #@91
    array-length v1, v3

    #@92
    if-lez v1, :cond_5

    #@94
    .line 351
    move-object/from16 v0, p0

    #@96
    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@98
    invoke-virtual {v1, v13, v6}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    #@9b
    .line 352
    move-object/from16 v0, p0

    #@9d
    iget-object v1, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@9f
    array-length v2, v3

    #@a0
    array-length v5, v3

    #@a1
    const/4 v4, 0x0

    #@a2
    invoke-virtual/range {v1 .. v6}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    #@a5
    .line 353
    move-object/from16 v0, p0

    #@a7
    iget-object v7, v0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@a9
    const/4 v8, -0x1

    #@aa
    const/4 v9, 0x0

    #@ab
    const/4 v10, 0x0

    #@ac
    const/4 v11, 0x0

    #@ad
    move-object v12, v6

    #@ae
    invoke-virtual/range {v7 .. v12}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@b1
    .line 339
    .end local v3    # "b":[B
    :cond_5
    :goto_4
    add-int/lit8 v15, v15, 0x1

    #@b3
    move-object/from16 v16, v6

    #@b5
    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto/16 :goto_0

    #@b7
    .line 358
    .end local v13    # "e":Ljava/util/jar/JarEntry;
    .end local v15    # "i":I
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local v17    # "names":[Ljava/lang/String;
    :catch_1
    move-exception v14

    #@b8
    .restart local v14    # "ex":Ljava/io/IOException;
    goto/16 :goto_1

    #@ba
    .end local v14    # "ex":Ljava/io/IOException;
    .restart local v13    # "e":Ljava/util/jar/JarEntry;
    .restart local v15    # "i":I
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v17    # "names":[Ljava/lang/String;
    :cond_6
    move-object/from16 v6, v16

    #@bc
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto :goto_3

    #@bd
    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    :cond_7
    move-object/from16 v6, v16

    #@bf
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto :goto_4

    #@c0
    .end local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .end local v13    # "e":Ljava/util/jar/JarEntry;
    .restart local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    :cond_8
    move-object/from16 v6, v16

    #@c2
    .end local v16    # "mev":Lsun/security/util/ManifestEntryVerifier;
    .restart local v6    # "mev":Lsun/security/util/ManifestEntryVerifier;
    goto/16 :goto_2
.end method

.method private isKnownToNotHaveClassPathAttribute()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 528
    sget-object v6, Ljava/util/jar/JarFile;->javaHome:Ljava/lang/String;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 530
    new-instance v6, Lsun/security/action/GetPropertyAction;

    #@7
    const-string/jumbo v7, "java.home"

    #@a
    invoke-direct {v6, v7}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@d
    .line 529
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    check-cast v6, Ljava/lang/String;

    #@13
    sput-object v6, Ljava/util/jar/JarFile;->javaHome:Ljava/lang/String;

    #@15
    .line 532
    :cond_0
    sget-object v6, Ljava/util/jar/JarFile;->jarNames:[Ljava/lang/String;

    #@17
    if-nez v6, :cond_1

    #@19
    .line 533
    const/16 v6, 0xa

    #@1b
    new-array v5, v6, [Ljava/lang/String;

    #@1d
    .line 534
    .local v5, "names":[Ljava/lang/String;
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    #@1f
    .line 536
    .local v0, "fileSep":Ljava/lang/String;
    const/4 v1, 0x1

    #@20
    .local v1, "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    const-string/jumbo v7, "rt.jar"

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    aput-object v6, v5, v8

    #@36
    .line 537
    add-int/lit8 v2, v1, 0x1

    #@38
    .end local v1    # "i":I
    .local v2, "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    const-string/jumbo v7, "sunrsasign.jar"

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    aput-object v6, v5, v1

    #@4e
    .line 538
    add-int/lit8 v1, v2, 0x1

    #@50
    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    const-string/jumbo v7, "jsse.jar"

    #@5c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    aput-object v6, v5, v2

    #@66
    .line 539
    add-int/lit8 v2, v1, 0x1

    #@68
    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    const-string/jumbo v7, "jce.jar"

    #@74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v6

    #@7c
    aput-object v6, v5, v1

    #@7e
    .line 540
    add-int/lit8 v1, v2, 0x1

    #@80
    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    const-string/jumbo v7, "charsets.jar"

    #@8c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v6

    #@94
    aput-object v6, v5, v2

    #@96
    .line 541
    add-int/lit8 v2, v1, 0x1

    #@98
    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v6

    #@a1
    const-string/jumbo v7, "dnsns.jar"

    #@a4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v6

    #@a8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v6

    #@ac
    aput-object v6, v5, v1

    #@ae
    .line 542
    add-int/lit8 v1, v2, 0x1

    #@b0
    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v6

    #@b9
    const-string/jumbo v7, "ldapsec.jar"

    #@bc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v6

    #@c0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v6

    #@c4
    aput-object v6, v5, v2

    #@c6
    .line 543
    add-int/lit8 v2, v1, 0x1

    #@c8
    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v6

    #@d1
    const-string/jumbo v7, "localedata.jar"

    #@d4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v6

    #@d8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v6

    #@dc
    aput-object v6, v5, v1

    #@de
    .line 544
    add-int/lit8 v1, v2, 0x1

    #@e0
    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v6

    #@e9
    const-string/jumbo v7, "sunjce_provider.jar"

    #@ec
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v6

    #@f0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v6

    #@f4
    aput-object v6, v5, v2

    #@f6
    .line 545
    add-int/lit8 v2, v1, 0x1

    #@f8
    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v6

    #@101
    const-string/jumbo v7, "sunpkcs11.jar"

    #@104
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v6

    #@108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v6

    #@10c
    aput-object v6, v5, v1

    #@10e
    .line 546
    sput-object v5, Ljava/util/jar/JarFile;->jarNames:[Ljava/lang/String;

    #@110
    .line 549
    .end local v0    # "fileSep":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "names":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    #@113
    move-result-object v4

    #@114
    .line 550
    .local v4, "name":Ljava/lang/String;
    sget-object v3, Ljava/util/jar/JarFile;->javaHome:Ljava/lang/String;

    #@116
    .line 551
    .local v3, "localJavaHome":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@119
    move-result v6

    #@11a
    if-eqz v6, :cond_3

    #@11c
    .line 552
    sget-object v5, Ljava/util/jar/JarFile;->jarNames:[Ljava/lang/String;

    #@11e
    .line 553
    .restart local v5    # "names":[Ljava/lang/String;
    const/4 v1, 0x0

    #@11f
    .restart local v1    # "i":I
    :goto_0
    array-length v6, v5

    #@120
    if-ge v1, v6, :cond_3

    #@122
    .line 554
    aget-object v6, v5, v1

    #@124
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@127
    move-result v6

    #@128
    if-eqz v6, :cond_2

    #@12a
    .line 555
    const/4 v6, 0x1

    #@12b
    return v6

    #@12c
    .line 553
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@12e
    goto :goto_0

    #@12f
    .line 559
    .end local v1    # "i":I
    .end local v5    # "names":[Ljava/lang/String;
    :cond_3
    return v8
.end method

.method private maybeInstantiateVerifier()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    iget-object v3, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 301
    return-void

    #@5
    .line 304
    :cond_0
    iget-boolean v3, p0, Ljava/util/jar/JarFile;->verify:Z

    #@7
    if-eqz v3, :cond_4

    #@9
    .line 305
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaInfEntryNames()[Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 306
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_3

    #@f
    .line 307
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@11
    if-ge v0, v3, :cond_3

    #@13
    .line 308
    aget-object v3, v2, v0

    #@15
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 309
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, ".DSA"

    #@1e
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_1

    #@24
    .line 310
    const-string/jumbo v3, ".RSA"

    #@27
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2a
    move-result v3

    #@2b
    .line 309
    if-nez v3, :cond_1

    #@2d
    .line 311
    const-string/jumbo v3, ".EC"

    #@30
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@33
    move-result v3

    #@34
    .line 309
    if-nez v3, :cond_1

    #@36
    .line 312
    const-string/jumbo v3, ".SF"

    #@39
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@3c
    move-result v3

    #@3d
    .line 309
    if-eqz v3, :cond_2

    #@3f
    .line 316
    :cond_1
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@42
    .line 317
    return-void

    #@43
    .line 307
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_0

    #@46
    .line 323
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    #@47
    iput-boolean v3, p0, Ljava/util/jar/JarFile;->verify:Z

    #@49
    .line 299
    .end local v2    # "names":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private unsignedEntryNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 579
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    .line 580
    .local v0, "entries":Ljava/util/Enumeration;
    new-instance v1, Ljava/util/jar/JarFile$2;

    #@6
    invoke-direct {v1, p0, v0}, Ljava/util/jar/JarFile$2;-><init>(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)V

    #@9
    return-object v1
.end method


# virtual methods
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
    .line 245
    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    .line 246
    .local v0, "enum_":Ljava/util/Enumeration;
    new-instance v1, Ljava/util/jar/JarFile$1;

    #@6
    invoke-direct {v1, p0, v0}, Ljava/util/jar/JarFile$1;-><init>(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)V

    #@9
    return-object v1
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 234
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@4
    move-result-object v0

    #@5
    .line 235
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    #@7
    .line 236
    new-instance v1, Ljava/util/jar/JarFile$JarFileEntry;

    #@9
    invoke-direct {v1, p0, v0}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    #@c
    return-object v1

    #@d
    .line 238
    :cond_0
    return-object v1
.end method

.method public declared-synchronized getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 6
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 415
    :try_start_0
    invoke-direct {p0}, Ljava/util/jar/JarFile;->maybeInstantiateVerifier()V

    #@4
    .line 416
    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 417
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v1

    #@c
    monitor-exit p0

    #@d
    return-object v1

    #@e
    .line 419
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    #@10
    if-nez v1, :cond_1

    #@12
    .line 420
    invoke-direct {p0}, Ljava/util/jar/JarFile;->initializeVerifier()V

    #@15
    .line 421
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Ljava/util/jar/JarFile;->jvInitialized:Z

    #@18
    .line 425
    iget-object v1, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@1a
    if-nez v1, :cond_1

    #@1c
    .line 426
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result-object v1

    #@20
    monitor-exit p0

    #@21
    return-object v1

    #@22
    .line 430
    :cond_1
    :try_start_2
    new-instance v2, Ljava/util/jar/JarVerifier$VerifierStream;

    #@24
    .line 431
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    #@27
    move-result-object v3

    #@28
    .line 432
    instance-of v1, p1, Ljava/util/jar/JarFile$JarFileEntry;

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 433
    move-object v0, p1

    #@2d
    check-cast v0, Ljava/util/jar/JarEntry;

    #@2f
    move-object v1, v0

    #@30
    .line 434
    :goto_0
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@33
    move-result-object v4

    #@34
    .line 435
    iget-object v5, p0, Ljava/util/jar/JarFile;->jv:Ljava/util/jar/JarVerifier;

    #@36
    .line 430
    invoke-direct {v2, v3, v1, v4, v5}, Ljava/util/jar/JarVerifier$VerifierStream;-><init>(Ljava/util/jar/Manifest;Ljava/util/jar/JarEntry;Ljava/io/InputStream;Ljava/util/jar/JarVerifier;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    monitor-exit p0

    #@3a
    return-object v2

    #@3b
    .line 433
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    move-result-object v1

    #@43
    goto :goto_0

    #@44
    :catchall_0
    move-exception v1

    #@45
    monitor-exit p0

    #@46
    throw v1
.end method

.method public getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/jar/JarEntry;

    #@6
    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManifestFromReference()Ljava/util/jar/Manifest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public hasClassPathAttribute()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 491
    iget-boolean v6, p0, Ljava/util/jar/JarFile;->computedHasClassPathAttribute:Z

    #@4
    if-eqz v6, :cond_0

    #@6
    .line 492
    iget-boolean v6, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    #@8
    return v6

    #@9
    .line 495
    :cond_0
    iput-boolean v7, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    #@b
    .line 496
    invoke-direct {p0}, Ljava/util/jar/JarFile;->isKnownToNotHaveClassPathAttribute()Z

    #@e
    move-result v6

    #@f
    if-nez v6, :cond_4

    #@11
    .line 497
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getManEntry()Ljava/util/jar/JarEntry;

    #@14
    move-result-object v5

    #@15
    .line 498
    .local v5, "manEntry":Ljava/util/jar/JarEntry;
    if-eqz v5, :cond_4

    #@17
    .line 499
    invoke-direct {p0, v5}, Ljava/util/jar/JarFile;->getBytes(Ljava/util/zip/ZipEntry;)[B

    #@1a
    move-result-object v0

    #@1b
    .line 500
    .local v0, "b":[B
    array-length v6, v0

    #@1c
    sget-object v7, Ljava/util/jar/JarFile;->src:[C

    #@1e
    array-length v7, v7

    #@1f
    sub-int v4, v6, v7

    #@21
    .line 501
    .local v4, "last":I
    const/4 v2, 0x0

    #@22
    .line 503
    .local v2, "i":I
    :goto_0
    if-gt v2, v4, :cond_4

    #@24
    .line 504
    const/16 v3, 0x9

    #@26
    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_3

    #@28
    .line 505
    add-int v6, v2, v3

    #@2a
    aget-byte v6, v0, v6

    #@2c
    int-to-char v1, v6

    #@2d
    .line 506
    .local v1, "c":C
    add-int/lit8 v6, v1, -0x41

    #@2f
    rsub-int/lit8 v7, v1, 0x5a

    #@31
    or-int/2addr v6, v7

    #@32
    if-ltz v6, :cond_1

    #@34
    add-int/lit8 v6, v1, 0x20

    #@36
    int-to-char v1, v6

    #@37
    .line 507
    :cond_1
    sget-object v6, Ljava/util/jar/JarFile;->src:[C

    #@39
    aget-char v6, v6, v3

    #@3b
    if-eq v1, v6, :cond_2

    #@3d
    .line 508
    add-int/lit8 v6, v3, 0x1

    #@3f
    sget-object v7, Ljava/util/jar/JarFile;->lastOcc:[I

    #@41
    and-int/lit8 v8, v1, 0x7f

    #@43
    aget v7, v7, v8

    #@45
    sub-int/2addr v6, v7

    #@46
    sget-object v7, Ljava/util/jar/JarFile;->optoSft:[I

    #@48
    aget v7, v7, v3

    #@4a
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@4d
    move-result v6

    #@4e
    add-int/2addr v2, v6

    #@4f
    .line 509
    goto :goto_0

    #@50
    .line 504
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@52
    goto :goto_1

    #@53
    .line 512
    .end local v1    # "c":C
    :cond_3
    iput-boolean v9, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    #@55
    .line 517
    .end local v0    # "b":[B
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "last":I
    .end local v5    # "manEntry":Ljava/util/jar/JarEntry;
    :cond_4
    iput-boolean v9, p0, Ljava/util/jar/JarFile;->computedHasClassPathAttribute:Z

    #@57
    .line 518
    iget-boolean v6, p0, Ljava/util/jar/JarFile;->hasClassPathAttribute:Z

    #@59
    return v6
.end method

.method newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;
    .locals 1
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    .line 575
    new-instance v0, Ljava/util/jar/JarFile$JarFileEntry;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    #@5
    return-object v0
.end method

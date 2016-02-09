.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final EMPTY:[Ljava/io/File;

.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "[\\w%+,./=_-]+"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    #@9
    .line 73
    const/4 v0, 0x0

    #@a
    new-array v0, v0, [Ljava/io/File;

    #@c
    sput-object v0, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    #@e
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;

    #@0
    .prologue
    .line 634
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 635
    new-instance v0, Ljava/io/File;

    #@8
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b
    return-object v0

    #@c
    .line 637
    :cond_0
    new-instance v0, Ljava/io/File;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "."

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@29
    return-object v0
.end method

.method public static buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 585
    const-string/jumbo v8, "vnd.android.document/directory"

    #@4
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v8

    #@8
    if-eqz v8, :cond_1

    #@a
    .line 586
    move-object v7, p2

    #@b
    .line 587
    .local v7, "name":Ljava/lang/String;
    const/4 v0, 0x0

    #@c
    .line 619
    :cond_0
    :goto_0
    invoke-static {p0, v7, v0}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@f
    move-result-object v2

    #@10
    .line 622
    .local v2, "file":Ljava/io/File;
    const/4 v5, 0x0

    #@11
    .line 623
    .local v5, "n":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@14
    move-result v8

    #@15
    if-eqz v8, :cond_5

    #@17
    .line 624
    add-int/lit8 v6, v5, 0x1

    #@19
    .end local v5    # "n":I
    .local v6, "n":I
    const/16 v8, 0x20

    #@1b
    if-lt v5, v8, :cond_4

    #@1d
    .line 625
    new-instance v8, Ljava/io/FileNotFoundException;

    #@1f
    const-string/jumbo v9, "Failed to create unique file"

    #@22
    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@25
    throw v8

    #@26
    .line 592
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "n":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    const/16 v8, 0x2e

    #@28
    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    #@2b
    move-result v3

    #@2c
    .line 593
    .local v3, "lastDot":I
    if-ltz v3, :cond_3

    #@2e
    .line 594
    invoke-virtual {p2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    .line 595
    .restart local v7    # "name":Ljava/lang/String;
    add-int/lit8 v8, v3, 0x1

    #@34
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .line 596
    .local v0, "ext":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@3b
    move-result-object v8

    #@3c
    .line 597
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3f
    move-result-object v9

    #@40
    .line 596
    invoke-virtual {v8, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 604
    .end local v0    # "ext":Ljava/lang/String;
    :goto_2
    if-nez v4, :cond_2

    #@46
    .line 605
    const-string/jumbo v4, "application/octet-stream"

    #@49
    .line 608
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@4c
    move-result-object v8

    #@4d
    invoke-virtual {v8, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    .line 610
    .local v1, "extFromMimeType":Ljava/lang/String;
    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@54
    move-result v8

    #@55
    if-nez v8, :cond_0

    #@57
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5a
    move-result v8

    #@5b
    if-nez v8, :cond_0

    #@5d
    .line 614
    move-object v7, p2

    #@5e
    .line 615
    move-object v0, v1

    #@5f
    .restart local v0    # "ext":Ljava/lang/String;
    goto :goto_0

    #@60
    .line 599
    .end local v0    # "ext":Ljava/lang/String;
    .end local v1    # "extFromMimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    move-object v7, p2

    #@61
    .line 600
    .restart local v7    # "name":Ljava/lang/String;
    const/4 v0, 0x0

    #@62
    .line 601
    .local v0, "ext":Ljava/lang/String;
    const/4 v4, 0x0

    #@63
    .local v4, "mimeTypeFromExt":Ljava/lang/String;
    goto :goto_2

    #@64
    .line 627
    .end local v0    # "ext":Ljava/lang/String;
    .end local v3    # "lastDot":I
    .end local v4    # "mimeTypeFromExt":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "n":I
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v8

    #@6d
    const-string/jumbo v9, " ("

    #@70
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v8

    #@74
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    const-string/jumbo v9, ")"

    #@7b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v8

    #@83
    invoke-static {p0, v8, v0}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@86
    move-result-object v2

    #@87
    move v5, v6

    #@88
    .end local v6    # "n":I
    .restart local v5    # "n":I
    goto :goto_1

    #@89
    .line 630
    :cond_5
    return-object v2
.end method

.method public static buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 453
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    const-string/jumbo v3, "."

    #@9
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    const-string/jumbo v3, ".."

    #@12
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 454
    :cond_0
    const-string/jumbo v3, "(invalid)"

    #@1b
    return-object v3

    #@1c
    .line 456
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@21
    move-result v3

    #@22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@25
    .line 457
    .local v2, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@29
    move-result v3

    #@2a
    if-ge v1, v3, :cond_3

    #@2c
    .line 458
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v0

    #@30
    .line 459
    .local v0, "c":C
    invoke-static {v0}, Landroid/os/FileUtils;->isValidExtFilenameChar(C)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 460
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    .line 457
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 462
    :cond_2
    const/16 v3, 0x5f

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    goto :goto_1

    #@42
    .line 465
    .end local v0    # "c":C
    :cond_3
    const/16 v3, 0xff

    #@44
    invoke-static {v2, v3}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    #@47
    .line 466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    return-object v3
.end method

.method public static buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 502
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    const-string/jumbo v3, "."

    #@9
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    const-string/jumbo v3, ".."

    #@12
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 503
    :cond_0
    const-string/jumbo v3, "(invalid)"

    #@1b
    return-object v3

    #@1c
    .line 505
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@21
    move-result v3

    #@22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@25
    .line 506
    .local v2, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@29
    move-result v3

    #@2a
    if-ge v1, v3, :cond_3

    #@2c
    .line 507
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v0

    #@30
    .line 508
    .local v0, "c":C
    invoke-static {v0}, Landroid/os/FileUtils;->isValidFatFilenameChar(C)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 509
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    .line 506
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 511
    :cond_2
    const/16 v3, 0x5f

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    goto :goto_1

    #@42
    .line 516
    .end local v0    # "c":C
    :cond_3
    const/16 v3, 0xff

    #@44
    invoke-static {v2, v3}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    #@47
    .line 517
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    return-object v3
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    new-instance v1, Ljava/util/zip/CRC32;

    #@2
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    #@5
    .line 313
    .local v1, "checkSummer":Ljava/util/zip/CRC32;
    const/4 v2, 0x0

    #@6
    .line 316
    .local v2, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    #@8
    new-instance v5, Ljava/io/FileInputStream;

    #@a
    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@d
    invoke-direct {v3, v5, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 317
    .local v3, "cis":Ljava/util/zip/CheckedInputStream;
    const/16 v5, 0x80

    #@12
    :try_start_1
    new-array v0, v5, [B

    #@14
    .line 318
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .local v0, "buf":[B
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    #@17
    move-result v5

    #@18
    if-gez v5, :cond_0

    #@1a
    .line 321
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1d
    move-result-wide v6

    #@1e
    .line 323
    if-eqz v3, :cond_1

    #@20
    .line 325
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@23
    .line 321
    :cond_1
    :goto_0
    return-wide v6

    #@24
    .line 326
    :catch_0
    move-exception v4

    #@25
    .local v4, "e":Ljava/io/IOException;
    goto :goto_0

    #@26
    .line 322
    .end local v0    # "buf":[B
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    :catchall_0
    move-exception v5

    #@27
    .line 323
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    :goto_1
    if-eqz v2, :cond_2

    #@29
    .line 325
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@2c
    .line 322
    :cond_2
    :goto_2
    throw v5

    #@2d
    .line 326
    :catch_1
    move-exception v4

    #@2e
    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    #@2f
    .line 322
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    :catchall_1
    move-exception v5

    #@30
    move-object v2, v3

    #@31
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .local v2, "cis":Ljava/util/zip/CheckedInputStream;
    goto :goto_1
.end method

.method public static contains(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 399
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    :cond_0
    const/4 v2, 0x0

    #@5
    return v2

    #@6
    .line 401
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 402
    .local v0, "dirPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 404
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 405
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 408
    :cond_2
    const-string/jumbo v2, "/"

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_3

    #@1f
    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, "/"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 411
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@36
    move-result v2

    #@37
    return v2
.end method

.method public static contains([Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .param p0, "dirs"    # [Ljava/io/File;
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 382
    array-length v3, p0

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget-object v0, p0, v1

    #@7
    .line 383
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 384
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 382
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 387
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    return v2
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    #@0
    .prologue
    .line 172
    const/4 v2, 0x0

    #@1
    .line 174
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    #@3
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 176
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9
    move-result v2

    #@a
    .line 178
    .local v2, "result":Z
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@d
    .line 183
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "result":Z
    :goto_0
    return v2

    #@e
    .line 177
    .restart local v1    # "in":Ljava/io/InputStream;
    .local v2, "result":Z
    :catchall_0
    move-exception v3

    #@f
    .line 178
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@12
    .line 177
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@13
    .line 180
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    #@14
    .line 181
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    #@15
    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 192
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    #@4
    move-result v4

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 193
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@a
    .line 195
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    #@c
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 197
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v4, 0x1000

    #@11
    :try_start_1
    new-array v0, v4, [B

    #@13
    .line 199
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    #@16
    move-result v1

    #@17
    .local v1, "bytesRead":I
    if-ltz v1, :cond_1

    #@19
    .line 200
    const/4 v4, 0x0

    #@1a
    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 202
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v4

    #@1f
    .line 203
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@22
    .line 205
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@29
    .line 208
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    #@2c
    .line 202
    throw v4

    #@2d
    .line 211
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    #@2e
    .line 212
    .local v2, "e":Ljava/io/IOException;
    return v6

    #@2f
    .line 203
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@32
    .line 205
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@39
    .line 208
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    #@3c
    .line 210
    const/4 v4, 0x1

    #@3d
    return v4

    #@3e
    .line 206
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_1
    move-exception v2

    #@3f
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    #@40
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :catch_2
    move-exception v2

    #@41
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public static deleteContents(Ljava/io/File;)Z
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    #@0
    .prologue
    .line 415
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    .line 416
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x1

    #@5
    .line 417
    .local v2, "success":Z
    if-eqz v1, :cond_2

    #@7
    .line 418
    const/4 v3, 0x0

    #@8
    array-length v4, v1

    #@9
    .end local v2    # "success":Z
    :goto_0
    if-ge v3, v4, :cond_2

    #@b
    aget-object v0, v1, v3

    #@d
    .line 419
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 420
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    #@16
    move-result v5

    #@17
    and-int/2addr v2, v5

    #@18
    .line 422
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_1

    #@1e
    .line 423
    const-string/jumbo v5, "FileUtils"

    #@21
    new-instance v6, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v7, "Failed to delete "

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 424
    const/4 v2, 0x0

    #@39
    .line 418
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 428
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    return v2
.end method

.method public static deleteOlderFiles(Ljava/io/File;IJ)Z
    .locals 10
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "minCount"    # I
    .param p2, "minAge"    # J

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 341
    if-ltz p1, :cond_0

    #@3
    const-wide/16 v6, 0x0

    #@5
    cmp-long v6, p2, v6

    #@7
    if-gez v6, :cond_1

    #@9
    .line 342
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v7, "Constraints must be positive or 0"

    #@e
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v6

    #@12
    .line 345
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@15
    move-result-object v4

    #@16
    .line 346
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_2

    #@18
    return v8

    #@19
    .line 349
    :cond_2
    new-instance v6, Landroid/os/FileUtils$1;

    #@1b
    invoke-direct {v6}, Landroid/os/FileUtils$1;-><init>()V

    #@1e
    invoke-static {v4, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@21
    .line 357
    const/4 v2, 0x0

    #@22
    .line 358
    .local v2, "deleted":Z
    move v5, p1

    #@23
    .local v5, "i":I
    :goto_0
    array-length v6, v4

    #@24
    if-ge v5, v6, :cond_4

    #@26
    .line 359
    aget-object v3, v4, v5

    #@28
    .line 362
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2b
    move-result-wide v6

    #@2c
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    #@2f
    move-result-wide v8

    #@30
    sub-long v0, v6, v8

    #@32
    .line 363
    .local v0, "age":J
    cmp-long v6, v0, p2

    #@34
    if-lez v6, :cond_3

    #@36
    .line 364
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_3

    #@3c
    .line 365
    const-string/jumbo v6, "FileUtils"

    #@3f
    new-instance v7, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v8, "Deleted old file "

    #@47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 366
    const/4 v2, 0x1

    #@57
    .line 358
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 370
    .end local v0    # "age":J
    .end local v3    # "file":Ljava/io/File;
    :cond_4
    return v2
.end method

.method public static getUid(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 148
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@3
    move-result-object v1

    #@4
    iget v1, v1, Landroid/system/StructStat;->st_uid:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return v1

    #@7
    .line 149
    :catch_0
    move-exception v0

    #@8
    .line 150
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, -0x1

    #@9
    return v1
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 224
    sget-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public static isValidExtFilename(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 445
    if-eqz p0, :cond_0

    #@2
    invoke-static {p0}, Landroid/os/FileUtils;->buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static isValidExtFilenameChar(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 432
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 437
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 435
    :sswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 432
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method public static isValidFatFilename(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 494
    if-eqz p0, :cond_0

    #@2
    invoke-static {p0}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static isValidFatFilenameChar(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 470
    if-ltz p0, :cond_0

    #@3
    const/16 v0, 0x1f

    #@5
    if-gt p0, v0, :cond_0

    #@7
    .line 471
    return v1

    #@8
    .line 473
    :cond_0
    sparse-switch p0, :sswitch_data_0

    #@b
    .line 486
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 484
    :sswitch_0
    return v1

    #@e
    .line 473
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
        0x7c -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method public static listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;
    .locals 2
    .param p0, "dir"    # Ljava/io/File;

    #@0
    .prologue
    .line 642
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 643
    .local v0, "res":[Ljava/io/File;
    if-eqz v0, :cond_0

    #@6
    .line 644
    return-object v0

    #@7
    .line 646
    :cond_0
    sget-object v1, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    #@9
    return-object v1
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .param p2, "ellipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    new-instance v5, Ljava/io/FileInputStream;

    #@2
    move-object/from16 v0, p0

    #@4
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@7
    .line 240
    .local v5, "input":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    #@9
    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@c
    .line 242
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    #@f
    move-result-wide v10

    #@10
    .line 243
    .local v10, "size":J
    if-gtz p1, :cond_0

    #@12
    const-wide/16 v14, 0x0

    #@14
    cmp-long v13, v10, v14

    #@16
    if-lez v13, :cond_6

    #@18
    if-nez p1, :cond_6

    #@1a
    .line 244
    :cond_0
    const-wide/16 v14, 0x0

    #@1c
    cmp-long v13, v10, v14

    #@1e
    if-lez v13, :cond_2

    #@20
    if-eqz p1, :cond_1

    #@22
    move/from16 v0, p1

    #@24
    int-to-long v14, v0

    #@25
    cmp-long v13, v10, v14

    #@27
    if-gez v13, :cond_2

    #@29
    :cond_1
    long-to-int v0, v10

    #@2a
    move/from16 p1, v0

    #@2c
    .line 245
    :cond_2
    add-int/lit8 v13, p1, 0x1

    #@2e
    new-array v4, v13, [B

    #@30
    .line 246
    .local v4, "data":[B
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    #@33
    move-result v8

    #@34
    .line 247
    .local v8, "length":I
    if-gtz v8, :cond_3

    #@36
    const-string/jumbo v13, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 283
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@3c
    .line 284
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@3f
    .line 247
    return-object v13

    #@40
    .line 248
    :cond_3
    move/from16 v0, p1

    #@42
    if-gt v8, v0, :cond_4

    #@44
    :try_start_1
    new-instance v13, Ljava/lang/String;

    #@46
    const/4 v14, 0x0

    #@47
    invoke-direct {v13, v4, v14, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 283
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@4d
    .line 284
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@50
    .line 248
    return-object v13

    #@51
    .line 249
    :cond_4
    if-nez p2, :cond_5

    #@53
    :try_start_2
    new-instance v13, Ljava/lang/String;

    #@55
    const/4 v14, 0x0

    #@56
    move/from16 v0, p1

    #@58
    invoke-direct {v13, v4, v14, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    .line 283
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@5e
    .line 284
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@61
    .line 249
    return-object v13

    #@62
    .line 250
    :cond_5
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    new-instance v14, Ljava/lang/String;

    #@69
    const/4 v15, 0x0

    #@6a
    move/from16 v0, p1

    #@6c
    invoke-direct {v14, v4, v15, v0}, Ljava/lang/String;-><init>([BII)V

    #@6f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v13

    #@73
    move-object/from16 v0, p2

    #@75
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v13

    #@79
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7c
    move-result-object v13

    #@7d
    .line 283
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@80
    .line 284
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@83
    .line 250
    return-object v13

    #@84
    .line 251
    .end local v4    # "data":[B
    .end local v8    # "length":I
    :cond_6
    if-gez p1, :cond_e

    #@86
    .line 253
    const/4 v9, 0x0

    #@87
    .line 254
    .local v9, "rolled":Z
    const/4 v6, 0x0

    #@88
    .line 255
    .local v6, "last":[B
    const/4 v4, 0x0

    #@89
    .line 257
    .end local v6    # "last":[B
    :cond_7
    if-eqz v6, :cond_8

    #@8b
    const/4 v9, 0x1

    #@8c
    .line 258
    :cond_8
    move-object v12, v6

    #@8d
    .local v12, "tmp":[B
    move-object v6, v4

    #@8e
    .local v6, "last":[B
    move-object v4, v12

    #@8f
    .line 259
    .restart local v4    # "data":[B
    if-nez v4, :cond_9

    #@91
    move/from16 v0, p1

    #@93
    neg-int v13, v0

    #@94
    :try_start_4
    new-array v4, v13, [B

    #@96
    .line 260
    :cond_9
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    #@99
    move-result v7

    #@9a
    .line 261
    .local v7, "len":I
    array-length v13, v4

    #@9b
    if-eq v7, v13, :cond_7

    #@9d
    .line 263
    if-nez v6, :cond_a

    #@9f
    if-gtz v7, :cond_a

    #@a1
    const-string/jumbo v13, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a4
    .line 283
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@a7
    .line 284
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@aa
    .line 263
    return-object v13

    #@ab
    .line 264
    :cond_a
    if-nez v6, :cond_b

    #@ad
    :try_start_5
    new-instance v13, Ljava/lang/String;

    #@af
    const/4 v14, 0x0

    #@b0
    invoke-direct {v13, v4, v14, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b3
    .line 283
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@b6
    .line 284
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@b9
    .line 264
    return-object v13

    #@ba
    .line 265
    :cond_b
    if-lez v7, :cond_c

    #@bc
    .line 266
    const/4 v9, 0x1

    #@bd
    .line 267
    :try_start_6
    array-length v13, v6

    #@be
    sub-int/2addr v13, v7

    #@bf
    const/4 v14, 0x0

    #@c0
    invoke-static {v6, v7, v6, v14, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c3
    .line 268
    array-length v13, v6

    #@c4
    sub-int/2addr v13, v7

    #@c5
    const/4 v14, 0x0

    #@c6
    invoke-static {v4, v14, v6, v13, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c9
    .line 270
    :cond_c
    if-eqz p2, :cond_d

    #@cb
    if-eqz v9, :cond_d

    #@cd
    .line 271
    new-instance v13, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    move-object/from16 v0, p2

    #@d4
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v13

    #@d8
    new-instance v14, Ljava/lang/String;

    #@da
    invoke-direct {v14, v6}, Ljava/lang/String;-><init>([B)V

    #@dd
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v13

    #@e1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@e4
    move-result-object v13

    #@e5
    .line 283
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@e8
    .line 284
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@eb
    .line 271
    return-object v13

    #@ec
    .line 270
    :cond_d
    :try_start_7
    new-instance v13, Ljava/lang/String;

    #@ee
    invoke-direct {v13, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@f1
    .line 283
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@f4
    .line 284
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@f7
    .line 270
    return-object v13

    #@f8
    .line 273
    .end local v4    # "data":[B
    .end local v6    # "last":[B
    .end local v7    # "len":I
    .end local v9    # "rolled":Z
    .end local v12    # "tmp":[B
    :cond_e
    :try_start_8
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #@fa
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@fd
    .line 275
    .local v3, "contents":Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x400

    #@ff
    new-array v4, v13, [B

    #@101
    .line 277
    .restart local v4    # "data":[B
    :cond_f
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    #@104
    move-result v7

    #@105
    .line 278
    .restart local v7    # "len":I
    if-lez v7, :cond_10

    #@107
    const/4 v13, 0x0

    #@108
    invoke-virtual {v3, v4, v13, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@10b
    .line 279
    :cond_10
    array-length v13, v4

    #@10c
    if-eq v7, v13, :cond_f

    #@10e
    .line 280
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@111
    move-result-object v13

    #@112
    .line 283
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@115
    .line 284
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@118
    .line 280
    return-object v13

    #@119
    .line 282
    .end local v3    # "contents":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "data":[B
    .end local v7    # "len":I
    .end local v10    # "size":J
    :catchall_0
    move-exception v13

    #@11a
    .line 283
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    #@11d
    .line 284
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@120
    .line 282
    throw v13
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 560
    if-eqz p2, :cond_0

    #@3
    if-nez p0, :cond_1

    #@5
    :cond_0
    return-object v2

    #@6
    :cond_1
    if-eqz p1, :cond_0

    #@8
    .line 561
    invoke-static {p0, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 562
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 563
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@19
    move-result v2

    #@1a
    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 564
    .local v0, "splice":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@20
    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@23
    return-object v1

    #@24
    .line 566
    .end local v0    # "splice":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 540
    if-nez p2, :cond_0

    #@3
    return-object v1

    #@4
    .line 541
    :cond_0
    new-instance v2, Ljava/io/File;

    #@6
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    invoke-static {p0, p1, v2}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    #@c
    move-result-object v0

    #@d
    .line 542
    .local v0, "result":Ljava/io/File;
    if-eqz v0, :cond_1

    #@f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    :cond_1
    return-object v1
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "paths"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 546
    if-nez p2, :cond_0

    #@3
    return-object v2

    #@4
    .line 547
    :cond_0
    array-length v2, p2

    #@5
    new-array v1, v2, [Ljava/lang/String;

    #@7
    .line 548
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    #@9
    if-ge v0, v2, :cond_1

    #@b
    .line 549
    aget-object v2, p2, v0

    #@d
    invoke-static {p0, p1, v2}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v1, v0

    #@13
    .line 548
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 551
    :cond_1
    return-object v1
.end method

.method public static setPermissions(Ljava/io/File;III)I
    .locals 1
    .param p0, "path"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    #@0
    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static setPermissions(Ljava/io/FileDescriptor;III)I
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 125
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 131
    if-gez p2, :cond_0

    #@6
    if-ltz p3, :cond_1

    #@8
    .line 133
    :cond_0
    :try_start_1
    invoke-static {p0, p2, p3}, Landroid/system/Os;->fchown(Ljava/io/FileDescriptor;II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    #@b
    .line 140
    :cond_1
    return v1

    #@c
    .line 126
    :catch_0
    move-exception v0

    #@d
    .line 127
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "FileUtils"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Failed to fchmod(): "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 128
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    #@29
    return v1

    #@2a
    .line 134
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v0

    #@2b
    .line 135
    .restart local v0    # "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "FileUtils"

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "Failed to fchown(): "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 136
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    #@47
    return v1
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 97
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 103
    if-gez p2, :cond_0

    #@6
    if-ltz p3, :cond_1

    #@8
    .line 105
    :cond_0
    :try_start_1
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    #@b
    .line 112
    :cond_1
    return v1

    #@c
    .line 98
    :catch_0
    move-exception v0

    #@d
    .line 99
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "FileUtils"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Failed to chmod("

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, "): "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 100
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    #@34
    return v1

    #@35
    .line 106
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v0

    #@36
    .line 107
    .restart local v0    # "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "FileUtils"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "Failed to chown("

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    const-string/jumbo v3, "): "

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 108
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    #@5d
    return v1
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    new-instance v0, Ljava/io/FileWriter;

    #@2
    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    #@5
    .line 298
    .local v0, "out":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 300
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    #@b
    .line 295
    return-void

    #@c
    .line 299
    :catchall_0
    move-exception v1

    #@d
    .line 300
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    #@10
    .line 299
    throw v1
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .locals 2
    .param p0, "stream"    # Ljava/io/FileOutputStream;

    #@0
    .prologue
    .line 160
    if-eqz p0, :cond_0

    #@2
    .line 161
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 163
    :cond_0
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 164
    :catch_0
    move-exception v0

    #@c
    .line 166
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public static trimFilename(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxBytes"    # I

    #@0
    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5
    .line 523
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-static {v0, p1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    #@8
    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private static trimFilename(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "res"    # Ljava/lang/StringBuilder;
    .param p1, "maxBytes"    # I

    #@0
    .prologue
    .line 528
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9
    move-result-object v0

    #@a
    .line 529
    .local v0, "raw":[B
    array-length v1, v0

    #@b
    if-le v1, p1, :cond_1

    #@d
    .line 530
    add-int/lit8 p1, p1, -0x3

    #@f
    .line 531
    :goto_0
    array-length v1, v0

    #@10
    if-le v1, p1, :cond_0

    #@12
    .line 532
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    #@15
    move-result v1

    #@16
    div-int/lit8 v1, v1, 0x2

    #@18
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@1b
    .line 533
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@24
    move-result-object v0

    #@25
    goto :goto_0

    #@26
    .line 535
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    #@29
    move-result v1

    #@2a
    div-int/lit8 v1, v1, 0x2

    #@2c
    const-string/jumbo v2, "..."

    #@2f
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 527
    :cond_1
    return-void
.end method

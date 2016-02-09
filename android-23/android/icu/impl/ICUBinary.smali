.class public final Landroid/icu/impl/ICUBinary;
.super Ljava/lang/Object;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUBinary$DatPackageReader;,
        Landroid/icu/impl/ICUBinary$DataFile;,
        Landroid/icu/impl/ICUBinary$SingleDataFile;,
        Landroid/icu/impl/ICUBinary$PackageDataFile;,
        Landroid/icu/impl/ICUBinary$Authenticate;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CHAR_SET_:B = 0x0t

.field private static final CHAR_SIZE_:B = 0x2t

.field private static final HEADER_AUTHENTICATION_FAILED_:Ljava/lang/String; = "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

.field private static final MAGIC1:B = -0x26t

.field private static final MAGIC2:B = 0x27t

.field private static final MAGIC_NUMBER_AUTHENTICATION_FAILED_:Ljava/lang/String; = "ICU data file error: Not an ICU data file"

.field private static final icuDataFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const-class v1, Landroid/icu/impl/ICUBinary;

    #@2
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    sput-boolean v1, Landroid/icu/impl/ICUBinary;->-assertionsDisabled:Z

    #@b
    .line 278
    new-instance v1, Ljava/util/ArrayList;

    #@d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@10
    sput-object v1, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    #@12
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-class v2, Landroid/icu/impl/ICUBinary;

    #@19
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, ".dataPath"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 283
    .local v0, "dataPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@32
    .line 284
    sget-object v1, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    #@34
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->addDataFilesFromPath(Ljava/lang/String;Ljava/util/List;)V

    #@37
    .line 27
    :cond_0
    return-void

    #@38
    .end local v0    # "dataPath":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    #@39
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .param p0, "folder"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 523
    .local p2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "dataFile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/icu/impl/ICUBinary$DataFile;

    #@12
    .line 524
    .local v0, "dataFile":Landroid/icu/impl/ICUBinary$DataFile;
    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/impl/ICUBinary$DataFile;->addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    #@15
    goto :goto_0

    #@16
    .line 522
    .end local v0    # "dataFile":Landroid/icu/impl/ICUBinary$DataFile;
    :cond_0
    return-void
.end method

.method private static addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 9
    .param p0, "folder"    # Ljava/io/File;
    .param p1, "itemPath"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "dataFiles":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/ICUBinary$DataFile;>;"
    const/4 v5, 0x0

    #@1
    .line 319
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@4
    move-result-object v2

    #@5
    .line 320
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    #@7
    array-length v6, v2

    #@8
    if-nez v6, :cond_1

    #@a
    .line 321
    :cond_0
    return-void

    #@b
    .line 323
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@e
    move-result v3

    #@f
    .line 324
    .local v3, "folderPathLength":I
    if-lez v3, :cond_2

    #@11
    .line 328
    const/16 v6, 0x2f

    #@13
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 329
    add-int/lit8 v3, v3, 0x1

    #@18
    .line 331
    :cond_2
    array-length v6, v2

    #@19
    :goto_0
    if-ge v5, v6, :cond_7

    #@1b
    aget-object v0, v2, v5

    #@1d
    .line 332
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 333
    .local v1, "fileName":Ljava/lang/String;
    const-string/jumbo v7, ".txt"

    #@24
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_3

    #@2a
    .line 331
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 336
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 337
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_5

    #@36
    .line 339
    invoke-static {v0, p1, p2}, Landroid/icu/impl/ICUBinary;->addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V

    #@39
    .line 348
    :cond_4
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@3c
    goto :goto_1

    #@3d
    .line 340
    :cond_5
    const-string/jumbo v7, ".dat"

    #@40
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@43
    move-result v7

    #@44
    if-eqz v7, :cond_6

    #@46
    .line 341
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    #@49
    move-result-object v4

    #@4a
    .line 342
    .local v4, "pkgBytes":Ljava/nio/ByteBuffer;
    if-eqz v4, :cond_4

    #@4c
    invoke-static {v4}, Landroid/icu/impl/ICUBinary$DatPackageReader;->validate(Ljava/nio/ByteBuffer;)Z

    #@4f
    move-result v7

    #@50
    if-eqz v7, :cond_4

    #@52
    .line 343
    new-instance v7, Landroid/icu/impl/ICUBinary$PackageDataFile;

    #@54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v8

    #@58
    invoke-direct {v7, v8, v4}, Landroid/icu/impl/ICUBinary$PackageDataFile;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    #@5b
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5e
    goto :goto_2

    #@5f
    .line 346
    .end local v4    # "pkgBytes":Ljava/nio/ByteBuffer;
    :cond_6
    new-instance v7, Landroid/icu/impl/ICUBinary$SingleDataFile;

    #@61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    invoke-direct {v7, v8, v0}, Landroid/icu/impl/ICUBinary$SingleDataFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    #@68
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6b
    goto :goto_2

    #@6c
    .line 318
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private static addDataFilesFromPath(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p0, "dataPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/ICUBinary$DataFile;>;"
    const/4 v7, 0x0

    #@1
    .line 294
    const/4 v2, 0x0

    #@2
    .line 295
    .local v2, "pathStart":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    if-ge v2, v4, :cond_2

    #@8
    .line 296
    sget-char v4, Ljava/io/File;->pathSeparatorChar:C

    #@a
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    #@d
    move-result v3

    #@e
    .line 298
    .local v3, "sepIndex":I
    if-ltz v3, :cond_3

    #@10
    .line 299
    move v1, v3

    #@11
    .line 303
    .local v1, "pathLimit":I
    :goto_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 304
    .local v0, "path":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 305
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@24
    move-result v4

    #@25
    add-int/lit8 v4, v4, -0x1

    #@27
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 307
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_1

    #@31
    .line 308
    new-instance v4, Ljava/io/File;

    #@33
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@36
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    sget-object v6, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    #@3d
    invoke-static {v4, v5, v6}, Landroid/icu/impl/ICUBinary;->addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V

    #@40
    .line 310
    :cond_1
    if-gez v3, :cond_4

    #@42
    .line 288
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "pathLimit":I
    .end local v3    # "sepIndex":I
    :cond_2
    return-void

    #@43
    .line 301
    .restart local v3    # "sepIndex":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@46
    move-result v1

    #@47
    .restart local v1    # "pathLimit":I
    goto :goto_1

    #@48
    .line 313
    .restart local v0    # "path":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    #@4a
    goto :goto_0
.end method

.method static compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I
    .locals 5
    .param p0, "key"    # Ljava/lang/CharSequence;
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 357
    const/4 v2, 0x0

    #@2
    .line 358
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    #@5
    move-result v0

    #@6
    .line 359
    .local v0, "c2":I
    if-nez v0, :cond_1

    #@8
    .line 360
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v3

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 361
    return v4

    #@f
    .line 363
    :cond_0
    const/4 v3, 0x1

    #@10
    return v3

    #@11
    .line 365
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@14
    move-result v3

    #@15
    if-ne v2, v3, :cond_2

    #@17
    .line 366
    const/4 v3, -0x1

    #@18
    return v3

    #@19
    .line 368
    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@1c
    move-result v3

    #@1d
    sub-int v1, v3, v0

    #@1f
    .line 369
    .local v1, "diff":I
    if-eqz v1, :cond_3

    #@21
    .line 370
    return v1

    #@22
    .line 357
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@24
    add-int/lit8 p2, p2, 0x1

    #@26
    goto :goto_0
.end method

.method public static getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x80

    #@2
    .line 651
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    #@5
    move-result v0

    #@6
    .line 652
    .local v0, "avail":I
    const/16 v8, 0x20

    #@8
    if-le v0, v8, :cond_1

    #@a
    .line 655
    new-array v1, v0, [B

    #@c
    .line 660
    .local v1, "bytes":[B
    :goto_0
    const/4 v3, 0x0

    #@d
    .local v3, "length":I
    move v4, v3

    #@e
    .line 662
    .end local v3    # "length":I
    .local v4, "length":I
    :goto_1
    array-length v8, v1

    #@f
    if-ge v4, v8, :cond_3

    #@11
    .line 663
    array-length v8, v1

    #@12
    sub-int/2addr v8, v4

    #@13
    invoke-virtual {p0, v1, v4, v8}, Ljava/io/InputStream;->read([BII)I

    #@16
    move-result v7

    #@17
    .line 664
    .local v7, "numRead":I
    if-gez v7, :cond_2

    #@19
    .line 687
    .end local v7    # "numRead":I
    :cond_0
    const/4 v8, 0x0

    #@1a
    invoke-static {v1, v8, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v8

    #@1e
    .line 689
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@21
    .line 687
    return-object v8

    #@22
    .line 657
    .end local v1    # "bytes":[B
    .end local v4    # "length":I
    :cond_1
    const/16 v8, 0x80

    #@24
    :try_start_1
    new-array v1, v8, [B

    #@26
    .restart local v1    # "bytes":[B
    goto :goto_0

    #@27
    .line 667
    .restart local v4    # "length":I
    .restart local v7    # "numRead":I
    :cond_2
    add-int v3, v4, v7

    #@29
    .end local v4    # "length":I
    .end local v7    # "numRead":I
    .restart local v3    # "length":I
    :goto_2
    move v4, v3

    #@2a
    .end local v3    # "length":I
    .restart local v4    # "length":I
    goto :goto_1

    #@2b
    .line 670
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@2e
    move-result v6

    #@2f
    .line 671
    .local v6, "nextByte":I
    if-ltz v6, :cond_0

    #@31
    .line 674
    array-length v8, v1

    #@32
    mul-int/lit8 v2, v8, 0x2

    #@34
    .line 675
    .local v2, "capacity":I
    if-ge v2, v10, :cond_5

    #@36
    .line 676
    const/16 v2, 0x80

    #@38
    .line 681
    :cond_4
    :goto_3
    new-array v5, v2, [B

    #@3a
    .line 682
    .local v5, "newBytes":[B
    const/4 v8, 0x0

    #@3b
    const/4 v9, 0x0

    #@3c
    invoke-static {v1, v8, v5, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3f
    .line 683
    move-object v1, v5

    #@40
    .line 684
    add-int/lit8 v3, v4, 0x1

    #@42
    .end local v4    # "length":I
    .restart local v3    # "length":I
    int-to-byte v8, v6

    #@43
    aput-byte v8, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_2

    #@46
    .line 688
    .end local v0    # "avail":I
    .end local v1    # "bytes":[B
    .end local v2    # "capacity":I
    .end local v3    # "length":I
    .end local v5    # "newBytes":[B
    .end local v6    # "nextByte":I
    :catchall_0
    move-exception v8

    #@47
    .line 689
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@4a
    .line 688
    throw v8

    #@4b
    .line 677
    .restart local v0    # "avail":I
    .restart local v1    # "bytes":[B
    .restart local v2    # "capacity":I
    .restart local v4    # "length":I
    .restart local v6    # "nextByte":I
    :cond_5
    const/16 v8, 0x4000

    #@4d
    if-ge v2, v8, :cond_4

    #@4f
    .line 678
    mul-int/lit8 v2, v2, 0x2

    #@51
    goto :goto_3
.end method

.method public static getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "itemPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 416
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "itemPath"    # Ljava/lang/String;
    .param p3, "required"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 461
    invoke-static {p2}, Landroid/icu/impl/ICUBinary;->getDataFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v1

    #@5
    .line 462
    .local v1, "bytes":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    #@7
    .line 463
    return-object v1

    #@8
    .line 465
    :cond_0
    if-nez p0, :cond_1

    #@a
    .line 466
    const-class v4, Landroid/icu/impl/ICUData;

    #@c
    invoke-static {v4}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@f
    move-result-object p0

    #@10
    .line 468
    :cond_1
    if-nez p1, :cond_2

    #@12
    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "android/icu/impl/data/icudt55b/"

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p1

    #@26
    .line 471
    :cond_2
    const/4 v0, 0x0

    #@27
    .line 474
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    #@2a
    move-result-object v3

    #@2b
    .line 475
    .local v3, "is":Ljava/io/InputStream;
    if-nez v3, :cond_3

    #@2d
    .line 476
    return-object v6

    #@2e
    .line 478
    :cond_3
    invoke-static {v3}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    move-result-object v0

    #@32
    .line 482
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    return-object v0

    #@33
    .line 479
    .end local v3    # "is":Ljava/io/InputStream;
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    #@34
    .line 480
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Landroid/icu/util/ICUUncheckedIOException;

    #@36
    invoke-direct {v4, v2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@39
    throw v4
.end method

.method public static getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "itemPath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 402
    const/4 v0, 0x0

    #@2
    invoke-static {v1, v1, p0, v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static getDataFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "itemPath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 486
    sget-object v3, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "dataFile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/icu/impl/ICUBinary$DataFile;

    #@13
    .line 487
    .local v1, "dataFile":Landroid/icu/impl/ICUBinary$DataFile;
    invoke-virtual {v1, p0}, Landroid/icu/impl/ICUBinary$DataFile;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@16
    move-result-object v0

    #@17
    .line 488
    .local v0, "data":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    #@19
    .line 489
    return-object v0

    #@1a
    .line 492
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    .end local v1    # "dataFile":Landroid/icu/impl/ICUBinary$DataFile;
    :cond_1
    return-object v4
.end method

.method public static getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "itemPath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 428
    const/4 v0, 0x1

    #@2
    invoke-static {v1, v1, p0, v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getVersionByteArrayFromCompactInt(I)[B
    .locals 3
    .param p0, "version"    # I

    #@0
    .prologue
    .line 705
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [B

    #@3
    .line 706
    shr-int/lit8 v1, p0, 0x18

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 707
    shr-int/lit8 v1, p0, 0x10

    #@b
    int-to-byte v1, v1

    #@c
    const/4 v2, 0x1

    #@d
    aput-byte v1, v0, v2

    #@f
    .line 708
    shr-int/lit8 v1, p0, 0x8

    #@11
    int-to-byte v1, v1

    #@12
    const/4 v2, 0x2

    #@13
    aput-byte v1, v0, v2

    #@15
    .line 709
    int-to-byte v1, p0

    #@16
    const/4 v2, 0x3

    #@17
    aput-byte v1, v0, v2

    #@19
    .line 705
    return-object v0
.end method

.method public static getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;
    .locals 4
    .param p0, "version"    # I

    #@0
    .prologue
    .line 698
    ushr-int/lit8 v0, p0, 0x18

    #@2
    shr-int/lit8 v1, p0, 0x10

    #@4
    and-int/lit16 v1, v1, 0xff

    #@6
    shr-int/lit8 v2, p0, 0x8

    #@8
    and-int/lit16 v2, v2, 0xff

    #@a
    and-int/lit16 v3, p0, 0xff

    #@c
    .line 697
    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private static mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 10
    .param p0, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 499
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@5
    .line 500
    .local v7, "file":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@8
    move-result-object v0

    #@9
    .line 501
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    #@a
    .line 503
    .local v6, "bytes":Ljava/nio/ByteBuffer;
    :try_start_1
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@c
    const-wide/16 v2, 0x0

    #@e
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    #@11
    move-result-wide v4

    #@12
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result-object v6

    #@16
    .line 505
    .local v6, "bytes":Ljava/nio/ByteBuffer;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    #@19
    .line 507
    return-object v6

    #@1a
    .line 504
    .local v6, "bytes":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    #@1b
    .line 505
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    #@1e
    .line 504
    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@1f
    .line 508
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v6    # "bytes":Ljava/nio/ByteBuffer;
    .end local v7    # "file":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    #@20
    .line 509
    .local v8, "ignored":Ljava/io/FileNotFoundException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@25
    .line 513
    .end local v8    # "ignored":Ljava/io/FileNotFoundException;
    :goto_0
    const/4 v1, 0x0

    #@26
    return-object v1

    #@27
    .line 510
    :catch_1
    move-exception v9

    #@28
    .line 511
    .local v9, "ignored":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@2d
    goto :goto_0
.end method

.method public static readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I
    .locals 15
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "dataFormat"    # I
    .param p2, "authenticate"    # Landroid/icu/impl/ICUBinary$Authenticate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 552
    sget-boolean v9, Landroid/icu/impl/ICUBinary;->-assertionsDisabled:Z

    #@2
    if-nez v9, :cond_1

    #@4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@7
    move-result v9

    #@8
    if-nez v9, :cond_0

    #@a
    const/4 v9, 0x1

    #@b
    :goto_0
    if-nez v9, :cond_1

    #@d
    new-instance v9, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v9

    #@13
    :cond_0
    const/4 v9, 0x0

    #@14
    goto :goto_0

    #@15
    .line 553
    :cond_1
    const/4 v9, 0x2

    #@16
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@19
    move-result v5

    #@1a
    .line 554
    .local v5, "magic1":B
    const/4 v9, 0x3

    #@1b
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@1e
    move-result v6

    #@1f
    .line 555
    .local v6, "magic2":B
    const/16 v9, -0x26

    #@21
    if-ne v5, v9, :cond_2

    #@23
    const/16 v9, 0x27

    #@25
    if-eq v6, v9, :cond_3

    #@27
    .line 556
    :cond_2
    new-instance v9, Ljava/io/IOException;

    #@29
    const-string/jumbo v10, "ICU data file error: Not an ICU data file"

    #@2c
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v9

    #@30
    .line 559
    :cond_3
    const/16 v9, 0x8

    #@32
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@35
    move-result v4

    #@36
    .line 560
    .local v4, "isBigEndian":B
    const/16 v9, 0x9

    #@38
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@3b
    move-result v1

    #@3c
    .line 561
    .local v1, "charsetFamily":B
    const/16 v9, 0xa

    #@3e
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@41
    move-result v7

    #@42
    .line 562
    .local v7, "sizeofUChar":B
    if-ltz v4, :cond_4

    #@44
    const/4 v9, 0x1

    #@45
    if-ge v9, v4, :cond_5

    #@47
    .line 564
    :cond_4
    new-instance v9, Ljava/io/IOException;

    #@49
    const-string/jumbo v10, "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

    #@4c
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v9

    #@50
    .line 563
    :cond_5
    if-nez v1, :cond_4

    #@52
    const/4 v9, 0x2

    #@53
    if-ne v7, v9, :cond_4

    #@55
    .line 566
    if-eqz v4, :cond_7

    #@57
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@59
    :goto_1
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@5c
    .line 568
    const/4 v9, 0x0

    #@5d
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@60
    move-result v3

    #@61
    .line 569
    .local v3, "headerSize":I
    const/4 v9, 0x4

    #@62
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@65
    move-result v8

    #@66
    .line 570
    .local v8, "sizeofUDataInfo":I
    const/16 v9, 0x14

    #@68
    if-lt v8, v9, :cond_6

    #@6a
    add-int/lit8 v9, v8, 0x4

    #@6c
    if-ge v3, v9, :cond_8

    #@6e
    .line 571
    :cond_6
    new-instance v9, Ljava/io/IOException;

    #@70
    const-string/jumbo v10, "Internal Error: Header size error"

    #@73
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@76
    throw v9

    #@77
    .line 566
    .end local v3    # "headerSize":I
    .end local v8    # "sizeofUDataInfo":I
    :cond_7
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@79
    goto :goto_1

    #@7a
    .line 575
    .restart local v3    # "headerSize":I
    .restart local v8    # "sizeofUDataInfo":I
    :cond_8
    const/4 v9, 0x4

    #@7b
    new-array v2, v9, [B

    #@7d
    .line 576
    const/16 v9, 0x10

    #@7f
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@82
    move-result v9

    #@83
    const/4 v10, 0x0

    #@84
    aput-byte v9, v2, v10

    #@86
    const/16 v9, 0x11

    #@88
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@8b
    move-result v9

    #@8c
    const/4 v10, 0x1

    #@8d
    aput-byte v9, v2, v10

    #@8f
    const/16 v9, 0x12

    #@91
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@94
    move-result v9

    #@95
    const/4 v10, 0x2

    #@96
    aput-byte v9, v2, v10

    #@98
    const/16 v9, 0x13

    #@9a
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@9d
    move-result v9

    #@9e
    const/4 v10, 0x3

    #@9f
    aput-byte v9, v2, v10

    #@a1
    .line 578
    .local v2, "formatVersion":[B
    const/16 v9, 0xc

    #@a3
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@a6
    move-result v9

    #@a7
    shr-int/lit8 v10, p1, 0x18

    #@a9
    int-to-byte v10, v10

    #@aa
    if-ne v9, v10, :cond_9

    #@ac
    .line 579
    const/16 v9, 0xd

    #@ae
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@b1
    move-result v9

    #@b2
    shr-int/lit8 v10, p1, 0x10

    #@b4
    int-to-byte v10, v10

    #@b5
    if-eq v9, v10, :cond_a

    #@b7
    .line 583
    :cond_9
    new-instance v9, Ljava/io/IOException;

    #@b9
    new-instance v10, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v11, "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

    #@c1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v10

    #@c5
    .line 584
    const-string/jumbo v11, "; data format %02x%02x%02x%02x, format version %d.%d.%d.%d"

    #@c8
    const/16 v12, 0x8

    #@ca
    new-array v12, v12, [Ljava/lang/Object;

    #@cc
    .line 585
    const/16 v13, 0xc

    #@ce
    invoke-virtual {p0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    #@d1
    move-result v13

    #@d2
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@d5
    move-result-object v13

    #@d6
    const/4 v14, 0x0

    #@d7
    aput-object v13, v12, v14

    #@d9
    const/16 v13, 0xd

    #@db
    invoke-virtual {p0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    #@de
    move-result v13

    #@df
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@e2
    move-result-object v13

    #@e3
    const/4 v14, 0x1

    #@e4
    aput-object v13, v12, v14

    #@e6
    const/16 v13, 0xe

    #@e8
    invoke-virtual {p0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    #@eb
    move-result v13

    #@ec
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@ef
    move-result-object v13

    #@f0
    const/4 v14, 0x2

    #@f1
    aput-object v13, v12, v14

    #@f3
    const/16 v13, 0xf

    #@f5
    invoke-virtual {p0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    #@f8
    move-result v13

    #@f9
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@fc
    move-result-object v13

    #@fd
    const/4 v14, 0x3

    #@fe
    aput-object v13, v12, v14

    #@100
    .line 586
    const/4 v13, 0x0

    #@101
    aget-byte v13, v2, v13

    #@103
    and-int/lit16 v13, v13, 0xff

    #@105
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@108
    move-result-object v13

    #@109
    const/4 v14, 0x4

    #@10a
    aput-object v13, v12, v14

    #@10c
    const/4 v13, 0x1

    #@10d
    aget-byte v13, v2, v13

    #@10f
    and-int/lit16 v13, v13, 0xff

    #@111
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@114
    move-result-object v13

    #@115
    const/4 v14, 0x5

    #@116
    aput-object v13, v12, v14

    #@118
    .line 587
    const/4 v13, 0x2

    #@119
    aget-byte v13, v2, v13

    #@11b
    and-int/lit16 v13, v13, 0xff

    #@11d
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@120
    move-result-object v13

    #@121
    const/4 v14, 0x6

    #@122
    aput-object v13, v12, v14

    #@124
    const/4 v13, 0x3

    #@125
    aget-byte v13, v2, v13

    #@127
    and-int/lit16 v13, v13, 0xff

    #@129
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12c
    move-result-object v13

    #@12d
    const/4 v14, 0x7

    #@12e
    aput-object v13, v12, v14

    #@130
    .line 584
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@133
    move-result-object v11

    #@134
    .line 583
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v10

    #@138
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v10

    #@13c
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13f
    throw v9

    #@140
    .line 580
    :cond_a
    const/16 v9, 0xe

    #@142
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@145
    move-result v9

    #@146
    shr-int/lit8 v10, p1, 0x8

    #@148
    int-to-byte v10, v10

    #@149
    if-ne v9, v10, :cond_9

    #@14b
    .line 581
    const/16 v9, 0xf

    #@14d
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@150
    move-result v9

    #@151
    move/from16 v0, p1

    #@153
    int-to-byte v10, v0

    #@154
    if-ne v9, v10, :cond_9

    #@156
    .line 582
    if-eqz p2, :cond_b

    #@158
    move-object/from16 v0, p2

    #@15a
    invoke-interface {v0, v2}, Landroid/icu/impl/ICUBinary$Authenticate;->isDataVersionAcceptable([B)Z

    #@15d
    move-result v9

    #@15e
    if-eqz v9, :cond_9

    #@160
    .line 590
    :cond_b
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@163
    .line 592
    const/16 v9, 0x14

    #@165
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    #@168
    move-result v9

    #@169
    shl-int/lit8 v9, v9, 0x18

    #@16b
    .line 593
    const/16 v10, 0x15

    #@16d
    invoke-virtual {p0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    #@170
    move-result v10

    #@171
    and-int/lit16 v10, v10, 0xff

    #@173
    shl-int/lit8 v10, v10, 0x10

    #@175
    .line 592
    or-int/2addr v9, v10

    #@176
    .line 594
    const/16 v10, 0x16

    #@178
    invoke-virtual {p0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    #@17b
    move-result v10

    #@17c
    and-int/lit16 v10, v10, 0xff

    #@17e
    shl-int/lit8 v10, v10, 0x8

    #@180
    .line 592
    or-int/2addr v9, v10

    #@181
    .line 595
    const/16 v10, 0x17

    #@183
    invoke-virtual {p0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    #@186
    move-result v10

    #@187
    and-int/lit16 v10, v10, 0xff

    #@189
    .line 592
    or-int/2addr v9, v10

    #@18a
    .line 591
    return v9
.end method

.method public static readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;
    .locals 1
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "dataFormat"    # I
    .param p2, "authenticate"    # Landroid/icu/impl/ICUBinary$Authenticate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 535
    invoke-static {p0, p1, p2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static skipBytes(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "skipLength"    # I

    #@0
    .prologue
    .line 628
    if-lez p1, :cond_0

    #@2
    .line 629
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    add-int/2addr v0, p1

    #@7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@a
    .line 627
    :cond_0
    return-void
.end method

.method public static sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 637
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 638
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static writeHeader(IIILjava/io/DataOutputStream;)I
    .locals 5
    .param p0, "dataFormat"    # I
    .param p1, "formatVersion"    # I
    .param p2, "dataVersion"    # I
    .param p3, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/16 v4, 0x20

    #@3
    const/4 v1, 0x0

    #@4
    .line 608
    invoke-virtual {p3, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@7
    .line 609
    const/16 v2, -0x26

    #@9
    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@c
    .line 610
    const/16 v2, 0x27

    #@e
    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@11
    .line 612
    const/16 v2, 0x14

    #@13
    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@16
    .line 613
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@19
    .line 614
    invoke-virtual {p3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@1c
    .line 615
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@1f
    .line 616
    const/4 v2, 0x2

    #@20
    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@23
    .line 617
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@26
    .line 618
    invoke-virtual {p3, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@29
    .line 619
    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2c
    .line 620
    invoke-virtual {p3, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2f
    .line 622
    const-wide/16 v2, 0x0

    #@31
    invoke-virtual {p3, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@34
    .line 623
    sget-boolean v2, Landroid/icu/impl/ICUBinary;->-assertionsDisabled:Z

    #@36
    if-nez v2, :cond_1

    #@38
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->size()I

    #@3b
    move-result v2

    #@3c
    if-ne v2, v4, :cond_0

    #@3e
    :goto_0
    if-nez v0, :cond_1

    #@40
    new-instance v0, Ljava/lang/AssertionError;

    #@42
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@45
    throw v0

    #@46
    :cond_0
    move v0, v1

    #@47
    goto :goto_0

    #@48
    .line 624
    :cond_1
    return v4
.end method

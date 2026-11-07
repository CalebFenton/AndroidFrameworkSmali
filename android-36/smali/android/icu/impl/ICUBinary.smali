.class public final Landroid/icu/impl/ICUBinary;
.super Ljava/lang/Object;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUBinary$DatPackageReader;,
        Landroid/icu/impl/ICUBinary$PackageDataFile;,
        Landroid/icu/impl/ICUBinary$SingleDataFile;,
        Landroid/icu/impl/ICUBinary$DataFile;,
        Landroid/icu/impl/ICUBinary$Authenticate;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o CHAR_SET_:B = 0x0t

.field private static final greylist-max-o CHAR_SIZE_:B = 0x2t

.field private static final greylist-max-o HEADER_AUTHENTICATION_FAILED_:Ljava/lang/String; = "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

.field private static final greylist-max-o MAGIC1:B = -0x26t

.field private static final greylist-max-o MAGIC2:B = 0x27t

.field private static final greylist-max-o MAGIC_NUMBER_AUTHENTICATION_FAILED_:Ljava/lang/String; = "ICU data file error: Not an ICU data file"

.field private static final greylist-max-o icuDataFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smmapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 35
    nop

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, "dataPath":Ljava/lang/String;
    const-class v1, Landroid/icu/impl/ICUBinary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.icu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 302
    invoke-static {}, Landroid/icu/platform/AndroidDataFiles;->generateIcuDataPath()Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_1b
    if-eqz v0, :cond_22

    .line 306
    sget-object v1, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->addDataFilesFromPath(Ljava/lang/String;Ljava/util/List;)V

    .line 308
    .end local v0    # "dataPath":Ljava/lang/String;
    :cond_22
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .param p0, "folder"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 565
    .local p2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUBinary$DataFile;

    .line 566
    .local v1, "dataFile":Landroid/icu/impl/ICUBinary$DataFile;
    invoke-virtual {v1, p0, p1, p2}, Landroid/icu/impl/ICUBinary$DataFile;->addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 567
    .end local v1    # "dataFile":Landroid/icu/impl/ICUBinary$DataFile;
    goto :goto_6

    .line 568
    :cond_16
    return-void
.end method

.method private static greylist-max-o addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 12
    .param p0, "folder"    # Ljava/io/File;
    .param p1, "itemPath"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;)V"
        }
    .end annotation

    .line 341
    .local p2, "dataFiles":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/ICUBinary$DataFile;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 342
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_6b

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_6b

    .line 345
    :cond_a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 346
    .local v1, "folderPathLength":I
    if-lez v1, :cond_17

    .line 350
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    add-int/lit8 v1, v1, 0x1

    .line 353
    :cond_17
    array-length v2, v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_6a

    aget-object v4, v0, v3

    .line 354
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "fileName":Ljava/lang/String;
    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 356
    goto :goto_67

    .line 358
    :cond_2a
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 361
    invoke-static {v4, p1, p2}, Landroid/icu/impl/ICUBinary;->addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_64

    .line 362
    :cond_37
    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 363
    invoke-static {v4}, Landroid/icu/impl/ICUBinary;->mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 364
    .local v6, "pkgBytes":Ljava/nio/ByteBuffer;
    if-eqz v6, :cond_57

    invoke-static {v6}, Landroid/icu/impl/ICUBinary$DatPackageReader;->validate(Ljava/nio/ByteBuffer;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 365
    new-instance v7, Landroid/icu/impl/ICUBinary$PackageDataFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/icu/impl/ICUBinary$PackageDataFile;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v6    # "pkgBytes":Ljava/nio/ByteBuffer;
    :cond_57
    goto :goto_64

    .line 368
    :cond_58
    new-instance v6, Landroid/icu/impl/ICUBinary$SingleDataFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Landroid/icu/impl/ICUBinary$SingleDataFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :goto_64
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 353
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 372
    :cond_6a
    return-void

    .line 343
    .end local v1    # "folderPathLength":I
    :cond_6b
    :goto_6b
    return-void
.end method

.method private static greylist-max-o addDataFilesFromPath(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p0, "dataPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/icu/impl/ICUBinary$DataFile;",
            ">;)V"
        }
    .end annotation

    .line 316
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/ICUBinary$DataFile;>;"
    const/4 v0, 0x0

    .line 317
    .local v0, "pathStart":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 318
    sget-char v1, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 320
    .local v1, "sepIndex":I
    if-ltz v1, :cond_11

    .line 321
    move v2, v1

    .local v2, "pathLimit":I
    goto :goto_15

    .line 323
    .end local v2    # "pathLimit":I
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 325
    .restart local v2    # "pathLimit":I
    :goto_15
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "path":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 327
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 329
    :cond_30
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_45

    .line 330
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-static {v4, v5, v6}, Landroid/icu/impl/ICUBinary;->addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 332
    :cond_45
    if-gez v1, :cond_48

    .line 333
    goto :goto_4b

    .line 335
    :cond_48
    add-int/lit8 v0, v1, 0x1

    .line 336
    .end local v1    # "sepIndex":I
    .end local v2    # "pathLimit":I
    .end local v3    # "path":Ljava/lang/String;
    goto :goto_1

    .line 337
    :cond_4b
    :goto_4b
    return-void
.end method

.method static greylist-max-o compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I
    .registers 6
    .param p0, "key"    # Ljava/lang/CharSequence;
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "i":I
    :goto_1
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 381
    .local v1, "c2":I
    if-nez v1, :cond_11

    .line 382
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_f

    .line 383
    const/4 v2, 0x0

    return v2

    .line 385
    :cond_f
    const/4 v2, 0x1

    return v2

    .line 387
    :cond_11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_19

    .line 388
    const/4 v2, -0x1

    return v2

    .line 390
    :cond_19
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v1

    .line 391
    .local v2, "diff":I
    if-eqz v2, :cond_21

    .line 392
    return v2

    .line 379
    .end local v1    # "c2":I
    .end local v2    # "diff":I
    :cond_21
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method static greylist-max-o compareKeys(Ljava/lang/CharSequence;[BI)I
    .registers 6
    .param p0, "key"    # Ljava/lang/CharSequence;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "i":I
    :goto_1
    aget-byte v1, p1, p2

    .line 400
    .local v1, "c2":I
    if-nez v1, :cond_f

    .line 401
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_d

    .line 402
    const/4 v2, 0x0

    return v2

    .line 404
    :cond_d
    const/4 v2, 0x1

    return v2

    .line 406
    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_17

    .line 407
    const/4 v2, -0x1

    return v2

    .line 409
    :cond_17
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v1

    .line 410
    .local v2, "diff":I
    if-eqz v2, :cond_1f

    .line 411
    return v2

    .line 398
    .end local v1    # "c2":I
    .end local v2    # "diff":I
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public static blacklist getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 738
    .local v0, "avail":I
    const/16 v1, 0x20

    const/16 v2, 0x80

    if-le v0, v1, :cond_d

    .line 741
    new-array v1, v0, [B

    .local v1, "bytes":[B
    goto :goto_f

    .line 743
    .end local v1    # "bytes":[B
    :cond_d
    new-array v1, v2, [B

    .line 746
    .restart local v1    # "bytes":[B
    :goto_f
    const/4 v3, 0x0

    .line 748
    .local v3, "length":I
    :goto_10
    array-length v4, v1

    if-ge v3, v4, :cond_1e

    .line 749
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 750
    .local v4, "numRead":I
    if-gez v4, :cond_1c

    .line 751
    goto :goto_25

    .line 753
    :cond_1c
    add-int/2addr v3, v4

    .line 754
    .end local v4    # "numRead":I
    goto :goto_10

    .line 756
    :cond_1e
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 757
    .local v4, "nextByte":I
    if-gez v4, :cond_2e

    .line 758
    nop

    .line 770
    .end local v4    # "nextByte":I
    :goto_25
    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_48

    .line 772
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 770
    return-object v2

    .line 760
    .restart local v4    # "nextByte":I
    :cond_2e
    :try_start_2e
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x2

    .line 761
    .local v5, "capacity":I
    if-ge v5, v2, :cond_36

    .line 762
    const/16 v5, 0x80

    goto :goto_3c

    .line 763
    :cond_36
    const/16 v6, 0x4000

    if-ge v5, v6, :cond_3c

    .line 764
    mul-int/lit8 v5, v5, 0x2

    .line 766
    :cond_3c
    :goto_3c
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    move-object v1, v6

    .line 767
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "length":I
    .local v6, "length":I
    int-to-byte v7, v4

    aput-byte v7, v1, v3
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_48

    .line 768
    .end local v4    # "nextByte":I
    .end local v5    # "capacity":I
    move v3, v6

    goto :goto_10

    .line 772
    .end local v0    # "avail":I
    .end local v1    # "bytes":[B
    .end local v6    # "length":I
    :catchall_48
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 773
    throw v0
.end method

.method public static blacklist getBytes(Ljava/nio/ByteBuffer;II)[B
    .registers 4
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "additionalSkipLength"    # I

    .line 676
    new-array v0, p1, [B

    .line 677
    .local v0, "dest":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 678
    if-lez p2, :cond_a

    .line 679
    invoke-static {p0, p2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 681
    :cond_a
    return-object v0
.end method

.method public static blacklist getChars(Ljava/nio/ByteBuffer;II)[C
    .registers 5
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "additionalSkipLength"    # I

    .line 692
    new-array v0, p1, [C

    .line 693
    .local v0, "dest":[C
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 694
    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 695
    return-object v0
.end method

.method public static blacklist getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "itemPath"    # Ljava/lang/String;

    .line 458
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;
    .registers 8
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "itemPath"    # Ljava/lang/String;
    .param p3, "required"    # Z

    .line 503
    invoke-static {p2}, Landroid/icu/impl/ICUBinary;->getDataFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 504
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_7

    .line 505
    return-object v0

    .line 507
    :cond_7
    if-nez p0, :cond_f

    .line 508
    const-class v1, Landroid/icu/impl/ICUData;

    invoke-static {v1}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    .line 510
    :cond_f
    if-nez p1, :cond_24

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android/icu/impl/data/icudata/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 513
    :cond_24
    const/4 v1, 0x0

    .line 516
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :try_start_25
    invoke-static {p0, p1, p3}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v2

    .line 517
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_2d

    .line 518
    const/4 v3, 0x0

    return-object v3

    .line 520
    :cond_2d
    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_31} :catch_33

    .line 523
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    nop

    .line 524
    return-object v3

    .line 521
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :catch_33
    move-exception v2

    .line 522
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v3, v2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static blacklist getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "itemPath"    # Ljava/lang/String;

    .line 444
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v0, p0, v1}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDataFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "itemPath"    # Ljava/lang/String;

    .line 528
    sget-object v0, Landroid/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUBinary$DataFile;

    .line 529
    .local v1, "dataFile":Landroid/icu/impl/ICUBinary$DataFile;
    invoke-virtual {v1, p0}, Landroid/icu/impl/ICUBinary$DataFile;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 530
    .local v2, "data":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_19

    .line 531
    return-object v2

    .line 533
    .end local v1    # "dataFile":Landroid/icu/impl/ICUBinary$DataFile;
    .end local v2    # "data":Ljava/nio/ByteBuffer;
    :cond_19
    goto :goto_6

    .line 534
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInts(Ljava/nio/ByteBuffer;II)[I
    .registers 5
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "additionalSkipLength"    # I

    .line 706
    new-array v0, p1, [I

    .line 707
    .local v0, "dest":[I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 708
    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 709
    return-object v0
.end method

.method public static blacklist getLongs(Ljava/nio/ByteBuffer;II)[J
    .registers 5
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "additionalSkipLength"    # I

    .line 713
    new-array v0, p1, [J

    .line 714
    .local v0, "dest":[J
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 715
    mul-int/lit8 v1, p1, 0x8

    add-int/2addr v1, p2

    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 716
    return-object v0
.end method

.method public static blacklist getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "itemPath"    # Ljava/lang/String;

    .line 470
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v0, p0, v1}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getShorts(Ljava/nio/ByteBuffer;II)[S
    .registers 5
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "additionalSkipLength"    # I

    .line 699
    new-array v0, p1, [S

    .line 700
    .local v0, "dest":[S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 701
    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 702
    return-object v0
.end method

.method public static blacklist getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "additionalSkipLength"    # I

    .line 685
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 686
    .local v0, "cs":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "s":Ljava/lang/String;
    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v2, p2

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 688
    return-object v1
.end method

.method public static blacklist getVersionByteArrayFromCompactInt(I)[B
    .registers 7
    .param p0, "version"    # I

    .line 788
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    int-to-byte v3, p0

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    aput-byte v1, v4, v0

    const/4 v0, 0x2

    aput-byte v2, v4, v0

    const/4 v0, 0x3

    aput-byte v3, v4, v0

    return-object v4
.end method

.method public static blacklist getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;
    .registers 5
    .param p0, "version"    # I

    .line 780
    ushr-int/lit8 v0, p0, 0x18

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p0, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 10
    .param p0, "path"    # Ljava/io/File;

    .line 541
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v0

    .line 542
    .local v1, "file":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_23

    move-object v2, v0

    .line 543
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 545
    .local v8, "bytes":Ljava/nio/ByteBuffer;
    :try_start_c
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1d

    .line 547
    .end local v8    # "bytes":Ljava/nio/ByteBuffer;
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 548
    nop

    .line 549
    return-object v0

    .line 547
    .end local v0    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v8    # "bytes":Ljava/nio/ByteBuffer;
    :catchall_1d
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 548
    nop

    .end local p0    # "path":Ljava/io/File;
    throw v0
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_23} :catch_2a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_23} :catch_23

    .line 552
    .end local v1    # "file":Ljava/io/FileInputStream;
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .end local v8    # "bytes":Ljava/nio/ByteBuffer;
    .restart local p0    # "path":Ljava/io/File;
    :catch_23
    move-exception v0

    .line 553
    .local v0, "ignored":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_31

    .line 550
    .end local v0    # "ignored":Ljava/io/IOException;
    :catch_2a
    move-exception v0

    .line 551
    .local v0, "ignored":Ljava/io/FileNotFoundException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 554
    .end local v0    # "ignored":Ljava/io/FileNotFoundException;
    nop

    .line 555
    :goto_31
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I
    .registers 34
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "dataFormat"    # I
    .param p2, "authenticate"    # Landroid/icu/impl/ICUBinary$Authenticate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 595
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 596
    .local v4, "magic1":B
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    .line 597
    .local v6, "magic2":B
    const/16 v7, -0x26

    if-ne v4, v7, :cond_151

    const/16 v7, 0x27

    if-ne v6, v7, :cond_151

    .line 601
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    .line 602
    .local v8, "isBigEndian":B
    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    .line 603
    .local v9, "charsetFamily":B
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    .line 604
    .local v10, "sizeofUChar":B
    const-string v11, "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

    if-ltz v8, :cond_14b

    const/4 v12, 0x1

    if-lt v12, v8, :cond_14b

    if-nez v9, :cond_14b

    if-ne v10, v3, :cond_14b

    .line 608
    if-eqz v8, :cond_3a

    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_3c

    :cond_3a
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_3c
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 610
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v14

    .line 611
    .local v14, "headerSize":I
    const/4 v15, 0x4

    move/from16 v16, v3

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v3

    .line 612
    .local v3, "sizeofUDataInfo":I
    move/from16 v17, v5

    const/16 v5, 0x14

    if-lt v3, v5, :cond_143

    move/from16 v18, v7

    add-int/lit8 v7, v3, 0x4

    if-lt v14, v7, :cond_143

    .line 617
    nop

    .line 618
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v19

    move/from16 v20, v7

    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    move/from16 v21, v12

    const/16 v12, 0x12

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    move/from16 v22, v13

    const/16 v13, 0x13

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    new-array v15, v15, [B

    aput-byte v19, v15, v22

    aput-byte v7, v15, v21

    aput-byte v12, v15, v16

    aput-byte v13, v15, v17

    .line 620
    .local v15, "formatVersion":[B
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    shr-int/lit8 v13, v1, 0x18

    int-to-byte v13, v13

    const/16 v5, 0xe

    const/16 v7, 0xd

    if-ne v12, v13, :cond_de

    .line 621
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    shr-int/lit8 v13, v1, 0x10

    int-to-byte v13, v13

    if-ne v12, v13, :cond_de

    .line 622
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    shr-int/lit8 v13, v1, 0x8

    int-to-byte v13, v13

    if-ne v12, v13, :cond_de

    .line 623
    const/16 v12, 0xf

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-byte v12, v1

    if-ne v13, v12, :cond_de

    if-eqz v2, :cond_b2

    .line 624
    invoke-interface {v2, v15}, Landroid/icu/impl/ICUBinary$Authenticate;->isDataVersionAcceptable([B)Z

    move-result v12

    if-eqz v12, :cond_de

    .line 632
    :cond_b2
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 633
    nop

    .line 634
    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    .line 635
    const/16 v7, 0x15

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    .line 636
    const/16 v7, 0x16

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    .line 637
    const/16 v7, 0x17

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 633
    return v5

    .line 625
    :cond_de
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 627
    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v24

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aget-byte v5, v15, v22

    and-int/lit16 v5, v5, 0xff

    .line 628
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aget-byte v5, v15, v21

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aget-byte v5, v15, v16

    and-int/lit16 v5, v5, 0xff

    .line 629
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aget-byte v5, v15, v17

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    filled-new-array/range {v23 .. v30}, [Ljava/lang/Object;

    move-result-object v5

    .line 626
    const-string v7, "; data format %02x%02x%02x%02x, format version %d.%d.%d.%d"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 613
    .end local v15    # "formatVersion":[B
    :cond_143
    new-instance v5, Ljava/io/IOException;

    const-string v7, "Internal Error: Header size error"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 606
    .end local v3    # "sizeofUDataInfo":I
    .end local v14    # "headerSize":I
    :cond_14b
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 598
    .end local v8    # "isBigEndian":B
    .end local v9    # "charsetFamily":B
    .end local v10    # "sizeofUChar":B
    :cond_151
    new-instance v3, Ljava/io/IOException;

    const-string v5, "ICU data file error: Not an ICU data file"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;
    .registers 4
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "dataFormat"    # I
    .param p2, "authenticate"    # Landroid/icu/impl/ICUBinary$Authenticate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    invoke-static {p0, p1, p2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist skipBytes(Ljava/nio/ByteBuffer;I)V
    .registers 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "skipLength"    # I

    .line 670
    if-lez p1, :cond_a

    .line 671
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 673
    :cond_a
    return-void
.end method

.method public static blacklist sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 723
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 724
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist writeHeader(IIILjava/io/DataOutputStream;)I
    .registers 7
    .param p0, "dataFormat"    # I
    .param p1, "formatVersion"    # I
    .param p2, "dataVersion"    # I
    .param p3, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 651
    const/16 v1, -0x26

    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 652
    const/16 v1, 0x27

    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 654
    const/16 v1, 0x14

    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 655
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 656
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 657
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 658
    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 659
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 660
    invoke-virtual {p3, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 661
    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 662
    invoke-virtual {p3, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 664
    const-wide/16 v1, 0x0

    invoke-virtual {p3, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 665
    nop

    .line 666
    return v0
.end method

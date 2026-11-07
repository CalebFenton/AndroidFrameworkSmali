.class public final Landroid/icu/text/StringPrep;
.super Ljava/lang/Object;
.source "StringPrep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/StringPrep$Values;
    }
.end annotation


# static fields
.field public static final greylist-max-o ALLOW_UNASSIGNED:I = 0x1

.field private static final greylist-max-o CACHE:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/icu/text/StringPrep;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o CHECK_BIDI_ON:I = 0x2

.field public static final greylist-max-o test-api DEFAULT:I = 0x0

.field private static final greylist-max-o DELETE:I = 0x3

.field private static final greylist-max-o FOUR_UCHARS_MAPPING_INDEX_START:I = 0x6

.field private static final greylist-max-o INDEX_MAPPING_DATA_SIZE:I = 0x1

.field private static final greylist-max-o INDEX_TOP:I = 0x10

.field private static final greylist-max-o MAP:I = 0x1

.field private static final greylist-max-o MAX_INDEX_VALUE:I = 0x3fbf

.field private static final greylist-max-o MAX_PROFILE:I = 0xd

.field private static final greylist-max-o NORMALIZATION_ON:I = 0x1

.field private static final greylist-max-o NORM_CORRECTNS_LAST_UNI_VERSION:I = 0x2

.field private static final greylist-max-o ONE_UCHAR_MAPPING_INDEX_START:I = 0x3

.field private static final greylist-max-o OPTIONS:I = 0x7

.field private static final greylist-max-o PROFILE_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o PROHIBITED:I = 0x2

.field public static final greylist-max-o RFC3491_NAMEPREP:I = 0x0

.field public static final greylist-max-o RFC3530_NFS4_CIS_PREP:I = 0x3

.field public static final greylist-max-o RFC3530_NFS4_CS_PREP:I = 0x1

.field public static final greylist-max-o RFC3530_NFS4_CS_PREP_CI:I = 0x2

.field public static final greylist-max-o RFC3530_NFS4_MIXED_PREP_PREFIX:I = 0x4

.field public static final greylist-max-o RFC3530_NFS4_MIXED_PREP_SUFFIX:I = 0x5

.field public static final greylist-max-o RFC3722_ISCSI:I = 0x6

.field public static final greylist-max-o RFC3920_NODEPREP:I = 0x7

.field public static final greylist-max-o test-api RFC3920_RESOURCEPREP:I = 0x8

.field public static final greylist-max-o RFC4011_MIB:I = 0x9

.field public static final greylist-max-o RFC4013_SASLPREP:I = 0xa

.field public static final greylist-max-o RFC4505_TRACE:I = 0xb

.field public static final greylist-max-o RFC4518_LDAP:I = 0xc

.field public static final greylist-max-o RFC4518_LDAP_CI:I = 0xd

.field private static final greylist-max-o THREE_UCHARS_MAPPING_INDEX_START:I = 0x5

.field private static final greylist-max-o TWO_UCHARS_MAPPING_INDEX_START:I = 0x4

.field private static final greylist-max-o TYPE_LIMIT:I = 0x4

.field private static final greylist-max-o TYPE_THRESHOLD:I = 0xfff0

.field private static final greylist-max-o UNASSIGNED:I


# instance fields
.field private greylist-max-o bdp:Landroid/icu/impl/UBiDiProps;

.field private greylist-max-o checkBiDi:Z

.field private greylist-max-o doNFKC:Z

.field private greylist-max-o indexes:[I

.field private greylist-max-o mappingData:[C

.field private greylist-max-o normCorrVer:Landroid/icu/util/VersionInfo;

.field private greylist-max-o sprepTrie:Landroid/icu/impl/CharTrie;

.field private greylist-max-o sprepUniVer:Landroid/icu/util/VersionInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 14

    .line 167
    const-string v12, "rfc4518"

    const-string v13, "rfc4518ci"

    const-string v0, "rfc3491"

    const-string v1, "rfc3530cs"

    const-string v2, "rfc3530csci"

    const-string v3, "rfc3491"

    const-string v4, "rfc3530mixp"

    const-string v5, "rfc3491"

    const-string v6, "rfc3722"

    const-string v7, "rfc3920node"

    const-string v8, "rfc3920res"

    const-string v9, "rfc4011"

    const-string v10, "rfc4013"

    const-string v11, "rfc4505"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/StringPrep;->PROFILE_NAMES:[Ljava/lang/String;

    .line 185
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/ref/WeakReference;

    sput-object v0, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/StringPrep;-><init>(Ljava/nio/ByteBuffer;)V

    .line 261
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Landroid/icu/impl/StringPrepDataReader;

    invoke-direct {v0, p1}, Landroid/icu/impl/StringPrepDataReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 267
    .local v0, "reader":Landroid/icu/impl/StringPrepDataReader;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/icu/impl/StringPrepDataReader;->readIndexes(I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/StringPrep;->indexes:[I

    .line 269
    new-instance v1, Landroid/icu/impl/CharTrie;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/icu/impl/CharTrie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    iput-object v1, p0, Landroid/icu/text/StringPrep;->sprepTrie:Landroid/icu/impl/CharTrie;

    .line 273
    iget-object v1, p0, Landroid/icu/text/StringPrep;->indexes:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v3, 0x2

    div-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/icu/impl/StringPrepDataReader;->read(I)[C

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    .line 276
    iget-object v1, p0, Landroid/icu/text/StringPrep;->indexes:[I

    const/4 v4, 0x7

    aget v1, v1, v4

    and-int/2addr v1, v2

    const/4 v5, 0x0

    if-lez v1, :cond_30

    move v1, v2

    goto :goto_31

    :cond_30
    move v1, v5

    :goto_31
    iput-boolean v1, p0, Landroid/icu/text/StringPrep;->doNFKC:Z

    .line 277
    iget-object v1, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v1, v1, v4

    and-int/2addr v1, v3

    if-lez v1, :cond_3b

    move v5, v2

    :cond_3b
    iput-boolean v5, p0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    .line 278
    invoke-virtual {v0}, Landroid/icu/impl/StringPrepDataReader;->getUnicodeVersion()[B

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/StringPrep;->getVersionInfo([B)Landroid/icu/util/VersionInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/StringPrep;->sprepUniVer:Landroid/icu/util/VersionInfo;

    .line 279
    iget-object v1, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v1, v1, v3

    invoke-static {v1}, Landroid/icu/text/StringPrep;->getVersionInfo(I)Landroid/icu/util/VersionInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/StringPrep;->normCorrVer:Landroid/icu/util/VersionInfo;

    .line 280
    invoke-static {}, Landroid/icu/lang/UCharacter;->getUnicodeVersion()Landroid/icu/util/VersionInfo;

    move-result-object v1

    .line 281
    .local v1, "normUniVer":Landroid/icu/util/VersionInfo;
    iget-object v3, p0, Landroid/icu/text/StringPrep;->sprepUniVer:Landroid/icu/util/VersionInfo;

    invoke-virtual {v1, v3}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    move-result v3

    if-gez v3, :cond_75

    iget-object v3, p0, Landroid/icu/text/StringPrep;->normCorrVer:Landroid/icu/util/VersionInfo;

    .line 282
    invoke-virtual {v1, v3}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    move-result v3

    if-gez v3, :cond_75

    iget-object v3, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v3, v3, v4

    and-int/2addr v2, v3

    if-gtz v2, :cond_6d

    goto :goto_75

    .line 285
    :cond_6d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Normalization Correction version not supported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_75
    :goto_75
    iget-boolean v2, p0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    if-eqz v2, :cond_7d

    .line 289
    sget-object v2, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    iput-object v2, p0, Landroid/icu/text/StringPrep;->bdp:Landroid/icu/impl/UBiDiProps;

    .line 291
    :cond_7d
    return-void
.end method

.method private greylist-max-o getCodePointValue(I)C
    .registers 3
    .param p1, "ch"    # I

    .line 232
    iget-object v0, p0, Landroid/icu/text/StringPrep;->sprepTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {v0, p1}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v0

    return v0
.end method

.method public static greylist-max-o test-api getInstance(I)Landroid/icu/text/StringPrep;
    .registers 7
    .param p0, "profile"    # I

    .line 300
    if-ltz p0, :cond_54

    const/16 v0, 0xd

    if-gt p0, v0, :cond_54

    .line 304
    const/4 v0, 0x0

    .line 308
    .local v0, "instance":Landroid/icu/text/StringPrep;
    sget-object v1, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    monitor-enter v1

    .line 309
    :try_start_a
    sget-object v2, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, p0

    .line 310
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/icu/text/StringPrep;>;"
    if-eqz v2, :cond_17

    .line 311
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/StringPrep;

    move-object v0, v3

    .line 314
    :cond_17
    if-nez v0, :cond_4f

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/icu/text/StringPrep;->PROFILE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".spp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_51

    .line 316
    .local v3, "bytes":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_44

    .line 318
    :try_start_36
    new-instance v4, Landroid/icu/text/StringPrep;

    invoke-direct {v4, v3}, Landroid/icu/text/StringPrep;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_3d
    .catchall {:try_start_36 .. :try_end_3b} :catchall_51

    .line 321
    .end local v0    # "instance":Landroid/icu/text/StringPrep;
    .local v4, "instance":Landroid/icu/text/StringPrep;
    move-object v0, v4

    goto :goto_44

    .line 319
    .end local v4    # "instance":Landroid/icu/text/StringPrep;
    .restart local v0    # "instance":Landroid/icu/text/StringPrep;
    :catch_3d
    move-exception v4

    .line 320
    .local v4, "e":Ljava/io/IOException;
    :try_start_3e
    new-instance v5, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v5, v4}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "instance":Landroid/icu/text/StringPrep;
    .end local p0    # "profile":I
    throw v5

    .line 323
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "instance":Landroid/icu/text/StringPrep;
    .restart local p0    # "profile":I
    :cond_44
    :goto_44
    if-eqz v0, :cond_4f

    .line 324
    sget-object v4, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, p0

    .line 327
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/icu/text/StringPrep;>;"
    .end local v3    # "bytes":Ljava/nio/ByteBuffer;
    :cond_4f
    monitor-exit v1

    .line 328
    return-object v0

    .line 327
    :catchall_51
    move-exception v2

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_51

    throw v2

    .line 301
    .end local v0    # "instance":Landroid/icu/text/StringPrep;
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad profile type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final greylist-max-o getValues(CLandroid/icu/text/StringPrep$Values;)V
    .registers 5
    .param p0, "trieWord"    # C
    .param p1, "values"    # Landroid/icu/text/StringPrep$Values;

    .line 343
    invoke-virtual {p1}, Landroid/icu/text/StringPrep$Values;->reset()V

    .line 344
    if-nez p0, :cond_9

    .line 350
    const/4 v0, 0x4

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    goto :goto_3d

    .line 351
    :cond_9
    const v0, 0xfff0

    if-lt p0, v0, :cond_13

    .line 352
    sub-int v0, p0, v0

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    goto :goto_3d

    .line 355
    :cond_13
    const/4 v0, 0x1

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    .line 357
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x0

    if-lez v1, :cond_22

    .line 358
    iput-boolean v0, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    .line 359
    shr-int/lit8 v0, p0, 0x2

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    goto :goto_30

    .line 362
    :cond_22
    iput-boolean v2, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    .line 363
    shl-int/lit8 v0, p0, 0x10

    shr-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    .line 364
    iget v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    .line 368
    :goto_30
    shr-int/lit8 v0, p0, 0x2

    const/16 v1, 0x3fbf

    if-ne v0, v1, :cond_3d

    .line 369
    const/4 v0, 0x3

    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    .line 370
    iput-boolean v2, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    .line 371
    iput v2, p1, Landroid/icu/text/StringPrep$Values;->value:I

    .line 374
    :cond_3d
    :goto_3d
    return-void
.end method

.method private static greylist-max-o getVersionInfo(I)Landroid/icu/util/VersionInfo;
    .registers 6
    .param p0, "comp"    # I

    .line 236
    and-int/lit16 v0, p0, 0xff

    .line 237
    .local v0, "micro":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 238
    .local v1, "milli":I
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 239
    .local v2, "minor":I
    shr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 240
    .local v3, "major":I
    invoke-static {v3, v2, v1, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v4

    return-object v4
.end method

.method private static greylist-max-o getVersionInfo([B)Landroid/icu/util/VersionInfo;
    .registers 5
    .param p0, "version"    # [B

    .line 244
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 245
    const/4 v0, 0x0

    return-object v0

    .line 247
    :cond_6
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o map(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .registers 13
    .param p1, "iter"    # Landroid/icu/text/UCharacterIterator;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 381
    new-instance v0, Landroid/icu/text/StringPrep$Values;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/StringPrep$Values;-><init>(Landroid/icu/text/StringPrep-IA;)V

    .line 382
    .local v0, "val":Landroid/icu/text/StringPrep$Values;
    const/4 v1, 0x0

    .line 383
    .local v1, "result":C
    const/4 v2, -0x1

    .line 384
    .local v2, "ch":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 385
    .local v3, "dest":Ljava/lang/StringBuffer;
    and-int/lit8 v4, p2, 0x1

    const/4 v5, 0x1

    if-lez v4, :cond_14

    move v4, v5

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    .line 387
    .local v4, "allowUnassigned":Z
    :goto_15
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v6

    move v2, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8d

    .line 389
    invoke-direct {p0, v2}, Landroid/icu/text/StringPrep;->getCodePointValue(I)C

    move-result v1

    .line 390
    invoke-static {v1, v0}, Landroid/icu/text/StringPrep;->getValues(CLandroid/icu/text/StringPrep$Values;)V

    .line 393
    iget v6, v0, Landroid/icu/text/StringPrep$Values;->type:I

    const/4 v7, 0x3

    if-nez v6, :cond_3c

    if-eqz v4, :cond_2c

    goto :goto_3c

    .line 394
    :cond_2c
    new-instance v5, Landroid/icu/text/StringPrepParseException;

    .line 396
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v8

    const-string v9, "An unassigned code point was found in the input"

    invoke-direct {v5, v9, v7, v6, v8}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    .line 397
    :cond_3c
    :goto_3c
    iget v6, v0, Landroid/icu/text/StringPrep$Values;->type:I

    if-ne v6, v5, :cond_84

    .line 400
    iget-boolean v6, v0, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    if-eqz v6, :cond_80

    .line 401
    iget v6, v0, Landroid/icu/text/StringPrep$Values;->value:I

    .line 402
    .local v6, "index":I
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v7, v8, v7

    const/4 v8, 0x4

    if-lt v6, v7, :cond_55

    iget-object v7, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v7, v7, v8

    if-ge v6, v7, :cond_55

    .line 404
    const/4 v7, 0x1

    .local v7, "length":I
    goto :goto_7a

    .line 405
    .end local v7    # "length":I
    :cond_55
    iget-object v7, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v7, v7, v8

    const/4 v8, 0x5

    if-lt v6, v7, :cond_64

    iget-object v7, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v7, v7, v8

    if-ge v6, v7, :cond_64

    .line 407
    const/4 v7, 0x2

    .restart local v7    # "length":I
    goto :goto_7a

    .line 408
    .end local v7    # "length":I
    :cond_64
    iget-object v7, p0, Landroid/icu/text/StringPrep;->indexes:[I

    aget v7, v7, v8

    if-lt v6, v7, :cond_73

    iget-object v7, p0, Landroid/icu/text/StringPrep;->indexes:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    if-ge v6, v7, :cond_73

    .line 410
    const/4 v7, 0x3

    .restart local v7    # "length":I
    goto :goto_7a

    .line 412
    .end local v7    # "length":I
    :cond_73
    iget-object v7, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "index":I
    .local v8, "index":I
    aget-char v7, v7, v6

    move v6, v8

    .line 415
    .end local v8    # "index":I
    .restart local v6    # "index":I
    .restart local v7    # "length":I
    :goto_7a
    iget-object v8, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    invoke-virtual {v3, v8, v6, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 416
    goto :goto_15

    .line 419
    .end local v6    # "index":I
    .end local v7    # "length":I
    :cond_80
    iget v6, v0, Landroid/icu/text/StringPrep$Values;->value:I

    sub-int/2addr v2, v6

    goto :goto_89

    .line 421
    :cond_84
    iget v6, v0, Landroid/icu/text/StringPrep$Values;->type:I

    if-ne v6, v7, :cond_89

    .line 423
    goto :goto_15

    .line 426
    :cond_89
    :goto_89
    invoke-static {v3, v2}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 429
    :cond_8d
    return-object v3
.end method

.method private greylist-max-o normalize(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "src"    # Ljava/lang/StringBuffer;

    .line 434
    new-instance v0, Ljava/lang/StringBuffer;

    .line 436
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    .line 435
    const/16 v3, 0x20

    invoke-static {v1, v2, v3}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 434
    return-object v0
.end method


# virtual methods
.method public greylist-max-o test-api prepare(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 587
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 588
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .registers 21
    .param p1, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 506
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/icu/text/StringPrep;->map(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 507
    .local v1, "mapOut":Ljava/lang/StringBuffer;
    move-object v2, v1

    .line 509
    .local v2, "normOut":Ljava/lang/StringBuffer;
    iget-boolean v3, v0, Landroid/icu/text/StringPrep;->doNFKC:Z

    if-eqz v3, :cond_f

    .line 511
    invoke-direct {v0, v1}, Landroid/icu/text/StringPrep;->normalize(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 516
    :cond_f
    invoke-static {v2}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object v3

    .line 517
    .local v3, "iter":Landroid/icu/text/UCharacterIterator;
    new-instance v4, Landroid/icu/text/StringPrep$Values;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/icu/text/StringPrep$Values;-><init>(Landroid/icu/text/StringPrep-IA;)V

    .line 518
    .local v4, "val":Landroid/icu/text/StringPrep$Values;
    const/16 v5, 0x17

    .line 519
    .local v5, "direction":I
    const/16 v6, 0x17

    .line 520
    .local v6, "firstCharDir":I
    const/4 v7, -0x1

    .local v7, "rtlPos":I
    const/4 v8, -0x1

    .line 521
    .local v8, "ltrPos":I
    const/4 v9, 0x0

    .local v9, "rightToLeft":Z
    const/4 v10, 0x0

    .line 523
    .local v10, "leftToRight":Z
    :cond_21
    :goto_21
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v11

    move v12, v11

    .local v12, "ch":I
    const/4 v13, -0x1

    const/4 v15, 0x1

    if-eq v11, v13, :cond_6e

    .line 524
    invoke-direct {v0, v12}, Landroid/icu/text/StringPrep;->getCodePointValue(I)C

    move-result v11

    .line 525
    .local v11, "result":C
    invoke-static {v11, v4}, Landroid/icu/text/StringPrep;->getValues(CLandroid/icu/text/StringPrep$Values;)V

    .line 527
    iget v13, v4, Landroid/icu/text/StringPrep$Values;->type:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_5c

    .line 532
    iget-boolean v13, v0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    if-eqz v13, :cond_21

    .line 533
    iget-object v13, v0, Landroid/icu/text/StringPrep;->bdp:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v13, v12}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v5

    .line 534
    const/16 v13, 0x17

    if-ne v6, v13, :cond_45

    .line 535
    move v6, v5

    .line 537
    :cond_45
    if-nez v5, :cond_4e

    .line 538
    const/4 v10, 0x1

    .line 539
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v13

    sub-int/2addr v13, v15

    move v8, v13

    .line 541
    :cond_4e
    if-eq v5, v15, :cond_54

    const/16 v13, 0xd

    if-ne v5, v13, :cond_21

    .line 542
    :cond_54
    const/4 v9, 0x1

    .line 543
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v13

    add-int/lit8 v7, v13, -0x1

    goto :goto_21

    .line 528
    :cond_5c
    new-instance v13, Landroid/icu/text/StringPrepParseException;

    .line 529
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "mapOut":Ljava/lang/StringBuffer;
    .local v16, "mapOut":Ljava/lang/StringBuffer;
    iget v1, v4, Landroid/icu/text/StringPrep$Values;->value:I

    move-object/from16 v17, v2

    .end local v2    # "normOut":Ljava/lang/StringBuffer;
    .local v17, "normOut":Ljava/lang/StringBuffer;
    const-string v2, "A prohibited code point was found in the input"

    invoke-direct {v13, v2, v14, v15, v1}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v13

    .line 547
    .end local v11    # "result":C
    .end local v16    # "mapOut":Ljava/lang/StringBuffer;
    .end local v17    # "normOut":Ljava/lang/StringBuffer;
    .restart local v1    # "mapOut":Ljava/lang/StringBuffer;
    .restart local v2    # "normOut":Ljava/lang/StringBuffer;
    :cond_6e
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "mapOut":Ljava/lang/StringBuffer;
    .end local v2    # "normOut":Ljava/lang/StringBuffer;
    .restart local v16    # "mapOut":Ljava/lang/StringBuffer;
    .restart local v17    # "normOut":Ljava/lang/StringBuffer;
    iget-boolean v1, v0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    if-ne v1, v15, :cond_aa

    .line 549
    const/4 v1, 0x4

    const-string v2, "The input does not conform to the rules for BiDi code points."

    if-ne v10, v15, :cond_8c

    if-ne v9, v15, :cond_8c

    .line 550
    new-instance v11, Landroid/icu/text/StringPrepParseException;

    .line 551
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v13

    .line 552
    if-le v7, v8, :cond_87

    move v14, v7

    goto :goto_88

    :cond_87
    move v14, v8

    :goto_88
    invoke-direct {v11, v2, v1, v13, v14}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v11

    .line 556
    :cond_8c
    if-ne v9, v15, :cond_aa

    if-eq v6, v15, :cond_95

    const/16 v13, 0xd

    if-ne v6, v13, :cond_9b

    goto :goto_97

    :cond_95
    const/16 v13, 0xd

    :goto_97
    if-eq v5, v15, :cond_aa

    if-eq v5, v13, :cond_aa

    .line 560
    :cond_9b
    new-instance v11, Landroid/icu/text/StringPrepParseException;

    .line 561
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v13

    .line 562
    if-le v7, v8, :cond_a5

    move v14, v7

    goto :goto_a6

    :cond_a5
    move v14, v8

    :goto_a6
    invoke-direct {v11, v2, v1, v13, v14}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v11

    .line 565
    :cond_aa
    return-object v17
.end method

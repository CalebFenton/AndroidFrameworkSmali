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
.field public static final ALLOW_UNASSIGNED:I = 0x1

.field private static final CACHE:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/icu/text/StringPrep;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHECK_BIDI_ON:I = 0x2

.field public static final DEFAULT:I = 0x0

.field private static final DELETE:I = 0x3

.field private static final FOUR_UCHARS_MAPPING_INDEX_START:I = 0x6

.field private static final INDEX_MAPPING_DATA_SIZE:I = 0x1

.field private static final INDEX_TOP:I = 0x10

.field private static final MAP:I = 0x1

.field private static final MAX_INDEX_VALUE:I = 0x3fbf

.field private static final MAX_PROFILE:I = 0xd

.field private static final NORMALIZATION_ON:I = 0x1

.field private static final NORM_CORRECTNS_LAST_UNI_VERSION:I = 0x2

.field private static final ONE_UCHAR_MAPPING_INDEX_START:I = 0x3

.field private static final OPTIONS:I = 0x7

.field private static final PROFILE_NAMES:[Ljava/lang/String;

.field private static final PROHIBITED:I = 0x2

.field public static final RFC3491_NAMEPREP:I = 0x0

.field public static final RFC3530_NFS4_CIS_PREP:I = 0x3

.field public static final RFC3530_NFS4_CS_PREP:I = 0x1

.field public static final RFC3530_NFS4_CS_PREP_CI:I = 0x2

.field public static final RFC3530_NFS4_MIXED_PREP_PREFIX:I = 0x4

.field public static final RFC3530_NFS4_MIXED_PREP_SUFFIX:I = 0x5

.field public static final RFC3722_ISCSI:I = 0x6

.field public static final RFC3920_NODEPREP:I = 0x7

.field public static final RFC3920_RESOURCEPREP:I = 0x8

.field public static final RFC4011_MIB:I = 0x9

.field public static final RFC4013_SASLPREP:I = 0xa

.field public static final RFC4505_TRACE:I = 0xb

.field public static final RFC4518_LDAP:I = 0xc

.field public static final RFC4518_LDAP_CI:I = 0xd

.field private static final THREE_UCHARS_MAPPING_INDEX_START:I = 0x5

.field private static final TWO_UCHARS_MAPPING_INDEX_START:I = 0x4

.field private static final TYPE_LIMIT:I = 0x4

.field private static final TYPE_THRESHOLD:I = 0xfff0

.field private static final UNASSIGNED:I


# instance fields
.field private bdp:Landroid/icu/impl/UBiDiProps;

.field private checkBiDi:Z

.field private doNFKC:Z

.field private indexes:[I

.field private mappingData:[C

.field private normCorrVer:Landroid/icu/util/VersionInfo;

.field private sprepTrie:Landroid/icu/impl/CharTrie;

.field private sprepUniVer:Landroid/icu/util/VersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xe

    #@2
    .line 177
    new-array v0, v3, [Ljava/lang/String;

    #@4
    .line 178
    const-string/jumbo v1, "rfc3491"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 179
    const-string/jumbo v1, "rfc3530cs"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 180
    const-string/jumbo v1, "rfc3530csci"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 181
    const-string/jumbo v1, "rfc3491"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 182
    const-string/jumbo v1, "rfc3530mixp"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 183
    const-string/jumbo v1, "rfc3491"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 184
    const-string/jumbo v1, "rfc3722"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 185
    const-string/jumbo v1, "rfc3920node"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 186
    const-string/jumbo v1, "rfc3920res"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 187
    const-string/jumbo v1, "rfc4011"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 188
    const-string/jumbo v1, "rfc4013"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 189
    const-string/jumbo v1, "rfc4505"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 190
    const-string/jumbo v1, "rfc4518"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 191
    const-string/jumbo v1, "rfc4518ci"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 177
    sput-object v0, Landroid/icu/text/StringPrep;->PROFILE_NAMES:[Ljava/lang/String;

    #@60
    .line 195
    new-array v0, v3, [Ljava/lang/ref/WeakReference;

    #@62
    sput-object v0, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    #@64
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/icu/text/StringPrep;-><init>(Ljava/nio/ByteBuffer;)V

    #@7
    .line 271
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x7

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 277
    new-instance v1, Landroid/icu/impl/StringPrepDataReader;

    #@8
    invoke-direct {v1, p1}, Landroid/icu/impl/StringPrepDataReader;-><init>(Ljava/nio/ByteBuffer;)V

    #@b
    .line 280
    .local v1, "reader":Landroid/icu/impl/StringPrepDataReader;
    const/16 v2, 0x10

    #@d
    invoke-virtual {v1, v2}, Landroid/icu/impl/StringPrepDataReader;->readIndexes(I)[I

    #@10
    move-result-object v2

    #@11
    iput-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@13
    .line 282
    new-instance v2, Landroid/icu/impl/CharTrie;

    #@15
    const/4 v5, 0x0

    #@16
    invoke-direct {v2, p1, v5}, Landroid/icu/impl/CharTrie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    #@19
    iput-object v2, p0, Landroid/icu/text/StringPrep;->sprepTrie:Landroid/icu/impl/CharTrie;

    #@1b
    .line 285
    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@1d
    aget v2, v2, v3

    #@1f
    div-int/lit8 v2, v2, 0x2

    #@21
    new-array v2, v2, [C

    #@23
    iput-object v2, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    #@25
    .line 287
    iget-object v2, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    #@27
    invoke-virtual {v1, v2}, Landroid/icu/impl/StringPrepDataReader;->read([C)V

    #@2a
    .line 290
    invoke-virtual {v1}, Landroid/icu/impl/StringPrepDataReader;->getDataFormatVersion()[B

    #@2d
    .line 293
    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@2f
    aget v2, v2, v6

    #@31
    and-int/lit8 v2, v2, 0x1

    #@33
    if-lez v2, :cond_0

    #@35
    move v2, v3

    #@36
    :goto_0
    iput-boolean v2, p0, Landroid/icu/text/StringPrep;->doNFKC:Z

    #@38
    .line 294
    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@3a
    aget v2, v2, v6

    #@3c
    and-int/lit8 v2, v2, 0x2

    #@3e
    if-lez v2, :cond_1

    #@40
    :goto_1
    iput-boolean v3, p0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    #@42
    .line 295
    invoke-virtual {v1}, Landroid/icu/impl/StringPrepDataReader;->getUnicodeVersion()[B

    #@45
    move-result-object v2

    #@46
    invoke-static {v2}, Landroid/icu/text/StringPrep;->getVersionInfo([B)Landroid/icu/util/VersionInfo;

    #@49
    move-result-object v2

    #@4a
    iput-object v2, p0, Landroid/icu/text/StringPrep;->sprepUniVer:Landroid/icu/util/VersionInfo;

    #@4c
    .line 296
    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@4e
    const/4 v3, 0x2

    #@4f
    aget v2, v2, v3

    #@51
    invoke-static {v2}, Landroid/icu/text/StringPrep;->getVersionInfo(I)Landroid/icu/util/VersionInfo;

    #@54
    move-result-object v2

    #@55
    iput-object v2, p0, Landroid/icu/text/StringPrep;->normCorrVer:Landroid/icu/util/VersionInfo;

    #@57
    .line 297
    invoke-static {}, Landroid/icu/lang/UCharacter;->getUnicodeVersion()Landroid/icu/util/VersionInfo;

    #@5a
    move-result-object v0

    #@5b
    .line 298
    .local v0, "normUniVer":Landroid/icu/util/VersionInfo;
    iget-object v2, p0, Landroid/icu/text/StringPrep;->sprepUniVer:Landroid/icu/util/VersionInfo;

    #@5d
    invoke-virtual {v0, v2}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    #@60
    move-result v2

    #@61
    if-gez v2, :cond_2

    #@63
    .line 299
    iget-object v2, p0, Landroid/icu/text/StringPrep;->normCorrVer:Landroid/icu/util/VersionInfo;

    #@65
    invoke-virtual {v0, v2}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    #@68
    move-result v2

    #@69
    if-gez v2, :cond_2

    #@6b
    .line 300
    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@6d
    aget v2, v2, v6

    #@6f
    and-int/lit8 v2, v2, 0x1

    #@71
    if-lez v2, :cond_2

    #@73
    .line 302
    new-instance v2, Ljava/io/IOException;

    #@75
    const-string/jumbo v3, "Normalization Correction version not supported"

    #@78
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v2

    #@7c
    .end local v0    # "normUniVer":Landroid/icu/util/VersionInfo;
    :cond_0
    move v2, v4

    #@7d
    .line 293
    goto :goto_0

    #@7e
    :cond_1
    move v3, v4

    #@7f
    .line 294
    goto :goto_1

    #@80
    .line 305
    .restart local v0    # "normUniVer":Landroid/icu/util/VersionInfo;
    :cond_2
    iget-boolean v2, p0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    #@82
    if-eqz v2, :cond_3

    #@84
    .line 306
    sget-object v2, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@86
    iput-object v2, p0, Landroid/icu/text/StringPrep;->bdp:Landroid/icu/impl/UBiDiProps;

    #@88
    .line 276
    :cond_3
    return-void
.end method

.method private getCodePointValue(I)C
    .locals 1
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/icu/text/StringPrep;->sprepTrie:Landroid/icu/impl/CharTrie;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getInstance(I)Landroid/icu/text/StringPrep;
    .locals 9
    .param p0, "profile"    # I

    #@0
    .prologue
    .line 317
    if-ltz p0, :cond_0

    #@2
    const/16 v6, 0xd

    #@4
    if-le p0, v6, :cond_1

    #@6
    .line 318
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v7, "Bad profile type"

    #@b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v6

    #@f
    .line 321
    :cond_1
    const/4 v3, 0x0

    #@10
    .line 325
    .local v3, "instance":Landroid/icu/text/StringPrep;
    sget-object v7, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    #@12
    monitor-enter v7

    #@13
    .line 326
    :try_start_0
    sget-object v6, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    #@15
    aget-object v5, v6, p0

    #@17
    .line 327
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ibm/icu/text/StringPrep;>;"
    if-eqz v5, :cond_5

    #@19
    .line 328
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    move-object v0, v6

    #@1e
    check-cast v0, Landroid/icu/text/StringPrep;

    #@20
    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@21
    .local v3, "instance":Landroid/icu/text/StringPrep;
    move-object v4, v3

    #@22
    .line 331
    .end local v3    # "instance":Landroid/icu/text/StringPrep;
    .local v4, "instance":Landroid/icu/text/StringPrep;
    :goto_0
    if-nez v4, :cond_4

    #@24
    .line 332
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    sget-object v8, Landroid/icu/text/StringPrep;->PROFILE_NAMES:[Ljava/lang/String;

    #@2b
    aget-object v8, v8, p0

    #@2d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    const-string/jumbo v8, ".spp"

    #@34
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    invoke-static {v6}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    move-result-object v1

    #@40
    .line 333
    .local v1, "bytes":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_3

    #@42
    .line 335
    :try_start_2
    new-instance v3, Landroid/icu/text/StringPrep;

    #@44
    invoke-direct {v3, v1}, Landroid/icu/text/StringPrep;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    .line 340
    .end local v4    # "instance":Landroid/icu/text/StringPrep;
    .restart local v3    # "instance":Landroid/icu/text/StringPrep;
    :goto_1
    if-eqz v3, :cond_2

    #@49
    .line 341
    :try_start_3
    sget-object v6, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    #@4b
    new-instance v8, Ljava/lang/ref/WeakReference;

    #@4d
    invoke-direct {v8, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@50
    aput-object v8, v6, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@52
    .end local v1    # "bytes":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_2
    monitor-exit v7

    #@53
    .line 345
    return-object v3

    #@54
    .line 336
    .end local v3    # "instance":Landroid/icu/text/StringPrep;
    .restart local v1    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v4    # "instance":Landroid/icu/text/StringPrep;
    :catch_0
    move-exception v2

    #@55
    .line 337
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v6, Landroid/icu/util/ICUUncheckedIOException;

    #@57
    invoke-direct {v6, v2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@5a
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5b
    .line 325
    .end local v1    # "bytes":Ljava/nio/ByteBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@5c
    move-object v3, v4

    #@5d
    .end local v4    # "instance":Landroid/icu/text/StringPrep;
    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ibm/icu/text/StringPrep;>;"
    :goto_3
    monitor-exit v7

    #@5e
    throw v6

    #@5f
    :catchall_1
    move-exception v6

    #@60
    goto :goto_3

    #@61
    .restart local v1    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v4    # "instance":Landroid/icu/text/StringPrep;
    .restart local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ibm/icu/text/StringPrep;>;"
    :cond_3
    move-object v3, v4

    #@62
    .end local v4    # "instance":Landroid/icu/text/StringPrep;
    .restart local v3    # "instance":Landroid/icu/text/StringPrep;
    goto :goto_1

    #@63
    .end local v1    # "bytes":Ljava/nio/ByteBuffer;
    .end local v3    # "instance":Landroid/icu/text/StringPrep;
    .restart local v4    # "instance":Landroid/icu/text/StringPrep;
    :cond_4
    move-object v3, v4

    #@64
    .end local v4    # "instance":Landroid/icu/text/StringPrep;
    .restart local v3    # "instance":Landroid/icu/text/StringPrep;
    goto :goto_2

    #@65
    .local v3, "instance":Landroid/icu/text/StringPrep;
    :cond_5
    move-object v4, v3

    #@66
    .restart local v4    # "instance":Landroid/icu/text/StringPrep;
    goto :goto_0
.end method

.method private static final getValues(CLandroid/icu/text/StringPrep$Values;)V
    .locals 3
    .param p0, "trieWord"    # C
    .param p1, "values"    # Landroid/icu/text/StringPrep$Values;

    #@0
    .prologue
    const v0, 0xfff0

    #@3
    const/4 v1, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 360
    invoke-virtual {p1}, Landroid/icu/text/StringPrep$Values;->reset()V

    #@8
    .line 361
    if-nez p0, :cond_1

    #@a
    .line 367
    const/4 v0, 0x4

    #@b
    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    #@d
    .line 359
    :cond_0
    :goto_0
    return-void

    #@e
    .line 368
    :cond_1
    if-lt p0, v0, :cond_2

    #@10
    .line 369
    sub-int v0, p0, v0

    #@12
    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    #@14
    goto :goto_0

    #@15
    .line 372
    :cond_2
    iput v1, p1, Landroid/icu/text/StringPrep$Values;->type:I

    #@17
    .line 374
    and-int/lit8 v0, p0, 0x2

    #@19
    if-lez v0, :cond_3

    #@1b
    .line 375
    iput-boolean v1, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    #@1d
    .line 376
    shr-int/lit8 v0, p0, 0x2

    #@1f
    iput v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    #@21
    .line 385
    :goto_1
    shr-int/lit8 v0, p0, 0x2

    #@23
    const/16 v1, 0x3fbf

    #@25
    if-ne v0, v1, :cond_0

    #@27
    .line 386
    const/4 v0, 0x3

    #@28
    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    #@2a
    .line 387
    iput-boolean v2, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    #@2c
    .line 388
    iput v2, p1, Landroid/icu/text/StringPrep$Values;->value:I

    #@2e
    goto :goto_0

    #@2f
    .line 379
    :cond_3
    iput-boolean v2, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    #@31
    .line 380
    shl-int/lit8 v0, p0, 0x10

    #@33
    shr-int/lit8 v0, v0, 0x10

    #@35
    iput v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    #@37
    .line 381
    iget v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    #@39
    shr-int/lit8 v0, v0, 0x2

    #@3b
    iput v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    #@3d
    goto :goto_1
.end method

.method private static getVersionInfo(I)Landroid/icu/util/VersionInfo;
    .locals 5
    .param p0, "comp"    # I

    #@0
    .prologue
    .line 248
    and-int/lit16 v1, p0, 0xff

    #@2
    .line 249
    .local v1, "micro":I
    shr-int/lit8 v4, p0, 0x8

    #@4
    and-int/lit16 v2, v4, 0xff

    #@6
    .line 250
    .local v2, "milli":I
    shr-int/lit8 v4, p0, 0x10

    #@8
    and-int/lit16 v3, v4, 0xff

    #@a
    .line 251
    .local v3, "minor":I
    shr-int/lit8 v4, p0, 0x18

    #@c
    and-int/lit16 v0, v4, 0xff

    #@e
    .line 252
    .local v0, "major":I
    invoke-static {v0, v3, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@11
    move-result-object v4

    #@12
    return-object v4
.end method

.method private static getVersionInfo([B)Landroid/icu/util/VersionInfo;
    .locals 4
    .param p0, "version"    # [B

    #@0
    .prologue
    .line 256
    array-length v0, p0

    #@1
    const/4 v1, 0x4

    #@2
    if-eq v0, v1, :cond_0

    #@4
    .line 257
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 259
    :cond_0
    const/4 v0, 0x0

    #@7
    aget-byte v0, p0, v0

    #@9
    const/4 v1, 0x1

    #@a
    aget-byte v1, p0, v1

    #@c
    const/4 v2, 0x2

    #@d
    aget-byte v2, p0, v2

    #@f
    const/4 v3, 0x3

    #@10
    aget-byte v3, p0, v3

    #@12
    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method private map(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 13
    .param p1, "iter"    # Landroid/icu/text/UCharacterIterator;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x5

    #@1
    const/4 v10, 0x4

    #@2
    const/4 v12, 0x3

    #@3
    .line 398
    new-instance v7, Landroid/icu/text/StringPrep$Values;

    #@5
    const/4 v8, 0x0

    #@6
    invoke-direct {v7, v8}, Landroid/icu/text/StringPrep$Values;-><init>(Landroid/icu/text/StringPrep$Values;)V

    #@9
    .line 399
    .local v7, "val":Landroid/icu/text/StringPrep$Values;
    const/4 v6, 0x0

    #@a
    .line 400
    .local v6, "result":C
    const/4 v1, -0x1

    #@b
    .line 401
    .local v1, "ch":I
    new-instance v2, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    .line 402
    .local v2, "dest":Ljava/lang/StringBuffer;
    and-int/lit8 v8, p2, 0x1

    #@12
    if-lez v8, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    .line 404
    .end local v6    # "result":C
    .local v0, "allowUnassigned":Z
    :goto_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@18
    move-result v1

    #@19
    const/4 v8, -0x1

    #@1a
    if-eq v1, v8, :cond_8

    #@1c
    .line 406
    invoke-direct {p0, v1}, Landroid/icu/text/StringPrep;->getCodePointValue(I)C

    #@1f
    move-result v6

    #@20
    .line 407
    .local v6, "result":C
    invoke-static {v6, v7}, Landroid/icu/text/StringPrep;->getValues(CLandroid/icu/text/StringPrep$Values;)V

    #@23
    .line 410
    iget v8, v7, Landroid/icu/text/StringPrep$Values;->type:I

    #@25
    if-nez v8, :cond_1

    #@27
    if-nez v0, :cond_1

    #@29
    .line 411
    new-instance v8, Landroid/icu/text/StringPrepParseException;

    #@2b
    const-string/jumbo v9, "An unassigned code point was found in the input"

    #@2e
    .line 413
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@31
    move-result-object v10

    #@32
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@35
    move-result v11

    #@36
    .line 411
    invoke-direct {v8, v9, v12, v10, v11}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@39
    throw v8

    #@3a
    .line 402
    .end local v0    # "allowUnassigned":Z
    .local v6, "result":C
    :cond_0
    const/4 v0, 0x0

    #@3b
    .restart local v0    # "allowUnassigned":Z
    goto :goto_0

    #@3c
    .line 414
    .local v6, "result":C
    :cond_1
    iget v8, v7, Landroid/icu/text/StringPrep$Values;->type:I

    #@3e
    const/4 v9, 0x1

    #@3f
    if-ne v8, v9, :cond_7

    #@41
    .line 417
    iget-boolean v8, v7, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    #@43
    if-eqz v8, :cond_5

    #@45
    .line 418
    iget v3, v7, Landroid/icu/text/StringPrep$Values;->value:I

    #@47
    .line 419
    .local v3, "index":I
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@49
    aget v8, v8, v12

    #@4b
    if-lt v3, v8, :cond_2

    #@4d
    .line 420
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@4f
    aget v8, v8, v10

    #@51
    if-ge v3, v8, :cond_2

    #@53
    .line 421
    const/4 v5, 0x1

    #@54
    .line 432
    .local v5, "length":I
    :goto_1
    iget-object v8, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    #@56
    invoke-virtual {v2, v8, v3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@59
    goto :goto_0

    #@5a
    .line 422
    .end local v5    # "length":I
    :cond_2
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@5c
    aget v8, v8, v10

    #@5e
    if-lt v3, v8, :cond_3

    #@60
    .line 423
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@62
    aget v8, v8, v11

    #@64
    if-ge v3, v8, :cond_3

    #@66
    .line 424
    const/4 v5, 0x2

    #@67
    .line 423
    .restart local v5    # "length":I
    goto :goto_1

    #@68
    .line 425
    .end local v5    # "length":I
    :cond_3
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@6a
    aget v8, v8, v11

    #@6c
    if-lt v3, v8, :cond_4

    #@6e
    .line 426
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@70
    const/4 v9, 0x6

    #@71
    aget v8, v8, v9

    #@73
    if-ge v3, v8, :cond_4

    #@75
    .line 427
    const/4 v5, 0x3

    #@76
    .line 426
    .restart local v5    # "length":I
    goto :goto_1

    #@77
    .line 429
    .end local v5    # "length":I
    :cond_4
    iget-object v8, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    #@79
    add-int/lit8 v4, v3, 0x1

    #@7b
    .end local v3    # "index":I
    .local v4, "index":I
    aget-char v5, v8, v3

    #@7d
    .restart local v5    # "length":I
    move v3, v4

    #@7e
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_1

    #@7f
    .line 436
    .end local v3    # "index":I
    .end local v5    # "length":I
    :cond_5
    iget v8, v7, Landroid/icu/text/StringPrep$Values;->value:I

    #@81
    sub-int/2addr v1, v8

    #@82
    .line 443
    :cond_6
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@85
    goto :goto_0

    #@86
    .line 438
    :cond_7
    iget v8, v7, Landroid/icu/text/StringPrep$Values;->type:I

    #@88
    if-ne v8, v12, :cond_6

    #@8a
    goto :goto_0

    #@8b
    .line 446
    .end local v6    # "result":C
    :cond_8
    return-object v2
.end method

.method private normalize(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "src"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    .line 453
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 454
    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    #@8
    .line 455
    const/16 v3, 0x20

    #@a
    .line 452
    invoke-static {v1, v2, v3}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 451
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@11
    return-object v0
.end method


# virtual methods
.method public prepare(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 605
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0, v1, p2}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    .line 606
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 22
    .param p1, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 524
    invoke-direct/range {p0 .. p2}, Landroid/icu/text/StringPrep;->map(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@3
    move-result-object v11

    #@4
    .line 525
    .local v11, "mapOut":Ljava/lang/StringBuffer;
    move-object v12, v11

    #@5
    .line 527
    .local v12, "normOut":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    #@7
    iget-boolean v0, v0, Landroid/icu/text/StringPrep;->doNFKC:Z

    #@9
    move/from16 v17, v0

    #@b
    if-eqz v17, :cond_0

    #@d
    .line 529
    move-object/from16 v0, p0

    #@f
    invoke-direct {v0, v11}, Landroid/icu/text/StringPrep;->normalize(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@12
    move-result-object v12

    #@13
    .line 534
    :cond_0
    invoke-static {v12}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    #@16
    move-result-object v8

    #@17
    .line 535
    .local v8, "iter":Landroid/icu/text/UCharacterIterator;
    new-instance v16, Landroid/icu/text/StringPrep$Values;

    #@19
    const/16 v17, 0x0

    #@1b
    invoke-direct/range {v16 .. v17}, Landroid/icu/text/StringPrep$Values;-><init>(Landroid/icu/text/StringPrep$Values;)V

    #@1e
    .line 536
    .local v16, "val":Landroid/icu/text/StringPrep$Values;
    const/16 v6, 0x17

    #@20
    .line 537
    .local v6, "direction":I
    const/16 v7, 0x17

    #@22
    .line 538
    .local v7, "firstCharDir":I
    const/4 v15, -0x1

    #@23
    .local v15, "rtlPos":I
    const/4 v10, -0x1

    #@24
    .line 539
    .local v10, "ltrPos":I
    const/4 v14, 0x0

    #@25
    .local v14, "rightToLeft":Z
    const/4 v9, 0x0

    #@26
    .line 541
    .local v9, "leftToRight":Z
    :cond_1
    :goto_0
    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@29
    move-result v5

    #@2a
    .local v5, "ch":I
    const/16 v17, -0x1

    #@2c
    move/from16 v0, v17

    #@2e
    if-eq v5, v0, :cond_6

    #@30
    .line 542
    move-object/from16 v0, p0

    #@32
    invoke-direct {v0, v5}, Landroid/icu/text/StringPrep;->getCodePointValue(I)C

    #@35
    move-result v13

    #@36
    .line 543
    .local v13, "result":C
    move-object/from16 v0, v16

    #@38
    invoke-static {v13, v0}, Landroid/icu/text/StringPrep;->getValues(CLandroid/icu/text/StringPrep$Values;)V

    #@3b
    .line 545
    move-object/from16 v0, v16

    #@3d
    iget v0, v0, Landroid/icu/text/StringPrep$Values;->type:I

    #@3f
    move/from16 v17, v0

    #@41
    const/16 v18, 0x2

    #@43
    move/from16 v0, v17

    #@45
    move/from16 v1, v18

    #@47
    if-ne v0, v1, :cond_2

    #@49
    .line 546
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@4b
    const-string/jumbo v18, "A prohibited code point was found in the input"

    #@4e
    .line 547
    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@51
    move-result-object v19

    #@52
    move-object/from16 v0, v16

    #@54
    iget v0, v0, Landroid/icu/text/StringPrep$Values;->value:I

    #@56
    move/from16 v20, v0

    #@58
    const/16 v21, 0x2

    #@5a
    .line 546
    move-object/from16 v0, v17

    #@5c
    move-object/from16 v1, v18

    #@5e
    move/from16 v2, v21

    #@60
    move-object/from16 v3, v19

    #@62
    move/from16 v4, v20

    #@64
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@67
    throw v17

    #@68
    .line 550
    :cond_2
    move-object/from16 v0, p0

    #@6a
    iget-boolean v0, v0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    #@6c
    move/from16 v17, v0

    #@6e
    if-eqz v17, :cond_1

    #@70
    .line 551
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Landroid/icu/text/StringPrep;->bdp:Landroid/icu/impl/UBiDiProps;

    #@74
    move-object/from16 v17, v0

    #@76
    move-object/from16 v0, v17

    #@78
    invoke-virtual {v0, v5}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    #@7b
    move-result v6

    #@7c
    .line 552
    const/16 v17, 0x17

    #@7e
    move/from16 v0, v17

    #@80
    if-ne v7, v0, :cond_3

    #@82
    .line 553
    move v7, v6

    #@83
    .line 555
    :cond_3
    if-nez v6, :cond_4

    #@85
    .line 556
    const/4 v9, 0x1

    #@86
    .line 557
    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@89
    move-result v17

    #@8a
    add-int/lit8 v10, v17, -0x1

    #@8c
    .line 559
    :cond_4
    const/16 v17, 0x1

    #@8e
    move/from16 v0, v17

    #@90
    if-eq v6, v0, :cond_5

    #@92
    const/16 v17, 0xd

    #@94
    move/from16 v0, v17

    #@96
    if-ne v6, v0, :cond_1

    #@98
    .line 560
    :cond_5
    const/4 v14, 0x1

    #@99
    .line 561
    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@9c
    move-result v17

    #@9d
    add-int/lit8 v15, v17, -0x1

    #@9f
    goto :goto_0

    #@a0
    .line 565
    .end local v13    # "result":C
    :cond_6
    move-object/from16 v0, p0

    #@a2
    iget-boolean v0, v0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    #@a4
    move/from16 v17, v0

    #@a6
    if-eqz v17, :cond_b

    #@a8
    .line 567
    if-eqz v9, :cond_8

    #@aa
    if-eqz v14, :cond_8

    #@ac
    .line 568
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@ae
    const-string/jumbo v18, "The input does not conform to the rules for BiDi code points."

    #@b1
    .line 569
    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@b4
    move-result-object v19

    #@b5
    .line 570
    if-le v15, v10, :cond_7

    #@b7
    .line 569
    .end local v15    # "rtlPos":I
    :goto_1
    const/16 v20, 0x4

    #@b9
    .line 568
    move-object/from16 v0, v17

    #@bb
    move-object/from16 v1, v18

    #@bd
    move/from16 v2, v20

    #@bf
    move-object/from16 v3, v19

    #@c1
    invoke-direct {v0, v1, v2, v3, v15}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@c4
    throw v17

    #@c5
    .restart local v15    # "rtlPos":I
    :cond_7
    move v15, v10

    #@c6
    .line 570
    goto :goto_1

    #@c7
    .line 574
    :cond_8
    if-eqz v14, :cond_b

    #@c9
    .line 575
    const/16 v17, 0x1

    #@cb
    move/from16 v0, v17

    #@cd
    if-eq v7, v0, :cond_a

    #@cf
    const/16 v17, 0xd

    #@d1
    move/from16 v0, v17

    #@d3
    if-eq v7, v0, :cond_a

    #@d5
    .line 578
    :cond_9
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@d7
    const-string/jumbo v18, "The input does not conform to the rules for BiDi code points."

    #@da
    .line 579
    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@dd
    move-result-object v19

    #@de
    .line 580
    if-le v15, v10, :cond_c

    #@e0
    .line 579
    .end local v15    # "rtlPos":I
    :goto_2
    const/16 v20, 0x4

    #@e2
    .line 578
    move-object/from16 v0, v17

    #@e4
    move-object/from16 v1, v18

    #@e6
    move/from16 v2, v20

    #@e8
    move-object/from16 v3, v19

    #@ea
    invoke-direct {v0, v1, v2, v3, v15}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@ed
    throw v17

    #@ee
    .line 576
    .restart local v15    # "rtlPos":I
    :cond_a
    const/16 v17, 0x1

    #@f0
    move/from16 v0, v17

    #@f2
    if-eq v6, v0, :cond_b

    #@f4
    const/16 v17, 0xd

    #@f6
    move/from16 v0, v17

    #@f8
    if-ne v6, v0, :cond_9

    #@fa
    .line 583
    :cond_b
    return-object v12

    #@fb
    :cond_c
    move v15, v10

    #@fc
    .line 580
    goto :goto_2
.end method

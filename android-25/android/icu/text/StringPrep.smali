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
    .line 162
    new-array v0, v3, [Ljava/lang/String;

    #@4
    .line 163
    const-string/jumbo v1, "rfc3491"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 164
    const-string/jumbo v1, "rfc3530cs"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 165
    const-string/jumbo v1, "rfc3530csci"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 166
    const-string/jumbo v1, "rfc3491"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 167
    const-string/jumbo v1, "rfc3530mixp"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 168
    const-string/jumbo v1, "rfc3491"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 169
    const-string/jumbo v1, "rfc3722"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 170
    const-string/jumbo v1, "rfc3920node"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 171
    const-string/jumbo v1, "rfc3920res"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 172
    const-string/jumbo v1, "rfc4011"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 173
    const-string/jumbo v1, "rfc4013"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 174
    const-string/jumbo v1, "rfc4505"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 175
    const-string/jumbo v1, "rfc4518"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 176
    const-string/jumbo v1, "rfc4518ci"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 162
    sput-object v0, Landroid/icu/text/StringPrep;->PROFILE_NAMES:[Ljava/lang/String;

    #@60
    .line 180
    new-array v0, v3, [Ljava/lang/ref/WeakReference;

    #@62
    sput-object v0, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    #@64
    .line 58
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
    .line 257
    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/icu/text/StringPrep;-><init>(Ljava/nio/ByteBuffer;)V

    #@7
    .line 255
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
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 261
    new-instance v1, Landroid/icu/impl/StringPrepDataReader;

    #@8
    invoke-direct {v1, p1}, Landroid/icu/impl/StringPrepDataReader;-><init>(Ljava/nio/ByteBuffer;)V

    #@b
    .line 264
    .local v1, "reader":Landroid/icu/impl/StringPrepDataReader;
    const/16 v2, 0x10

    #@d
    invoke-virtual {v1, v2}, Landroid/icu/impl/StringPrepDataReader;->readIndexes(I)[I

    #@10
    move-result-object v2

    #@11
    iput-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@13
    .line 266
    new-instance v2, Landroid/icu/impl/CharTrie;

    #@15
    const/4 v5, 0x0

    #@16
    invoke-direct {v2, p1, v5}, Landroid/icu/impl/CharTrie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    #@19
    iput-object v2, p0, Landroid/icu/text/StringPrep;->sprepTrie:Landroid/icu/impl/CharTrie;

    #@1b
    .line 270
    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@1d
    aget v2, v2, v3

    #@1f
    div-int/lit8 v2, v2, 0x2

    #@21
    invoke-virtual {v1, v2}, Landroid/icu/impl/StringPrepDataReader;->read(I)[C

    #@24
    move-result-object v2

    #@25
    iput-object v2, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    #@27
    .line 273
    invoke-virtual {v1}, Landroid/icu/impl/StringPrepDataReader;->getDataFormatVersion()[B

    #@2a
    .line 276
    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@2c
    aget v2, v2, v6

    #@2e
    and-int/lit8 v2, v2, 0x1

    #@30
    if-lez v2, :cond_0

    #@32
    move v2, v3

    #@33
    :goto_0
    iput-boolean v2, p0, Landroid/icu/text/StringPrep;->doNFKC:Z

    #@35
    .line 277
    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@37
    aget v2, v2, v6

    #@39
    and-int/lit8 v2, v2, 0x2

    #@3b
    if-lez v2, :cond_1

    #@3d
    :goto_1
    iput-boolean v3, p0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    #@3f
    .line 278
    invoke-virtual {v1}, Landroid/icu/impl/StringPrepDataReader;->getUnicodeVersion()[B

    #@42
    move-result-object v2

    #@43
    invoke-static {v2}, Landroid/icu/text/StringPrep;->getVersionInfo([B)Landroid/icu/util/VersionInfo;

    #@46
    move-result-object v2

    #@47
    iput-object v2, p0, Landroid/icu/text/StringPrep;->sprepUniVer:Landroid/icu/util/VersionInfo;

    #@49
    .line 279
    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@4b
    const/4 v3, 0x2

    #@4c
    aget v2, v2, v3

    #@4e
    invoke-static {v2}, Landroid/icu/text/StringPrep;->getVersionInfo(I)Landroid/icu/util/VersionInfo;

    #@51
    move-result-object v2

    #@52
    iput-object v2, p0, Landroid/icu/text/StringPrep;->normCorrVer:Landroid/icu/util/VersionInfo;

    #@54
    .line 280
    invoke-static {}, Landroid/icu/lang/UCharacter;->getUnicodeVersion()Landroid/icu/util/VersionInfo;

    #@57
    move-result-object v0

    #@58
    .line 281
    .local v0, "normUniVer":Landroid/icu/util/VersionInfo;
    iget-object v2, p0, Landroid/icu/text/StringPrep;->sprepUniVer:Landroid/icu/util/VersionInfo;

    #@5a
    invoke-virtual {v0, v2}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    #@5d
    move-result v2

    #@5e
    if-gez v2, :cond_2

    #@60
    .line 282
    iget-object v2, p0, Landroid/icu/text/StringPrep;->normCorrVer:Landroid/icu/util/VersionInfo;

    #@62
    invoke-virtual {v0, v2}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    #@65
    move-result v2

    #@66
    if-gez v2, :cond_2

    #@68
    .line 283
    iget-object v2, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@6a
    aget v2, v2, v6

    #@6c
    and-int/lit8 v2, v2, 0x1

    #@6e
    if-lez v2, :cond_2

    #@70
    .line 285
    new-instance v2, Ljava/io/IOException;

    #@72
    const-string/jumbo v3, "Normalization Correction version not supported"

    #@75
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw v2

    #@79
    .end local v0    # "normUniVer":Landroid/icu/util/VersionInfo;
    :cond_0
    move v2, v4

    #@7a
    .line 276
    goto :goto_0

    #@7b
    :cond_1
    move v3, v4

    #@7c
    .line 277
    goto :goto_1

    #@7d
    .line 288
    .restart local v0    # "normUniVer":Landroid/icu/util/VersionInfo;
    :cond_2
    iget-boolean v2, p0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    #@7f
    if-eqz v2, :cond_3

    #@81
    .line 289
    sget-object v2, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@83
    iput-object v2, p0, Landroid/icu/text/StringPrep;->bdp:Landroid/icu/impl/UBiDiProps;

    #@85
    .line 260
    :cond_3
    return-void
.end method

.method private getCodePointValue(I)C
    .locals 1
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 229
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
    .line 299
    if-ltz p0, :cond_0

    #@2
    const/16 v6, 0xd

    #@4
    if-le p0, v6, :cond_1

    #@6
    .line 300
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v7, "Bad profile type"

    #@b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v6

    #@f
    .line 303
    :cond_1
    const/4 v3, 0x0

    #@10
    .line 307
    .local v3, "instance":Landroid/icu/text/StringPrep;
    sget-object v7, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    #@12
    monitor-enter v7

    #@13
    .line 308
    :try_start_0
    sget-object v6, Landroid/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    #@15
    aget-object v5, v6, p0

    #@17
    .line 309
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/icu/text/StringPrep;>;"
    if-eqz v5, :cond_5

    #@19
    .line 310
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
    .line 313
    .end local v3    # "instance":Landroid/icu/text/StringPrep;
    .local v4, "instance":Landroid/icu/text/StringPrep;
    :goto_0
    if-nez v4, :cond_4

    #@24
    .line 314
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
    .line 315
    .local v1, "bytes":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_3

    #@42
    .line 317
    :try_start_2
    new-instance v3, Landroid/icu/text/StringPrep;

    #@44
    invoke-direct {v3, v1}, Landroid/icu/text/StringPrep;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    .line 322
    .end local v4    # "instance":Landroid/icu/text/StringPrep;
    .restart local v3    # "instance":Landroid/icu/text/StringPrep;
    :goto_1
    if-eqz v3, :cond_2

    #@49
    .line 323
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
    .line 327
    return-object v3

    #@54
    .line 318
    .end local v3    # "instance":Landroid/icu/text/StringPrep;
    .restart local v1    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v4    # "instance":Landroid/icu/text/StringPrep;
    :catch_0
    move-exception v2

    #@55
    .line 319
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
    .line 307
    .end local v1    # "bytes":Ljava/nio/ByteBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@5c
    move-object v3, v4

    #@5d
    .end local v4    # "instance":Landroid/icu/text/StringPrep;
    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/icu/text/StringPrep;>;"
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
    .restart local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/icu/text/StringPrep;>;"
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
    .line 342
    invoke-virtual {p1}, Landroid/icu/text/StringPrep$Values;->reset()V

    #@8
    .line 343
    if-nez p0, :cond_1

    #@a
    .line 349
    const/4 v0, 0x4

    #@b
    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    #@d
    .line 341
    :cond_0
    :goto_0
    return-void

    #@e
    .line 350
    :cond_1
    if-lt p0, v0, :cond_2

    #@10
    .line 351
    sub-int v0, p0, v0

    #@12
    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    #@14
    goto :goto_0

    #@15
    .line 354
    :cond_2
    iput v1, p1, Landroid/icu/text/StringPrep$Values;->type:I

    #@17
    .line 356
    and-int/lit8 v0, p0, 0x2

    #@19
    if-lez v0, :cond_3

    #@1b
    .line 357
    iput-boolean v1, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    #@1d
    .line 358
    shr-int/lit8 v0, p0, 0x2

    #@1f
    iput v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    #@21
    .line 367
    :goto_1
    shr-int/lit8 v0, p0, 0x2

    #@23
    const/16 v1, 0x3fbf

    #@25
    if-ne v0, v1, :cond_0

    #@27
    .line 368
    const/4 v0, 0x3

    #@28
    iput v0, p1, Landroid/icu/text/StringPrep$Values;->type:I

    #@2a
    .line 369
    iput-boolean v2, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    #@2c
    .line 370
    iput v2, p1, Landroid/icu/text/StringPrep$Values;->value:I

    #@2e
    goto :goto_0

    #@2f
    .line 361
    :cond_3
    iput-boolean v2, p1, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    #@31
    .line 362
    shl-int/lit8 v0, p0, 0x10

    #@33
    shr-int/lit8 v0, v0, 0x10

    #@35
    iput v0, p1, Landroid/icu/text/StringPrep$Values;->value:I

    #@37
    .line 363
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
    .line 233
    and-int/lit16 v1, p0, 0xff

    #@2
    .line 234
    .local v1, "micro":I
    shr-int/lit8 v4, p0, 0x8

    #@4
    and-int/lit16 v2, v4, 0xff

    #@6
    .line 235
    .local v2, "milli":I
    shr-int/lit8 v4, p0, 0x10

    #@8
    and-int/lit16 v3, v4, 0xff

    #@a
    .line 236
    .local v3, "minor":I
    shr-int/lit8 v4, p0, 0x18

    #@c
    and-int/lit16 v0, v4, 0xff

    #@e
    .line 237
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
    .line 241
    array-length v0, p0

    #@1
    const/4 v1, 0x4

    #@2
    if-eq v0, v1, :cond_0

    #@4
    .line 242
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 244
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
    .line 380
    new-instance v7, Landroid/icu/text/StringPrep$Values;

    #@5
    const/4 v8, 0x0

    #@6
    invoke-direct {v7, v8}, Landroid/icu/text/StringPrep$Values;-><init>(Landroid/icu/text/StringPrep$Values;)V

    #@9
    .line 381
    .local v7, "val":Landroid/icu/text/StringPrep$Values;
    const/4 v6, 0x0

    #@a
    .line 382
    .local v6, "result":C
    const/4 v1, -0x1

    #@b
    .line 383
    .local v1, "ch":I
    new-instance v2, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    .line 384
    .local v2, "dest":Ljava/lang/StringBuffer;
    and-int/lit8 v8, p2, 0x1

    #@12
    if-lez v8, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    .line 386
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
    .line 388
    invoke-direct {p0, v1}, Landroid/icu/text/StringPrep;->getCodePointValue(I)C

    #@1f
    move-result v6

    #@20
    .line 389
    .local v6, "result":C
    invoke-static {v6, v7}, Landroid/icu/text/StringPrep;->getValues(CLandroid/icu/text/StringPrep$Values;)V

    #@23
    .line 392
    iget v8, v7, Landroid/icu/text/StringPrep$Values;->type:I

    #@25
    if-nez v8, :cond_1

    #@27
    if-nez v0, :cond_1

    #@29
    .line 393
    new-instance v8, Landroid/icu/text/StringPrepParseException;

    #@2b
    const-string/jumbo v9, "An unassigned code point was found in the input"

    #@2e
    .line 395
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@31
    move-result-object v10

    #@32
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@35
    move-result v11

    #@36
    .line 393
    invoke-direct {v8, v9, v12, v10, v11}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@39
    throw v8

    #@3a
    .line 384
    .end local v0    # "allowUnassigned":Z
    .local v6, "result":C
    :cond_0
    const/4 v0, 0x0

    #@3b
    .restart local v0    # "allowUnassigned":Z
    goto :goto_0

    #@3c
    .line 396
    .local v6, "result":C
    :cond_1
    iget v8, v7, Landroid/icu/text/StringPrep$Values;->type:I

    #@3e
    const/4 v9, 0x1

    #@3f
    if-ne v8, v9, :cond_7

    #@41
    .line 399
    iget-boolean v8, v7, Landroid/icu/text/StringPrep$Values;->isIndex:Z

    #@43
    if-eqz v8, :cond_5

    #@45
    .line 400
    iget v3, v7, Landroid/icu/text/StringPrep$Values;->value:I

    #@47
    .line 401
    .local v3, "index":I
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@49
    aget v8, v8, v12

    #@4b
    if-lt v3, v8, :cond_2

    #@4d
    .line 402
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@4f
    aget v8, v8, v10

    #@51
    if-ge v3, v8, :cond_2

    #@53
    .line 403
    const/4 v5, 0x1

    #@54
    .line 414
    .local v5, "length":I
    :goto_1
    iget-object v8, p0, Landroid/icu/text/StringPrep;->mappingData:[C

    #@56
    invoke-virtual {v2, v8, v3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@59
    goto :goto_0

    #@5a
    .line 404
    .end local v5    # "length":I
    :cond_2
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@5c
    aget v8, v8, v10

    #@5e
    if-lt v3, v8, :cond_3

    #@60
    .line 405
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@62
    aget v8, v8, v11

    #@64
    if-ge v3, v8, :cond_3

    #@66
    .line 406
    const/4 v5, 0x2

    #@67
    .line 405
    .restart local v5    # "length":I
    goto :goto_1

    #@68
    .line 407
    .end local v5    # "length":I
    :cond_3
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@6a
    aget v8, v8, v11

    #@6c
    if-lt v3, v8, :cond_4

    #@6e
    .line 408
    iget-object v8, p0, Landroid/icu/text/StringPrep;->indexes:[I

    #@70
    const/4 v9, 0x6

    #@71
    aget v8, v8, v9

    #@73
    if-ge v3, v8, :cond_4

    #@75
    .line 409
    const/4 v5, 0x3

    #@76
    .line 408
    .restart local v5    # "length":I
    goto :goto_1

    #@77
    .line 411
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
    .line 418
    .end local v3    # "index":I
    .end local v5    # "length":I
    :cond_5
    iget v8, v7, Landroid/icu/text/StringPrep$Values;->value:I

    #@81
    sub-int/2addr v1, v8

    #@82
    .line 425
    :cond_6
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@85
    goto :goto_0

    #@86
    .line 420
    :cond_7
    iget v8, v7, Landroid/icu/text/StringPrep$Values;->type:I

    #@88
    if-ne v8, v12, :cond_6

    #@8a
    goto :goto_0

    #@8b
    .line 428
    .end local v6    # "result":C
    :cond_8
    return-object v2
.end method

.method private normalize(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "src"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    .line 435
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 436
    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    #@8
    .line 437
    const/16 v3, 0x20

    #@a
    .line 434
    invoke-static {v1, v2, v3}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 433
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
    .line 585
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0, v1, p2}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    .line 586
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
    .line 505
    invoke-direct/range {p0 .. p2}, Landroid/icu/text/StringPrep;->map(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@3
    move-result-object v11

    #@4
    .line 506
    .local v11, "mapOut":Ljava/lang/StringBuffer;
    move-object v12, v11

    #@5
    .line 508
    .local v12, "normOut":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    #@7
    iget-boolean v0, v0, Landroid/icu/text/StringPrep;->doNFKC:Z

    #@9
    move/from16 v17, v0

    #@b
    if-eqz v17, :cond_0

    #@d
    .line 510
    move-object/from16 v0, p0

    #@f
    invoke-direct {v0, v11}, Landroid/icu/text/StringPrep;->normalize(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@12
    move-result-object v12

    #@13
    .line 515
    :cond_0
    invoke-static {v12}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    #@16
    move-result-object v8

    #@17
    .line 516
    .local v8, "iter":Landroid/icu/text/UCharacterIterator;
    new-instance v16, Landroid/icu/text/StringPrep$Values;

    #@19
    const/16 v17, 0x0

    #@1b
    invoke-direct/range {v16 .. v17}, Landroid/icu/text/StringPrep$Values;-><init>(Landroid/icu/text/StringPrep$Values;)V

    #@1e
    .line 517
    .local v16, "val":Landroid/icu/text/StringPrep$Values;
    const/16 v6, 0x17

    #@20
    .line 518
    .local v6, "direction":I
    const/16 v7, 0x17

    #@22
    .line 519
    .local v7, "firstCharDir":I
    const/4 v15, -0x1

    #@23
    .local v15, "rtlPos":I
    const/4 v10, -0x1

    #@24
    .line 520
    .local v10, "ltrPos":I
    const/4 v14, 0x0

    #@25
    .local v14, "rightToLeft":Z
    const/4 v9, 0x0

    #@26
    .line 522
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
    .line 523
    move-object/from16 v0, p0

    #@32
    invoke-direct {v0, v5}, Landroid/icu/text/StringPrep;->getCodePointValue(I)C

    #@35
    move-result v13

    #@36
    .line 524
    .local v13, "result":C
    move-object/from16 v0, v16

    #@38
    invoke-static {v13, v0}, Landroid/icu/text/StringPrep;->getValues(CLandroid/icu/text/StringPrep$Values;)V

    #@3b
    .line 526
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
    .line 527
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@4b
    const-string/jumbo v18, "A prohibited code point was found in the input"

    #@4e
    .line 528
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
    .line 527
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
    .line 531
    :cond_2
    move-object/from16 v0, p0

    #@6a
    iget-boolean v0, v0, Landroid/icu/text/StringPrep;->checkBiDi:Z

    #@6c
    move/from16 v17, v0

    #@6e
    if-eqz v17, :cond_1

    #@70
    .line 532
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
    .line 533
    const/16 v17, 0x17

    #@7e
    move/from16 v0, v17

    #@80
    if-ne v7, v0, :cond_3

    #@82
    .line 534
    move v7, v6

    #@83
    .line 536
    :cond_3
    if-nez v6, :cond_4

    #@85
    .line 537
    const/4 v9, 0x1

    #@86
    .line 538
    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@89
    move-result v17

    #@8a
    add-int/lit8 v10, v17, -0x1

    #@8c
    .line 540
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
    .line 541
    :cond_5
    const/4 v14, 0x1

    #@99
    .line 542
    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@9c
    move-result v17

    #@9d
    add-int/lit8 v15, v17, -0x1

    #@9f
    goto :goto_0

    #@a0
    .line 546
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
    .line 548
    if-eqz v9, :cond_8

    #@aa
    if-eqz v14, :cond_8

    #@ac
    .line 549
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@ae
    const-string/jumbo v18, "The input does not conform to the rules for BiDi code points."

    #@b1
    .line 550
    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@b4
    move-result-object v19

    #@b5
    .line 551
    if-le v15, v10, :cond_7

    #@b7
    .line 550
    .end local v15    # "rtlPos":I
    :goto_1
    const/16 v20, 0x4

    #@b9
    .line 549
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
    .line 551
    goto :goto_1

    #@c7
    .line 555
    :cond_8
    if-eqz v14, :cond_b

    #@c9
    .line 556
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
    .line 559
    :cond_9
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@d7
    const-string/jumbo v18, "The input does not conform to the rules for BiDi code points."

    #@da
    .line 560
    invoke-virtual {v8}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@dd
    move-result-object v19

    #@de
    .line 561
    if-le v15, v10, :cond_c

    #@e0
    .line 560
    .end local v15    # "rtlPos":I
    :goto_2
    const/16 v20, 0x4

    #@e2
    .line 559
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
    .line 557
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
    .line 564
    :cond_b
    return-object v12

    #@fb
    :cond_c
    move v15, v10

    #@fc
    .line 561
    goto :goto_2
.end method

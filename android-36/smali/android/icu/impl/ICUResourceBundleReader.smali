.class public final Landroid/icu/impl/ICUResourceBundleReader;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;,
        Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;,
        Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;,
        Landroid/icu/impl/ICUResourceBundleReader$Array;,
        Landroid/icu/impl/ICUResourceBundleReader$Array32;,
        Landroid/icu/impl/ICUResourceBundleReader$Array16;,
        Landroid/icu/impl/ICUResourceBundleReader$Table;,
        Landroid/icu/impl/ICUResourceBundleReader$Table1632;,
        Landroid/icu/impl/ICUResourceBundleReader$Table16;,
        Landroid/icu/impl/ICUResourceBundleReader$Table32;,
        Landroid/icu/impl/ICUResourceBundleReader$Container;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static greylist-max-o CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache; = null

.field private static final greylist-max-o DATA_FORMAT:I = 0x52657342

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

.field private static final greylist-max-o EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

.field private static final greylist-max-o EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

.field private static final greylist-max-o ICU_RESOURCE_SUFFIX:Ljava/lang/String; = ".res"

.field private static final greylist-max-o IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

.field static final greylist-max-o LARGE_SIZE:I = 0x18

.field private static final greylist-max-o NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

.field private static greylist-max-o PUBLIC_TYPES:[I = null

.field private static final greylist-max-o URES_ATT_IS_POOL_BUNDLE:I = 0x2

.field private static final greylist-max-o URES_ATT_NO_FALLBACK:I = 0x1

.field private static final greylist-max-o URES_ATT_USES_POOL_BUNDLE:I = 0x4

.field private static final greylist-max-o URES_INDEX_16BIT_TOP:I = 0x6

.field private static final greylist-max-o URES_INDEX_ATTRIBUTES:I = 0x5

.field private static final greylist-max-o URES_INDEX_BUNDLE_TOP:I = 0x3

.field private static final greylist-max-o URES_INDEX_KEYS_TOP:I = 0x1

.field private static final greylist-max-o URES_INDEX_LENGTH:I = 0x0

.field private static final greylist-max-o URES_INDEX_MAX_TABLE_LENGTH:I = 0x4

.field private static final greylist-max-o URES_INDEX_POOL_CHECKSUM:I = 0x7

.field private static final greylist-max-o emptyByteBuffer:Ljava/nio/ByteBuffer;

.field private static final greylist-max-o emptyBytes:[B

.field private static final greylist-max-o emptyChars:[C

.field private static final greylist-max-o emptyInts:[I

.field private static final greylist-max-o emptyString:Ljava/lang/String; = ""


# instance fields
.field private greylist-max-o b16BitUnits:Ljava/nio/CharBuffer;

.field private greylist-max-o bytes:Ljava/nio/ByteBuffer;

.field private greylist-max-o dataVersion:I

.field private greylist-max-o isPoolBundle:Z

.field private greylist-max-o keyBytes:[B

.field private greylist-max-o localKeyLimit:I

.field private greylist-max-o noFallback:Z

.field private greylist-max-o poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

.field private greylist-max-o poolCheckSum:I

.field private greylist-max-o poolStringIndex16Limit:I

.field private greylist-max-o poolStringIndexLimit:I

.field private greylist-max-o resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

.field private greylist-max-o rootRes:I

.field private greylist-max-o usesPoolBundle:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetb16BitUnits(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpoolStringIndex16Limit(Landroid/icu/impl/ICUResourceBundleReader;)I
    .registers 1

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpoolStringIndexLimit(Landroid/icu/impl/ICUResourceBundleReader;)I
    .registers 1

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcompareKeys(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->compareKeys(Ljava/lang/CharSequence;C)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcompareKeys32(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->compareKeys32(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInt(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetKey16String(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getKey16String(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetKey32String(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getKey32String(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetResourceByteOffset(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTable16KeyOffsets(Landroid/icu/impl/ICUResourceBundleReader;I)[C
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTable16KeyOffsets(I)[C

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTable32KeyOffsets(Landroid/icu/impl/ICUResourceBundleReader;I)[I
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTable32KeyOffsets(I)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTableKeyOffsets(Landroid/icu/impl/ICUResourceBundleReader;I)[C
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTableKeyOffsets(I)[C

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNoInheritanceMarker(Landroid/icu/impl/ICUResourceBundleReader;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->isNoInheritanceMarker(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetKeyFromKey16(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->setKeyFromKey16(ILandroid/icu/impl/UResource$Key;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetKeyFromKey32(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->setKeyFromKey32(ILandroid/icu/impl/UResource$Key;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetNULL_READER()Landroid/icu/impl/ICUResourceBundleReader;
    .registers 1

    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPUBLIC_TYPES()[I
    .registers 1

    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smRES_GET_OFFSET(I)I
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    nop

    .line 48
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>(Landroid/icu/impl/ICUResourceBundleReader-IA;)V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    .line 117
    const-string v0, "\u0000"

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    .line 150
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;-><init>(Landroid/icu/impl/ICUResourceBundleReader-IA;)V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    .line 151
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    .line 377
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    .line 378
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    .line 379
    new-array v1, v0, [C

    sput-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    .line 380
    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    .line 382
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Array;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

    .line 383
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

    .line 782
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    return-void

    :array_4e
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x2
        0x2
        0x0
        0x7
        0x8
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0xe
        -0x1
    .end array-data
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 7
    .param p1, "inBytes"    # Ljava/nio/ByteBuffer;
    .param p2, "baseName"    # Ljava/lang/String;
    .param p3, "localeID"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->init(Ljava/nio/ByteBuffer;)V

    .line 223
    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    if-eqz v0, :cond_35

    .line 224
    const-string v0, "pool"

    invoke-static {p2, v0, p4}, Landroid/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 225
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-boolean v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz v0, :cond_2d

    .line 228
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    if-ne v0, v1, :cond_25

    goto :goto_35

    .line 229
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pool.res has a different checksum than this bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pool.res is not a pool bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_35
    :goto_35
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/ICUResourceBundleReader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static greylist-max-o RES_GET_INT(I)I
    .registers 2
    .param p0, "res"    # I

    .line 365
    shl-int/lit8 v0, p0, 0x4

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static greylist-max-o RES_GET_OFFSET(I)I
    .registers 2
    .param p0, "res"    # I

    .line 358
    const v0, 0xfffffff

    and-int/2addr v0, p0

    return v0
.end method

.method static greylist-max-o RES_GET_TYPE(I)I
    .registers 2
    .param p0, "res"    # I

    .line 355
    ushr-int/lit8 v0, p0, 0x1c

    return v0
.end method

.method static greylist-max-o RES_GET_UINT(I)I
    .registers 2
    .param p0, "res"    # I

    .line 368
    const v0, 0xfffffff

    and-int/2addr v0, p0

    return v0
.end method

.method static greylist-max-o URES_IS_ARRAY(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 371
    const/16 v0, 0x8

    if-eq p0, v0, :cond_b

    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static greylist-max-o URES_IS_TABLE(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 374
    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private greylist-max-o compareKeys(Ljava/lang/CharSequence;C)I
    .registers 5
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "keyOffset"    # C

    .line 486
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p2, v0, :cond_b

    .line 487
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    return v0

    .line 489
    :cond_b
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    sub-int v1, p2, v1

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    return v0
.end method

.method private greylist-max-o compareKeys32(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "keyOffset"    # I

    .line 493
    if-ltz p2, :cond_9

    .line 494
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    return v0

    .line 496
    :cond_9
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getChars(II)[C
    .registers 6
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 386
    new-array v0, p2, [C

    .line 387
    .local v0, "chars":[C
    const/16 v1, 0x10

    if-gt p2, v1, :cond_17

    .line 388
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, p2, :cond_16

    .line 389
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 388
    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1    # "i":I
    :cond_16
    goto :goto_25

    .line 392
    :cond_17
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    .line 393
    .local v1, "temp":Ljava/nio/CharBuffer;
    div-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 394
    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 396
    .end local v1    # "temp":Ljava/nio/CharBuffer;
    :goto_25
    return-object v0
.end method

.method public static blacklist getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;

    .line 1366
    const-string v0, ".res"

    if-eqz p0, :cond_8d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_8d

    .line 1372
    :cond_c
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x2f

    if-ne v2, v3, :cond_55

    .line 1373
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_3f

    .line 1374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1376
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1379
    :cond_55
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1380
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_71

    .line 1381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1383
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1367
    :cond_8d
    :goto_8d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9d

    .line 1368
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    return-object v0

    .line 1370
    :cond_9d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getIndexesInt(I)I
    .registers 4
    .param p1, "i"    # I

    .line 337
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getInt(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 399
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getInts(II)[I
    .registers 6
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 402
    new-array v0, p2, [I

    .line 403
    .local v0, "ints":[I
    const/16 v1, 0x10

    if-gt p2, v1, :cond_17

    .line 404
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, p2, :cond_16

    .line 405
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 404
    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1    # "i":I
    :cond_16
    goto :goto_25

    .line 408
    :cond_17
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 409
    .local v1, "temp":Ljava/nio/IntBuffer;
    div-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 410
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 412
    .end local v1    # "temp":Ljava/nio/IntBuffer;
    :goto_25
    return-object v0
.end method

.method private greylist-max-o getKey16String(I)Ljava/lang/String;
    .registers 4
    .param p1, "keyOffset"    # I

    .line 458
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p1, v0, :cond_b

    .line 459
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {v0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 461
    :cond_b
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getKey32String(I)Ljava/lang/String;
    .registers 4
    .param p1, "keyOffset"    # I

    .line 465
    if-ltz p1, :cond_9

    .line 466
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {v0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 468
    :cond_9
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;
    .registers 6
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;

    .line 235
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v0, "info":Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;
    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    invoke-virtual {v1, v0, p2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader;

    .line 237
    .local v1, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    if-ne v1, v2, :cond_13

    .line 238
    const/4 v2, 0x0

    return-object v2

    .line 240
    :cond_13
    return-object v1
.end method

.method private greylist-max-o getResourceByteOffset(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 361
    shl-int/lit8 v0, p1, 0x2

    return v0
.end method

.method private greylist-max-o getTable16KeyOffsets(I)[C
    .registers 7
    .param p1, "offset"    # I

    .line 415
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result p1

    .line 416
    .local p1, "length":I
    if-lez p1, :cond_2f

    .line 417
    new-array v0, p1, [C

    .line 418
    .local v0, "result":[C
    const/16 v2, 0x10

    if-gt p1, v2, :cond_22

    .line 419
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, p1, :cond_21

    .line 420
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .local v4, "offset":I
    invoke-virtual {v3, v1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    aput-char v1, v0, v2

    .line 419
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_11

    .end local v2    # "i":I
    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    :cond_21
    goto :goto_2e

    .line 423
    :cond_22
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v2

    .line 424
    .local v2, "temp":Ljava/nio/CharBuffer;
    invoke-virtual {v2, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 425
    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 427
    .end local v2    # "temp":Ljava/nio/CharBuffer;
    :goto_2e
    return-object v0

    .line 429
    .end local v0    # "result":[C
    :cond_2f
    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    return-object v0
.end method

.method private greylist-max-o getTable32KeyOffsets(I)[I
    .registers 4
    .param p1, "offset"    # I

    .line 441
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    .line 442
    .local v0, "length":I
    if-lez v0, :cond_d

    .line 443
    add-int/lit8 v1, p1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    move-result-object v1

    return-object v1

    .line 445
    :cond_d
    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    return-object v1
.end method

.method private greylist-max-o getTableKeyOffsets(I)[C
    .registers 4
    .param p1, "offset"    # I

    .line 433
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    .line 434
    .local v0, "length":I
    if-lez v0, :cond_f

    .line 435
    add-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getChars(II)[C

    move-result-object v1

    return-object v1

    .line 437
    :cond_f
    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    return-object v1
.end method

.method private greylist-max-o init(Ljava/nio/ByteBuffer;)V
    .registers 16
    .param p1, "inBytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const v0, 0x52657342

    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->dataVersion:I

    .line 246
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 247
    .local v0, "majorFormatVersion":I
    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    .line 248
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 253
    .local v1, "dataLength":I
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->rootRes:I

    .line 259
    invoke-direct {p0, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v2

    .line 260
    .local v2, "indexes0":I
    and-int/lit16 v4, v2, 0xff

    .line 261
    .local v4, "indexLength":I
    const/4 v5, 0x4

    if-le v4, v5, :cond_fe

    .line 265
    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v5, v5, 0x2

    if-lt v1, v5, :cond_f6

    .line 266
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v6

    move v7, v6

    .local v7, "bundleTop":I
    shl-int/lit8 v6, v6, 0x2

    if-lt v1, v6, :cond_f6

    .line 269
    add-int/lit8 v6, v7, -0x1

    .line 271
    .local v6, "maxOffset":I
    if-lt v0, v5, :cond_47

    .line 276
    ushr-int/lit8 v5, v2, 0x8

    iput v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    .line 278
    :cond_47
    const/4 v5, 0x5

    const/4 v8, 0x1

    if-le v4, v5, :cond_79

    .line 281
    invoke-direct {p0, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v5

    .line 282
    .local v5, "att":I
    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_55

    move v9, v8

    goto :goto_56

    :cond_55
    move v9, v3

    :goto_56
    iput-boolean v9, p0, Landroid/icu/impl/ICUResourceBundleReader;->noFallback:Z

    .line 283
    and-int/lit8 v9, v5, 0x2

    if-eqz v9, :cond_5e

    move v9, v8

    goto :goto_5f

    :cond_5e
    move v9, v3

    :goto_5f
    iput-boolean v9, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    .line 284
    and-int/lit8 v9, v5, 0x4

    if-eqz v9, :cond_67

    move v9, v8

    goto :goto_68

    :cond_67
    move v9, v3

    :goto_68
    iput-boolean v9, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    .line 285
    iget v9, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    const v10, 0xf000

    and-int/2addr v10, v5

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    iput v9, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    .line 286
    ushr-int/lit8 v9, v5, 0x10

    iput v9, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    .line 289
    .end local v5    # "att":I
    :cond_79
    add-int/lit8 v5, v4, 0x1

    .line 290
    .local v5, "keysBottom":I
    invoke-direct {p0, v8}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v9

    .line 291
    .local v9, "keysTop":I
    if-le v9, v5, :cond_a6

    .line 294
    iget-boolean v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz v10, :cond_95

    .line 299
    sub-int v10, v9, v5

    shl-int/lit8 v10, v10, 0x2

    new-array v10, v10, [B

    iput-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    .line 300
    iget-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    shl-int/lit8 v11, v5, 0x2

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_9f

    .line 302
    :cond_95
    shl-int/lit8 v10, v9, 0x2

    iput v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    .line 303
    iget v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    new-array v10, v10, [B

    iput-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    .line 305
    :goto_9f
    iget-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 309
    :cond_a6
    const/4 v10, 0x6

    if-le v4, v10, :cond_d0

    .line 310
    invoke-direct {p0, v10}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v10

    .line 311
    .local v10, "_16BitTop":I
    if-le v10, v9, :cond_cb

    .line 312
    sub-int v11, v10, v9

    mul-int/lit8 v11, v11, 0x2

    .line 313
    .local v11, "num16BitUnits":I
    iget-object v12, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    shl-int/lit8 v13, v9, 0x2

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    iget-object v12, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v12

    iput-object v12, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    .line 315
    iget-object v12, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v12, v11}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 316
    add-int/lit8 v12, v11, -0x1

    or-int/2addr v6, v12

    .line 317
    .end local v11    # "num16BitUnits":I
    goto :goto_cf

    .line 318
    :cond_cb
    sget-object v11, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    .line 320
    .end local v10    # "_16BitTop":I
    :goto_cf
    goto :goto_d4

    .line 321
    :cond_d0
    sget-object v10, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    iput-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    .line 324
    :goto_d4
    const/4 v10, 0x7

    if-le v4, v10, :cond_dd

    .line 325
    invoke-direct {p0, v10}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v10

    iput v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    .line 328
    :cond_dd
    iget-boolean v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz v10, :cond_e9

    iget-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v10}, Ljava/nio/CharBuffer;->length()I

    move-result v10

    if-le v10, v8, :cond_f0

    .line 329
    :cond_e9
    new-instance v8, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-direct {v8, v6}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;-><init>(I)V

    iput-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    .line 333
    :cond_f0
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 334
    return-void

    .line 267
    .end local v5    # "keysBottom":I
    .end local v6    # "maxOffset":I
    .end local v7    # "bundleTop":I
    .end local v9    # "keysTop":I
    :cond_f6
    new-instance v3, Landroid/icu/util/ICUException;

    const-string v5, "not enough bytes"

    invoke-direct {v3, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_fe
    new-instance v3, Landroid/icu/util/ICUException;

    const-string v5, "not enough indexes"

    invoke-direct {v3, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private greylist-max-o isNoInheritanceMarker(I)Z
    .registers 7
    .param p1, "res"    # I

    .line 592
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 593
    .local v0, "offset":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_54

    .line 595
    :cond_8
    if-ne p1, v0, :cond_39

    .line 596
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 597
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    const/16 v3, 0x2205

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x6

    .line 598
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    if-ne v2, v3, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    nop

    .line 597
    :goto_38
    return v1

    .line 599
    :cond_39
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_54

    .line 600
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    if-ge v0, v1, :cond_4b

    .line 601
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-direct {v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    move-result v1

    return v1

    .line 603
    :cond_4b
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    move-result v1

    return v1

    .line 606
    :cond_54
    :goto_54
    return v1
.end method

.method private greylist-max-o isStringV2NoInheritanceMarker(I)Z
    .registers 8
    .param p1, "offset"    # I

    .line 610
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    .line 611
    .local v0, "first":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2205

    if-ne v0, v3, :cond_2e

    .line 612
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_2c

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v5, p1, 0x2

    .line 613
    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_2c

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x3

    .line 614
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v3

    if-nez v3, :cond_2c

    move v1, v2

    goto :goto_2d

    :cond_2c
    nop

    .line 612
    :goto_2d
    return v1

    .line 615
    :cond_2e
    const v4, 0xdc03

    if-ne v0, v4, :cond_55

    .line 616
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_53

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v5, p1, 0x2

    .line 617
    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_53

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v5, p1, 0x3

    .line 618
    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_53

    move v1, v2

    goto :goto_54

    :cond_53
    nop

    .line 616
    :goto_54
    return v1

    .line 621
    :cond_55
    return v1
.end method

.method private static greylist-max-o makeKeyStringFromBytes([BI)Ljava/lang/String;
    .registers 6
    .param p0, "keyBytes"    # [B
    .param p1, "keyOffset"    # I

    .line 450
    move v0, p1

    .line 451
    .local v0, "end":I
    :goto_1
    aget-byte v1, p0, v0

    if-eqz v1, :cond_8

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 454
    :cond_8
    sub-int v1, v0, p1

    .line 455
    .local v1, "len":I
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, p1, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private greylist-max-o makeStringFromBytes(II)Ljava/lang/String;
    .registers 6
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 549
    const/16 v0, 0x10

    if-gt p2, v0, :cond_1f

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 551
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, p2, :cond_1a

    .line 552
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 554
    .end local v1    # "i":I
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 556
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1f
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 557
    .local v0, "cs":Ljava/lang/CharSequence;
    div-int/lit8 p1, p1, 0x2

    .line 558
    add-int v1, p1, p2

    invoke-interface {v0, p1, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o setKeyFromKey16(ILandroid/icu/impl/UResource$Key;)V
    .registers 5
    .param p1, "keyOffset"    # I
    .param p2, "key"    # Landroid/icu/impl/UResource$Key;

    .line 472
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p1, v0, :cond_a

    .line 473
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {p2, v0, p1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)Landroid/icu/impl/UResource$Key;

    goto :goto_15

    .line 475
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    sub-int v1, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)Landroid/icu/impl/UResource$Key;

    .line 477
    :goto_15
    return-void
.end method

.method private greylist-max-o setKeyFromKey32(ILandroid/icu/impl/UResource$Key;)V
    .registers 5
    .param p1, "keyOffset"    # I
    .param p2, "key"    # Landroid/icu/impl/UResource$Key;

    .line 479
    if-ltz p1, :cond_8

    .line 480
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {p2, v0, p1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)Landroid/icu/impl/UResource$Key;

    goto :goto_13

    .line 482
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)Landroid/icu/impl/UResource$Key;

    .line 484
    :goto_13
    return-void
.end method


# virtual methods
.method greylist-max-o getAlias(I)Ljava/lang/String;
    .registers 8
    .param p1, "res"    # I

    .line 626
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 628
    .local v0, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_35

    .line 629
    if-nez v0, :cond_10

    .line 630
    const-string v1, ""

    return-object v1

    .line 632
    :cond_10
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 633
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_1c

    .line 634
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 636
    :cond_1c
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 637
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v2

    .line 638
    .local v2, "length":I
    add-int/lit8 v3, v0, 0x4

    invoke-direct {p0, v3, v2}, Landroid/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    mul-int/lit8 v5, v2, 0x2

    invoke-virtual {v4, p1, v3, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4

    .line 642
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "length":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_35
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;
    .registers 8
    .param p1, "res"    # I

    .line 732
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    .line 733
    .local v0, "type":I
    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 734
    const/4 v1, 0x0

    return-object v1

    .line 736
    :cond_c
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    .line 737
    .local v1, "offset":I
    if-nez v1, :cond_15

    .line 738
    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

    return-object v2

    .line 740
    :cond_15
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v2, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 741
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_21

    .line 742
    move-object v3, v2

    check-cast v3, Landroid/icu/impl/ICUResourceBundleReader$Array;

    return-object v3

    .line 744
    :cond_21
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2b

    .line 745
    new-instance v3, Landroid/icu/impl/ICUResourceBundleReader$Array32;

    invoke-direct {v3, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array32;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    goto :goto_30

    :cond_2b
    new-instance v3, Landroid/icu/impl/ICUResourceBundleReader$Array16;

    invoke-direct {v3, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array16;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    .line 746
    .local v3, "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    :goto_30
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v3, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundleReader$Array;

    return-object v4
.end method

.method greylist-max-o getBinary(I)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "res"    # I

    .line 681
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 683
    .local v0, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_45

    .line 684
    if-nez v0, :cond_14

    .line 688
    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 694
    :cond_14
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 695
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v1

    .line 696
    .local v1, "length":I
    if-nez v1, :cond_25

    .line 697
    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 699
    :cond_25
    add-int/lit8 v0, v0, 0x4

    .line 700
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 701
    .local v2, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    add-int v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 702
    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 703
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_44

    .line 704
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 706
    :cond_44
    return-object v2

    .line 709
    .end local v1    # "length":I
    .end local v2    # "result":Ljava/nio/ByteBuffer;
    :cond_45
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getBinary(I[B)[B
    .registers 8
    .param p1, "res"    # I
    .param p2, "ba"    # [B

    .line 647
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 649
    .local v0, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_49

    .line 650
    if-nez v0, :cond_10

    .line 651
    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    return-object v1

    .line 653
    :cond_10
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 654
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v1

    .line 655
    .local v1, "length":I
    if-nez v1, :cond_1d

    .line 656
    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    return-object v2

    .line 660
    :cond_1d
    if-eqz p2, :cond_22

    array-length v2, p2

    if-eq v2, v1, :cond_24

    .line 661
    :cond_22
    new-array p2, v1, [B

    .line 663
    :cond_24
    add-int/lit8 v0, v0, 0x4

    .line 664
    const/16 v2, 0x10

    if-gt v1, v2, :cond_3c

    .line 665
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v1, :cond_3b

    .line 666
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .local v4, "offset":I
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    aput-byte v0, p2, v2

    .line 665
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_2b

    .end local v2    # "i":I
    .end local v4    # "offset":I
    .restart local v0    # "offset":I
    :cond_3b
    goto :goto_48

    .line 669
    :cond_3c
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 670
    .local v2, "temp":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 671
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 673
    .end local v2    # "temp":Ljava/nio/ByteBuffer;
    :goto_48
    return-object p2

    .line 676
    .end local v1    # "length":I
    :cond_49
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getIntVector(I)[I
    .registers 5
    .param p1, "res"    # I

    .line 714
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 716
    .local v0, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_20

    .line 717
    if-nez v0, :cond_11

    .line 718
    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    return-object v1

    .line 722
    :cond_11
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 723
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v1

    .line 724
    .local v1, "length":I
    add-int/lit8 v2, v0, 0x4

    invoke-direct {p0, v2, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    move-result-object v2

    return-object v2

    .line 727
    .end local v1    # "length":I
    :cond_20
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getNoFallback()Z
    .registers 2

    .line 348
    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->noFallback:Z

    return v0
.end method

.method greylist-max-o getRootResource()I
    .registers 2

    .line 345
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->rootRes:I

    return v0
.end method

.method greylist-max-o getString(I)Ljava/lang/String;
    .registers 8
    .param p1, "res"    # I

    .line 563
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 564
    .local v0, "offset":I
    if-eq p1, v0, :cond_f

    .line 565
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_f

    .line 566
    const/4 v1, 0x0

    return-object v1

    .line 568
    :cond_f
    if-nez v0, :cond_14

    .line 569
    const-string v1, ""

    return-object v1

    .line 571
    :cond_14
    if-eq p1, v0, :cond_2a

    .line 572
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    if-ge v0, v1, :cond_21

    .line 573
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 575
    :cond_21
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 578
    :cond_2a
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 579
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_36

    .line 580
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 582
    :cond_36
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 583
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v2

    .line 584
    .local v2, "length":I
    add-int/lit8 v3, v0, 0x4

    invoke-direct {p0, v3, v2}, Landroid/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, p1, v3, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4
.end method

.method greylist-max-o getStringV2(I)Ljava/lang/String;
    .registers 8
    .param p1, "res"    # I

    .line 509
    nop

    .line 510
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 511
    .local v0, "offset":I
    nop

    .line 512
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 513
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_12

    .line 514
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 517
    :cond_12
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    .line 518
    .local v2, "first":I
    and-int/lit16 v3, v2, -0x400

    const v4, 0xdc00

    if-eq v3, v4, :cond_41

    .line 519
    if-nez v2, :cond_24

    .line 520
    const-string v3, ""

    return-object v3

    .line 522
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .local v3, "sb":Ljava/lang/StringBuilder;
    int-to-char v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    :goto_2d
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c":C
    if-eqz v4, :cond_3c

    .line 526
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 528
    :cond_3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    .end local v5    # "c":C
    .local v3, "s":Ljava/lang/String;
    goto :goto_82

    .line 531
    .end local v3    # "s":Ljava/lang/String;
    :cond_41
    const v3, 0xdfef

    if-ge v2, v3, :cond_4b

    .line 532
    and-int/lit16 v3, v2, 0x3ff

    .line 533
    .local v3, "length":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 534
    .end local v3    # "length":I
    :cond_4b
    const v4, 0xdfff

    if-ge v2, v4, :cond_60

    .line 535
    sub-int v3, v2, v3

    shl-int/lit8 v3, v3, 0x10

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v4

    or-int/2addr v3, v4

    .line 536
    .restart local v3    # "length":I
    add-int/lit8 v0, v0, 0x2

    goto :goto_75

    .line 538
    .end local v3    # "length":I
    :cond_60
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v4

    or-int/2addr v3, v4

    .line 539
    .restart local v3    # "length":I
    add-int/lit8 v0, v0, 0x3

    .line 543
    :goto_75
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int v5, v0, v3

    invoke-interface {v4, v0, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 545
    .local v3, "s":Ljava/lang/String;
    :goto_82
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, p1, v3, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4
.end method

.method greylist-max-o getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;
    .registers 8
    .param p1, "res"    # I

    .line 750
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    .line 751
    .local v0, "type":I
    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 752
    const/4 v1, 0x0

    return-object v1

    .line 754
    :cond_c
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    .line 755
    .local v1, "offset":I
    if-nez v1, :cond_15

    .line 756
    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

    return-object v2

    .line 758
    :cond_15
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v2, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 759
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_21

    .line 760
    move-object v3, v2

    check-cast v3, Landroid/icu/impl/ICUResourceBundleReader$Table;

    return-object v3

    .line 764
    :cond_21
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2f

    .line 765
    new-instance v4, Landroid/icu/impl/ICUResourceBundleReader$Table1632;

    invoke-direct {v4, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Table1632;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    .line 766
    .local v4, "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v5

    mul-int/2addr v5, v3

    .local v5, "size":I
    goto :goto_49

    .line 767
    .end local v4    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    .end local v5    # "size":I
    :cond_2f
    const/4 v4, 0x5

    if-ne v0, v4, :cond_3d

    .line 768
    new-instance v4, Landroid/icu/impl/ICUResourceBundleReader$Table16;

    invoke-direct {v4, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Table16;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    .line 769
    .restart local v4    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v5

    mul-int/2addr v5, v3

    .restart local v5    # "size":I
    goto :goto_49

    .line 771
    .end local v4    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    .end local v5    # "size":I
    :cond_3d
    new-instance v3, Landroid/icu/impl/ICUResourceBundleReader$Table32;

    invoke-direct {v3, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Table32;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    move-object v4, v3

    .line 772
    .restart local v4    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v3

    mul-int/lit8 v5, v3, 0x4

    .line 774
    .restart local v5    # "size":I
    :goto_49
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v3, p1, v4, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundleReader$Table;

    return-object v3
.end method

.method greylist-max-o getUsesPoolBundle()Z
    .registers 2

    .line 351
    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    return v0
.end method

.method greylist-max-o getVersion()Landroid/icu/util/VersionInfo;
    .registers 2

    .line 341
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->dataVersion:I

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

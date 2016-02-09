.class public final Landroid/icu/impl/ICUResourceBundleReader;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;,
        Landroid/icu/impl/ICUResourceBundleReader$Container;,
        Landroid/icu/impl/ICUResourceBundleReader$Array;,
        Landroid/icu/impl/ICUResourceBundleReader$Array16;,
        Landroid/icu/impl/ICUResourceBundleReader$Table;,
        Landroid/icu/impl/ICUResourceBundleReader$Table1632;,
        Landroid/icu/impl/ICUResourceBundleReader$Table16;,
        Landroid/icu/impl/ICUResourceBundleReader$Table32;,
        Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;
    }
.end annotation


# static fields
.field private static CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache; = null

.field private static final DATA_FORMAT:I = 0x52657342

.field private static final DEBUG:Z = false

.field private static final EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

.field private static final EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Container;

.field private static final EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

.field private static final ICU_RESOURCE_SUFFIX:Ljava/lang/String; = ".res"

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

.field static final LARGE_SIZE:I = 0x18

.field private static final NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

.field private static final URES_ATT_IS_POOL_BUNDLE:I = 0x2

.field private static final URES_ATT_NO_FALLBACK:I = 0x1

.field private static final URES_ATT_USES_POOL_BUNDLE:I = 0x4

.field private static final URES_INDEX_16BIT_TOP:I = 0x6

.field private static final URES_INDEX_ATTRIBUTES:I = 0x5

.field private static final URES_INDEX_BUNDLE_TOP:I = 0x3

.field private static final URES_INDEX_KEYS_TOP:I = 0x1

.field private static final URES_INDEX_LENGTH:I = 0x0

.field private static final URES_INDEX_MAX_TABLE_LENGTH:I = 0x4

.field private static final URES_INDEX_POOL_CHECKSUM:I = 0x7

.field private static final emptyByteBuffer:Ljava/nio/ByteBuffer;

.field private static final emptyBytes:[B

.field private static final emptyChars:[C

.field private static final emptyInts:[I

.field private static final emptyString:Ljava/lang/String; = ""


# instance fields
.field private b16BitUnits:Ljava/nio/CharBuffer;

.field private bytes:Ljava/nio/ByteBuffer;

.field private dataVersion:I

.field private isPoolBundle:Z

.field private localKeyLimit:I

.field private noFallback:Z

.field private poolBundleKeys:Ljava/nio/ByteBuffer;

.field private poolCheckSum:I

.field private resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

.field private rootRes:I

.field private usesPoolBundle:Z


# direct methods
.method static synthetic -get0()Landroid/icu/impl/ICUResourceBundleReader;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/impl/ICUResourceBundleReader;I)[C
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTable16KeyOffsets(I)[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/impl/ICUResourceBundleReader;I)[C
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTableKeyOffsets(I)[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(I)I
    .locals 1
    .param p0, "res"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/icu/impl/ICUResourceBundleReader;I)[I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTable32KeyOffsets(I)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "keyOffset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->compareKeys32(Ljava/lang/CharSequence;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "keyOffset"    # C

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->compareKeys(Ljava/lang/CharSequence;C)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 1
    .param p1, "keyOffset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getKey16String(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap9(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 1
    .param p1, "keyOffset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getKey32String(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 219
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    #@4
    invoke-direct {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>(Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;)V

    #@7
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    #@9
    .line 262
    const-string/jumbo v0, "\u0000"

    #@c
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    #@12
    .line 292
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    #@14
    invoke-direct {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;-><init>(Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;)V

    #@17
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    #@19
    .line 293
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader;

    #@1b
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader;-><init>()V

    #@1e
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    #@20
    .line 510
    new-array v0, v1, [B

    #@22
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    #@24
    .line 511
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@2b
    move-result-object v0

    #@2c
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    #@2e
    .line 512
    new-array v0, v1, [C

    #@30
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    #@32
    .line 513
    new-array v0, v1, [I

    #@34
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    #@36
    .line 515
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@38
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    #@3b
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@3d
    .line 516
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@3f
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    #@42
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@44
    .line 207
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "inBytes"    # Ljava/nio/ByteBuffer;
    .param p2, "baseName"    # Ljava/lang/String;
    .param p3, "localeID"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 363
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->init(Ljava/nio/ByteBuffer;)V

    #@6
    .line 366
    iget-boolean v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    #@8
    if-eqz v1, :cond_2

    #@a
    .line 367
    const-string/jumbo v1, "pool"

    #@d
    invoke-static {p2, v1, p4}, Landroid/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    #@10
    move-result-object v0

    #@11
    .line 368
    .local v0, "poolBundleReader":Landroid/icu/impl/ICUResourceBundleReader;
    iget-boolean v1, v0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    #@13
    if-nez v1, :cond_0

    #@15
    .line 369
    new-instance v1, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v2, "pool.res is not a pool bundle"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 371
    :cond_0
    iget v1, v0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    #@20
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    #@22
    if-eq v1, v2, :cond_1

    #@24
    .line 372
    new-instance v1, Ljava/lang/IllegalStateException;

    #@26
    const-string/jumbo v2, "pool.res has a different checksum than this bundle"

    #@29
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 374
    :cond_1
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@2f
    iput-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleKeys:Ljava/nio/ByteBuffer;

    #@31
    .line 362
    .end local v0    # "poolBundleReader":Landroid/icu/impl/ICUResourceBundleReader;
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V
    .locals 0
    .param p1, "inBytes"    # Ljava/nio/ByteBuffer;
    .param p2, "baseName"    # Ljava/lang/String;
    .param p3, "localeID"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/ICUResourceBundleReader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@3
    return-void
.end method

.method static RES_GET_INT(I)I
    .locals 1
    .param p0, "res"    # I

    #@0
    .prologue
    .line 498
    shl-int/lit8 v0, p0, 0x4

    #@2
    shr-int/lit8 v0, v0, 0x4

    #@4
    return v0
.end method

.method private static RES_GET_OFFSET(I)I
    .locals 1
    .param p0, "res"    # I

    #@0
    .prologue
    .line 491
    const v0, 0xfffffff

    #@3
    and-int/2addr v0, p0

    #@4
    return v0
.end method

.method static RES_GET_TYPE(I)I
    .locals 1
    .param p0, "res"    # I

    #@0
    .prologue
    .line 488
    ushr-int/lit8 v0, p0, 0x1c

    #@2
    return v0
.end method

.method static RES_GET_UINT(I)I
    .locals 1
    .param p0, "res"    # I

    #@0
    .prologue
    .line 501
    const v0, 0xfffffff

    #@3
    and-int/2addr v0, p0

    #@4
    return v0
.end method

.method static URES_IS_ARRAY(I)Z
    .locals 2
    .param p0, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 504
    const/16 v1, 0x8

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x9

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method static URES_IS_TABLE(I)Z
    .locals 2
    .param p0, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 507
    const/4 v1, 0x2

    #@2
    if-eq p0, v1, :cond_0

    #@4
    const/4 v1, 0x5

    #@5
    if-ne p0, v1, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    const/4 v1, 0x4

    #@9
    if-eq p0, v1, :cond_0

    #@b
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private compareKeys(Ljava/lang/CharSequence;C)I
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "keyOffset"    # C

    #@0
    .prologue
    .line 597
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@2
    if-ge p2, v0, :cond_0

    #@4
    .line 598
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@6
    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 600
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleKeys:Ljava/nio/ByteBuffer;

    #@d
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@f
    sub-int v1, p2, v1

    #@11
    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method private compareKeys32(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "keyOffset"    # I

    #@0
    .prologue
    .line 604
    if-ltz p2, :cond_0

    #@2
    .line 605
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@4
    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 607
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleKeys:Ljava/nio/ByteBuffer;

    #@b
    const v1, 0x7fffffff

    #@e
    and-int/2addr v1, p2

    #@f
    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method private getChar(I)C
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getChars(II)[C
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 522
    new-array v0, p2, [C

    #@2
    .line 523
    .local v0, "chars":[C
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    #@5
    .line 524
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@7
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@a
    move-result v2

    #@b
    aput-char v2, v0, v1

    #@d
    .line 523
    add-int/lit8 p1, p1, 0x2

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 526
    :cond_0
    return-object v0
.end method

.method public static getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeName"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x2f

    #@2
    const/16 v2, 0x2e

    #@4
    .line 1208
    if-eqz p0, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_2

    #@c
    .line 1209
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1210
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    return-object p1

    #@1b
    .line 1212
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    const-string/jumbo v1, ".res"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    .line 1214
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@33
    move-result v0

    #@34
    const/4 v1, -0x1

    #@35
    if-ne v0, v1, :cond_4

    #@37
    .line 1215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3a
    move-result v0

    #@3b
    add-int/lit8 v0, v0, -0x1

    #@3d
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v0

    #@41
    if-eq v0, v3, :cond_3

    #@43
    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    const-string/jumbo v1, "/"

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    const-string/jumbo v1, ".res"

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    return-object v0

    #@63
    .line 1218
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    const-string/jumbo v1, ".res"

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    return-object v0

    #@7c
    .line 1221
    :cond_4
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@7f
    move-result-object p0

    #@80
    .line 1222
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@83
    move-result v0

    #@84
    if-nez v0, :cond_5

    #@86
    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    const-string/jumbo v1, ".res"

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v0

    #@9a
    return-object v0

    #@9b
    .line 1225
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    const-string/jumbo v1, "_"

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v0

    #@af
    const-string/jumbo v1, ".res"

    #@b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v0

    #@b6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v0

    #@ba
    return-object v0
.end method

.method private getIndexesInt(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 470
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    shl-int/lit8 v1, v1, 0x2

    #@6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private getInt(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 529
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getInts(II)[I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 532
    new-array v1, p2, [I

    #@2
    .line 533
    .local v1, "ints":[I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@5
    .line 534
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@7
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@a
    move-result v2

    #@b
    aput v2, v1, v0

    #@d
    .line 533
    add-int/lit8 p1, p1, 0x4

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 536
    :cond_0
    return-object v1
.end method

.method private getKey16String(I)Ljava/lang/String;
    .locals 2
    .param p1, "keyOffset"    # I

    #@0
    .prologue
    .line 583
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 584
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@6
    invoke-static {v0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 586
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleKeys:Ljava/nio/ByteBuffer;

    #@d
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@f
    sub-int v1, p1, v1

    #@11
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method private getKey32String(I)Ljava/lang/String;
    .locals 2
    .param p1, "keyOffset"    # I

    #@0
    .prologue
    .line 590
    if-ltz p1, :cond_0

    #@2
    .line 591
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@4
    invoke-static {v0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 593
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleKeys:Ljava/nio/ByteBuffer;

    #@b
    const v1, 0x7fffffff

    #@e
    and-int/2addr v1, p1

    #@f
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method static getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;
    .locals 3
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 379
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@5
    .line 380
    .local v0, "info":Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;
    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    #@7
    invoke-virtual {v2, v0, v0}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader;

    #@d
    .line 381
    .local v1, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 382
    const/4 v2, 0x0

    #@12
    return-object v2

    #@13
    .line 384
    :cond_0
    return-object v1
.end method

.method private getResourceByteOffset(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 494
    shl-int/lit8 v0, p1, 0x2

    #@2
    return v0
.end method

.method private getTable16KeyOffsets(I)[C
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 539
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@2
    add-int/lit8 v2, p1, 0x1

    #@4
    .end local p1    # "offset":I
    .local v2, "offset":I
    invoke-virtual {v5, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    #@7
    move-result v1

    #@8
    .line 540
    .local v1, "length":I
    if-lez v1, :cond_1

    #@a
    .line 541
    new-array v3, v1, [C

    #@c
    .line 542
    .local v3, "result":[C
    const/16 v5, 0x10

    #@e
    if-gt v1, v5, :cond_0

    #@10
    .line 543
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@13
    .line 544
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@15
    add-int/lit8 p1, v2, 0x1

    #@17
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->charAt(I)C

    #@1a
    move-result v5

    #@1b
    aput-char v5, v3, v0

    #@1d
    .line 543
    add-int/lit8 v0, v0, 0x1

    #@1f
    move v2, p1

    #@20
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    #@21
    .line 547
    .end local v0    # "i":I
    :cond_0
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@23
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    #@26
    move-result-object v4

    #@27
    .line 548
    .local v4, "temp":Ljava/nio/CharBuffer;
    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@2a
    .line 549
    invoke-virtual {v4, v3}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    #@2d
    move p1, v2

    #@2e
    .line 551
    .end local v2    # "offset":I
    .end local v4    # "temp":Ljava/nio/CharBuffer;
    .restart local p1    # "offset":I
    :goto_1
    return-object v3

    #@2f
    .line 553
    .end local v3    # "result":[C
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    sget-object v5, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    #@31
    return-object v5

    #@32
    .restart local v0    # "i":I
    .restart local v3    # "result":[C
    :cond_2
    move p1, v2

    #@33
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_1
.end method

.method private getTable32KeyOffsets(I)[I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 565
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@3
    move-result v0

    #@4
    .line 566
    .local v0, "length":I
    if-lez v0, :cond_0

    #@6
    .line 567
    add-int/lit8 v1, p1, 0x4

    #@8
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 569
    :cond_0
    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    #@f
    return-object v1
.end method

.method private getTableKeyOffsets(I)[C
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 557
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getChar(I)C

    #@3
    move-result v0

    #@4
    .line 558
    .local v0, "length":I
    if-lez v0, :cond_0

    #@6
    .line 559
    add-int/lit8 v1, p1, 0x2

    #@8
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getChars(II)[C

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 561
    :cond_0
    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    #@f
    return-object v1
.end method

.method private init(Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "inBytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 389
    sget-object v10, Landroid/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    #@2
    const v11, 0x52657342

    #@5
    invoke-static {p1, v11, v10}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@8
    move-result v10

    #@9
    iput v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->dataVersion:I

    #@b
    .line 390
    const/16 v10, 0x10

    #@d
    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    #@10
    move-result v10

    #@11
    const/4 v11, 0x1

    #@12
    if-ne v10, v11, :cond_0

    #@14
    const/16 v10, 0x11

    #@16
    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    #@19
    move-result v10

    #@1a
    if-nez v10, :cond_0

    #@1c
    const/4 v6, 0x1

    #@1d
    .line 391
    .local v6, "isFormatVersion10":Z
    :goto_0
    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@20
    move-result-object v10

    #@21
    iput-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@23
    .line 392
    iget-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@25
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    #@28
    move-result v3

    #@29
    .line 397
    .local v3, "dataLength":I
    iget-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@2b
    const/4 v11, 0x0

    #@2c
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@2f
    move-result v10

    #@30
    iput v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->rootRes:I

    #@32
    .line 399
    if-eqz v6, :cond_1

    #@34
    .line 400
    const/high16 v10, 0x10000

    #@36
    iput v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@38
    .line 401
    new-instance v10, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@3a
    div-int/lit8 v11, v3, 0x4

    #@3c
    add-int/lit8 v11, v11, -0x1

    #@3e
    invoke-direct {v10, v11}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;-><init>(I)V

    #@41
    iput-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@43
    .line 402
    return-void

    #@44
    .line 390
    .end local v3    # "dataLength":I
    .end local v6    # "isFormatVersion10":Z
    :cond_0
    const/4 v6, 0x0

    #@45
    .restart local v6    # "isFormatVersion10":Z
    goto :goto_0

    #@46
    .line 406
    .restart local v3    # "dataLength":I
    :cond_1
    const/4 v10, 0x0

    #@47
    invoke-direct {p0, v10}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@4a
    move-result v5

    #@4b
    .line 407
    .local v5, "indexes0":I
    and-int/lit16 v4, v5, 0xff

    #@4d
    .line 408
    .local v4, "indexLength":I
    const/4 v10, 0x4

    #@4e
    if-gt v4, v10, :cond_2

    #@50
    .line 409
    new-instance v10, Landroid/icu/util/ICUException;

    #@52
    const-string/jumbo v11, "not enough indexes"

    #@55
    invoke-direct {v10, v11}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@58
    throw v10

    #@59
    .line 412
    :cond_2
    add-int/lit8 v10, v4, 0x1

    #@5b
    shl-int/lit8 v10, v10, 0x2

    #@5d
    if-lt v3, v10, :cond_3

    #@5f
    .line 413
    const/4 v10, 0x3

    #@60
    invoke-direct {p0, v10}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@63
    move-result v2

    #@64
    .local v2, "bundleTop":I
    shl-int/lit8 v10, v2, 0x2

    #@66
    if-ge v3, v10, :cond_4

    #@68
    .line 414
    .end local v2    # "bundleTop":I
    :cond_3
    new-instance v10, Landroid/icu/util/ICUException;

    #@6a
    const-string/jumbo v11, "not enough bytes"

    #@6d
    invoke-direct {v10, v11}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@70
    throw v10

    #@71
    .line 416
    .restart local v2    # "bundleTop":I
    :cond_4
    add-int/lit8 v8, v2, -0x1

    #@73
    .line 418
    .local v8, "maxOffset":I
    const/4 v10, 0x5

    #@74
    if-le v4, v10, :cond_5

    #@76
    .line 421
    const/4 v10, 0x5

    #@77
    invoke-direct {p0, v10}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@7a
    move-result v1

    #@7b
    .line 422
    .local v1, "att":I
    and-int/lit8 v10, v1, 0x1

    #@7d
    if-eqz v10, :cond_9

    #@7f
    const/4 v10, 0x1

    #@80
    :goto_1
    iput-boolean v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->noFallback:Z

    #@82
    .line 423
    and-int/lit8 v10, v1, 0x2

    #@84
    if-eqz v10, :cond_a

    #@86
    const/4 v10, 0x1

    #@87
    :goto_2
    iput-boolean v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    #@89
    .line 424
    and-int/lit8 v10, v1, 0x4

    #@8b
    if-eqz v10, :cond_b

    #@8d
    const/4 v10, 0x1

    #@8e
    :goto_3
    iput-boolean v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    #@90
    .line 428
    .end local v1    # "att":I
    :cond_5
    const/4 v10, 0x6

    #@91
    if-le v4, v10, :cond_d

    #@93
    .line 429
    const/4 v10, 0x1

    #@94
    invoke-direct {p0, v10}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@97
    move-result v7

    #@98
    .line 430
    .local v7, "keysTop":I
    const/4 v10, 0x6

    #@99
    invoke-direct {p0, v10}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@9c
    move-result v0

    #@9d
    .line 431
    .local v0, "_16BitTop":I
    if-le v0, v7, :cond_c

    #@9f
    .line 432
    sub-int v10, v0, v7

    #@a1
    mul-int/lit8 v9, v10, 0x2

    #@a3
    .line 433
    .local v9, "num16BitUnits":I
    iget-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@a5
    shl-int/lit8 v11, v7, 0x2

    #@a7
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@aa
    .line 434
    iget-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@ac
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    #@af
    move-result-object v10

    #@b0
    iput-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@b2
    .line 435
    iget-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@b4
    invoke-virtual {v10, v9}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@b7
    .line 436
    add-int/lit8 v10, v9, -0x1

    #@b9
    or-int/2addr v8, v10

    #@ba
    .line 444
    .end local v0    # "_16BitTop":I
    .end local v7    # "keysTop":I
    .end local v9    # "num16BitUnits":I
    :goto_4
    const/4 v10, 0x7

    #@bb
    if-le v4, v10, :cond_6

    #@bd
    .line 445
    const/4 v10, 0x7

    #@be
    invoke-direct {p0, v10}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@c1
    move-result v10

    #@c2
    iput v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    #@c4
    .line 451
    :cond_6
    const/4 v10, 0x1

    #@c5
    invoke-direct {p0, v10}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@c8
    move-result v10

    #@c9
    add-int/lit8 v11, v4, 0x1

    #@cb
    if-le v10, v11, :cond_7

    #@cd
    .line 452
    iget-boolean v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    #@cf
    if-eqz v10, :cond_e

    #@d1
    .line 457
    iget-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@d3
    add-int/lit8 v11, v4, 0x1

    #@d5
    shl-int/lit8 v11, v11, 0x2

    #@d7
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@da
    .line 458
    iget-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@dc
    invoke-static {v10}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@df
    move-result-object v10

    #@e0
    iput-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@e2
    .line 464
    :cond_7
    :goto_5
    iget-boolean v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    #@e4
    if-nez v10, :cond_8

    #@e6
    .line 465
    new-instance v10, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@e8
    invoke-direct {v10, v8}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;-><init>(I)V

    #@eb
    iput-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@ed
    .line 388
    :cond_8
    return-void

    #@ee
    .line 422
    .restart local v1    # "att":I
    :cond_9
    const/4 v10, 0x0

    #@ef
    goto :goto_1

    #@f0
    .line 423
    :cond_a
    const/4 v10, 0x0

    #@f1
    goto :goto_2

    #@f2
    .line 424
    :cond_b
    const/4 v10, 0x0

    #@f3
    goto :goto_3

    #@f4
    .line 438
    .end local v1    # "att":I
    .restart local v0    # "_16BitTop":I
    .restart local v7    # "keysTop":I
    :cond_c
    sget-object v10, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    #@f6
    iput-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@f8
    goto :goto_4

    #@f9
    .line 441
    .end local v0    # "_16BitTop":I
    .end local v7    # "keysTop":I
    :cond_d
    sget-object v10, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    #@fb
    iput-object v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@fd
    goto :goto_4

    #@fe
    .line 460
    :cond_e
    const/4 v10, 0x1

    #@ff
    invoke-direct {p0, v10}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@102
    move-result v10

    #@103
    shl-int/lit8 v10, v10, 0x2

    #@105
    iput v10, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@107
    goto :goto_5
.end method

.method private static makeKeyStringFromBytes(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 3
    .param p0, "keyBytes"    # Ljava/nio/ByteBuffer;
    .param p1, "keyOffset"    # I

    #@0
    .prologue
    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 576
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    #@8
    move-result v0

    #@9
    .local v0, "b":B
    if-eqz v0, :cond_0

    #@b
    .line 577
    add-int/lit8 p1, p1, 0x1

    #@d
    .line 578
    int-to-char v2, v0

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    goto :goto_0

    #@12
    .line 580
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    return-object v2
.end method


# virtual methods
.method getAlias(I)Ljava/lang/String;
    .locals 7
    .param p1, "res"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 663
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@4
    move-result v1

    #@5
    .line 665
    .local v1, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@8
    move-result v4

    #@9
    const/4 v5, 0x3

    #@a
    if-ne v4, v5, :cond_2

    #@c
    .line 666
    if-nez v1, :cond_0

    #@e
    .line 667
    const-string/jumbo v4, ""

    #@11
    return-object v4

    #@12
    .line 669
    :cond_0
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@14
    invoke-virtual {v4, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    .line 670
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_1

    #@1a
    .line 671
    check-cast v3, Ljava/lang/String;

    #@1c
    .end local v3    # "value":Ljava/lang/Object;
    return-object v3

    #@1d
    .line 673
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@20
    move-result v1

    #@21
    .line 674
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@24
    move-result v0

    #@25
    .line 675
    .local v0, "length":I
    new-instance v2, Ljava/lang/String;

    #@27
    add-int/lit8 v4, v1, 0x4

    #@29
    invoke-direct {p0, v4, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getChars(II)[C

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    #@30
    .line 676
    .local v2, "s":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@32
    mul-int/lit8 v5, v0, 0x2

    #@34
    invoke-virtual {v4, p1, v2, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Ljava/lang/String;

    #@3a
    return-object v4

    #@3b
    .line 679
    .end local v0    # "length":I
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v6
.end method

.method getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Container;
    .locals 7
    .param p1, "res"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 769
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@5
    move-result v2

    #@6
    .line 770
    .local v2, "type":I
    invoke-static {v2}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_0

    #@c
    .line 771
    return-object v6

    #@d
    .line 773
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@10
    move-result v1

    #@11
    .line 774
    .local v1, "offset":I
    if-nez v1, :cond_1

    #@13
    .line 775
    sget-object v4, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@15
    return-object v4

    #@16
    .line 777
    :cond_1
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@18
    invoke-virtual {v4, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    .line 778
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2

    #@1e
    .line 779
    check-cast v3, Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@20
    .end local v3    # "value":Ljava/lang/Object;
    return-object v3

    #@21
    .line 781
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    const/16 v4, 0x8

    #@23
    if-ne v2, v4, :cond_3

    #@25
    .line 782
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Array;

    #@27
    invoke-direct {v0, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    #@2a
    .line 783
    .local v0, "array":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :goto_0
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@2c
    invoke-virtual {v4, p1, v0, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@32
    return-object v4

    #@33
    .line 782
    .end local v0    # "array":Landroid/icu/impl/ICUResourceBundleReader$Container;
    :cond_3
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Array16;

    #@35
    invoke-direct {v0, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array16;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    #@38
    goto :goto_0
.end method

.method getBinary(I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "res"    # I

    #@0
    .prologue
    .line 718
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@3
    move-result v1

    #@4
    .line 720
    .local v1, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@7
    move-result v3

    #@8
    const/4 v4, 0x1

    #@9
    if-ne v3, v4, :cond_3

    #@b
    .line 721
    if-nez v1, :cond_0

    #@d
    .line 725
    sget-object v3, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    #@f
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@12
    move-result-object v3

    #@13
    return-object v3

    #@14
    .line 731
    :cond_0
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@17
    move-result v1

    #@18
    .line 732
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@1b
    move-result v0

    #@1c
    .line 733
    .local v0, "length":I
    if-nez v0, :cond_1

    #@1e
    .line 734
    sget-object v3, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    #@20
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@23
    move-result-object v3

    #@24
    return-object v3

    #@25
    .line 736
    :cond_1
    add-int/lit8 v1, v1, 0x4

    #@27
    .line 737
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@29
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@2c
    move-result-object v2

    #@2d
    .line 738
    .local v2, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@30
    move-result-object v3

    #@31
    add-int v4, v1, v0

    #@33
    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@36
    .line 739
    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@39
    move-result-object v2

    #@3a
    .line 740
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@3d
    move-result v3

    #@3e
    if-nez v3, :cond_2

    #@40
    .line 741
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@43
    move-result-object v2

    #@44
    .line 743
    :cond_2
    return-object v2

    #@45
    .line 746
    .end local v0    # "length":I
    .end local v2    # "result":Ljava/nio/ByteBuffer;
    :cond_3
    const/4 v3, 0x0

    #@46
    return-object v3
.end method

.method getBinary(I[B)[B
    .locals 8
    .param p1, "res"    # I
    .param p2, "ba"    # [B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 684
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@4
    move-result v2

    #@5
    .line 686
    .local v2, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@8
    move-result v5

    #@9
    const/4 v6, 0x1

    #@a
    if-ne v5, v6, :cond_5

    #@c
    .line 687
    if-nez v2, :cond_0

    #@e
    .line 688
    sget-object v5, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    #@10
    return-object v5

    #@11
    .line 690
    :cond_0
    invoke-direct {p0, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@14
    move-result v2

    #@15
    .line 691
    invoke-direct {p0, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@18
    move-result v1

    #@19
    .line 692
    .local v1, "length":I
    if-nez v1, :cond_1

    #@1b
    .line 693
    sget-object v5, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    #@1d
    return-object v5

    #@1e
    .line 697
    :cond_1
    if-eqz p2, :cond_2

    #@20
    array-length v5, p2

    #@21
    if-eq v5, v1, :cond_3

    #@23
    .line 698
    :cond_2
    new-array p2, v1, [B

    #@25
    .line 700
    :cond_3
    add-int/lit8 v2, v2, 0x4

    #@27
    .line 701
    const/16 v5, 0x10

    #@29
    if-gt v1, v5, :cond_4

    #@2b
    .line 702
    const/4 v0, 0x0

    #@2c
    .local v0, "i":I
    move v3, v2

    #@2d
    .end local v2    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-ge v0, v1, :cond_6

    #@2f
    .line 703
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@31
    add-int/lit8 v2, v3, 0x1

    #@33
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get(I)B

    #@36
    move-result v5

    #@37
    aput-byte v5, p2, v0

    #@39
    .line 702
    add-int/lit8 v0, v0, 0x1

    #@3b
    move v3, v2

    #@3c
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    #@3d
    .line 706
    .end local v0    # "i":I
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_4
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@3f
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@42
    move-result-object v4

    #@43
    .line 707
    .local v4, "temp":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@46
    .line 708
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@49
    .line 710
    .end local v4    # "temp":Ljava/nio/ByteBuffer;
    :goto_1
    return-object p2

    #@4a
    .line 713
    .end local v1    # "length":I
    :cond_5
    return-object v7

    #@4b
    .end local v2    # "offset":I
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v3    # "offset":I
    :cond_6
    move v2, v3

    #@4c
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1
.end method

.method getIntVector(I)[I
    .locals 4
    .param p1, "res"    # I

    #@0
    .prologue
    .line 751
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@3
    move-result v1

    #@4
    .line 753
    .local v1, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@7
    move-result v2

    #@8
    const/16 v3, 0xe

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 754
    if-nez v1, :cond_0

    #@e
    .line 755
    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    #@10
    return-object v2

    #@11
    .line 759
    :cond_0
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@14
    move-result v1

    #@15
    .line 760
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@18
    move-result v0

    #@19
    .line 761
    .local v0, "length":I
    add-int/lit8 v2, v1, 0x4

    #@1b
    invoke-direct {p0, v2, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    #@1e
    move-result-object v2

    #@1f
    return-object v2

    #@20
    .line 764
    .end local v0    # "length":I
    :cond_1
    const/4 v2, 0x0

    #@21
    return-object v2
.end method

.method getNoFallback()Z
    .locals 1

    #@0
    .prologue
    .line 481
    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->noFallback:Z

    #@2
    return v0
.end method

.method getRootResource()I
    .locals 1

    #@0
    .prologue
    .line 478
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->rootRes:I

    #@2
    return v0
.end method

.method getString(I)Ljava/lang/String;
    .locals 11
    .param p1, "res"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const v9, 0xdfef

    #@4
    .line 612
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@7
    move-result v3

    #@8
    .line 613
    .local v3, "offset":I
    if-eq p1, v3, :cond_0

    #@a
    .line 614
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@d
    move-result v7

    #@e
    const/4 v8, 0x6

    #@f
    if-eq v7, v8, :cond_0

    #@11
    .line 615
    return-object v10

    #@12
    .line 617
    :cond_0
    if-nez v3, :cond_1

    #@14
    .line 618
    const-string/jumbo v7, ""

    #@17
    return-object v7

    #@18
    .line 620
    :cond_1
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@1a
    invoke-virtual {v7, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v6

    #@1e
    .line 621
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_2

    #@20
    .line 622
    check-cast v6, Ljava/lang/String;

    #@22
    .end local v6    # "value":Ljava/lang/Object;
    return-object v6

    #@23
    .line 625
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_2
    if-eq p1, v3, :cond_8

    #@25
    .line 626
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@27
    invoke-virtual {v7, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    .line 627
    .local v1, "first":I
    and-int/lit16 v7, v1, -0x400

    #@2d
    const v8, 0xdc00

    #@30
    if-eq v7, v8, :cond_5

    #@32
    .line 628
    if-nez v1, :cond_3

    #@34
    .line 629
    const-string/jumbo v7, ""

    #@37
    return-object v7

    #@38
    .line 631
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    .line 632
    .local v5, "sb":Ljava/lang/StringBuilder;
    int-to-char v7, v1

    #@3e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 634
    :goto_0
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@43
    add-int/lit8 v3, v3, 0x1

    #@45
    invoke-virtual {v7, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    #@48
    move-result v0

    #@49
    .local v0, "c":C
    if-eqz v0, :cond_4

    #@4b
    .line 635
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    goto :goto_0

    #@4f
    .line 637
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    .line 659
    .end local v0    # "c":C
    .end local v1    # "first":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .local v4, "s":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@55
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@58
    move-result v8

    #@59
    mul-int/lit8 v8, v8, 0x2

    #@5b
    invoke-virtual {v7, p1, v4, v8}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    #@5e
    move-result-object v7

    #@5f
    check-cast v7, Ljava/lang/String;

    #@61
    return-object v7

    #@62
    .line 640
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "first":I
    :cond_5
    if-ge v1, v9, :cond_6

    #@64
    .line 641
    and-int/lit16 v2, v1, 0x3ff

    #@66
    .line 642
    .local v2, "length":I
    add-int/lit8 v3, v3, 0x1

    #@68
    .line 652
    :goto_2
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@6a
    add-int v8, v3, v2

    #@6c
    invoke-interface {v7, v3, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@6f
    move-result-object v7

    #@70
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_1

    #@75
    .line 643
    .end local v2    # "length":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_6
    const v7, 0xdfff

    #@78
    if-ge v1, v7, :cond_7

    #@7a
    .line 644
    sub-int v7, v1, v9

    #@7c
    shl-int/lit8 v7, v7, 0x10

    #@7e
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@80
    add-int/lit8 v9, v3, 0x1

    #@82
    invoke-virtual {v8, v9}, Ljava/nio/CharBuffer;->charAt(I)C

    #@85
    move-result v8

    #@86
    or-int v2, v7, v8

    #@88
    .line 645
    .restart local v2    # "length":I
    add-int/lit8 v3, v3, 0x2

    #@8a
    goto :goto_2

    #@8b
    .line 647
    .end local v2    # "length":I
    :cond_7
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@8d
    add-int/lit8 v8, v3, 0x1

    #@8f
    invoke-virtual {v7, v8}, Ljava/nio/CharBuffer;->charAt(I)C

    #@92
    move-result v7

    #@93
    shl-int/lit8 v7, v7, 0x10

    #@95
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@97
    add-int/lit8 v9, v3, 0x2

    #@99
    invoke-virtual {v8, v9}, Ljava/nio/CharBuffer;->charAt(I)C

    #@9c
    move-result v8

    #@9d
    or-int v2, v7, v8

    #@9f
    .line 648
    .restart local v2    # "length":I
    add-int/lit8 v3, v3, 0x3

    #@a1
    goto :goto_2

    #@a2
    .line 655
    .end local v1    # "first":I
    .end local v2    # "length":I
    :cond_8
    invoke-direct {p0, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@a5
    move-result v3

    #@a6
    .line 656
    invoke-direct {p0, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@a9
    move-result v2

    #@aa
    .line 657
    .restart local v2    # "length":I
    new-instance v4, Ljava/lang/String;

    #@ac
    add-int/lit8 v7, v3, 0x4

    #@ae
    invoke-direct {p0, v7, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getChars(II)[C

    #@b1
    move-result-object v7

    #@b2
    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([C)V

    #@b5
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_1
.end method

.method getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;
    .locals 7
    .param p1, "res"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 787
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@4
    move-result v3

    #@5
    .line 788
    .local v3, "type":I
    invoke-static {v3}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    #@8
    move-result v5

    #@9
    if-nez v5, :cond_0

    #@b
    .line 789
    return-object v6

    #@c
    .line 791
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@f
    move-result v0

    #@10
    .line 792
    .local v0, "offset":I
    if-nez v0, :cond_1

    #@12
    .line 793
    sget-object v5, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@14
    return-object v5

    #@15
    .line 795
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@17
    invoke-virtual {v5, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    .line 796
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_2

    #@1d
    .line 797
    check-cast v4, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@1f
    .end local v4    # "value":Ljava/lang/Object;
    return-object v4

    #@20
    .line 801
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v5, 0x2

    #@21
    if-ne v3, v5, :cond_3

    #@23
    .line 802
    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$Table1632;

    #@25
    invoke-direct {v2, p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table1632;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    #@28
    .line 803
    .local v2, "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    #@2b
    move-result v5

    #@2c
    mul-int/lit8 v1, v5, 0x2

    #@2e
    .line 811
    .local v1, "size":I
    :goto_0
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@30
    invoke-virtual {v5, p1, v2, v1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    #@33
    move-result-object v5

    #@34
    check-cast v5, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@36
    return-object v5

    #@37
    .line 804
    .end local v1    # "size":I
    .end local v2    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    :cond_3
    const/4 v5, 0x5

    #@38
    if-ne v3, v5, :cond_4

    #@3a
    .line 805
    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$Table16;

    #@3c
    invoke-direct {v2, p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table16;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    #@3f
    .line 806
    .restart local v2    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    #@42
    move-result v5

    #@43
    mul-int/lit8 v1, v5, 0x2

    #@45
    .restart local v1    # "size":I
    goto :goto_0

    #@46
    .line 808
    .end local v1    # "size":I
    .end local v2    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    :cond_4
    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$Table32;

    #@48
    invoke-direct {v2, p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table32;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    #@4b
    .line 809
    .restart local v2    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    #@4e
    move-result v5

    #@4f
    mul-int/lit8 v1, v5, 0x4

    #@51
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method getUsesPoolBundle()Z
    .locals 1

    #@0
    .prologue
    .line 484
    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    #@2
    return v0
.end method

.method getVersion()Landroid/icu/util/VersionInfo;
    .locals 1

    #@0
    .prologue
    .line 474
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->dataVersion:I

    #@2
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

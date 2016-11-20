.class public final Landroid/icu/impl/ICUResourceBundleReader;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleReader$Array16;,
        Landroid/icu/impl/ICUResourceBundleReader$Array32;,
        Landroid/icu/impl/ICUResourceBundleReader$Array;,
        Landroid/icu/impl/ICUResourceBundleReader$Container;,
        Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;,
        Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;,
        Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;,
        Landroid/icu/impl/ICUResourceBundleReader$Table1632;,
        Landroid/icu/impl/ICUResourceBundleReader$Table16;,
        Landroid/icu/impl/ICUResourceBundleReader$Table32;,
        Landroid/icu/impl/ICUResourceBundleReader$Table;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache; = null

.field private static final DATA_FORMAT:I = 0x52657342

.field private static final DEBUG:Z = false

.field private static final EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

.field private static final EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

.field private static final EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

.field private static final ICU_RESOURCE_SUFFIX:Ljava/lang/String; = ".res"

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

.field static final LARGE_SIZE:I = 0x18

.field private static final NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

.field private static PUBLIC_TYPES:[I = null

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

.field private keyBytes:[B

.field private localKeyLimit:I

.field private noFallback:Z

.field private poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

.field private poolCheckSum:I

.field private poolStringIndex16Limit:I

.field private poolStringIndexLimit:I

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

.method static synthetic -get1()[I
    .locals 1

    #@0
    sget-object v0, Landroid/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/icu/impl/ICUResourceBundleReader;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/icu/impl/ICUResourceBundleReader;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/icu/impl/ICUResourceBundleReader;I)Z
    .locals 1
    .param p1, "res"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->isNoInheritanceMarker(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/icu/impl/ICUResourceBundleReader;I)[C
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

.method static synthetic -wrap10(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1
    .param p1, "res"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTableLength(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap11(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
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

.method static synthetic -wrap12(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
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

.method static synthetic -wrap13(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V
    .locals 0
    .param p1, "keyOffset"    # I
    .param p2, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->setKeyFromKey16(ILandroid/icu/impl/UResource$Key;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V
    .locals 0
    .param p1, "keyOffset"    # I
    .param p2, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->setKeyFromKey32(ILandroid/icu/impl/UResource$Key;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/icu/impl/ICUResourceBundleReader;I)[C
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

.method static synthetic -wrap3(I)I
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

.method static synthetic -wrap4(Landroid/icu/impl/ICUResourceBundleReader;I)[I
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

.method static synthetic -wrap5(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I
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

.method static synthetic -wrap6(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I
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

.method static synthetic -wrap7(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1
    .param p1, "res"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getArrayLength(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Landroid/icu/impl/ICUResourceBundleReader;I)I
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

.method static synthetic -wrap9(Landroid/icu/impl/ICUResourceBundleReader;I)I
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

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Landroid/icu/impl/ICUResourceBundleReader;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundleReader;->-assertionsDisabled:Z

    #@d
    .line 46
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    #@f
    invoke-direct {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>(Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;)V

    #@12
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    #@14
    .line 115
    const-string/jumbo v0, "\u0000"

    #@17
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    #@1d
    .line 148
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    #@1f
    invoke-direct {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;-><init>(Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;)V

    #@22
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    #@24
    .line 149
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader;

    #@26
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader;-><init>()V

    #@29
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    #@2b
    .line 373
    new-array v0, v1, [B

    #@2d
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    #@2f
    .line 374
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@36
    move-result-object v0

    #@37
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    #@39
    .line 375
    new-array v0, v1, [C

    #@3b
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    #@3d
    .line 376
    new-array v0, v1, [I

    #@3f
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    #@41
    .line 378
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Array;

    #@43
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    #@46
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

    #@48
    .line 379
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@4a
    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    #@4d
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@4f
    .line 814
    const/16 v0, 0x10

    #@51
    new-array v0, v0, [I

    #@53
    fill-array-data v0, :array_0

    #@56
    sput-object v0, Landroid/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    #@58
    .line 32
    return-void

    #@59
    :cond_0
    const/4 v0, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 814
    nop

    #@5c
    :array_0
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

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 2
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
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 216
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->init(Ljava/nio/ByteBuffer;)V

    #@6
    .line 219
    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 220
    const-string/jumbo v0, "pool"

    #@d
    invoke-static {p2, v0, p4}, Landroid/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    #@13
    .line 221
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    #@15
    iget-boolean v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    #@17
    if-nez v0, :cond_0

    #@19
    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1b
    const-string/jumbo v1, "pool.res is not a pool bundle"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 224
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    #@24
    iget v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    #@26
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    #@28
    if-eq v0, v1, :cond_1

    #@2a
    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2c
    const-string/jumbo v1, "pool.res has a different checksum than this bundle"

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 215
    :cond_1
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
    .line 361
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
    .line 354
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
    .line 351
    ushr-int/lit8 v0, p0, 0x1c

    #@2
    return v0
.end method

.method static RES_GET_UINT(I)I
    .locals 1
    .param p0, "res"    # I

    #@0
    .prologue
    .line 364
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
    .line 367
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
    .line 370
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
    .line 483
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@2
    if-ge p2, v0, :cond_0

    #@4
    .line 484
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@6
    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 486
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    #@d
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@f
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@11
    sub-int v1, p2, v1

    #@13
    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method private compareKeys32(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "keyOffset"    # I

    #@0
    .prologue
    .line 490
    if-ltz p2, :cond_0

    #@2
    .line 491
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@4
    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 493
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    #@b
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@d
    const v1, 0x7fffffff

    #@10
    and-int/2addr v1, p2

    #@11
    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method private getArrayLength(I)I
    .locals 4
    .param p1, "res"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 729
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@4
    move-result v0

    #@5
    .line 730
    .local v0, "offset":I
    if-nez v0, :cond_0

    #@7
    .line 731
    return v3

    #@8
    .line 733
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@b
    move-result v1

    #@c
    .line 734
    .local v1, "type":I
    const/16 v2, 0x8

    #@e
    if-ne v1, v2, :cond_1

    #@10
    .line 735
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@13
    move-result v0

    #@14
    .line 736
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 737
    :cond_1
    const/16 v2, 0x9

    #@1b
    if-ne v1, v2, :cond_2

    #@1d
    .line 738
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@1f
    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->charAt(I)C

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 740
    :cond_2
    return v3
.end method

.method private getChars(II)[C
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 382
    new-array v0, p2, [C

    #@2
    .line 383
    .local v0, "chars":[C
    const/16 v3, 0x10

    #@4
    if-gt p2, v3, :cond_0

    #@6
    .line 384
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    #@9
    .line 385
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@b
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@e
    move-result v3

    #@f
    aput-char v3, v0, v1

    #@11
    .line 384
    add-int/lit8 p1, p1, 0x2

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 388
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@18
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    #@1b
    move-result-object v2

    #@1c
    .line 389
    .local v2, "temp":Ljava/nio/CharBuffer;
    div-int/lit8 v3, p1, 0x2

    #@1e
    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@21
    .line 390
    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    #@24
    .line 392
    .end local v2    # "temp":Ljava/nio/CharBuffer;
    :cond_1
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
    .line 1382
    if-eqz p0, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_2

    #@c
    .line 1383
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1384
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
    .line 1386
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
    .line 1388
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@33
    move-result v0

    #@34
    const/4 v1, -0x1

    #@35
    if-ne v0, v1, :cond_4

    #@37
    .line 1389
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
    .line 1390
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
    .line 1392
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
    .line 1395
    :cond_4
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@7f
    move-result-object p0

    #@80
    .line 1396
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@83
    move-result v0

    #@84
    if-nez v0, :cond_5

    #@86
    .line 1397
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
    .line 1399
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
    .line 333
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
    .line 395
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getInts(II)[I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 398
    new-array v1, p2, [I

    #@2
    .line 399
    .local v1, "ints":[I
    const/16 v3, 0x10

    #@4
    if-gt p2, v3, :cond_0

    #@6
    .line 400
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@9
    .line 401
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@b
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@e
    move-result v3

    #@f
    aput v3, v1, v0

    #@11
    .line 400
    add-int/lit8 p1, p1, 0x4

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 404
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@18
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    #@1b
    move-result-object v2

    #@1c
    .line 405
    .local v2, "temp":Ljava/nio/IntBuffer;
    div-int/lit8 v3, p1, 0x4

    #@1e
    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    #@21
    .line 406
    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    #@24
    .line 408
    .end local v2    # "temp":Ljava/nio/IntBuffer;
    :cond_1
    return-object v1
.end method

.method private getKey16String(I)Ljava/lang/String;
    .locals 2
    .param p1, "keyOffset"    # I

    #@0
    .prologue
    .line 455
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 456
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@6
    invoke-static {v0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 458
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    #@d
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@f
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@11
    sub-int v1, p1, v1

    #@13
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method private getKey32String(I)Ljava/lang/String;
    .locals 2
    .param p1, "keyOffset"    # I

    #@0
    .prologue
    .line 462
    if-ltz p1, :cond_0

    #@2
    .line 463
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@4
    invoke-static {v0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 465
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    #@b
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@d
    const v1, 0x7fffffff

    #@10
    and-int/2addr v1, p1

    #@11
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method static getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;
    .locals 3
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 231
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 232
    .local v0, "info":Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;
    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->CACHE:Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;

    #@7
    invoke-virtual {v2, v0, p2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader;

    #@d
    .line 233
    .local v1, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->NULL_READER:Landroid/icu/impl/ICUResourceBundleReader;

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 234
    const/4 v2, 0x0

    #@12
    return-object v2

    #@13
    .line 236
    :cond_0
    return-object v1
.end method

.method private getResourceByteOffset(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 357
    shl-int/lit8 v0, p1, 0x2

    #@2
    return v0
.end method

.method private getTable16KeyOffsets(I)[C
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 411
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
    .line 412
    .local v1, "length":I
    if-lez v1, :cond_1

    #@a
    .line 413
    new-array v3, v1, [C

    #@c
    .line 414
    .local v3, "result":[C
    const/16 v5, 0x10

    #@e
    if-gt v1, v5, :cond_0

    #@10
    .line 415
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@13
    .line 416
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
    .line 415
    add-int/lit8 v0, v0, 0x1

    #@1f
    move v2, p1

    #@20
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    #@21
    .line 419
    .end local v0    # "i":I
    :cond_0
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@23
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    #@26
    move-result-object v4

    #@27
    .line 420
    .local v4, "temp":Ljava/nio/CharBuffer;
    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@2a
    .line 421
    invoke-virtual {v4, v3}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    #@2d
    move p1, v2

    #@2e
    .line 423
    .end local v2    # "offset":I
    .end local v4    # "temp":Ljava/nio/CharBuffer;
    .restart local p1    # "offset":I
    :goto_1
    return-object v3

    #@2f
    .line 425
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
    .line 437
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@3
    move-result v0

    #@4
    .line 438
    .local v0, "length":I
    if-lez v0, :cond_0

    #@6
    .line 439
    add-int/lit8 v1, p1, 0x4

    #@8
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 441
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
    .line 429
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@5
    move-result v0

    #@6
    .line 430
    .local v0, "length":I
    if-lez v0, :cond_0

    #@8
    .line 431
    add-int/lit8 v1, p1, 0x2

    #@a
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getChars(II)[C

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 433
    :cond_0
    sget-object v1, Landroid/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    #@11
    return-object v1
.end method

.method private getTableLength(I)I
    .locals 4
    .param p1, "res"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 763
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@4
    move-result v0

    #@5
    .line 764
    .local v0, "offset":I
    if-nez v0, :cond_0

    #@7
    .line 765
    return v3

    #@8
    .line 767
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@b
    move-result v1

    #@c
    .line 768
    .local v1, "type":I
    const/4 v2, 0x2

    #@d
    if-ne v1, v2, :cond_1

    #@f
    .line 769
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@12
    move-result v0

    #@13
    .line 770
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@15
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 771
    :cond_1
    const/4 v2, 0x5

    #@1b
    if-ne v1, v2, :cond_2

    #@1d
    .line 772
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@1f
    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->charAt(I)C

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 773
    :cond_2
    const/4 v2, 0x4

    #@25
    if-ne v1, v2, :cond_3

    #@27
    .line 774
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@2a
    move-result v0

    #@2b
    .line 775
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@2e
    move-result v2

    #@2f
    return v2

    #@30
    .line 777
    :cond_3
    return v3
.end method

.method private init(Ljava/nio/ByteBuffer;)V
    .locals 13
    .param p1, "inBytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    sget-object v11, Landroid/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;

    #@2
    const v12, 0x52657342

    #@5
    invoke-static {p1, v12, v11}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@8
    move-result v11

    #@9
    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->dataVersion:I

    #@b
    .line 242
    const/16 v11, 0x10

    #@d
    invoke-virtual {p1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    #@10
    move-result v8

    #@11
    .line 243
    .local v8, "majorFormatVersion":I
    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@14
    move-result-object v11

    #@15
    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@17
    .line 244
    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@19
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    #@1c
    move-result v3

    #@1d
    .line 249
    .local v3, "dataLength":I
    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@1f
    const/4 v12, 0x0

    #@20
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@23
    move-result v11

    #@24
    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->rootRes:I

    #@26
    .line 255
    const/4 v11, 0x0

    #@27
    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@2a
    move-result v5

    #@2b
    .line 256
    .local v5, "indexes0":I
    and-int/lit16 v4, v5, 0xff

    #@2d
    .line 257
    .local v4, "indexLength":I
    const/4 v11, 0x4

    #@2e
    if-gt v4, v11, :cond_0

    #@30
    .line 258
    new-instance v11, Landroid/icu/util/ICUException;

    #@32
    const-string/jumbo v12, "not enough indexes"

    #@35
    invoke-direct {v11, v12}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@38
    throw v11

    #@39
    .line 261
    :cond_0
    add-int/lit8 v11, v4, 0x1

    #@3b
    shl-int/lit8 v11, v11, 0x2

    #@3d
    if-lt v3, v11, :cond_1

    #@3f
    .line 262
    const/4 v11, 0x3

    #@40
    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@43
    move-result v2

    #@44
    .local v2, "bundleTop":I
    shl-int/lit8 v11, v2, 0x2

    #@46
    if-ge v3, v11, :cond_2

    #@48
    .line 263
    .end local v2    # "bundleTop":I
    :cond_1
    new-instance v11, Landroid/icu/util/ICUException;

    #@4a
    const-string/jumbo v12, "not enough bytes"

    #@4d
    invoke-direct {v11, v12}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@50
    throw v11

    #@51
    .line 265
    .restart local v2    # "bundleTop":I
    :cond_2
    add-int/lit8 v9, v2, -0x1

    #@53
    .line 267
    .local v9, "maxOffset":I
    const/4 v11, 0x3

    #@54
    if-lt v8, v11, :cond_3

    #@56
    .line 272
    ushr-int/lit8 v11, v5, 0x8

    #@58
    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    #@5a
    .line 274
    :cond_3
    const/4 v11, 0x5

    #@5b
    if-le v4, v11, :cond_4

    #@5d
    .line 277
    const/4 v11, 0x5

    #@5e
    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@61
    move-result v1

    #@62
    .line 278
    .local v1, "att":I
    and-int/lit8 v11, v1, 0x1

    #@64
    if-eqz v11, :cond_9

    #@66
    const/4 v11, 0x1

    #@67
    :goto_0
    iput-boolean v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->noFallback:Z

    #@69
    .line 279
    and-int/lit8 v11, v1, 0x2

    #@6b
    if-eqz v11, :cond_a

    #@6d
    const/4 v11, 0x1

    #@6e
    :goto_1
    iput-boolean v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    #@70
    .line 280
    and-int/lit8 v11, v1, 0x4

    #@72
    if-eqz v11, :cond_b

    #@74
    const/4 v11, 0x1

    #@75
    :goto_2
    iput-boolean v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    #@77
    .line 281
    iget v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    #@79
    const v12, 0xf000

    #@7c
    and-int/2addr v12, v1

    #@7d
    shl-int/lit8 v12, v12, 0xc

    #@7f
    or-int/2addr v11, v12

    #@80
    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    #@82
    .line 282
    ushr-int/lit8 v11, v1, 0x10

    #@84
    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    #@86
    .line 285
    .end local v1    # "att":I
    :cond_4
    add-int/lit8 v6, v4, 0x1

    #@88
    .line 286
    .local v6, "keysBottom":I
    const/4 v11, 0x1

    #@89
    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@8c
    move-result v7

    #@8d
    .line 287
    .local v7, "keysTop":I
    if-le v7, v6, :cond_5

    #@8f
    .line 290
    iget-boolean v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    #@91
    if-eqz v11, :cond_c

    #@93
    .line 295
    sub-int v11, v7, v6

    #@95
    shl-int/lit8 v11, v11, 0x2

    #@97
    new-array v11, v11, [B

    #@99
    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@9b
    .line 296
    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@9d
    shl-int/lit8 v12, v6, 0x2

    #@9f
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@a2
    .line 301
    :goto_3
    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@a4
    iget-object v12, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@a6
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@a9
    .line 305
    :cond_5
    const/4 v11, 0x6

    #@aa
    if-le v4, v11, :cond_e

    #@ac
    .line 306
    const/4 v11, 0x6

    #@ad
    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@b0
    move-result v0

    #@b1
    .line 307
    .local v0, "_16BitTop":I
    if-le v0, v7, :cond_d

    #@b3
    .line 308
    sub-int v11, v0, v7

    #@b5
    mul-int/lit8 v10, v11, 0x2

    #@b7
    .line 309
    .local v10, "num16BitUnits":I
    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@b9
    shl-int/lit8 v12, v7, 0x2

    #@bb
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@be
    .line 310
    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@c0
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    #@c3
    move-result-object v11

    #@c4
    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@c6
    .line 311
    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@c8
    invoke-virtual {v11, v10}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@cb
    .line 312
    add-int/lit8 v11, v10, -0x1

    #@cd
    or-int/2addr v9, v11

    #@ce
    .line 320
    .end local v0    # "_16BitTop":I
    .end local v10    # "num16BitUnits":I
    :goto_4
    const/4 v11, 0x7

    #@cf
    if-le v4, v11, :cond_6

    #@d1
    .line 321
    const/4 v11, 0x7

    #@d2
    invoke-direct {p0, v11}, Landroid/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    #@d5
    move-result v11

    #@d6
    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    #@d8
    .line 324
    :cond_6
    iget-boolean v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    #@da
    if-eqz v11, :cond_7

    #@dc
    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@de
    invoke-virtual {v11}, Ljava/nio/CharBuffer;->length()I

    #@e1
    move-result v11

    #@e2
    const/4 v12, 0x1

    #@e3
    if-le v11, v12, :cond_8

    #@e5
    .line 325
    :cond_7
    new-instance v11, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@e7
    invoke-direct {v11, v9}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;-><init>(I)V

    #@ea
    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@ec
    .line 329
    :cond_8
    iget-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@ee
    const/4 v12, 0x0

    #@ef
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@f2
    .line 240
    return-void

    #@f3
    .line 278
    .end local v6    # "keysBottom":I
    .end local v7    # "keysTop":I
    .restart local v1    # "att":I
    :cond_9
    const/4 v11, 0x0

    #@f4
    goto/16 :goto_0

    #@f6
    .line 279
    :cond_a
    const/4 v11, 0x0

    #@f7
    goto/16 :goto_1

    #@f9
    .line 280
    :cond_b
    const/4 v11, 0x0

    #@fa
    goto/16 :goto_2

    #@fc
    .line 298
    .end local v1    # "att":I
    .restart local v6    # "keysBottom":I
    .restart local v7    # "keysTop":I
    :cond_c
    shl-int/lit8 v11, v7, 0x2

    #@fe
    iput v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@100
    .line 299
    iget v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@102
    new-array v11, v11, [B

    #@104
    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@106
    goto :goto_3

    #@107
    .line 314
    .restart local v0    # "_16BitTop":I
    :cond_d
    sget-object v11, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    #@109
    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@10b
    goto :goto_4

    #@10c
    .line 317
    .end local v0    # "_16BitTop":I
    :cond_e
    sget-object v11, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    #@10e
    iput-object v11, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@110
    goto :goto_4
.end method

.method private isNoInheritanceMarker(I)Z
    .locals 5
    .param p1, "res"    # I

    #@0
    .prologue
    const/16 v4, 0x2205

    #@2
    const/4 v1, 0x0

    #@3
    .line 589
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@6
    move-result v0

    #@7
    .line 590
    .local v0, "offset":I
    if-nez v0, :cond_1

    #@9
    .line 603
    :cond_0
    return v1

    #@a
    .line 592
    :cond_1
    if-ne p1, v0, :cond_3

    #@c
    .line 593
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@f
    move-result v0

    #@10
    .line 594
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@13
    move-result v2

    #@14
    const/4 v3, 0x3

    #@15
    if-ne v2, v3, :cond_2

    #@17
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@19
    add-int/lit8 v3, v0, 0x4

    #@1b
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@1e
    move-result v2

    #@1f
    if-ne v2, v4, :cond_2

    #@21
    .line 595
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@23
    add-int/lit8 v3, v0, 0x6

    #@25
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@28
    move-result v2

    #@29
    if-ne v2, v4, :cond_2

    #@2b
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@2d
    add-int/lit8 v3, v0, 0x8

    #@2f
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@32
    move-result v2

    #@33
    if-ne v2, v4, :cond_2

    #@35
    const/4 v1, 0x1

    #@36
    .line 594
    :cond_2
    return v1

    #@37
    .line 596
    :cond_3
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@3a
    move-result v2

    #@3b
    const/4 v3, 0x6

    #@3c
    if-ne v2, v3, :cond_0

    #@3e
    .line 597
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    #@40
    if-ge v0, v1, :cond_4

    #@42
    .line 598
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    #@44
    invoke-direct {v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    #@47
    move-result v1

    #@48
    return v1

    #@49
    .line 600
    :cond_4
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    #@4b
    sub-int v1, v0, v1

    #@4d
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    #@50
    move-result v1

    #@51
    return v1
.end method

.method private isStringV2NoInheritanceMarker(I)Z
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/16 v5, 0x2205

    #@3
    const/4 v2, 0x0

    #@4
    .line 607
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@6
    invoke-virtual {v3, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    #@9
    move-result v0

    #@a
    .line 608
    .local v0, "first":I
    if-ne v0, v5, :cond_2

    #@c
    .line 609
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@e
    add-int/lit8 v4, p1, 0x1

    #@10
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    #@13
    move-result v3

    #@14
    if-ne v3, v5, :cond_1

    #@16
    .line 610
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@18
    add-int/lit8 v4, p1, 0x2

    #@1a
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    #@1d
    move-result v3

    #@1e
    if-ne v3, v5, :cond_1

    #@20
    .line 611
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@22
    add-int/lit8 v4, p1, 0x3

    #@24
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_0

    #@2a
    .line 609
    :goto_0
    return v1

    #@2b
    :cond_0
    move v1, v2

    #@2c
    .line 611
    goto :goto_0

    #@2d
    :cond_1
    move v1, v2

    #@2e
    .line 609
    goto :goto_0

    #@2f
    .line 612
    :cond_2
    const v3, 0xdc03

    #@32
    if-ne v0, v3, :cond_5

    #@34
    .line 613
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@36
    add-int/lit8 v4, p1, 0x1

    #@38
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    #@3b
    move-result v3

    #@3c
    if-ne v3, v5, :cond_4

    #@3e
    .line 614
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@40
    add-int/lit8 v4, p1, 0x2

    #@42
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    #@45
    move-result v3

    #@46
    if-ne v3, v5, :cond_4

    #@48
    .line 615
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@4a
    add-int/lit8 v4, p1, 0x3

    #@4c
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    #@4f
    move-result v3

    #@50
    if-ne v3, v5, :cond_3

    #@52
    .line 613
    :goto_1
    return v1

    #@53
    :cond_3
    move v1, v2

    #@54
    .line 615
    goto :goto_1

    #@55
    :cond_4
    move v1, v2

    #@56
    .line 613
    goto :goto_1

    #@57
    .line 618
    :cond_5
    return v2
.end method

.method private static makeKeyStringFromBytes([BI)Ljava/lang/String;
    .locals 3
    .param p0, "keyBytes"    # [B
    .param p1, "keyOffset"    # I

    #@0
    .prologue
    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 448
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    aget-byte v0, p0, p1

    #@7
    .local v0, "b":B
    if-eqz v0, :cond_0

    #@9
    .line 449
    add-int/lit8 p1, p1, 0x1

    #@b
    .line 450
    int-to-char v2, v0

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f
    goto :goto_0

    #@10
    .line 452
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    return-object v2
.end method

.method private makeStringFromBytes(II)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 546
    const/16 v3, 0x10

    #@2
    if-gt p2, v3, :cond_1

    #@4
    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 548
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    #@c
    .line 549
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@e
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@11
    move-result v3

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 548
    add-int/lit8 p1, p1, 0x2

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 551
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 553
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@21
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    #@24
    move-result-object v0

    #@25
    .line 554
    .local v0, "cs":Ljava/lang/CharSequence;
    div-int/lit8 p1, p1, 0x2

    #@27
    .line 555
    add-int v3, p1, p2

    #@29
    invoke-interface {v0, p1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    return-object v3
.end method

.method private setKeyFromKey16(ILandroid/icu/impl/UResource$Key;)V
    .locals 2
    .param p1, "keyOffset"    # I
    .param p2, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    .line 469
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 470
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@6
    invoke-virtual {p2, v0, p1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)V

    #@9
    .line 468
    :goto_0
    return-void

    #@a
    .line 472
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    #@c
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@e
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    #@10
    sub-int v1, p1, v1

    #@12
    invoke-virtual {p2, v0, v1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)V

    #@15
    goto :goto_0
.end method

.method private setKeyFromKey32(ILandroid/icu/impl/UResource$Key;)V
    .locals 2
    .param p1, "keyOffset"    # I
    .param p2, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    .line 476
    if-ltz p1, :cond_0

    #@2
    .line 477
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@4
    invoke-virtual {p2, v0, p1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)V

    #@7
    .line 475
    :goto_0
    return-void

    #@8
    .line 479
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    #@a
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    #@c
    const v1, 0x7fffffff

    #@f
    and-int/2addr v1, p1

    #@10
    invoke-virtual {p2, v0, v1}, Landroid/icu/impl/UResource$Key;->setBytes([BI)V

    #@13
    goto :goto_0
.end method


# virtual methods
.method getAlias(I)Ljava/lang/String;
    .locals 7
    .param p1, "res"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 623
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@4
    move-result v1

    #@5
    .line 625
    .local v1, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@8
    move-result v4

    #@9
    const/4 v5, 0x3

    #@a
    if-ne v4, v5, :cond_2

    #@c
    .line 626
    if-nez v1, :cond_0

    #@e
    .line 627
    const-string/jumbo v4, ""

    #@11
    return-object v4

    #@12
    .line 629
    :cond_0
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@14
    invoke-virtual {v4, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    .line 630
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_1

    #@1a
    .line 631
    check-cast v3, Ljava/lang/String;

    #@1c
    .end local v3    # "value":Ljava/lang/Object;
    return-object v3

    #@1d
    .line 633
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@20
    move-result v1

    #@21
    .line 634
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@24
    move-result v0

    #@25
    .line 635
    .local v0, "length":I
    add-int/lit8 v4, v1, 0x4

    #@27
    invoke-direct {p0, v4, v0}, Landroid/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 636
    .local v2, "s":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@2d
    mul-int/lit8 v5, v0, 0x2

    #@2f
    invoke-virtual {v4, p1, v2, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Ljava/lang/String;

    #@35
    return-object v4

    #@36
    .line 639
    .end local v0    # "length":I
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v6
.end method

.method getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;
    .locals 7
    .param p1, "res"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 745
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@5
    move-result v2

    #@6
    .line 746
    .local v2, "type":I
    invoke-static {v2}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_0

    #@c
    .line 747
    return-object v6

    #@d
    .line 749
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@10
    move-result v1

    #@11
    .line 750
    .local v1, "offset":I
    if-nez v1, :cond_1

    #@13
    .line 751
    sget-object v4, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Landroid/icu/impl/ICUResourceBundleReader$Array;

    #@15
    return-object v4

    #@16
    .line 753
    :cond_1
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@18
    invoke-virtual {v4, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    .line 754
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2

    #@1e
    .line 755
    check-cast v3, Landroid/icu/impl/ICUResourceBundleReader$Array;

    #@20
    .end local v3    # "value":Ljava/lang/Object;
    return-object v3

    #@21
    .line 757
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    const/16 v4, 0x8

    #@23
    if-ne v2, v4, :cond_3

    #@25
    .line 758
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$Array32;

    #@27
    invoke-direct {v0, p0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array32;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    #@2a
    .line 759
    .local v0, "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    :goto_0
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@2c
    invoke-virtual {v4, p1, v0, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Landroid/icu/impl/ICUResourceBundleReader$Array;

    #@32
    return-object v4

    #@33
    .line 758
    .end local v0    # "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
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
    .line 678
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@3
    move-result v1

    #@4
    .line 680
    .local v1, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@7
    move-result v3

    #@8
    const/4 v4, 0x1

    #@9
    if-ne v3, v4, :cond_3

    #@b
    .line 681
    if-nez v1, :cond_0

    #@d
    .line 685
    sget-object v3, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    #@f
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@12
    move-result-object v3

    #@13
    return-object v3

    #@14
    .line 691
    :cond_0
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@17
    move-result v1

    #@18
    .line 692
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@1b
    move-result v0

    #@1c
    .line 693
    .local v0, "length":I
    if-nez v0, :cond_1

    #@1e
    .line 694
    sget-object v3, Landroid/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    #@20
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@23
    move-result-object v3

    #@24
    return-object v3

    #@25
    .line 696
    :cond_1
    add-int/lit8 v1, v1, 0x4

    #@27
    .line 697
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    #@29
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@2c
    move-result-object v2

    #@2d
    .line 698
    .local v2, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@30
    move-result-object v3

    #@31
    add-int v4, v1, v0

    #@33
    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@36
    .line 699
    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@39
    move-result-object v2

    #@3a
    .line 700
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@3d
    move-result v3

    #@3e
    if-nez v3, :cond_2

    #@40
    .line 701
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@43
    move-result-object v2

    #@44
    .line 703
    :cond_2
    return-object v2

    #@45
    .line 706
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
    .line 644
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@4
    move-result v2

    #@5
    .line 646
    .local v2, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@8
    move-result v5

    #@9
    const/4 v6, 0x1

    #@a
    if-ne v5, v6, :cond_5

    #@c
    .line 647
    if-nez v2, :cond_0

    #@e
    .line 648
    sget-object v5, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    #@10
    return-object v5

    #@11
    .line 650
    :cond_0
    invoke-direct {p0, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@14
    move-result v2

    #@15
    .line 651
    invoke-direct {p0, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@18
    move-result v1

    #@19
    .line 652
    .local v1, "length":I
    if-nez v1, :cond_1

    #@1b
    .line 653
    sget-object v5, Landroid/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    #@1d
    return-object v5

    #@1e
    .line 657
    :cond_1
    if-eqz p2, :cond_2

    #@20
    array-length v5, p2

    #@21
    if-eq v5, v1, :cond_3

    #@23
    .line 658
    :cond_2
    new-array p2, v1, [B

    #@25
    .line 660
    :cond_3
    add-int/lit8 v2, v2, 0x4

    #@27
    .line 661
    const/16 v5, 0x10

    #@29
    if-gt v1, v5, :cond_4

    #@2b
    .line 662
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
    .line 663
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
    .line 662
    add-int/lit8 v0, v0, 0x1

    #@3b
    move v3, v2

    #@3c
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    #@3d
    .line 666
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
    .line 667
    .local v4, "temp":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@46
    .line 668
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@49
    .line 670
    .end local v4    # "temp":Ljava/nio/ByteBuffer;
    :goto_1
    return-object p2

    #@4a
    .line 673
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
    .line 711
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@3
    move-result v1

    #@4
    .line 713
    .local v1, "offset":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@7
    move-result v2

    #@8
    const/16 v3, 0xe

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 714
    if-nez v1, :cond_0

    #@e
    .line 715
    sget-object v2, Landroid/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    #@10
    return-object v2

    #@11
    .line 719
    :cond_0
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@14
    move-result v1

    #@15
    .line 720
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@18
    move-result v0

    #@19
    .line 721
    .local v0, "length":I
    add-int/lit8 v2, v1, 0x4

    #@1b
    invoke-direct {p0, v2, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    #@1e
    move-result-object v2

    #@1f
    return-object v2

    #@20
    .line 724
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
    .line 344
    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->noFallback:Z

    #@2
    return v0
.end method

.method getRootResource()I
    .locals 1

    #@0
    .prologue
    .line 341
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->rootRes:I

    #@2
    return v0
.end method

.method getString(I)Ljava/lang/String;
    .locals 7
    .param p1, "res"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 560
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@4
    move-result v1

    #@5
    .line 561
    .local v1, "offset":I
    if-eq p1, v1, :cond_0

    #@7
    .line 562
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@a
    move-result v4

    #@b
    const/4 v5, 0x6

    #@c
    if-eq v4, v5, :cond_0

    #@e
    .line 563
    return-object v6

    #@f
    .line 565
    :cond_0
    if-nez v1, :cond_1

    #@11
    .line 566
    const-string/jumbo v4, ""

    #@14
    return-object v4

    #@15
    .line 568
    :cond_1
    if-eq p1, v1, :cond_3

    #@17
    .line 569
    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    #@19
    if-ge v1, v4, :cond_2

    #@1b
    .line 570
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolBundleReader:Landroid/icu/impl/ICUResourceBundleReader;

    #@1d
    invoke-virtual {v4, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    return-object v4

    #@22
    .line 572
    :cond_2
    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    #@24
    sub-int v4, p1, v4

    #@26
    invoke-virtual {p0, v4}, Landroid/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    return-object v4

    #@2b
    .line 575
    :cond_3
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@2d
    invoke-virtual {v4, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    .line 576
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_4

    #@33
    .line 577
    check-cast v3, Ljava/lang/String;

    #@35
    .end local v3    # "value":Ljava/lang/Object;
    return-object v3

    #@36
    .line 579
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    #@39
    move-result v1

    #@3a
    .line 580
    invoke-direct {p0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getInt(I)I

    #@3d
    move-result v0

    #@3e
    .line 581
    .local v0, "length":I
    add-int/lit8 v4, v1, 0x4

    #@40
    invoke-direct {p0, v4, v0}, Landroid/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 582
    .local v2, "s":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@46
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@49
    move-result v5

    #@4a
    mul-int/lit8 v5, v5, 0x2

    #@4c
    invoke-virtual {v4, p1, v2, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    #@4f
    move-result-object v4

    #@50
    check-cast v4, Ljava/lang/String;

    #@52
    return-object v4
.end method

.method getStringV2(I)Ljava/lang/String;
    .locals 12
    .param p1, "res"    # I

    #@0
    .prologue
    const v11, 0xdfef

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 506
    sget-boolean v9, Landroid/icu/impl/ICUResourceBundleReader;->-assertionsDisabled:Z

    #@7
    if-nez v9, :cond_1

    #@9
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@c
    move-result v9

    #@d
    const/4 v10, 0x6

    #@e
    if-ne v9, v10, :cond_0

    #@10
    move v9, v7

    #@11
    :goto_0
    if-nez v9, :cond_1

    #@13
    new-instance v7, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v7

    #@19
    :cond_0
    move v9, v8

    #@1a
    goto :goto_0

    #@1b
    .line 507
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@1e
    move-result v3

    #@1f
    .line 508
    .local v3, "offset":I
    sget-boolean v9, Landroid/icu/impl/ICUResourceBundleReader;->-assertionsDisabled:Z

    #@21
    if-nez v9, :cond_3

    #@23
    if-eqz v3, :cond_2

    #@25
    :goto_1
    if-nez v7, :cond_3

    #@27
    new-instance v7, Ljava/lang/AssertionError;

    #@29
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@2c
    throw v7

    #@2d
    :cond_2
    move v7, v8

    #@2e
    goto :goto_1

    #@2f
    .line 509
    :cond_3
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@31
    invoke-virtual {v7, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v6

    #@35
    .line 510
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_4

    #@37
    .line 511
    check-cast v6, Ljava/lang/String;

    #@39
    .end local v6    # "value":Ljava/lang/Object;
    return-object v6

    #@3a
    .line 514
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@3c
    invoke-virtual {v7, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    #@3f
    move-result v1

    #@40
    .line 515
    .local v1, "first":I
    and-int/lit16 v7, v1, -0x400

    #@42
    const v8, 0xdc00

    #@45
    if-eq v7, v8, :cond_7

    #@47
    .line 516
    if-nez v1, :cond_5

    #@49
    .line 517
    const-string/jumbo v7, ""

    #@4c
    return-object v7

    #@4d
    .line 519
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    .line 520
    .local v5, "sb":Ljava/lang/StringBuilder;
    int-to-char v7, v1

    #@53
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    .line 522
    :goto_2
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@58
    add-int/lit8 v3, v3, 0x1

    #@5a
    invoke-virtual {v7, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    #@5d
    move-result v0

    #@5e
    .local v0, "c":C
    if-eqz v0, :cond_6

    #@60
    .line 523
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    goto :goto_2

    #@64
    .line 525
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    .line 542
    .end local v0    # "c":C
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .local v4, "s":Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@6a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@6d
    move-result v8

    #@6e
    mul-int/lit8 v8, v8, 0x2

    #@70
    invoke-virtual {v7, p1, v4, v8}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    #@73
    move-result-object v7

    #@74
    check-cast v7, Ljava/lang/String;

    #@76
    return-object v7

    #@77
    .line 528
    .end local v4    # "s":Ljava/lang/String;
    :cond_7
    if-ge v1, v11, :cond_8

    #@79
    .line 529
    and-int/lit16 v2, v1, 0x3ff

    #@7b
    .line 530
    .local v2, "length":I
    add-int/lit8 v3, v3, 0x1

    #@7d
    .line 540
    :goto_4
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@7f
    add-int v8, v3, v2

    #@81
    invoke-interface {v7, v3, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@84
    move-result-object v7

    #@85
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_3

    #@8a
    .line 531
    .end local v2    # "length":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_8
    const v7, 0xdfff

    #@8d
    if-ge v1, v7, :cond_9

    #@8f
    .line 532
    sub-int v7, v1, v11

    #@91
    shl-int/lit8 v7, v7, 0x10

    #@93
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@95
    add-int/lit8 v9, v3, 0x1

    #@97
    invoke-virtual {v8, v9}, Ljava/nio/CharBuffer;->charAt(I)C

    #@9a
    move-result v8

    #@9b
    or-int v2, v7, v8

    #@9d
    .line 533
    .restart local v2    # "length":I
    add-int/lit8 v3, v3, 0x2

    #@9f
    goto :goto_4

    #@a0
    .line 535
    .end local v2    # "length":I
    :cond_9
    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@a2
    add-int/lit8 v8, v3, 0x1

    #@a4
    invoke-virtual {v7, v8}, Ljava/nio/CharBuffer;->charAt(I)C

    #@a7
    move-result v7

    #@a8
    shl-int/lit8 v7, v7, 0x10

    #@aa
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    #@ac
    add-int/lit8 v9, v3, 0x2

    #@ae
    invoke-virtual {v8, v9}, Ljava/nio/CharBuffer;->charAt(I)C

    #@b1
    move-result v8

    #@b2
    or-int v2, v7, v8

    #@b4
    .line 536
    .restart local v2    # "length":I
    add-int/lit8 v3, v3, 0x3

    #@b6
    goto :goto_4
.end method

.method getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;
    .locals 7
    .param p1, "res"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 782
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@4
    move-result v3

    #@5
    .line 783
    .local v3, "type":I
    invoke-static {v3}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    #@8
    move-result v5

    #@9
    if-nez v5, :cond_0

    #@b
    .line 784
    return-object v6

    #@c
    .line 786
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    #@f
    move-result v0

    #@10
    .line 787
    .local v0, "offset":I
    if-nez v0, :cond_1

    #@12
    .line 788
    sget-object v5, Landroid/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@14
    return-object v5

    #@15
    .line 790
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader;->resourceCache:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@17
    invoke-virtual {v5, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    .line 791
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_2

    #@1d
    .line 792
    check-cast v4, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@1f
    .end local v4    # "value":Ljava/lang/Object;
    return-object v4

    #@20
    .line 796
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v5, 0x2

    #@21
    if-ne v3, v5, :cond_3

    #@23
    .line 797
    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$Table1632;

    #@25
    invoke-direct {v2, p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table1632;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    #@28
    .line 798
    .local v2, "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    #@2b
    move-result v5

    #@2c
    mul-int/lit8 v1, v5, 0x2

    #@2e
    .line 806
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
    .line 799
    .end local v1    # "size":I
    .end local v2    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    :cond_3
    const/4 v5, 0x5

    #@38
    if-ne v3, v5, :cond_4

    #@3a
    .line 800
    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$Table16;

    #@3c
    invoke-direct {v2, p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table16;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    #@3f
    .line 801
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
    .line 803
    .end local v1    # "size":I
    .end local v2    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    :cond_4
    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$Table32;

    #@48
    invoke-direct {v2, p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table32;-><init>(Landroid/icu/impl/ICUResourceBundleReader;I)V

    #@4b
    .line 804
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
    .line 347
    iget-boolean v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    #@2
    return v0
.end method

.method getVersion()Landroid/icu/util/VersionInfo;
    .locals 1

    #@0
    .prologue
    .line 337
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader;->dataVersion:I

    #@2
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionInfoFromCompactInt(I)Landroid/icu/util/VersionInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

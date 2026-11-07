.class public Ljdk/internal/util/ArraysSupport;
.super Ljava/lang/Object;
.source "ArraysSupport.java"


# static fields
.field private static final blacklist BIG_ENDIAN:Z = false

.field public static final blacklist LOG2_ARRAY_BOOLEAN_INDEX_SCALE:I

.field public static final blacklist LOG2_ARRAY_BYTE_INDEX_SCALE:I

.field public static final blacklist LOG2_ARRAY_CHAR_INDEX_SCALE:I

.field public static final blacklist LOG2_ARRAY_DOUBLE_INDEX_SCALE:I

.field public static final blacklist LOG2_ARRAY_FLOAT_INDEX_SCALE:I

.field public static final blacklist LOG2_ARRAY_INT_INDEX_SCALE:I

.field public static final blacklist LOG2_ARRAY_LONG_INDEX_SCALE:I

.field public static final blacklist LOG2_ARRAY_SHORT_INDEX_SCALE:I

.field private static final blacklist LOG2_BYTE_BIT_SIZE:I

.field public static final blacklist SOFT_MAX_ARRAY_LENGTH:I = 0x7ffffff7

.field public static final blacklist T_BOOLEAN:I = 0x4

.field public static final blacklist T_BYTE:I = 0x8

.field public static final blacklist T_CHAR:I = 0x5

.field public static final blacklist T_DOUBLE:I = 0x7

.field public static final blacklist T_FLOAT:I = 0x6

.field public static final blacklist T_INT:I = 0xa

.field public static final blacklist T_LONG:I = 0xb

.field public static final blacklist T_SHORT:I = 0x9

.field static final blacklist U:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljdk/internal/util/ArraysSupport;->U:Ljdk/internal/misc/Unsafe;

    .line 63
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_BOOLEAN_INDEX_SCALE:I

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->exactLog2(I)I

    move-result v0

    sput v0, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_BOOLEAN_INDEX_SCALE:I

    .line 64
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_INDEX_SCALE:I

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->exactLog2(I)I

    move-result v0

    sput v0, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_BYTE_INDEX_SCALE:I

    .line 65
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_CHAR_INDEX_SCALE:I

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->exactLog2(I)I

    move-result v0

    sput v0, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_CHAR_INDEX_SCALE:I

    .line 66
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_SHORT_INDEX_SCALE:I

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->exactLog2(I)I

    move-result v0

    sput v0, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_SHORT_INDEX_SCALE:I

    .line 67
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_INT_INDEX_SCALE:I

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->exactLog2(I)I

    move-result v0

    sput v0, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_INT_INDEX_SCALE:I

    .line 68
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_LONG_INDEX_SCALE:I

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->exactLog2(I)I

    move-result v0

    sput v0, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_LONG_INDEX_SCALE:I

    .line 69
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_FLOAT_INDEX_SCALE:I

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->exactLog2(I)I

    move-result v0

    sput v0, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_FLOAT_INDEX_SCALE:I

    .line 70
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_DOUBLE_INDEX_SCALE:I

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->exactLog2(I)I

    move-result v0

    sput v0, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_DOUBLE_INDEX_SCALE:I

    .line 72
    const/16 v0, 0x8

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->exactLog2(I)I

    move-result v0

    sput v0, Ljdk/internal/util/ArraysSupport;->LOG2_BYTE_BIT_SIZE:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist exactLog2(I)I
    .registers 3
    .param p0, "scale"    # I

    .line 75
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_a

    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    return v0

    .line 76
    :cond_a
    new-instance v0, Ljava/lang/Error;

    const-string v1, "data type scale not a power of two"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist hashCode(I[BII)I
    .registers 8
    .param p0, "result"    # I
    .param p1, "a"    # [B
    .param p2, "fromIndex"    # I
    .param p3, "length"    # I

    .line 222
    add-int v0, p2, p3

    .line 223
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_e

    .line 224
    mul-int/lit8 v2, p0, 0x1f

    aget-byte v3, p1, v1

    add-int p0, v2, v3

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 226
    .end local v1    # "i":I
    :cond_e
    return p0
.end method

.method private static blacklist hashCode(I[CII)I
    .registers 8
    .param p0, "result"    # I
    .param p1, "a"    # [C
    .param p2, "fromIndex"    # I
    .param p3, "length"    # I

    .line 230
    add-int v0, p2, p3

    .line 231
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_e

    .line 232
    mul-int/lit8 v2, p0, 0x1f

    aget-char v3, p1, v1

    add-int p0, v2, v3

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 234
    .end local v1    # "i":I
    :cond_e
    return p0
.end method

.method private static blacklist hashCode(I[III)I
    .registers 8
    .param p0, "result"    # I
    .param p1, "a"    # [I
    .param p2, "fromIndex"    # I
    .param p3, "length"    # I

    .line 246
    add-int v0, p2, p3

    .line 247
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_e

    .line 248
    mul-int/lit8 v2, p0, 0x1f

    aget v3, p1, v1

    add-int p0, v2, v3

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 250
    .end local v1    # "i":I
    :cond_e
    return p0
.end method

.method private static blacklist hashCode(I[SII)I
    .registers 8
    .param p0, "result"    # I
    .param p1, "a"    # [S
    .param p2, "fromIndex"    # I
    .param p3, "length"    # I

    .line 238
    add-int v0, p2, p3

    .line 239
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_e

    .line 240
    mul-int/lit8 v2, p0, 0x1f

    aget-short v3, p1, v1

    add-int p0, v2, v3

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 242
    .end local v1    # "i":I
    :cond_e
    return p0
.end method

.method private static blacklist hugeLength(II)I
    .registers 6
    .param p0, "oldLength"    # I
    .param p1, "minGrowth"    # I

    .line 753
    add-int v0, p0, p1

    .line 754
    .local v0, "minLength":I
    if-ltz v0, :cond_b

    .line 757
    const v1, 0x7ffffff7

    if-gt v0, v1, :cond_a

    .line 758
    return v1

    .line 760
    :cond_a
    return v0

    .line 755
    :cond_b
    new-instance v1, Ljava/lang/OutOfMemoryError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required array length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is too large"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist mismatch([BI[BII)I
    .registers 16
    .param p0, "a"    # [B
    .param p1, "aFromIndex"    # I
    .param p2, "b"    # [B
    .param p3, "bFromIndex"    # I
    .param p4, "length"    # I

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "i":I
    const/4 v1, 0x7

    if-le p4, v1, :cond_24

    .line 392
    aget-byte v1, p0, p1

    aget-byte v2, p2, p3

    if-eq v1, v2, :cond_c

    .line 393
    const/4 v1, 0x0

    return v1

    .line 394
    :cond_c
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    add-int/2addr v1, p1

    .line 395
    .local v1, "aOffset":I
    sget v2, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    add-int/2addr v2, p3

    .line 396
    .local v2, "bOffset":I
    int-to-long v4, v1

    int-to-long v7, v2

    sget v10, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_BYTE_INDEX_SCALE:I

    move-object v3, p0

    move-object v6, p2

    move v9, p4

    .end local p0    # "a":[B
    .end local p2    # "b":[B
    .end local p4    # "length":I
    .local v3, "a":[B
    .local v6, "b":[B
    .local v9, "length":I
    invoke-static/range {v3 .. v10}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 400
    .end local v0    # "i":I
    .local p0, "i":I
    if-ltz p0, :cond_20

    .line 401
    return p0

    .line 402
    :cond_20
    not-int p2, p0

    sub-int v0, v9, p2

    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_27

    .line 391
    .end local v1    # "aOffset":I
    .end local v2    # "bOffset":I
    .end local v3    # "a":[B
    .end local v6    # "b":[B
    .end local v9    # "length":I
    .local p0, "a":[B
    .restart local p2    # "b":[B
    .restart local p4    # "length":I
    :cond_24
    move-object v3, p0

    move-object v6, p2

    move v9, p4

    .line 404
    .end local p0    # "a":[B
    .end local p2    # "b":[B
    .end local p4    # "length":I
    .restart local v3    # "a":[B
    .restart local v6    # "b":[B
    .restart local v9    # "length":I
    :goto_27
    if-ge v0, v9, :cond_37

    .line 405
    add-int p0, p1, v0

    aget-byte p0, v3, p0

    add-int p2, p3, v0

    aget-byte p2, v6, p2

    if-eq p0, p2, :cond_34

    .line 406
    return v0

    .line 404
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 408
    :cond_37
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist mismatch([B[BI)I
    .registers 13
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "length"    # I

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "i":I
    const/4 v1, 0x7

    if-le p2, v1, :cond_22

    .line 343
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_c

    .line 344
    return v1

    .line 345
    :cond_c
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v3, v1

    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v6, v1

    sget v9, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_BYTE_INDEX_SCALE:I

    move-object v2, p0

    move-object v5, p1

    move v8, p2

    .end local p0    # "a":[B
    .end local p1    # "b":[B
    .end local p2    # "length":I
    .local v2, "a":[B
    .local v5, "b":[B
    .local v8, "length":I
    invoke-static/range {v2 .. v9}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 349
    .end local v0    # "i":I
    .local p0, "i":I
    if-ltz p0, :cond_1e

    .line 350
    return p0

    .line 352
    :cond_1e
    not-int p1, p0

    sub-int v0, v8, p1

    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_25

    .line 342
    .end local v2    # "a":[B
    .end local v5    # "b":[B
    .end local v8    # "length":I
    .local p0, "a":[B
    .restart local p1    # "b":[B
    .restart local p2    # "length":I
    :cond_22
    move-object v2, p0

    move-object v5, p1

    move v8, p2

    .line 356
    .end local p0    # "a":[B
    .end local p1    # "b":[B
    .end local p2    # "length":I
    .restart local v2    # "a":[B
    .restart local v5    # "b":[B
    .restart local v8    # "length":I
    :goto_25
    if-ge v0, v8, :cond_31

    .line 357
    aget-byte p0, v2, v0

    aget-byte p1, v5, v0

    if-eq p0, p1, :cond_2e

    .line 358
    return v0

    .line 356
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 360
    :cond_31
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist mismatch([CI[CII)I
    .registers 16
    .param p0, "a"    # [C
    .param p1, "aFromIndex"    # I
    .param p2, "b"    # [C
    .param p3, "bFromIndex"    # I
    .param p4, "length"    # I

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "i":I
    const/4 v1, 0x3

    if-le p4, v1, :cond_2c

    .line 441
    aget-char v1, p0, p1

    aget-char v2, p2, p3

    if-eq v1, v2, :cond_c

    .line 442
    const/4 v1, 0x0

    return v1

    .line 443
    :cond_c
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_CHAR_BASE_OFFSET:I

    sget v2, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_CHAR_INDEX_SCALE:I

    shl-int v2, p1, v2

    add-int/2addr v1, v2

    .line 444
    .local v1, "aOffset":I
    sget v2, Ljdk/internal/misc/Unsafe;->ARRAY_CHAR_BASE_OFFSET:I

    sget v3, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_CHAR_INDEX_SCALE:I

    shl-int v3, p3, v3

    add-int/2addr v2, v3

    .line 445
    .local v2, "bOffset":I
    int-to-long v4, v1

    int-to-long v7, v2

    sget v10, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_CHAR_INDEX_SCALE:I

    move-object v3, p0

    move-object v6, p2

    move v9, p4

    .end local p0    # "a":[C
    .end local p2    # "b":[C
    .end local p4    # "length":I
    .local v3, "a":[C
    .local v6, "b":[C
    .local v9, "length":I
    invoke-static/range {v3 .. v10}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 449
    .end local v0    # "i":I
    .local p0, "i":I
    if-ltz p0, :cond_28

    .line 450
    return p0

    .line 451
    :cond_28
    not-int p2, p0

    sub-int v0, v9, p2

    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_2f

    .line 440
    .end local v1    # "aOffset":I
    .end local v2    # "bOffset":I
    .end local v3    # "a":[C
    .end local v6    # "b":[C
    .end local v9    # "length":I
    .local p0, "a":[C
    .restart local p2    # "b":[C
    .restart local p4    # "length":I
    :cond_2c
    move-object v3, p0

    move-object v6, p2

    move v9, p4

    .line 453
    .end local p0    # "a":[C
    .end local p2    # "b":[C
    .end local p4    # "length":I
    .restart local v3    # "a":[C
    .restart local v6    # "b":[C
    .restart local v9    # "length":I
    :goto_2f
    if-ge v0, v9, :cond_3f

    .line 454
    add-int p0, p1, v0

    aget-char p0, v3, p0

    add-int p2, p3, v0

    aget-char p2, v6, p2

    if-eq p0, p2, :cond_3c

    .line 455
    return v0

    .line 453
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 457
    :cond_3f
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist mismatch([C[CI)I
    .registers 13
    .param p0, "a"    # [C
    .param p1, "b"    # [C
    .param p2, "length"    # I

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "i":I
    const/4 v1, 0x3

    if-le p2, v1, :cond_22

    .line 419
    const/4 v1, 0x0

    aget-char v2, p0, v1

    aget-char v3, p1, v1

    if-eq v2, v3, :cond_c

    .line 420
    return v1

    .line 421
    :cond_c
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_CHAR_BASE_OFFSET:I

    int-to-long v3, v1

    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_CHAR_BASE_OFFSET:I

    int-to-long v6, v1

    sget v9, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_CHAR_INDEX_SCALE:I

    move-object v2, p0

    move-object v5, p1

    move v8, p2

    .end local p0    # "a":[C
    .end local p1    # "b":[C
    .end local p2    # "length":I
    .local v2, "a":[C
    .local v5, "b":[C
    .local v8, "length":I
    invoke-static/range {v2 .. v9}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 425
    .end local v0    # "i":I
    .local p0, "i":I
    if-ltz p0, :cond_1e

    .line 426
    return p0

    .line 427
    :cond_1e
    not-int p1, p0

    sub-int v0, v8, p1

    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_25

    .line 418
    .end local v2    # "a":[C
    .end local v5    # "b":[C
    .end local v8    # "length":I
    .local p0, "a":[C
    .restart local p1    # "b":[C
    .restart local p2    # "length":I
    :cond_22
    move-object v2, p0

    move-object v5, p1

    move v8, p2

    .line 429
    .end local p0    # "a":[C
    .end local p1    # "b":[C
    .end local p2    # "length":I
    .restart local v2    # "a":[C
    .restart local v5    # "b":[C
    .restart local v8    # "length":I
    :goto_25
    if-ge v0, v8, :cond_31

    .line 430
    aget-char p0, v2, v0

    aget-char p1, v5, v0

    if-eq p0, p1, :cond_2e

    .line 431
    return v0

    .line 429
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 433
    :cond_31
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist mismatch([DI[DII)I
    .registers 17
    .param p0, "a"    # [D
    .param p1, "aFromIndex"    # I
    .param p2, "b"    # [D
    .param p3, "bFromIndex"    # I
    .param p4, "length"    # I

    .line 652
    const/4 v8, -0x1

    if-nez p4, :cond_4

    .line 653
    return v8

    .line 655
    :cond_4
    const/4 v9, 0x0

    .line 656
    .local v9, "i":I
    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    aget-wide v2, p2, p3

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    .line 657
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_DOUBLE_BASE_OFFSET:I

    sget v1, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_DOUBLE_INDEX_SCALE:I

    shl-int v1, p1, v1

    add-int v10, v0, v1

    .line 658
    .local v10, "aOffset":I
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_DOUBLE_BASE_OFFSET:I

    sget v1, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_DOUBLE_INDEX_SCALE:I

    shl-int v1, p3, v1

    add-int v11, v0, v1

    .line 659
    .local v11, "bOffset":I
    int-to-long v1, v10

    int-to-long v4, v11

    sget v7, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_DOUBLE_INDEX_SCALE:I

    move-object v0, p0

    move-object v3, p2

    move/from16 v6, p4

    invoke-static/range {v0 .. v7}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result v9

    goto :goto_34

    .line 656
    .end local v10    # "aOffset":I
    .end local v11    # "bOffset":I
    :cond_32
    move/from16 v6, p4

    .line 664
    :goto_34
    if-ltz v9, :cond_68

    .line 666
    add-int v0, p1, v9

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_67

    add-int v0, p3, v9

    aget-wide v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_67

    .line 673
    :cond_4b
    add-int/lit8 v9, v9, 0x1

    .line 674
    :goto_4d
    if-ge v9, v6, :cond_68

    .line 675
    add-int v0, p1, v9

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    add-int v2, p3, v9

    aget-wide v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_64

    .line 676
    return v9

    .line 674
    :cond_64
    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    .line 667
    :cond_67
    :goto_67
    return v9

    .line 680
    :cond_68
    return v8
.end method

.method public static blacklist mismatch([D[DI)I
    .registers 4
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "length"    # I

    .line 646
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Ljdk/internal/util/ArraysSupport;->mismatch([DI[DII)I

    move-result v0

    return v0
.end method

.method public static blacklist mismatch([FI[FII)I
    .registers 17
    .param p0, "a"    # [F
    .param p1, "aFromIndex"    # I
    .param p2, "b"    # [F
    .param p3, "bFromIndex"    # I
    .param p4, "length"    # I

    .line 570
    move/from16 v6, p4

    const/4 v8, 0x0

    .line 571
    .local v8, "i":I
    const/4 v9, 0x1

    if-le v6, v9, :cond_4b

    .line 572
    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    aget v1, p2, p3

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2e

    .line 573
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_FLOAT_BASE_OFFSET:I

    sget v1, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_FLOAT_INDEX_SCALE:I

    shl-int v1, p1, v1

    add-int v10, v0, v1

    .line 574
    .local v10, "aOffset":I
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_FLOAT_BASE_OFFSET:I

    sget v1, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_FLOAT_INDEX_SCALE:I

    shl-int v1, p3, v1

    add-int v11, v0, v1

    .line 575
    .local v11, "bOffset":I
    int-to-long v1, v10

    int-to-long v4, v11

    sget v7, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_FLOAT_INDEX_SCALE:I

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result v8

    .line 581
    .end local v10    # "aOffset":I
    .end local v11    # "bOffset":I
    :cond_2e
    if-ltz v8, :cond_48

    .line 583
    add-int v0, p1, v8

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_47

    add-int v0, p3, v8

    aget v0, p2, v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_47

    .line 590
    :cond_45
    add-int/2addr v8, v9

    goto :goto_4b

    .line 584
    :cond_47
    :goto_47
    return v8

    .line 594
    :cond_48
    not-int v0, v8

    sub-int v8, v6, v0

    .line 597
    :cond_4b
    :goto_4b
    if-ge v8, v6, :cond_63

    .line 598
    add-int v0, p1, v8

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int v1, p3, v8

    aget v1, p2, v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_60

    .line 599
    return v8

    .line 597
    :cond_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    .line 601
    :cond_63
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist mismatch([F[FI)I
    .registers 4
    .param p0, "a"    # [F
    .param p1, "b"    # [F
    .param p2, "length"    # I

    .line 564
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Ljdk/internal/util/ArraysSupport;->mismatch([FI[FII)I

    move-result v0

    return v0
.end method

.method public static blacklist mismatch([II[III)I
    .registers 16
    .param p0, "a"    # [I
    .param p1, "aFromIndex"    # I
    .param p2, "b"    # [I
    .param p3, "bFromIndex"    # I
    .param p4, "length"    # I

    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "i":I
    const/4 v1, 0x1

    if-le p4, v1, :cond_2c

    .line 539
    aget v1, p0, p1

    aget v2, p2, p3

    if-eq v1, v2, :cond_c

    .line 540
    const/4 v1, 0x0

    return v1

    .line 541
    :cond_c
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_INT_BASE_OFFSET:I

    sget v2, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_INT_INDEX_SCALE:I

    shl-int v2, p1, v2

    add-int/2addr v1, v2

    .line 542
    .local v1, "aOffset":I
    sget v2, Ljdk/internal/misc/Unsafe;->ARRAY_INT_BASE_OFFSET:I

    sget v3, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_INT_INDEX_SCALE:I

    shl-int v3, p3, v3

    add-int/2addr v2, v3

    .line 543
    .local v2, "bOffset":I
    int-to-long v4, v1

    int-to-long v7, v2

    sget v10, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_INT_INDEX_SCALE:I

    move-object v3, p0

    move-object v6, p2

    move v9, p4

    .end local p0    # "a":[I
    .end local p2    # "b":[I
    .end local p4    # "length":I
    .local v3, "a":[I
    .local v6, "b":[I
    .local v9, "length":I
    invoke-static/range {v3 .. v10}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 547
    .end local v0    # "i":I
    .local p0, "i":I
    if-ltz p0, :cond_28

    .line 548
    return p0

    .line 549
    :cond_28
    not-int p2, p0

    sub-int v0, v9, p2

    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_2f

    .line 538
    .end local v1    # "aOffset":I
    .end local v2    # "bOffset":I
    .end local v3    # "a":[I
    .end local v6    # "b":[I
    .end local v9    # "length":I
    .local p0, "a":[I
    .restart local p2    # "b":[I
    .restart local p4    # "length":I
    :cond_2c
    move-object v3, p0

    move-object v6, p2

    move v9, p4

    .line 551
    .end local p0    # "a":[I
    .end local p2    # "b":[I
    .end local p4    # "length":I
    .restart local v3    # "a":[I
    .restart local v6    # "b":[I
    .restart local v9    # "length":I
    :goto_2f
    if-ge v0, v9, :cond_3f

    .line 552
    add-int p0, p1, v0

    aget p0, v3, p0

    add-int p2, p3, v0

    aget p2, v6, p2

    if-eq p0, p2, :cond_3c

    .line 553
    return v0

    .line 551
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 555
    :cond_3f
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist mismatch([I[II)I
    .registers 13
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "length"    # I

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "i":I
    const/4 v1, 0x1

    if-le p2, v1, :cond_22

    .line 517
    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    if-eq v2, v3, :cond_c

    .line 518
    return v1

    .line 519
    :cond_c
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_INT_BASE_OFFSET:I

    int-to-long v3, v1

    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_INT_BASE_OFFSET:I

    int-to-long v6, v1

    sget v9, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_INT_INDEX_SCALE:I

    move-object v2, p0

    move-object v5, p1

    move v8, p2

    .end local p0    # "a":[I
    .end local p1    # "b":[I
    .end local p2    # "length":I
    .local v2, "a":[I
    .local v5, "b":[I
    .local v8, "length":I
    invoke-static/range {v2 .. v9}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 523
    .end local v0    # "i":I
    .local p0, "i":I
    if-ltz p0, :cond_1e

    .line 524
    return p0

    .line 525
    :cond_1e
    not-int p1, p0

    sub-int v0, v8, p1

    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_25

    .line 516
    .end local v2    # "a":[I
    .end local v5    # "b":[I
    .end local v8    # "length":I
    .local p0, "a":[I
    .restart local p1    # "b":[I
    .restart local p2    # "length":I
    :cond_22
    move-object v2, p0

    move-object v5, p1

    move v8, p2

    .line 527
    .end local p0    # "a":[I
    .end local p1    # "b":[I
    .end local p2    # "length":I
    .restart local v2    # "a":[I
    .restart local v5    # "b":[I
    .restart local v8    # "length":I
    :goto_25
    if-ge v0, v8, :cond_31

    .line 528
    aget p0, v2, v0

    aget p1, v5, v0

    if-eq p0, p1, :cond_2e

    .line 529
    return v0

    .line 527
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 531
    :cond_31
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist mismatch([JI[JII)I
    .registers 16
    .param p0, "a"    # [J
    .param p1, "aFromIndex"    # I
    .param p2, "b"    # [J
    .param p3, "bFromIndex"    # I
    .param p4, "length"    # I

    .line 626
    const/4 v0, -0x1

    if-nez p4, :cond_4

    .line 627
    return v0

    .line 629
    :cond_4
    aget-wide v1, p0, p1

    aget-wide v3, p2, p3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    .line 630
    const/4 v0, 0x0

    return v0

    .line 631
    :cond_e
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_LONG_BASE_OFFSET:I

    sget v2, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_LONG_INDEX_SCALE:I

    shl-int v2, p1, v2

    add-int/2addr v1, v2

    .line 632
    .local v1, "aOffset":I
    sget v2, Ljdk/internal/misc/Unsafe;->ARRAY_LONG_BASE_OFFSET:I

    sget v3, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_LONG_INDEX_SCALE:I

    shl-int v3, p3, v3

    add-int/2addr v2, v3

    .line 633
    .local v2, "bOffset":I
    int-to-long v4, v1

    int-to-long v7, v2

    sget v10, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_LONG_INDEX_SCALE:I

    move-object v3, p0

    move-object v6, p2

    move v9, p4

    .end local p0    # "a":[J
    .end local p2    # "b":[J
    .end local p4    # "length":I
    .local v3, "a":[J
    .local v6, "b":[J
    .local v9, "length":I
    invoke-static/range {v3 .. v10}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 637
    .local p0, "i":I
    if-ltz p0, :cond_2a

    move v0, p0

    :cond_2a
    return v0
.end method

.method public static blacklist mismatch([J[JI)I
    .registers 13
    .param p0, "a"    # [J
    .param p1, "b"    # [J
    .param p2, "length"    # I

    .line 611
    const/4 v0, -0x1

    if-nez p2, :cond_4

    .line 612
    return v0

    .line 614
    :cond_4
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    aget-wide v4, p1, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 615
    return v1

    .line 616
    :cond_e
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_LONG_BASE_OFFSET:I

    int-to-long v3, v1

    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_LONG_BASE_OFFSET:I

    int-to-long v6, v1

    sget v9, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_LONG_INDEX_SCALE:I

    move-object v2, p0

    move-object v5, p1

    move v8, p2

    .end local p0    # "a":[J
    .end local p1    # "b":[J
    .end local p2    # "length":I
    .local v2, "a":[J
    .local v5, "b":[J
    .local v8, "length":I
    invoke-static/range {v2 .. v9}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 620
    .local p0, "i":I
    if-ltz p0, :cond_20

    move v0, p0

    :cond_20
    return v0
.end method

.method public static blacklist mismatch([SI[SII)I
    .registers 16
    .param p0, "a"    # [S
    .param p1, "aFromIndex"    # I
    .param p2, "b"    # [S
    .param p3, "bFromIndex"    # I
    .param p4, "length"    # I

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "i":I
    const/4 v1, 0x3

    if-le p4, v1, :cond_2c

    .line 490
    aget-short v1, p0, p1

    aget-short v2, p2, p3

    if-eq v1, v2, :cond_c

    .line 491
    const/4 v1, 0x0

    return v1

    .line 492
    :cond_c
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_SHORT_BASE_OFFSET:I

    sget v2, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_SHORT_INDEX_SCALE:I

    shl-int v2, p1, v2

    add-int/2addr v1, v2

    .line 493
    .local v1, "aOffset":I
    sget v2, Ljdk/internal/misc/Unsafe;->ARRAY_SHORT_BASE_OFFSET:I

    sget v3, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_SHORT_INDEX_SCALE:I

    shl-int v3, p3, v3

    add-int/2addr v2, v3

    .line 494
    .local v2, "bOffset":I
    int-to-long v4, v1

    int-to-long v7, v2

    sget v10, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_SHORT_INDEX_SCALE:I

    move-object v3, p0

    move-object v6, p2

    move v9, p4

    .end local p0    # "a":[S
    .end local p2    # "b":[S
    .end local p4    # "length":I
    .local v3, "a":[S
    .local v6, "b":[S
    .local v9, "length":I
    invoke-static/range {v3 .. v10}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 498
    .end local v0    # "i":I
    .local p0, "i":I
    if-ltz p0, :cond_28

    .line 499
    return p0

    .line 500
    :cond_28
    not-int p2, p0

    sub-int v0, v9, p2

    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_2f

    .line 489
    .end local v1    # "aOffset":I
    .end local v2    # "bOffset":I
    .end local v3    # "a":[S
    .end local v6    # "b":[S
    .end local v9    # "length":I
    .local p0, "a":[S
    .restart local p2    # "b":[S
    .restart local p4    # "length":I
    :cond_2c
    move-object v3, p0

    move-object v6, p2

    move v9, p4

    .line 502
    .end local p0    # "a":[S
    .end local p2    # "b":[S
    .end local p4    # "length":I
    .restart local v3    # "a":[S
    .restart local v6    # "b":[S
    .restart local v9    # "length":I
    :goto_2f
    if-ge v0, v9, :cond_3f

    .line 503
    add-int p0, p1, v0

    aget-short p0, v3, p0

    add-int p2, p3, v0

    aget-short p2, v6, p2

    if-eq p0, p2, :cond_3c

    .line 504
    return v0

    .line 502
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 506
    :cond_3f
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist mismatch([S[SI)I
    .registers 13
    .param p0, "a"    # [S
    .param p1, "b"    # [S
    .param p2, "length"    # I

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "i":I
    const/4 v1, 0x3

    if-le p2, v1, :cond_22

    .line 468
    const/4 v1, 0x0

    aget-short v2, p0, v1

    aget-short v3, p1, v1

    if-eq v2, v3, :cond_c

    .line 469
    return v1

    .line 470
    :cond_c
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_SHORT_BASE_OFFSET:I

    int-to-long v3, v1

    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_SHORT_BASE_OFFSET:I

    int-to-long v6, v1

    sget v9, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_SHORT_INDEX_SCALE:I

    move-object v2, p0

    move-object v5, p1

    move v8, p2

    .end local p0    # "a":[S
    .end local p1    # "b":[S
    .end local p2    # "length":I
    .local v2, "a":[S
    .local v5, "b":[S
    .local v8, "length":I
    invoke-static/range {v2 .. v9}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 474
    .end local v0    # "i":I
    .local p0, "i":I
    if-ltz p0, :cond_1e

    .line 475
    return p0

    .line 476
    :cond_1e
    not-int p1, p0

    sub-int v0, v8, p1

    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_25

    .line 467
    .end local v2    # "a":[S
    .end local v5    # "b":[S
    .end local v8    # "length":I
    .local p0, "a":[S
    .restart local p1    # "b":[S
    .restart local p2    # "length":I
    :cond_22
    move-object v2, p0

    move-object v5, p1

    move v8, p2

    .line 478
    .end local p0    # "a":[S
    .end local p1    # "b":[S
    .end local p2    # "length":I
    .restart local v2    # "a":[S
    .restart local v5    # "b":[S
    .restart local v8    # "length":I
    :goto_25
    if-ge v0, v8, :cond_31

    .line 479
    aget-short p0, v2, v0

    aget-short p1, v5, v0

    if-eq p0, p1, :cond_2e

    .line 480
    return v0

    .line 478
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 482
    :cond_31
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist mismatch([ZI[ZII)I
    .registers 16
    .param p0, "a"    # [Z
    .param p1, "aFromIndex"    # I
    .param p2, "b"    # [Z
    .param p3, "bFromIndex"    # I
    .param p4, "length"    # I

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "i":I
    const/4 v1, 0x7

    if-le p4, v1, :cond_24

    .line 299
    aget-boolean v1, p0, p1

    aget-boolean v2, p2, p3

    if-eq v1, v2, :cond_c

    .line 300
    const/4 v1, 0x0

    return v1

    .line 301
    :cond_c
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_BOOLEAN_BASE_OFFSET:I

    add-int/2addr v1, p1

    .line 302
    .local v1, "aOffset":I
    sget v2, Ljdk/internal/misc/Unsafe;->ARRAY_BOOLEAN_BASE_OFFSET:I

    add-int/2addr v2, p3

    .line 303
    .local v2, "bOffset":I
    int-to-long v4, v1

    int-to-long v7, v2

    sget v10, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_BOOLEAN_INDEX_SCALE:I

    move-object v3, p0

    move-object v6, p2

    move v9, p4

    .end local p0    # "a":[Z
    .end local p2    # "b":[Z
    .end local p4    # "length":I
    .local v3, "a":[Z
    .local v6, "b":[Z
    .local v9, "length":I
    invoke-static/range {v3 .. v10}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 307
    .end local v0    # "i":I
    .local p0, "i":I
    if-ltz p0, :cond_20

    .line 308
    return p0

    .line 309
    :cond_20
    not-int p2, p0

    sub-int v0, v9, p2

    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_27

    .line 298
    .end local v1    # "aOffset":I
    .end local v2    # "bOffset":I
    .end local v3    # "a":[Z
    .end local v6    # "b":[Z
    .end local v9    # "length":I
    .local p0, "a":[Z
    .restart local p2    # "b":[Z
    .restart local p4    # "length":I
    :cond_24
    move-object v3, p0

    move-object v6, p2

    move v9, p4

    .line 311
    .end local p0    # "a":[Z
    .end local p2    # "b":[Z
    .end local p4    # "length":I
    .restart local v3    # "a":[Z
    .restart local v6    # "b":[Z
    .restart local v9    # "length":I
    :goto_27
    if-ge v0, v9, :cond_37

    .line 312
    add-int p0, p1, v0

    aget-boolean p0, v3, p0

    add-int p2, p3, v0

    aget-boolean p2, v6, p2

    if-eq p0, p2, :cond_34

    .line 313
    return v0

    .line 311
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 315
    :cond_37
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist mismatch([Z[ZI)I
    .registers 13
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z
    .param p2, "length"    # I

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "i":I
    const/4 v1, 0x7

    if-le p2, v1, :cond_22

    .line 277
    const/4 v1, 0x0

    aget-boolean v2, p0, v1

    aget-boolean v3, p1, v1

    if-eq v2, v3, :cond_c

    .line 278
    return v1

    .line 279
    :cond_c
    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_BOOLEAN_BASE_OFFSET:I

    int-to-long v3, v1

    sget v1, Ljdk/internal/misc/Unsafe;->ARRAY_BOOLEAN_BASE_OFFSET:I

    int-to-long v6, v1

    sget v9, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_BOOLEAN_INDEX_SCALE:I

    move-object v2, p0

    move-object v5, p1

    move v8, p2

    .end local p0    # "a":[Z
    .end local p1    # "b":[Z
    .end local p2    # "length":I
    .local v2, "a":[Z
    .local v5, "b":[Z
    .local v8, "length":I
    invoke-static/range {v2 .. v9}, Ljdk/internal/util/ArraysSupport;->vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I

    move-result p0

    .line 283
    .end local v0    # "i":I
    .local p0, "i":I
    if-ltz p0, :cond_1e

    .line 284
    return p0

    .line 285
    :cond_1e
    not-int p1, p0

    sub-int v0, v8, p1

    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_25

    .line 276
    .end local v2    # "a":[Z
    .end local v5    # "b":[Z
    .end local v8    # "length":I
    .local p0, "a":[Z
    .restart local p1    # "b":[Z
    .restart local p2    # "length":I
    :cond_22
    move-object v2, p0

    move-object v5, p1

    move v8, p2

    .line 287
    .end local p0    # "a":[Z
    .end local p1    # "b":[Z
    .end local p2    # "length":I
    .restart local v2    # "a":[Z
    .restart local v5    # "b":[Z
    .restart local v8    # "length":I
    :goto_25
    if-ge v0, v8, :cond_31

    .line 288
    aget-boolean p0, v2, v0

    aget-boolean p1, v5, v0

    if-eq p0, p1, :cond_2e

    .line 289
    return v0

    .line 287
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 291
    :cond_31
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist newLength(III)I
    .registers 5
    .param p0, "oldLength"    # I
    .param p1, "minGrowth"    # I
    .param p2, "prefGrowth"    # I

    .line 743
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p0

    .line 744
    .local v0, "prefLength":I
    if-lez v0, :cond_d

    const v1, 0x7ffffff7

    if-gt v0, v1, :cond_d

    .line 745
    return v0

    .line 748
    :cond_d
    invoke-static {p0, p1}, Ljdk/internal/util/ArraysSupport;->hugeLength(II)I

    move-result v1

    return v1
.end method

.method public static blacklist reverse([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 772
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    .line 773
    .local v0, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_7
    if-ge v1, v0, :cond_16

    .line 774
    aget-object v3, p0, v1

    .line 775
    .local v3, "t":Ljava/lang/Object;, "TT;"
    aget-object v4, p0, v2

    aput-object v4, p0, v1

    .line 776
    aput-object v3, p0, v2

    .line 773
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 778
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_16
    return-object p0
.end method

.method private static blacklist signedHashCode(I[BII)I
    .registers 8
    .param p0, "result"    # I
    .param p1, "a"    # [B
    .param p2, "fromIndex"    # I
    .param p3, "length"    # I

    .line 214
    add-int v0, p2, p3

    .line 215
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_10

    .line 216
    mul-int/lit8 v2, p0, 0x1f

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int p0, v2, v3

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 218
    .end local v1    # "i":I
    :cond_10
    return p0
.end method

.method public static blacklist toArrayReversed(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "*>;[TT;)[TT;"
        }
    .end annotation

    .line 801
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljdk/internal/util/ArraysSupport;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 802
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    array-length v2, v1

    array-length v3, p1

    if-le v2, v3, :cond_12

    .line 803
    return-object v1

    .line 805
    :cond_12
    array-length v2, v1

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    array-length v0, p1

    array-length v2, v1

    if-le v0, v2, :cond_1e

    .line 807
    array-length v0, v1

    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 809
    :cond_1e
    return-object p1
.end method

.method public static blacklist utf16hashCode(I[BII)I
    .registers 8
    .param p0, "result"    # I
    .param p1, "value"    # [B
    .param p2, "fromIndex"    # I
    .param p3, "length"    # I

    .line 259
    add-int v0, p2, p3

    .line 260
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_10

    .line 263
    mul-int/lit8 v2, p0, 0x1f

    invoke-static {p1, v1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    add-int p0, v2, v3

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 266
    .end local v1    # "i":I
    :cond_10
    return p0
.end method

.method public static blacklist vectorizedHashCode(Ljava/lang/Object;IIII)I
    .registers 8
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I
    .param p3, "initialValue"    # I
    .param p4, "basicType"    # I

    .line 201
    packed-switch p4, :pswitch_data_50

    .line 209
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized basic type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :pswitch_1c
    move-object v0, p0

    check-cast v0, [I

    invoke-static {p3, v0, p1, p2}, Ljdk/internal/util/ArraysSupport;->hashCode(I[III)I

    move-result v0

    goto :goto_4f

    .line 207
    :pswitch_24
    move-object v0, p0

    check-cast v0, [S

    invoke-static {p3, v0, p1, p2}, Ljdk/internal/util/ArraysSupport;->hashCode(I[SII)I

    move-result v0

    goto :goto_4f

    .line 206
    :pswitch_2c
    move-object v0, p0

    check-cast v0, [B

    invoke-static {p3, v0, p1, p2}, Ljdk/internal/util/ArraysSupport;->hashCode(I[BII)I

    move-result v0

    goto :goto_4f

    .line 203
    :pswitch_34
    instance-of v0, p0, [B

    if-eqz v0, :cond_40

    .line 204
    move-object v0, p0

    check-cast v0, [B

    invoke-static {p3, v0, p1, p2}, Ljdk/internal/util/ArraysSupport;->utf16hashCode(I[BII)I

    move-result v0

    goto :goto_4f

    .line 205
    :cond_40
    move-object v0, p0

    check-cast v0, [C

    invoke-static {p3, v0, p1, p2}, Ljdk/internal/util/ArraysSupport;->hashCode(I[CII)I

    move-result v0

    goto :goto_4f

    .line 202
    :pswitch_48
    move-object v0, p0

    check-cast v0, [B

    invoke-static {p3, v0, p1, p2}, Ljdk/internal/util/ArraysSupport;->signedHashCode(I[BII)I

    move-result v0

    .line 201
    :goto_4f
    return v0

    :pswitch_data_50
    .packed-switch 0x4
        :pswitch_48
        :pswitch_34
        :pswitch_3
        :pswitch_3
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist vectorizedMismatch(Ljava/lang/Object;JLjava/lang/Object;JII)I
    .registers 22
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "aOffset"    # J
    .param p3, "b"    # Ljava/lang/Object;
    .param p4, "bOffset"    # J
    .param p6, "length"    # I
    .param p7, "log2ArrayIndexScale"    # I

    .line 125
    move-object/from16 v0, p3

    move/from16 v1, p7

    sget v2, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_LONG_INDEX_SCALE:I

    sub-int/2addr v2, v1

    .line 126
    .local v2, "log2ValuesPerWidth":I
    const/4 v3, 0x0

    .line 127
    .local v3, "wi":I
    :goto_8
    shr-int v4, p6, v2

    if-ge v3, v4, :cond_36

    .line 128
    int-to-long v4, v3

    sget v6, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_LONG_INDEX_SCALE:I

    shl-long/2addr v4, v6

    .line 129
    .local v4, "bi":J
    sget-object v6, Ljdk/internal/util/ArraysSupport;->U:Ljdk/internal/misc/Unsafe;

    add-long v7, p1, v4

    invoke-virtual {v6, p0, v7, v8}, Ljdk/internal/misc/Unsafe;->getLongUnaligned(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 130
    .local v6, "av":J
    sget-object v8, Ljdk/internal/util/ArraysSupport;->U:Ljdk/internal/misc/Unsafe;

    add-long v9, p4, v4

    invoke-virtual {v8, v0, v9, v10}, Ljdk/internal/misc/Unsafe;->getLongUnaligned(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 131
    .local v8, "bv":J
    cmp-long v10, v6, v8

    if-eqz v10, :cond_33

    .line 132
    xor-long v10, v6, v8

    .line 133
    .local v10, "x":J
    nop

    .line 135
    invoke-static {v10, v11}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v12

    sget v13, Ljdk/internal/util/ArraysSupport;->LOG2_BYTE_BIT_SIZE:I

    add-int/2addr v13, v1

    shr-int/2addr v12, v13

    .line 136
    .local v12, "o":I
    shl-int v13, v3, v2

    add-int/2addr v13, v12

    return v13

    .line 127
    .end local v4    # "bi":J
    .end local v6    # "av":J
    .end local v8    # "bv":J
    .end local v10    # "x":J
    .end local v12    # "o":I
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 141
    :cond_36
    shl-int v4, v3, v2

    sub-int v4, p6, v4

    .line 143
    .local v4, "tail":I
    sget v5, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_INT_INDEX_SCALE:I

    if-ge v1, v5, :cond_6e

    .line 144
    sget v5, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_INT_INDEX_SCALE:I

    sub-int/2addr v5, v1

    const/4 v6, 0x1

    shl-int v5, v6, v5

    .line 146
    .local v5, "wordTail":I
    if-lt v4, v5, :cond_6c

    .line 147
    int-to-long v6, v3

    sget v8, Ljdk/internal/util/ArraysSupport;->LOG2_ARRAY_LONG_INDEX_SCALE:I

    shl-long/2addr v6, v8

    .line 148
    .local v6, "bi":J
    sget-object v8, Ljdk/internal/util/ArraysSupport;->U:Ljdk/internal/misc/Unsafe;

    add-long v9, p1, v6

    invoke-virtual {v8, p0, v9, v10}, Ljdk/internal/misc/Unsafe;->getIntUnaligned(Ljava/lang/Object;J)I

    move-result v8

    .line 149
    .local v8, "av":I
    sget-object v9, Ljdk/internal/util/ArraysSupport;->U:Ljdk/internal/misc/Unsafe;

    add-long v10, p4, v6

    invoke-virtual {v9, v0, v10, v11}, Ljdk/internal/misc/Unsafe;->getIntUnaligned(Ljava/lang/Object;J)I

    move-result v9

    .line 150
    .local v9, "bv":I
    if-eq v8, v9, :cond_6b

    .line 151
    xor-int v10, v8, v9

    .line 152
    .local v10, "x":I
    nop

    .line 154
    invoke-static {v10}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v11

    sget v12, Ljdk/internal/util/ArraysSupport;->LOG2_BYTE_BIT_SIZE:I

    add-int/2addr v12, v1

    shr-int/2addr v11, v12

    .line 155
    .local v11, "o":I
    shl-int v12, v3, v2

    add-int/2addr v12, v11

    return v12

    .line 157
    .end local v10    # "x":I
    .end local v11    # "o":I
    :cond_6b
    sub-int/2addr v4, v5

    .line 159
    .end local v6    # "bi":J
    .end local v8    # "av":I
    .end local v9    # "bv":I
    :cond_6c
    not-int v6, v4

    return v6

    .line 162
    .end local v5    # "wordTail":I
    :cond_6e
    not-int v5, v4

    return v5
.end method

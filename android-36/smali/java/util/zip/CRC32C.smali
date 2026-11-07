.class public final Ljava/util/zip/CRC32C;
.super Ljava/lang/Object;
.source "CRC32C.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist CRC32C_POLY:I = 0x1edc6f41

.field private static final blacklist REVERSED_CRC32C_POLY:I

.field private static final blacklist UNSAFE:Ljdk/internal/misc/Unsafe;

.field private static final blacklist byteTable:[I

.field private static final blacklist byteTable0:[I

.field private static final blacklist byteTable1:[I

.field private static final blacklist byteTable2:[I

.field private static final blacklist byteTable3:[I

.field private static final blacklist byteTable4:[I

.field private static final blacklist byteTable5:[I

.field private static final blacklist byteTable6:[I

.field private static final blacklist byteTable7:[I

.field private static final blacklist byteTables:[[I


# instance fields
.field private blacklist crc:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 50
    nop

    .line 63
    const v0, 0x1edc6f41

    invoke-static {v0}, Ljava/lang/Integer;->reverse(I)I

    move-result v0

    sput v0, Ljava/util/zip/CRC32C;->REVERSED_CRC32C_POLY:I

    .line 65
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/zip/CRC32C;->UNSAFE:Ljdk/internal/misc/Unsafe;

    .line 71
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/16 v3, 0x100

    aput v3, v1, v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v1, v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Ljava/util/zip/CRC32C;->byteTables:[[I

    .line 72
    sget-object v1, Ljava/util/zip/CRC32C;->byteTables:[[I

    aget-object v1, v1, v3

    sput-object v1, Ljava/util/zip/CRC32C;->byteTable0:[I

    .line 73
    sget-object v1, Ljava/util/zip/CRC32C;->byteTables:[[I

    aget-object v1, v1, v2

    sput-object v1, Ljava/util/zip/CRC32C;->byteTable1:[I

    .line 74
    sget-object v1, Ljava/util/zip/CRC32C;->byteTables:[[I

    aget-object v0, v1, v0

    sput-object v0, Ljava/util/zip/CRC32C;->byteTable2:[I

    .line 75
    sget-object v0, Ljava/util/zip/CRC32C;->byteTables:[[I

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sput-object v0, Ljava/util/zip/CRC32C;->byteTable3:[I

    .line 76
    sget-object v0, Ljava/util/zip/CRC32C;->byteTables:[[I

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sput-object v0, Ljava/util/zip/CRC32C;->byteTable4:[I

    .line 77
    sget-object v0, Ljava/util/zip/CRC32C;->byteTables:[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sput-object v0, Ljava/util/zip/CRC32C;->byteTable5:[I

    .line 78
    sget-object v0, Ljava/util/zip/CRC32C;->byteTables:[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    sput-object v0, Ljava/util/zip/CRC32C;->byteTable6:[I

    .line 79
    sget-object v0, Ljava/util/zip/CRC32C;->byteTables:[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    sput-object v0, Ljava/util/zip/CRC32C;->byteTable7:[I

    .line 84
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_5d
    sget-object v1, Ljava/util/zip/CRC32C;->byteTables:[[I

    aget-object v1, v1, v3

    array-length v1, v1

    if-ge v0, v1, :cond_81

    .line 85
    move v1, v0

    .line 86
    .local v1, "r":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_66
    if-ge v2, v4, :cond_78

    .line 87
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_73

    .line 88
    ushr-int/lit8 v5, v1, 0x1

    sget v6, Ljava/util/zip/CRC32C;->REVERSED_CRC32C_POLY:I

    xor-int v1, v5, v6

    goto :goto_75

    .line 90
    :cond_73
    ushr-int/lit8 v1, v1, 0x1

    .line 86
    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 93
    .end local v2    # "i":I
    :cond_78
    sget-object v2, Ljava/util/zip/CRC32C;->byteTables:[[I

    aget-object v2, v2, v3

    aput v1, v2, v0

    .line 84
    .end local v1    # "r":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 96
    .end local v0    # "index":I
    :cond_81
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_82
    sget-object v1, Ljava/util/zip/CRC32C;->byteTables:[[I

    aget-object v1, v1, v3

    array-length v1, v1

    if-ge v0, v1, :cond_ad

    .line 97
    sget-object v1, Ljava/util/zip/CRC32C;->byteTables:[[I

    aget-object v1, v1, v3

    aget v1, v1, v0

    .line 99
    .restart local v1    # "r":I
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_90
    sget-object v4, Ljava/util/zip/CRC32C;->byteTables:[[I

    array-length v4, v4

    if-ge v2, v4, :cond_aa

    .line 100
    sget-object v4, Ljava/util/zip/CRC32C;->byteTables:[[I

    aget-object v4, v4, v3

    and-int/lit16 v5, v1, 0xff

    aget v4, v4, v5

    ushr-int/lit8 v5, v1, 0x8

    xor-int v1, v4, v5

    .line 101
    sget-object v4, Ljava/util/zip/CRC32C;->byteTables:[[I

    aget-object v4, v4, v2

    aput v1, v4, v0

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    .line 96
    .end local v1    # "r":I
    .end local v2    # "k":I
    :cond_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 105
    .end local v0    # "index":I
    :cond_ad
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_bc

    .line 106
    sget-object v0, Ljava/util/zip/CRC32C;->byteTables:[[I

    aget-object v0, v0, v3

    sput-object v0, Ljava/util/zip/CRC32C;->byteTable:[I

    goto :goto_e6

    .line 108
    :cond_bc
    sget-object v0, Ljava/util/zip/CRC32C;->byteTable0:[I

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljava/util/zip/CRC32C;->byteTable:[I

    .line 109
    sget-object v0, Ljava/util/zip/CRC32C;->byteTable0:[I

    sget-object v1, Ljava/util/zip/CRC32C;->byteTable:[I

    sget-object v2, Ljava/util/zip/CRC32C;->byteTable0:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    sget-object v0, Ljava/util/zip/CRC32C;->byteTables:[[I

    array-length v1, v0

    :goto_d0
    if-ge v3, v1, :cond_e6

    aget-object v2, v0, v3

    .line 111
    .local v2, "table":[I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_d5
    array-length v5, v2

    if-ge v4, v5, :cond_e3

    .line 112
    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    aput v5, v2, v4

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_d5

    .line 110
    .end local v2    # "table":[I
    .end local v4    # "index":I
    :cond_e3
    add-int/lit8 v3, v3, 0x1

    goto :goto_d0

    .line 116
    :cond_e6
    :goto_e6
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/CRC32C;->crc:I

    .line 127
    return-void
.end method

.method private static blacklist updateBytes(I[BII)I
    .registers 11
    .param p0, "crc"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 219
    sub-int v0, p3, p2

    const/16 v1, 0x8

    if-lt v0, v1, :cond_112

    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_INDEX_SCALE:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_112

    .line 222
    sget v0, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    add-int/2addr v0, p2

    and-int/lit8 v0, v0, 0x7

    sub-int/2addr v1, v0

    and-int/lit8 v0, v1, 0x7

    .line 224
    .local v0, "alignLength":I
    add-int v1, p2, v0

    .local v1, "alignEnd":I
    :goto_15
    if-ge p2, v1, :cond_27

    .line 225
    ushr-int/lit8 v2, p0, 0x8

    sget-object v3, Ljava/util/zip/CRC32C;->byteTable:[I

    aget-byte v4, p1, p2

    xor-int/2addr v4, p0

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    xor-int p0, v2, v3

    .line 224
    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    .line 228
    .end local v1    # "alignEnd":I
    :cond_27
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_33

    .line 229
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    .line 233
    :cond_33
    :goto_33
    add-int/lit8 v1, p3, -0x8

    if-ge p2, v1, :cond_106

    .line 236
    sget v1, Ljdk/internal/misc/Unsafe;->ADDRESS_SIZE:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_56

    .line 238
    sget-object v1, Ljava/util/zip/CRC32C;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget v2, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v2, v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    invoke-virtual {v1, p1, v2, v3}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 239
    .local v1, "firstHalf":I
    sget-object v2, Ljava/util/zip/CRC32C;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget v3, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v3, v3

    int-to-long v5, p2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    invoke-virtual {v2, p1, v3, v4}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    .local v2, "secondHalf":I
    goto :goto_78

    .line 242
    .end local v1    # "firstHalf":I
    .end local v2    # "secondHalf":I
    :cond_56
    sget-object v1, Ljava/util/zip/CRC32C;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget v2, Ljdk/internal/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v2, v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    invoke-virtual {v1, p1, v2, v3}, Ljdk/internal/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 243
    .local v1, "value":J
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v5, 0x20

    if-ne v3, v4, :cond_72

    .line 244
    long-to-int v3, v1

    .line 245
    .local v3, "firstHalf":I
    ushr-long v4, v1, v5

    long-to-int v4, v4

    move v1, v3

    move v2, v4

    .local v4, "secondHalf":I
    goto :goto_78

    .line 247
    .end local v3    # "firstHalf":I
    .end local v4    # "secondHalf":I
    :cond_72
    ushr-long v3, v1, v5

    long-to-int v3, v3

    .line 248
    .restart local v3    # "firstHalf":I
    long-to-int v4, v1

    move v1, v3

    move v2, v4

    .line 251
    .end local v3    # "firstHalf":I
    .local v1, "firstHalf":I
    .restart local v2    # "secondHalf":I
    :goto_78
    xor-int/2addr p0, v1

    .line 252
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_c2

    .line 253
    sget-object v3, Ljava/util/zip/CRC32C;->byteTable7:[I

    and-int/lit16 v4, p0, 0xff

    aget v3, v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable6:[I

    ushr-int/lit8 v5, p0, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable5:[I

    ushr-int/lit8 v5, p0, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable4:[I

    ushr-int/lit8 v5, p0, 0x18

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable3:[I

    and-int/lit16 v5, v2, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable2:[I

    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable1:[I

    ushr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable0:[I

    ushr-int/lit8 v5, v2, 0x18

    aget v4, v4, v5

    xor-int p0, v3, v4

    goto :goto_102

    .line 262
    :cond_c2
    sget-object v3, Ljava/util/zip/CRC32C;->byteTable0:[I

    and-int/lit16 v4, v2, 0xff

    aget v3, v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable1:[I

    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable2:[I

    ushr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable3:[I

    ushr-int/lit8 v5, v2, 0x18

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable4:[I

    and-int/lit16 v5, p0, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable5:[I

    ushr-int/lit8 v5, p0, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable6:[I

    ushr-int/lit8 v5, p0, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable7:[I

    ushr-int/lit8 v5, p0, 0x18

    aget v4, v4, v5

    xor-int p0, v3, v4

    .line 233
    .end local v1    # "firstHalf":I
    .end local v2    # "secondHalf":I
    :goto_102
    add-int/lit8 p2, p2, 0x8

    goto/16 :goto_33

    .line 273
    :cond_106
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_112

    .line 274
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    .line 279
    .end local v0    # "alignLength":I
    :cond_112
    :goto_112
    if-ge p2, p3, :cond_124

    .line 280
    ushr-int/lit8 v0, p0, 0x8

    sget-object v1, Ljava/util/zip/CRC32C;->byteTable:[I

    aget-byte v2, p1, p2

    xor-int/2addr v2, p0

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int p0, v0, v1

    .line 279
    add-int/lit8 p2, p2, 0x1

    goto :goto_112

    .line 283
    :cond_124
    return p0
.end method

.method private static blacklist updateDirectByteBuffer(IJII)I
    .registers 12
    .param p0, "crc"    # I
    .param p1, "address"    # J
    .param p3, "off"    # I
    .param p4, "end"    # I

    .line 294
    sub-int v0, p4, p3

    const/16 v1, 0x8

    if-lt v0, v1, :cond_e6

    .line 297
    int-to-long v2, p3

    add-long/2addr v2, p1

    const-wide/16 v4, 0x7

    and-long/2addr v2, v4

    long-to-int v0, v2

    sub-int/2addr v1, v0

    and-int/lit8 v0, v1, 0x7

    .line 298
    .local v0, "alignLength":I
    add-int v1, p3, v0

    .local v1, "alignEnd":I
    :goto_11
    if-ge p3, v1, :cond_29

    .line 299
    ushr-int/lit8 v2, p0, 0x8

    sget-object v3, Ljava/util/zip/CRC32C;->byteTable:[I

    sget-object v4, Ljava/util/zip/CRC32C;->UNSAFE:Ljdk/internal/misc/Unsafe;

    int-to-long v5, p3

    add-long/2addr v5, p1

    .line 300
    invoke-virtual {v4, v5, v6}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v4

    xor-int/2addr v4, p0

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    xor-int p0, v2, v3

    .line 298
    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    .line 303
    .end local v1    # "alignEnd":I
    :cond_29
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_35

    .line 304
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    .line 308
    :cond_35
    :goto_35
    add-int/lit8 v1, p4, -0x8

    if-gt p3, v1, :cond_da

    .line 311
    sget-object v1, Ljava/util/zip/CRC32C;->UNSAFE:Ljdk/internal/misc/Unsafe;

    int-to-long v2, p3

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljdk/internal/misc/Unsafe;->getInt(J)I

    move-result v1

    .line 312
    .local v1, "firstHalf":I
    sget-object v2, Ljava/util/zip/CRC32C;->UNSAFE:Ljdk/internal/misc/Unsafe;

    int-to-long v3, p3

    add-long/2addr v3, p1

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljdk/internal/misc/Unsafe;->getInt(J)I

    move-result v2

    .line 313
    .local v2, "secondHalf":I
    xor-int/2addr p0, v1

    .line 314
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_96

    .line 315
    sget-object v3, Ljava/util/zip/CRC32C;->byteTable7:[I

    and-int/lit16 v4, p0, 0xff

    aget v3, v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable6:[I

    ushr-int/lit8 v5, p0, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable5:[I

    ushr-int/lit8 v5, p0, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable4:[I

    ushr-int/lit8 v5, p0, 0x18

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable3:[I

    and-int/lit16 v5, v2, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable2:[I

    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable1:[I

    ushr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable0:[I

    ushr-int/lit8 v5, v2, 0x18

    aget v4, v4, v5

    xor-int p0, v3, v4

    goto :goto_d6

    .line 324
    :cond_96
    sget-object v3, Ljava/util/zip/CRC32C;->byteTable0:[I

    and-int/lit16 v4, v2, 0xff

    aget v3, v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable1:[I

    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable2:[I

    ushr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable3:[I

    ushr-int/lit8 v5, v2, 0x18

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable4:[I

    and-int/lit16 v5, p0, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable5:[I

    ushr-int/lit8 v5, p0, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable6:[I

    ushr-int/lit8 v5, p0, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Ljava/util/zip/CRC32C;->byteTable7:[I

    ushr-int/lit8 v5, p0, 0x18

    aget v4, v4, v5

    xor-int p0, v3, v4

    .line 308
    .end local v1    # "firstHalf":I
    .end local v2    # "secondHalf":I
    :goto_d6
    add-int/lit8 p3, p3, 0x8

    goto/16 :goto_35

    .line 335
    :cond_da
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_e6

    .line 336
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    .line 341
    .end local v0    # "alignLength":I
    :cond_e6
    :goto_e6
    if-ge p3, p4, :cond_fe

    .line 342
    ushr-int/lit8 v0, p0, 0x8

    sget-object v1, Ljava/util/zip/CRC32C;->byteTable:[I

    sget-object v2, Ljava/util/zip/CRC32C;->UNSAFE:Ljdk/internal/misc/Unsafe;

    int-to-long v3, p3

    add-long/2addr v3, p1

    .line 343
    invoke-virtual {v2, v3, v4}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v2

    xor-int/2addr v2, p0

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int p0, v0, v1

    .line 341
    add-int/lit8 p3, p3, 0x1

    goto :goto_e6

    .line 346
    :cond_fe
    return p0
.end method


# virtual methods
.method public whitelist test-api getValue()J
    .registers 5

    .line 208
    iget v0, p0, Ljava/util/zip/CRC32C;->crc:I

    not-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/CRC32C;->crc:I

    .line 201
    return-void
.end method

.method public whitelist test-api update(I)V
    .registers 6
    .param p1, "b"    # I

    .line 135
    iget v0, p0, Ljava/util/zip/CRC32C;->crc:I

    ushr-int/lit8 v0, v0, 0x8

    sget-object v1, Ljava/util/zip/CRC32C;->byteTable:[I

    iget v2, p0, Ljava/util/zip/CRC32C;->crc:I

    and-int/lit16 v3, p1, 0xff

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Ljava/util/zip/CRC32C;->crc:I

    .line 136
    return-void
.end method

.method public whitelist test-api update(Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 167
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 168
    .local v1, "limit":I
    nop

    .line 169
    sub-int v2, v1, v0

    .line 170
    .local v2, "rem":I
    if-gtz v2, :cond_e

    .line 171
    return-void

    .line 174
    :cond_e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 176
    :try_start_14
    iget v3, p0, Ljava/util/zip/CRC32C;->crc:I

    move-object v4, p1

    check-cast v4, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v4}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v0, v1}, Ljava/util/zip/CRC32C;->updateDirectByteBuffer(IJII)I

    move-result v3

    iput v3, p0, Ljava/util/zip/CRC32C;->crc:I
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_27

    .line 179
    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 180
    goto :goto_6c

    .line 179
    :catchall_27
    move-exception v3

    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 180
    throw v3

    .line 181
    :cond_2c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 182
    iget v3, p0, Ljava/util/zip/CRC32C;->crc:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v0

    .line 183
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v6, v1

    .line 182
    invoke-static {v3, v4, v5, v6}, Ljava/util/zip/CRC32C;->updateBytes(I[BII)I

    move-result v3

    iput v3, p0, Ljava/util/zip/CRC32C;->crc:I

    goto :goto_6c

    .line 185
    :cond_49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x1000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [B

    .line 186
    .local v3, "b":[B
    :goto_55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    array-length v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 188
    .local v4, "length":I
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 189
    invoke-virtual {p0, v3, v5, v4}, Ljava/util/zip/CRC32C;->update([BII)V

    .line 190
    .end local v4    # "length":I
    goto :goto_55

    .line 192
    .end local v3    # "b":[B
    :cond_6c
    :goto_6c
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    return-void
.end method

.method public whitelist test-api update([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 148
    if-eqz p1, :cond_1b

    .line 151
    if-ltz p2, :cond_15

    if-ltz p3, :cond_15

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_15

    .line 154
    iget v0, p0, Ljava/util/zip/CRC32C;->crc:I

    add-int v1, p2, p3

    invoke-static {v0, p1, p2, v1}, Ljava/util/zip/CRC32C;->updateBytes(I[BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/CRC32C;->crc:I

    .line 155
    return-void

    .line 152
    :cond_15
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 149
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

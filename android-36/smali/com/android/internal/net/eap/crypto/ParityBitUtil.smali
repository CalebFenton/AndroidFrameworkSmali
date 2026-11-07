.class public Lcom/android/internal/net/eap/crypto/ParityBitUtil;
.super Ljava/lang/Object;
.source "ParityBitUtil.java"


# static fields
.field private static final blacklist BITS_PER_BYTE:I = 0x8

.field private static final blacklist BITS_PER_PARITY_BIT:I = 0x7

.field private static final blacklist INPUT_LENGTH:I = 0x7

.field private static final blacklist MASK:B = -0x2t

.field private static final blacklist OUTPUT_LENGTH:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addParityBits([B)[B
    .registers 7
    .param p0, "input"    # [B

    .line 44
    array-length v0, p0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1f

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 49
    .local v0, "output":[B
    invoke-static {p0}, Lcom/android/internal/net/eap/crypto/ParityBitUtil;->byteArrayToLong([B)J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    .line 53
    .local v2, "allBits":J
    array-length v5, v0

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_10
    if-ltz v5, :cond_1e

    .line 54
    long-to-int v4, v2

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/android/internal/net/eap/crypto/ParityBitUtil;->getByteWithParityBit(B)B

    move-result v4

    aput-byte v4, v0, v5

    .line 55
    shr-long/2addr v2, v1

    .line 53
    add-int/lit8 v5, v5, -0x1

    goto :goto_10

    .line 58
    .end local v5    # "i":I
    :cond_1e
    return-object v0

    .line 45
    .end local v0    # "output":[B
    .end local v2    # "allBits":J
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data must be 7B long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist byteArrayToLong([B)J
    .registers 8
    .param p0, "input"    # [B

    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_16

    .line 77
    const/16 v3, 0x8

    shl-long v3, v0, v3

    aget-byte v5, p0, v2

    invoke-static {v5}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v5

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 79
    .end local v2    # "i":I
    :cond_16
    return-wide v0
.end method

.method static blacklist getByteWithParityBit(B)B
    .registers 4
    .param p0, "b"    # B

    .line 64
    shr-int/lit8 v0, p0, 0x7

    shr-int/lit8 v1, p0, 0x6

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x5

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x3

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    .line 69
    .local v0, "parity":B
    not-int v1, v0

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    .line 70
    .local v1, "parityBit":B
    and-int/lit8 v2, p0, -0x2

    or-int/2addr v2, v1

    int-to-byte v2, v2

    return v2
.end method

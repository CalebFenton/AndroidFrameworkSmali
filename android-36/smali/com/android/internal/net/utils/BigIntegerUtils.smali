.class public final Lcom/android/internal/net/utils/BigIntegerUtils;
.super Ljava/lang/Object;
.source "BigIntegerUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bigIntegerToUnsignedByteArray(Ljava/math/BigInteger;I)[B
    .registers 7
    .param p0, "bigInteger"    # Ljava/math/BigInteger;
    .param p1, "size"    # I

    .line 52
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 53
    .local v0, "byteArrayWithSignBit":[B
    array-length v1, v0

    .line 54
    .local v1, "len":I
    new-array v2, p1, [B

    .line 61
    .local v2, "output":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    rem-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_18

    .line 62
    add-int/lit8 v1, v1, -0x1

    .line 63
    sub-int v3, p1, v1

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1e

    .line 65
    :cond_18
    const/4 v3, 0x0

    sub-int v4, p1, v1

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :goto_1e
    return-object v2
.end method

.method public static blacklist unsignedByteArrayToBigInteger([B)Ljava/math/BigInteger;
    .registers 3
    .param p0, "byteArray"    # [B

    .line 40
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static blacklist unsignedHexStringToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 3
    .param p0, "hexString"    # Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.class public Lcom/android/internal/org/bouncycastle/crypto/digests/XofUtils;
.super Ljava/lang/Object;
.source "XofUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist encode(B)[B
    .registers 4
    .param p0, "X"    # B

    .line 57
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static blacklist encode([BII)[B
    .registers 5
    .param p0, "in"    # [B
    .param p1, "inOff"    # I
    .param p2, "len"    # I

    .line 62
    array-length v0, p0

    if-ne v0, p2, :cond_f

    .line 64
    mul-int/lit8 v0, p2, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 66
    :cond_f
    mul-int/lit8 v0, p2, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    add-int v1, p1, p2

    invoke-static {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist leftEncode(J)[B
    .registers 10
    .param p0, "strLen"    # J

    .line 13
    const/4 v0, 0x1

    .line 15
    .local v0, "n":B
    move-wide v1, p0

    .line 16
    .local v1, "v":J
    :goto_2
    const/16 v3, 0x8

    shr-long v4, v1, v3

    move-wide v1, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    .line 18
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_2

    .line 21
    :cond_11
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    .line 23
    .local v4, "b":[B
    const/4 v5, 0x0

    aput-byte v0, v4, v5

    .line 25
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_19
    if-gt v5, v0, :cond_27

    .line 27
    sub-int v6, v0, v5

    mul-int/2addr v6, v3

    shr-long v6, p0, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 25
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 30
    .end local v5    # "i":I
    :cond_27
    return-object v4
.end method

.method public static blacklist rightEncode(J)[B
    .registers 10
    .param p0, "strLen"    # J

    .line 35
    const/4 v0, 0x1

    .line 37
    .local v0, "n":B
    move-wide v1, p0

    .line 38
    .local v1, "v":J
    :goto_2
    const/16 v3, 0x8

    shr-long v4, v1, v3

    move-wide v1, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    .line 40
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_2

    .line 43
    :cond_11
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    .line 45
    .local v4, "b":[B
    aput-byte v0, v4, v0

    .line 47
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v0, :cond_28

    .line 49
    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v3

    shr-long v6, p0, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 47
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 52
    .end local v5    # "i":I
    :cond_28
    return-object v4
.end method

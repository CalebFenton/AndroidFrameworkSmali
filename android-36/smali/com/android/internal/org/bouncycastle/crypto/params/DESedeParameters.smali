.class public Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;
.source "DESedeParameters.java"


# static fields
.field public static final blacklist DES_EDE_KEY_LENGTH:I = 0x18


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "key"    # [B

    .line 18
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;-><init>([B)V

    .line 20
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    if-nez v0, :cond_c

    .line 24
    return-void

    .line 22
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to create weak DESede key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isReal2Key([BI)Z
    .registers 6
    .param p0, "key"    # [B
    .param p1, "offset"    # I

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "isValid":Z
    move v1, p1

    .local v1, "i":I
    :goto_2
    add-int/lit8 v2, p1, 0x8

    if-eq v1, v2, :cond_12

    .line 84
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x8

    aget-byte v3, p0, v3

    if-eq v2, v3, :cond_f

    .line 86
    const/4 v0, 0x1

    .line 82
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static blacklist isReal3Key([BI)Z
    .registers 10
    .param p0, "key"    # [B
    .param p1, "offset"    # I

    .line 101
    const/4 v0, 0x0

    .local v0, "diff12":Z
    const/4 v1, 0x0

    .local v1, "diff13":Z
    const/4 v2, 0x0

    .line 102
    .local v2, "diff23":Z
    move v3, p1

    .local v3, "i":I
    :goto_4
    add-int/lit8 v4, p1, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_31

    .line 104
    aget-byte v4, p0, v3

    add-int/lit8 v7, v3, 0x8

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_14

    move v4, v6

    goto :goto_15

    :cond_14
    move v4, v5

    :goto_15
    or-int/2addr v0, v4

    .line 105
    aget-byte v4, p0, v3

    add-int/lit8 v7, v3, 0x10

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_20

    move v4, v6

    goto :goto_21

    :cond_20
    move v4, v5

    :goto_21
    or-int/2addr v1, v4

    .line 106
    add-int/lit8 v4, v3, 0x8

    aget-byte v4, p0, v4

    add-int/lit8 v7, v3, 0x10

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_2d

    move v5, v6

    :cond_2d
    or-int/2addr v2, v5

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 108
    .end local v3    # "i":I
    :cond_31
    if-eqz v0, :cond_38

    if-eqz v1, :cond_38

    if-eqz v2, :cond_38

    move v5, v6

    :cond_38
    return v5
.end method

.method public static blacklist isRealEDEKey([BI)Z
    .registers 4
    .param p0, "key"    # [B
    .param p1, "offset"    # I

    .line 70
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isReal2Key([BI)Z

    move-result v0

    goto :goto_e

    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isReal3Key([BI)Z

    move-result v0

    :goto_e
    return v0
.end method

.method public static blacklist isWeakKey([BI)Z
    .registers 3
    .param p0, "key"    # [B
    .param p1, "offset"    # I

    .line 59
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    return v0
.end method

.method public static blacklist isWeakKey([BII)Z
    .registers 5
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 38
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_e

    .line 40
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 42
    const/4 v1, 0x1

    return v1

    .line 38
    :cond_b
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 46
    .end local v0    # "i":I
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

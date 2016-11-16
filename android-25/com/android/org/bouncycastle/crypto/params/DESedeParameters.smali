.class public Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;
.super Lcom/android/org/bouncycastle/crypto/params/DESParameters;
.source "DESedeParameters.java"


# static fields
.field public static final DES_EDE_KEY_LENGTH:I = 0x18


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "key"    # [B

    #@0
    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;-><init>([B)V

    #@3
    .line 16
    array-length v0, p1

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "attempt to create weak DESede key"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 12
    :cond_0
    return-void
.end method

.method public static isReal2Key([BI)Z
    .locals 4
    .param p0, "key"    # [B
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 77
    const/4 v1, 0x0

    #@1
    .line 78
    .local v1, "isValid":Z
    move v0, p1

    #@2
    .local v0, "i":I
    :goto_0
    add-int/lit8 v2, p1, 0x8

    #@4
    if-eq v0, v2, :cond_1

    #@6
    .line 80
    aget-byte v2, p0, v0

    #@8
    add-int/lit8 v3, v0, 0x8

    #@a
    aget-byte v3, p0, v3

    #@c
    if-eq v2, v3, :cond_0

    #@e
    .line 82
    const/4 v1, 0x1

    #@f
    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 86
    :cond_1
    return v1
.end method

.method public static isReal3Key([BI)Z
    .locals 8
    .param p0, "key"    # [B
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 97
    const/4 v0, 0x0

    #@3
    .local v0, "diff12":Z
    const/4 v1, 0x0

    #@4
    .local v1, "diff13":Z
    const/4 v2, 0x0

    #@5
    .line 98
    .local v2, "diff23":Z
    move v3, p1

    #@6
    .end local v0    # "diff12":Z
    .end local v1    # "diff13":Z
    .end local v2    # "diff23":Z
    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, p1, 0x8

    #@8
    if-eq v3, v4, :cond_3

    #@a
    .line 100
    aget-byte v4, p0, v3

    #@c
    add-int/lit8 v7, v3, 0x8

    #@e
    aget-byte v7, p0, v7

    #@10
    if-eq v4, v7, :cond_0

    #@12
    move v4, v5

    #@13
    :goto_1
    or-int/2addr v0, v4

    #@14
    .line 101
    .local v0, "diff12":Z
    aget-byte v4, p0, v3

    #@16
    add-int/lit8 v7, v3, 0x10

    #@18
    aget-byte v7, p0, v7

    #@1a
    if-eq v4, v7, :cond_1

    #@1c
    move v4, v5

    #@1d
    :goto_2
    or-int/2addr v1, v4

    #@1e
    .line 102
    .local v1, "diff13":Z
    add-int/lit8 v4, v3, 0x8

    #@20
    aget-byte v4, p0, v4

    #@22
    add-int/lit8 v7, v3, 0x10

    #@24
    aget-byte v7, p0, v7

    #@26
    if-eq v4, v7, :cond_2

    #@28
    move v4, v5

    #@29
    :goto_3
    or-int/2addr v2, v4

    #@2a
    .line 98
    .local v2, "diff23":Z
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .end local v0    # "diff12":Z
    .end local v1    # "diff13":Z
    .end local v2    # "diff23":Z
    :cond_0
    move v4, v6

    #@2e
    .line 100
    goto :goto_1

    #@2f
    .restart local v0    # "diff12":Z
    :cond_1
    move v4, v6

    #@30
    .line 101
    goto :goto_2

    #@31
    .restart local v1    # "diff13":Z
    :cond_2
    move v4, v6

    #@32
    .line 102
    goto :goto_3

    #@33
    .line 104
    .end local v0    # "diff12":Z
    .end local v1    # "diff13":Z
    :cond_3
    if-eqz v0, :cond_4

    #@35
    if-eqz v1, :cond_4

    #@37
    :goto_4
    return v2

    #@38
    :cond_4
    move v2, v6

    #@39
    goto :goto_4
.end method

.method public static isRealEDEKey([BI)Z
    .locals 2
    .param p0, "key"    # [B
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 66
    array-length v0, p0

    #@1
    const/16 v1, 0x10

    #@3
    if-ne v0, v1, :cond_0

    #@5
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isReal2Key([BI)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isReal3Key([BI)Z

    #@d
    move-result v0

    #@e
    goto :goto_0
.end method

.method public static isWeakKey([BI)Z
    .locals 1
    .param p0, "key"    # [B
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 55
    array-length v0, p0

    #@1
    sub-int/2addr v0, p1

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isWeakKey([BII)Z
    .locals 2
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 34
    move v0, p1

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@3
    .line 36
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 38
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x8

    #@d
    goto :goto_0

    #@e
    .line 42
    :cond_1
    const/4 v1, 0x0

    #@f
    return v1
.end method

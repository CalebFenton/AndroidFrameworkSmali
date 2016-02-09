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

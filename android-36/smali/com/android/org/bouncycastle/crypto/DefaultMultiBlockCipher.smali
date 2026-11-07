.class public abstract Lcom/android/org/bouncycastle/crypto/DefaultMultiBlockCipher;
.super Ljava/lang/Object;
.source "DefaultMultiBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMultiBlockSize()I
    .registers 1

    .line 16
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public blacklist processBlocks([BII[BI)I
    .registers 10

    .line 26
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/DefaultMultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-eq v1, p3, :cond_13

    add-int v3, p5, v2

    .line 30
    invoke-interface {p0, p1, p2, p4, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    return v2
.end method

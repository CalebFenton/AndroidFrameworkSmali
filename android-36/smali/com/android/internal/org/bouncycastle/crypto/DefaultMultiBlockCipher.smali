.class public abstract Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;
.super Ljava/lang/Object;
.source "DefaultMultiBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public blacklist getMultiBlockSize()I
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist processBlocks([BII[BI)I
    .registers 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "blockCount"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "resultLen":I
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;->getMultiBlockSize()I

    move-result v1

    .line 28
    .local v1, "blockSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-eq v2, p3, :cond_13

    .line 30
    add-int v3, p5, v0

    invoke-virtual {p0, p1, p2, p4, v3}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v0, v3

    .line 32
    add-int/2addr p2, v1

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 35
    .end local v2    # "i":I
    :cond_13
    return v0
.end method

.class public abstract Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;
.source "StreamBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;


# instance fields
.field private final blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 2
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 16
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 18
    return-void
.end method


# virtual methods
.method protected abstract blacklist calculateByte(B)B
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 38
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_28

    .line 42
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_20

    .line 47
    move v0, p2

    .line 48
    .local v0, "inStart":I
    add-int v1, p2, p3

    .line 49
    .local v1, "inEnd":I
    move v2, p5

    .line 51
    .local v2, "outStart":I
    :goto_e
    if-ge v0, v1, :cond_1f

    .line 53
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outStart":I
    .local v3, "outStart":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "inStart":I
    .local v4, "inStart":I
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result v0

    aput-byte v0, p4, v2

    move v2, v3

    move v0, v4

    goto :goto_e

    .line 56
    .end local v3    # "outStart":I
    .end local v4    # "inStart":I
    .restart local v0    # "inStart":I
    .restart local v2    # "outStart":I
    :cond_1f
    return p3

    .line 44
    .end local v0    # "inStart":I
    .end local v1    # "inEnd":I
    .end local v2    # "outStart":I
    :cond_20
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_28
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too small"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist returnByte(B)B
    .registers 3
    .param p1, "in"    # B

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result v0

    return v0
.end method

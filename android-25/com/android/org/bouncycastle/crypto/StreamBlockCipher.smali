.class public abstract Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.super Ljava/lang/Object;
.source "StreamBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;
.implements Lcom/android/org/bouncycastle/crypto/StreamCipher;


# instance fields
.field private final cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 0
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@5
    .line 12
    return-void
.end method


# virtual methods
.method protected abstract calculateByte(B)B
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    #@0
    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    return-object v0
.end method

.method public processBytes([BII[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    #@0
    .prologue
    .line 35
    add-int v5, p5, p3

    #@2
    array-length v6, p4

    #@3
    if-le v5, v6, :cond_0

    #@5
    .line 37
    new-instance v5, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@7
    const-string/jumbo v6, "output buffer too short"

    #@a
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@d
    throw v5

    #@e
    .line 40
    :cond_0
    add-int v5, p2, p3

    #@10
    array-length v6, p1

    #@11
    if-le v5, v6, :cond_1

    #@13
    .line 42
    new-instance v5, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@15
    const-string/jumbo v6, "input buffer too small"

    #@18
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v5

    #@1c
    .line 45
    :cond_1
    move v1, p2

    #@1d
    .line 46
    .local v1, "inStart":I
    add-int v0, p2, p3

    #@1f
    .line 47
    .local v0, "inEnd":I
    move v3, p5

    #@20
    .local v3, "outStart":I
    move v4, v3

    #@21
    .end local v3    # "outStart":I
    .local v4, "outStart":I
    move v2, v1

    #@22
    .line 49
    .end local v1    # "inStart":I
    .local v2, "inStart":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@24
    .line 51
    add-int/lit8 v3, v4, 0x1

    #@26
    .end local v4    # "outStart":I
    .restart local v3    # "outStart":I
    add-int/lit8 v1, v2, 0x1

    #@28
    .end local v2    # "inStart":I
    .restart local v1    # "inStart":I
    aget-byte v5, p1, v2

    #@2a
    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    #@2d
    move-result v5

    #@2e
    aput-byte v5, p4, v4

    #@30
    move v4, v3

    #@31
    .end local v3    # "outStart":I
    .restart local v4    # "outStart":I
    move v2, v1

    #@32
    .end local v1    # "inStart":I
    .restart local v2    # "inStart":I
    goto :goto_0

    #@33
    .line 54
    :cond_2
    return p3
.end method

.method public final returnByte(B)B
    .locals 1
    .param p1, "in"    # B

    #@0
    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    #@3
    move-result v0

    #@4
    return v0
.end method

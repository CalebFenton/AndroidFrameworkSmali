.class public abstract Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/DefaultMultiBlockCipher;
.source "StreamBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/StreamCipher;


# instance fields
.field private final blacklist cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/DefaultMultiBlockCipher;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-void
.end method


# virtual methods
.method protected abstract blacklist calculateByte(B)B
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 9

    add-int v0, p2, p3

    .line 38
    array-length v1, p1

    if-gt v0, v1, :cond_24

    add-int v1, p5, p3

    .line 42
    array-length v2, p4

    if-gt v1, v2, :cond_1c

    :goto_a
    if-ge p2, v0, :cond_1b

    add-int/lit8 v1, p5, 0x1

    add-int/lit8 v2, p2, 0x1

    .line 53
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result p2

    aput-byte p2, p4, p5

    move p5, v1

    move p2, v2

    goto :goto_a

    :cond_1b
    return p3

    .line 44
    :cond_1c
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_24
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too small"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

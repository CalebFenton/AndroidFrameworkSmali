.class public Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
.super Ljava/lang/Object;
.source "KeyParameter.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist key:[B


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    .line 34
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "key"    # [B

    .line 18
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 19
    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .registers 6
    .param p1, "key"    # [B
    .param p2, "keyOff"    # I
    .param p3, "keyLen"    # I

    .line 26
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>(I)V

    .line 28
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist copyTo([BII)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length v0, v0

    if-ne v0, p3, :cond_c

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    return-void

    .line 39
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "len"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getKey()[B
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-object v0
.end method

.method public blacklist getKeyLength()I
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length v0, v0

    return v0
.end method

.method public blacklist reverse()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .registers 4

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>(I)V

    .line 57
    .local v0, "reversed":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->reverse([B[B)V

    .line 58
    return-object v0
.end method

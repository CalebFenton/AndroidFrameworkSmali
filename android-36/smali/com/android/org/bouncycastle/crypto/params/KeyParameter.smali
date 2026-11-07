.class public Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
.super Ljava/lang/Object;
.source "KeyParameter.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist key:[B


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4

    .line 18
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .registers 5

    .line 26
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>(I)V

    .line 28
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public blacklist getKey()[B
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-object p0
.end method

.method public blacklist getKeyLength()I
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    array-length p0, p0

    return p0
.end method

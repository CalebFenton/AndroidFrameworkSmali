.class public Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
.super Ljava/lang/Object;
.source "ParametersWithIV.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist iv:[B

.field private blacklist parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V
    .registers 5

    .line 19
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, p4, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    .line 29
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    const/4 p0, 0x0

    .line 31
    invoke-static {p2, p3, v0, p0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public blacklist getIV()[B
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    return-object p0
.end method

.method public blacklist getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object p0
.end method

.class public Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
.super Ljava/lang/Object;
.source "AEADParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist associatedText:[B

.field private blacklist key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private blacklist macSize:I

.field private blacklist nonce:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B)V
    .registers 5

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 41
    invoke-static {p3}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    .line 42
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    .line 43
    invoke-static {p4}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    return-void
.end method


# virtual methods
.method public blacklist getAssociatedText()[B
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    return-object p0
.end method

.method public blacklist getMacSize()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    return p0
.end method

.method public blacklist getNonce()[B
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

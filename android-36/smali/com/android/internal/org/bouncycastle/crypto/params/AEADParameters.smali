.class public Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
.super Ljava/lang/Object;
.source "AEADParameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist associatedText:[B

.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field private blacklist macSize:I

.field private blacklist nonce:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B)V
    .registers 5
    .param p1, "key"    # Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .param p2, "macSize"    # I
    .param p3, "nonce"    # [B

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V
    .registers 6
    .param p1, "key"    # Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .param p2, "macSize"    # I
    .param p3, "nonce"    # [B
    .param p4, "associatedText"    # [B

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 41
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    .line 42
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    .line 43
    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getAssociatedText()[B
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public blacklist getMacSize()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    return v0
.end method

.method public blacklist getNonce()[B
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

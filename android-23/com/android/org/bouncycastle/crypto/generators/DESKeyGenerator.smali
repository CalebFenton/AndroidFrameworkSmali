.class public Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;
.super Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;
.source "DESKeyGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 2

    #@0
    .prologue
    .line 36
    const/16 v1, 0x8

    #@2
    new-array v0, v1, [B

    #@4
    .line 40
    .local v0, "newKey":[B
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;->random:Ljava/security/SecureRandom;

    #@6
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@9
    .line 42
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    #@c
    .line 44
    const/4 v1, 0x0

    #@d
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 46
    return-object v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 3
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    .line 20
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@5
    .line 22
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    #@7
    if-eqz v0, :cond_0

    #@9
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    #@b
    const/4 v1, 0x7

    #@c
    if-ne v0, v1, :cond_2

    #@e
    .line 24
    :cond_0
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    #@10
    .line 18
    :cond_1
    return-void

    #@11
    .line 26
    :cond_2
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    #@13
    if-eq v0, v2, :cond_1

    #@15
    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "DES key must be 64 bits long."

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method

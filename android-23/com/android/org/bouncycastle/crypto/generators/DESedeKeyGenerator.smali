.class public Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;
.super Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;
.source "DESedeKeyGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 3

    #@0
    .prologue
    .line 44
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    #@2
    new-array v0, v1, [B

    #@4
    .line 48
    .local v0, "newKey":[B
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    #@6
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@9
    .line 50
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    #@c
    .line 52
    array-length v1, v0

    #@d
    const/4 v2, 0x0

    #@e
    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 54
    return-object v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 4
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@0
    .prologue
    const/16 v3, 0x18

    #@2
    const/16 v2, 0x10

    #@4
    .line 21
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    #@a
    .line 22
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    #@d
    move-result v0

    #@e
    add-int/lit8 v0, v0, 0x7

    #@10
    div-int/lit8 v0, v0, 0x8

    #@12
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    #@14
    .line 24
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    #@16
    if-eqz v0, :cond_0

    #@18
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    #@1a
    const/16 v1, 0x15

    #@1c
    if-ne v0, v1, :cond_2

    #@1e
    .line 26
    :cond_0
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    #@20
    .line 19
    :cond_1
    :goto_0
    return-void

    #@21
    .line 28
    :cond_2
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    #@23
    const/16 v1, 0xe

    #@25
    if-ne v0, v1, :cond_3

    #@27
    .line 30
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    #@29
    goto :goto_0

    #@2a
    .line 32
    :cond_3
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    #@2c
    if-eq v0, v3, :cond_1

    #@2e
    .line 33
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    #@30
    if-eq v0, v2, :cond_1

    #@32
    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v1, "DESede key must be 192 or 128 bits long."

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
.end method

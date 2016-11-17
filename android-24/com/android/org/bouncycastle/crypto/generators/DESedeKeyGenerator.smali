.class public Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;
.super Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;
.source "DESedeKeyGenerator.java"


# static fields
.field private static final MAX_IT:I = 0x14


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
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 46
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    #@3
    new-array v1, v2, [B

    #@5
    .line 47
    .local v1, "newKey":[B
    const/4 v0, 0x0

    #@6
    .line 51
    .local v0, "count":I
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    #@8
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@b
    .line 53
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    #@e
    .line 55
    add-int/lit8 v0, v0, 0x1

    #@10
    const/16 v2, 0x14

    #@12
    if-ge v0, v2, :cond_1

    #@14
    array-length v2, v1

    #@15
    invoke-static {v1, v3, v2}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 57
    :cond_1
    array-length v2, v1

    #@22
    invoke-static {v1, v3, v2}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_2

    #@28
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_2

    #@2e
    .line 62
    return-object v1

    #@2f
    .line 59
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    #@31
    const-string/jumbo v3, "Unable to generate DES-EDE key"

    #@34
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2
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
    .line 23
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    #@a
    .line 24
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    #@d
    move-result v0

    #@e
    add-int/lit8 v0, v0, 0x7

    #@10
    div-int/lit8 v0, v0, 0x8

    #@12
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    #@14
    .line 26
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    #@16
    if-eqz v0, :cond_0

    #@18
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    #@1a
    const/16 v1, 0x15

    #@1c
    if-ne v0, v1, :cond_2

    #@1e
    .line 28
    :cond_0
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    #@20
    .line 21
    :cond_1
    :goto_0
    return-void

    #@21
    .line 30
    :cond_2
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    #@23
    const/16 v1, 0xe

    #@25
    if-ne v0, v1, :cond_3

    #@27
    .line 32
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    #@29
    goto :goto_0

    #@2a
    .line 34
    :cond_3
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    #@2c
    if-eq v0, v3, :cond_1

    #@2e
    .line 35
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    #@30
    if-eq v0, v2, :cond_1

    #@32
    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v1, "DESede key must be 192 or 128 bits long."

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
.end method

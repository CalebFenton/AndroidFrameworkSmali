.class public Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;
.super Ljava/lang/Object;
.source "CipherKeyGenerator.java"


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 2

    #@0
    .prologue
    .line 32
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    #@2
    new-array v0, v1, [B

    #@4
    .line 34
    .local v0, "key":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    #@6
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@9
    .line 36
    return-object v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@0
    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    #@6
    .line 22
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    #@9
    move-result v0

    #@a
    add-int/lit8 v0, v0, 0x7

    #@c
    div-int/lit8 v0, v0, 0x8

    #@e
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    #@10
    .line 19
    return-void
.end method

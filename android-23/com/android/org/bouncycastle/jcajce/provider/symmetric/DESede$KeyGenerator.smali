.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator"
.end annotation


# instance fields
.field private keySizeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 163
    const-string/jumbo v0, "DESede"

    #@3
    new-instance v1, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;

    #@5
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    #@8
    const/16 v2, 0xc0

    #@a
    invoke-direct {p0, v0, v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    #@d
    .line 159
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    #@10
    .line 161
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 176
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->uninitialised:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 178
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@7
    new-instance v2, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@9
    new-instance v3, Ljava/security/SecureRandom;

    #@b
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    #@e
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->defaultKeySize:I

    #@10
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    #@13
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@16
    .line 179
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->uninitialised:Z

    #@18
    .line 186
    :cond_0
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    #@1a
    if-nez v1, :cond_1

    #@1c
    .line 188
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@1e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    #@21
    move-result-object v0

    #@22
    .line 190
    .local v0, "k":[B
    const/16 v1, 0x10

    #@24
    const/16 v2, 0x8

    #@26
    invoke-static {v0, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@29
    .line 192
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    #@2b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->algName:Ljava/lang/String;

    #@2d
    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@30
    return-object v1

    #@31
    .line 196
    .end local v0    # "k":[B
    :cond_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    #@33
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@35
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    #@38
    move-result-object v2

    #@39
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->algName:Ljava/lang/String;

    #@3b
    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@3e
    return-object v1
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engineInit(ILjava/security/SecureRandom;)V

    #@3
    .line 171
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->keySizeSet:Z

    #@6
    .line 168
    return-void
.end method

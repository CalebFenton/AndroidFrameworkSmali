.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 213
    const-string/jumbo v0, "DES"

    #@3
    new-instance v1, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;

    #@5
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    #@8
    const/16 v2, 0x40

    #@a
    invoke-direct {p0, v0, v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    #@d
    .line 211
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    #@0
    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->uninitialised:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 227
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@6
    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@8
    new-instance v2, Ljava/security/SecureRandom;

    #@a
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    #@d
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->defaultKeySize:I

    #@f
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    #@12
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@15
    .line 228
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->uninitialised:Z

    #@18
    .line 231
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    #@1a
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@1c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;->algName:Ljava/lang/String;

    #@22
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@25
    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engineInit(ILjava/security/SecureRandom;)V

    #@3
    .line 218
    return-void
.end method

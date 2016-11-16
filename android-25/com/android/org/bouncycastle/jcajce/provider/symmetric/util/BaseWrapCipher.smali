.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.super Ljavax/crypto/CipherSpi;
.source "BaseWrapCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field protected engineParams:Ljava/security/AlgorithmParameters;

.field private final helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private iv:[B

.field private ivSize:I

.field protected pbeHash:I

.field protected pbeIvSize:I

.field protected pbeKeySize:I

.field protected pbeType:I

.field protected wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;


# direct methods
.method protected constructor <init>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    .line 74
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    #@6
    .line 51
    new-array v0, v4, [Ljava/lang/Class;

    #@8
    .line 52
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 53
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@f
    aput-object v1, v0, v3

    #@11
    .line 50
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    #@13
    .line 60
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeType:I

    #@15
    .line 61
    iput v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeHash:I

    #@17
    .line 65
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@19
    .line 67
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@1b
    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@1d
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@22
    .line 74
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Wrapper;)V
    .locals 1
    .param p1, "wrapEngine"    # Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lcom/android/org/bouncycastle/crypto/Wrapper;I)V

    #@4
    .line 79
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Wrapper;I)V
    .locals 6
    .param p1, "wrapEngine"    # Lcom/android/org/bouncycastle/crypto/Wrapper;
    .param p2, "ivSize"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    .line 84
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    #@6
    .line 51
    new-array v0, v4, [Ljava/lang/Class;

    #@8
    .line 52
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 53
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@f
    aput-object v1, v0, v3

    #@11
    .line 50
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    #@13
    .line 60
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeType:I

    #@15
    .line 61
    iput v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeHash:I

    #@17
    .line 65
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@19
    .line 67
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@1b
    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@1d
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@22
    .line 88
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@24
    .line 89
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    #@26
    .line 86
    return-void
.end method


# virtual methods
.method protected final createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected engineDoFinal([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 292
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 94
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;

    #@0
    .prologue
    .line 105
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 111
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    const/4 v2, 0x0

    #@1
    .line 213
    .local v2, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_1

    #@3
    .line 215
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    #@6
    array-length v3, v3

    #@7
    if-eq v1, v3, :cond_0

    #@9
    .line 219
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    #@b
    aget-object v3, v3, v1

    #@d
    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    .line 228
    .end local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    if-nez v2, :cond_1

    #@13
    .line 230
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "can\'t handle parameter "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3

    #@31
    .line 223
    .restart local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_0
    move-exception v0

    #@32
    .line 215
    .local v0, "e":Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@37
    .line 235
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@3a
    .line 209
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    const/4 v1, 0x0

    #@1
    :try_start_0
    nop

    #@2
    nop

    #@3
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 242
    return-void

    #@7
    .line 249
    :catch_0
    move-exception v0

    #@8
    .line 250
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 148
    instance-of v4, p2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@3
    if-eqz v4, :cond_3

    #@5
    move-object v1, p2

    #@6
    .line 150
    nop

    #@7
    nop

    #@8
    .line 152
    .local v1, "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    instance-of v4, p3, Ljavax/crypto/spec/PBEParameterSpec;

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 154
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@e
    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Wrapper;->getAlgorithmName()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-static {v1, p3, v4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@15
    move-result-object v2

    #@16
    .line 170
    .end local v1    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .local v2, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    instance-of v4, p3, Ljavax/crypto/spec/IvParameterSpec;

    #@18
    if-eqz v4, :cond_0

    #@1a
    move-object v0, p3

    #@1b
    .line 172
    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    #@1d
    .line 173
    .local v0, "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@1f
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@22
    move-result-object v4

    #@23
    invoke-direct {v3, v2, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@26
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v3, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v2, v3

    #@27
    .line 176
    .end local v0    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    instance-of v4, v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@29
    if-eqz v4, :cond_4

    #@2b
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    #@2d
    if-eqz v4, :cond_4

    #@2f
    .line 178
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    #@31
    new-array v4, v4, [B

    #@33
    iput-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    #@35
    .line 179
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    #@37
    invoke-virtual {p4, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@3a
    .line 180
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@3c
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    #@3e
    invoke-direct {v3, v2, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@41
    .line 183
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_1
    if-eqz p4, :cond_5

    #@43
    .line 185
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@45
    invoke-direct {v2, v3, p4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    #@48
    .line 188
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_2
    packed-switch p1, :pswitch_data_0

    #@4b
    .line 200
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4d
    const-string/jumbo v5, "eeek!"

    #@50
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@53
    .line 144
    :goto_3
    return-void

    #@54
    .line 156
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v1    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@57
    move-result-object v4

    #@58
    if-eqz v4, :cond_2

    #@5a
    .line 158
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@5d
    move-result-object v2

    #@5e
    .restart local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@5f
    .line 162
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    #@61
    const-string/jumbo v5, "PBE requires PBE parameters to be set."

    #@64
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@67
    throw v4

    #@68
    .line 167
    .end local v1    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@6a
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    #@6d
    move-result-object v4

    #@6e
    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@71
    .restart local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@72
    :cond_4
    move-object v3, v2

    #@73
    .line 177
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1

    #@74
    .line 191
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :pswitch_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@76
    const/4 v5, 0x1

    #@77
    invoke-interface {v4, v5, v2}, Lcom/android/org/bouncycastle/crypto/Wrapper;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@7a
    goto :goto_3

    #@7b
    .line 194
    :pswitch_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@7d
    invoke-interface {v4, v5, v2}, Lcom/android/org/bouncycastle/crypto/Wrapper;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@80
    goto :goto_3

    #@81
    .line 198
    :pswitch_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@83
    const-string/jumbo v5, "engine only valid for wrapping"

    #@86
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@89
    throw v4

    #@8a
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_5
    move-object v2, v3

    #@8b
    .end local v3    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_2

    #@8c
    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "can\'t support mode "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Padding "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " unknown."

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 14
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 332
    :try_start_0
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@2
    if-nez v11, :cond_0

    #@4
    .line 334
    array-length v11, p1

    #@5
    const/4 v12, 0x0

    #@6
    invoke-virtual {p0, p1, v12, v11}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v7

    #@a
    .line 354
    .local v7, "encoded":[B
    :goto_0
    const/4 v11, 0x3

    #@b
    move/from16 v0, p3

    #@d
    if-ne v0, v11, :cond_1

    #@f
    .line 356
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    #@11
    move-object/from16 v0, p2

    #@13
    invoke-direct {v11, v7, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@16
    return-object v11

    #@17
    .line 338
    .end local v7    # "encoded":[B
    :cond_0
    :try_start_1
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@19
    array-length v12, p1

    #@1a
    const/4 v13, 0x0

    #@1b
    invoke-interface {v11, p1, v13, v12}, Lcom/android/org/bouncycastle/crypto/Wrapper;->unwrap([BII)[B
    :try_end_1
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0

    #@1e
    move-result-object v7

    #@1f
    .restart local v7    # "encoded":[B
    goto :goto_0

    #@20
    .line 350
    .end local v7    # "encoded":[B
    :catch_0
    move-exception v6

    #@21
    .line 351
    .local v6, "e2":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v11, Ljava/security/InvalidKeyException;

    #@23
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@26
    move-result-object v12

    #@27
    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v11

    #@2b
    .line 346
    .end local v6    # "e2":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v4

    #@2c
    .line 347
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    new-instance v11, Ljava/security/InvalidKeyException;

    #@2e
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@31
    move-result-object v12

    #@32
    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@35
    throw v11

    #@36
    .line 342
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v1

    #@37
    .line 343
    .local v1, "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v11, Ljava/security/InvalidKeyException;

    #@39
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@3c
    move-result-object v12

    #@3d
    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@40
    throw v11

    #@41
    .line 358
    .end local v1    # "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    .restart local v7    # "encoded":[B
    :cond_1
    const-string/jumbo v11, ""

    #@44
    move-object/from16 v0, p2

    #@46
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v11

    #@4a
    if-eqz v11, :cond_3

    #@4c
    const/4 v11, 0x2

    #@4d
    move/from16 v0, p3

    #@4f
    if-ne v0, v11, :cond_3

    #@51
    .line 366
    :try_start_2
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@54
    move-result-object v8

    #@55
    .line 368
    .local v8, "in":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v8}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    #@58
    move-result-object v10

    #@59
    .line 370
    .local v10, "privKey":Ljava/security/PrivateKey;
    if-eqz v10, :cond_2

    #@5b
    .line 372
    return-object v10

    #@5c
    .line 376
    :cond_2
    new-instance v11, Ljava/security/InvalidKeyException;

    #@5e
    new-instance v12, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v13, "algorithm "

    #@66
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v12

    #@6a
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@6d
    move-result-object v13

    #@6e
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@71
    move-result-object v13

    #@72
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v12

    #@76
    const-string/jumbo v13, " not supported"

    #@79
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v12

    #@7d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v12

    #@81
    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@84
    throw v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    #@85
    .line 380
    .end local v8    # "in":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v10    # "privKey":Ljava/security/PrivateKey;
    :catch_3
    move-exception v2

    #@86
    .line 381
    .local v2, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/security/InvalidKeyException;

    #@88
    const-string/jumbo v12, "Invalid key encoding."

    #@8b
    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v11

    #@8f
    .line 388
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@91
    move-object/from16 v0, p2

    #@93
    invoke-interface {v11, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@96
    move-result-object v9

    #@97
    .line 390
    .local v9, "kf":Ljava/security/KeyFactory;
    const/4 v11, 0x1

    #@98
    move/from16 v0, p3

    #@9a
    if-ne v0, v11, :cond_4

    #@9c
    .line 392
    new-instance v11, Ljava/security/spec/X509EncodedKeySpec;

    #@9e
    invoke-direct {v11, v7}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@a1
    invoke-virtual {v9, v11}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@a4
    move-result-object v11

    #@a5
    return-object v11

    #@a6
    .line 394
    :cond_4
    const/4 v11, 0x2

    #@a7
    move/from16 v0, p3

    #@a9
    if-ne v0, v11, :cond_5

    #@ab
    .line 396
    new-instance v11, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@ad
    invoke-direct {v11, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@b0
    invoke-virtual {v9, v11}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    #@b3
    move-result-object v11

    #@b4
    return-object v11

    #@b5
    .line 404
    .end local v9    # "kf":Ljava/security/KeyFactory;
    :catch_4
    move-exception v5

    #@b6
    .line 405
    .local v5, "e2":Ljava/security/spec/InvalidKeySpecException;
    new-instance v11, Ljava/security/InvalidKeyException;

    #@b8
    new-instance v12, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v13, "Unknown key type "

    #@c0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v12

    #@c4
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@c7
    move-result-object v13

    #@c8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v12

    #@cc
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v12

    #@d0
    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@d3
    throw v11

    #@d4
    .line 400
    .end local v5    # "e2":Ljava/security/spec/InvalidKeySpecException;
    :catch_5
    move-exception v3

    #@d5
    .line 401
    .local v3, "e":Ljava/security/NoSuchProviderException;
    new-instance v11, Ljava/security/InvalidKeyException;

    #@d7
    new-instance v12, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v13, "Unknown key type "

    #@df
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v12

    #@e3
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@e6
    move-result-object v13

    #@e7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v12

    #@eb
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v12

    #@ef
    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@f2
    throw v11

    #@f3
    .line 408
    .end local v3    # "e":Ljava/security/NoSuchProviderException;
    .restart local v9    # "kf":Ljava/security/KeyFactory;
    :cond_5
    new-instance v11, Ljava/security/InvalidKeyException;

    #@f5
    new-instance v12, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    const-string/jumbo v13, "Unknown key type "

    #@fd
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v12

    #@101
    move/from16 v0, p3

    #@103
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@106
    move-result-object v12

    #@107
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v12

    #@10b
    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@10e
    throw v11
.end method

.method protected engineUpdate([BII[BI)I
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "not supported for wrapping"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "not supported for wrapping"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@3
    move-result-object v1

    #@4
    .line 301
    .local v1, "encoded":[B
    if-nez v1, :cond_0

    #@6
    .line 303
    new-instance v2, Ljava/security/InvalidKeyException;

    #@8
    const-string/jumbo v3, "Cannot wrap key, null encoding."

    #@b
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 308
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@11
    if-nez v2, :cond_1

    #@13
    .line 310
    array-length v2, v1

    #@14
    const/4 v3, 0x0

    #@15
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 314
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    #@1c
    array-length v3, v1

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v2, v1, v4, v3}, Lcom/android/org/bouncycastle/crypto/Wrapper;->wrap([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 318
    :catch_0
    move-exception v0

    #@24
    .line 319
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    #@26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2
.end method

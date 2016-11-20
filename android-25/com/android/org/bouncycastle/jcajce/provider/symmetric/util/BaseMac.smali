.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;
.source "BaseMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private keySize:I

.field private macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

.field private pbeHash:I

.field private scheme:I


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;)V
    .locals 1
    .param p1, "macEngine"    # Lcom/android/org/bouncycastle/crypto/Mac;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    #@3
    .line 34
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    #@6
    .line 35
    const/4 v0, 0x1

    #@7
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    #@9
    .line 36
    const/16 v0, 0xa0

    #@b
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    #@d
    .line 41
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@f
    .line 39
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;III)V
    .locals 1
    .param p1, "macEngine"    # Lcom/android/org/bouncycastle/crypto/Mac;
    .param p2, "scheme"    # I
    .param p3, "pbeHash"    # I
    .param p4, "keySize"    # I

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    #@3
    .line 34
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    #@6
    .line 35
    const/4 v0, 0x1

    #@7
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    #@9
    .line 36
    const/16 v0, 0xa0

    #@b
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    #@d
    .line 50
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@f
    .line 51
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    #@11
    .line 52
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    #@13
    .line 53
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    #@15
    .line 48
    return-void
.end method

.method private static copyMap(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 4
    .param p0, "paramsMap"    # Ljava/util/Map;

    #@0
    .prologue
    .line 189
    new-instance v2, Ljava/util/Hashtable;

    #@2
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 191
    .local v2, "newTable":Ljava/util/Hashtable;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .line 192
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .line 195
    .local v0, "key":Ljava/lang/Object;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    goto :goto_0

    #@1f
    .line 198
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 3

    #@0
    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    #@3
    move-result v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 182
    .local v0, "out":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    #@c
    .line 184
    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 10
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    if-nez p1, :cond_0

    #@2
    .line 65
    new-instance v8, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v9, "key is null"

    #@7
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v8

    #@b
    .line 68
    :cond_0
    instance-of v8, p1, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    #@d
    if-eqz v8, :cond_3

    #@f
    .line 75
    :try_start_0
    move-object v0, p1

    #@10
    nop

    #@11
    nop

    #@12
    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 84
    .local v4, "k":Ljavax/crypto/SecretKey;
    :try_start_1
    move-object v0, p2

    #@14
    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    #@16
    move-object v7, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@17
    .line 91
    .local v7, "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    instance-of v8, v4, Ljavax/crypto/interfaces/PBEKey;

    #@19
    if-eqz v8, :cond_1

    #@1b
    if-nez v7, :cond_1

    #@1d
    .line 93
    new-instance v7, Ljavax/crypto/spec/PBEParameterSpec;

    #@1f
    .end local v7    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    move-object v8, v4

    #@20
    check-cast v8, Ljavax/crypto/interfaces/PBEKey;

    #@22
    invoke-interface {v8}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    #@25
    move-result-object v9

    #@26
    move-object v8, v4

    #@27
    check-cast v8, Ljavax/crypto/interfaces/PBEKey;

    #@29
    invoke-interface {v8}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    #@2c
    move-result v8

    #@2d
    invoke-direct {v7, v9, v8}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@30
    .line 96
    .restart local v7    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_1
    const/4 v1, 0x1

    #@31
    .line 97
    .local v1, "digest":I
    const/16 v5, 0xa0

    #@33
    .line 106
    .local v5, "keySize":I
    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@35
    invoke-interface {v8}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    #@38
    move-result-object v8

    #@39
    const-string/jumbo v9, "SHA256"

    #@3c
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_2

    #@42
    .line 109
    const/4 v1, 0x4

    #@43
    .line 110
    const/16 v5, 0x100

    #@45
    .line 113
    :cond_2
    const/4 v8, 0x2

    #@46
    invoke-static {v4, v8, v1, v5, v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@49
    move-result-object v6

    #@4a
    .line 151
    .end local v1    # "digest":I
    .end local v4    # "k":Ljavax/crypto/SecretKey;
    .end local v5    # "keySize":I
    .end local v7    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local v6, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@4c
    invoke-interface {v8, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@4f
    .line 59
    return-void

    #@50
    .line 78
    .end local v6    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_0
    move-exception v2

    #@51
    .line 79
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@53
    const-string/jumbo v9, "PKCS12 requires a SecretKey/PBEKey"

    #@56
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@59
    throw v8

    #@5a
    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "k":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v2

    #@5b
    .line 88
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/security/InvalidAlgorithmParameterException;

    #@5d
    const-string/jumbo v9, "PKCS12 requires a PBEParameterSpec"

    #@60
    invoke-direct {v8, v9}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@63
    throw v8

    #@64
    .line 115
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "k":Ljavax/crypto/SecretKey;
    :cond_3
    instance-of v8, p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@66
    if-eqz v8, :cond_6

    #@68
    move-object v3, p1

    #@69
    .line 117
    nop

    #@6a
    nop

    #@6b
    .line 119
    .local v3, "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@6e
    move-result-object v8

    #@6f
    if-eqz v8, :cond_4

    #@71
    .line 121
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@74
    move-result-object v6

    #@75
    .restart local v6    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@76
    .line 123
    .end local v6    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_4
    instance-of v8, p2, Ljavax/crypto/spec/PBEParameterSpec;

    #@78
    if-eqz v8, :cond_5

    #@7a
    .line 125
    invoke-static {v3, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@7d
    move-result-object v6

    #@7e
    .restart local v6    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@7f
    .line 129
    .end local v6    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_5
    new-instance v8, Ljava/security/InvalidAlgorithmParameterException;

    #@81
    const-string/jumbo v9, "PBE requires PBE parameters to be set."

    #@84
    invoke-direct {v8, v9}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@87
    throw v8

    #@88
    .line 132
    .end local v3    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_6
    instance-of v8, p2, Ljavax/crypto/spec/IvParameterSpec;

    #@8a
    if-eqz v8, :cond_7

    #@8c
    .line 134
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@8e
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@90
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@93
    move-result-object v9

    #@94
    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@97
    nop

    #@98
    nop

    #@99
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@9c
    move-result-object v9

    #@9d
    invoke-direct {v6, v8, v9}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@a0
    .restart local v6    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@a1
    .line 142
    .end local v6    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_7
    if-nez p2, :cond_8

    #@a3
    .line 144
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@a5
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@a8
    move-result-object v8

    #@a9
    invoke-direct {v6, v8}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@ac
    .restart local v6    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@ad
    .line 148
    .end local v6    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_8
    new-instance v8, Ljava/security/InvalidAlgorithmParameterException;

    #@af
    const-string/jumbo v9, "unknown parameter type."

    #@b2
    invoke-direct {v8, v9}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@b5
    throw v8
.end method

.method protected engineReset()V
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->reset()V

    #@5
    .line 159
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "input"    # B

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@5
    .line 165
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@5
    .line 173
    return-void
.end method

.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;
.source "BaseMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private keySize:I

.field private macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

.field private pbeHash:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;)V
    .locals 1
    .param p1, "macEngine"    # Lcom/android/org/bouncycastle/crypto/Mac;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    #@3
    .line 29
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeType:I

    #@6
    .line 30
    const/4 v0, 0x1

    #@7
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    #@9
    .line 31
    const/16 v0, 0xa0

    #@b
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    #@d
    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@f
    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;III)V
    .locals 1
    .param p1, "macEngine"    # Lcom/android/org/bouncycastle/crypto/Mac;
    .param p2, "pbeType"    # I
    .param p3, "pbeHash"    # I
    .param p4, "keySize"    # I

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    #@3
    .line 29
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeType:I

    #@6
    .line 30
    const/4 v0, 0x1

    #@7
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    #@9
    .line 31
    const/16 v0, 0xa0

    #@b
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    #@d
    .line 45
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@f
    .line 46
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeType:I

    #@11
    .line 47
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    #@13
    .line 48
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    #@15
    .line 43
    return-void
.end method

.method private static copyMap(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 4
    .param p0, "paramsMap"    # Ljava/util/Map;

    #@0
    .prologue
    .line 137
    new-instance v2, Ljava/util/Hashtable;

    #@2
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 139
    .local v2, "newTable":Ljava/util/Hashtable;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .line 140
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .line 143
    .local v0, "key":Ljava/lang/Object;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    goto :goto_0

    #@1f
    .line 146
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 3

    #@0
    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    #@3
    move-result v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 130
    .local v0, "out":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    #@c
    .line 132
    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
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
    .line 58
    if-nez p1, :cond_0

    #@2
    .line 60
    new-instance v2, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v3, "key is null"

    #@7
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 63
    :cond_0
    instance-of v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@d
    if-eqz v2, :cond_3

    #@f
    move-object v0, p1

    #@10
    .line 65
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@12
    .line 67
    .local v0, "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@15
    move-result-object v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 69
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@1b
    move-result-object v1

    #@1c
    .line 99
    .end local v0    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local v1, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@1e
    invoke-interface {v2, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@21
    .line 54
    return-void

    #@22
    .line 71
    .end local v1    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v0    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    instance-of v2, p2, Ljavax/crypto/spec/PBEParameterSpec;

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 73
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@29
    move-result-object v1

    #@2a
    .restart local v1    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@2b
    .line 77
    .end local v1    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@2d
    const-string/jumbo v3, "PBE requires PBE parameters to be set."

    #@30
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 80
    .end local v0    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_3
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    #@36
    if-eqz v2, :cond_4

    #@38
    .line 82
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@3a
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@3c
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@3f
    move-result-object v3

    #@40
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@43
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    #@45
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@48
    move-result-object v3

    #@49
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@4c
    .restart local v1    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@4d
    .line 90
    .end local v1    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4
    if-nez p2, :cond_5

    #@4f
    .line 92
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@51
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@54
    move-result-object v2

    #@55
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@58
    .restart local v1    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@59
    .line 96
    .end local v1    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_5
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@5b
    const-string/jumbo v3, "unknown parameter type."

    #@5e
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@61
    throw v2
.end method

.method protected engineReset()V
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->reset()V

    #@5
    .line 107
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "input"    # B

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@5
    .line 113
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@5
    .line 121
    return-void
.end method

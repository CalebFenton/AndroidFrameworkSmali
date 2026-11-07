.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;
.source "BaseMac.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private blacklist keySize:I

.field private blacklist macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

.field private blacklist pbeHash:I

.field private blacklist scheme:I


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Mac;)V
    .registers 3
    .param p1, "macEngine"    # Lcom/android/internal/org/bouncycastle/crypto/Mac;

    .line 47
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 43
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 48
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    .line 49
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Mac;III)V
    .registers 6
    .param p1, "macEngine"    # Lcom/android/internal/org/bouncycastle/crypto/Mac;
    .param p2, "scheme"    # I
    .param p3, "pbeHash"    # I
    .param p4, "keySize"    # I

    .line 56
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 43
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 57
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    .line 58
    iput p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 59
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 60
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 61
    return-void
.end method

.method private static blacklist copyMap(Ljava/util/Map;)Ljava/util/Hashtable;
    .registers 5
    .param p0, "paramsMap"    # Ljava/util/Map;

    .line 270
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 272
    .local v0, "newTable":Ljava/util/Hashtable;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 273
    .local v1, "keys":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 276
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v2    # "key":Ljava/lang/Object;
    goto :goto_d

    .line 279
    :cond_1f
    return-object v0
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal()[B
    .registers 4

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    move-result v0

    new-array v0, v0, [B

    .line 263
    .local v0, "out":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 265
    return-object v0
.end method

.method protected whitelist test-api engineGetMacLength()I
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 10
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 70
    if-eqz p1, :cond_1b3

    .line 75
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;

    if-eqz v0, :cond_c0

    .line 82
    :try_start_6
    move-object v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b7

    .line 87
    .local v0, "k":Ljavax/crypto/SecretKey;
    nop

    .line 91
    :try_start_a
    move-object v1, p2

    check-cast v1, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_ae

    .line 96
    .local v1, "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    nop

    .line 98
    instance-of v2, v0, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v2, :cond_28

    if-nez v1, :cond_28

    .line 100
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v3, v0

    check-cast v3, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v3}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v4}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    move-object v1, v2

    .line 103
    :cond_28
    const/4 v2, 0x1

    .line 104
    .local v2, "digest":I
    const/16 v3, 0xa0

    .line 114
    .local v3, "keySize":I
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    instance-of v4, v4, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    if-eqz v4, :cond_a8

    .line 116
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SHA-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a8

    .line 118
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SHA-224"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 120
    const/4 v2, 0x7

    .line 121
    const/16 v3, 0xe0

    goto :goto_a8

    .line 123
    :cond_51
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SHA-256"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 125
    const/4 v2, 0x4

    .line 126
    const/16 v3, 0x100

    goto :goto_a8

    .line 128
    :cond_63
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SHA-384"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 130
    const/16 v2, 0x8

    .line 131
    const/16 v3, 0x180

    goto :goto_a8

    .line 133
    :cond_76
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SHA-512"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 135
    const/16 v2, 0x9

    .line 136
    const/16 v3, 0x200

    goto :goto_a8

    .line 147
    :cond_89
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no PKCS12 mapping for HMAC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_a8
    :goto_a8
    const/4 v4, 0x2

    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 153
    .end local v1    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v2    # "digest":I
    .end local v3    # "keySize":I
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_f2

    .line 93
    .local v0, "k":Ljavax/crypto/SecretKey;
    :catch_ae
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "PKCS12 requires a PBEParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    .end local v0    # "k":Ljavax/crypto/SecretKey;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_b7
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_e5

    .line 156
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 158
    .local v0, "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    if-eqz v1, :cond_d3

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v0, v1

    .local v1, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_dc

    .line 162
    .end local v1    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_d3
    instance-of v1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v1, :cond_dd

    .line 164
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v0, v1

    .line 170
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_dc
    goto :goto_f2

    .line 168
    .local v0, "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_dd
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "PBE requires PBE parameters to be set."

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .end local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_e5
    instance-of v0, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_192

    .line 177
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 181
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_f2
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_100

    .line 183
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .local v1, "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_103

    .line 187
    .end local v1    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_100
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 190
    .restart local v1    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :goto_103
    instance-of v2, p2, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v2, :cond_11d

    .line 192
    move-object v2, p2

    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    .line 194
    .local v2, "aeadSpec":Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getAssociatedData()[B

    move-result-object v6

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    move-object v0, v3

    .line 195
    .end local v2    # "aeadSpec":Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;
    goto :goto_14b

    .line 196
    :cond_11d
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_12f

    .line 198
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v3, p2

    check-cast v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, v2

    goto :goto_14b

    .line 212
    :cond_12f
    if-nez p2, :cond_13c

    .line 214
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v0, v2

    goto :goto_14b

    .line 216
    :cond_13c
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v2

    if-eqz v2, :cond_147

    .line 218
    invoke-static {v1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractAeadParameters(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    move-result-object v0

    goto :goto_14b

    .line 220
    :cond_147
    instance-of v2, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_170

    .line 227
    :goto_14b
    :try_start_14b
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_150} :catch_152

    .line 232
    nop

    .line 233
    return-void

    .line 229
    :catch_152
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot initialize MAC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_170
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown parameter type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .end local v1    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_192
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inappropriate parameter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1b3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineReset()V
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->reset()V

    .line 243
    return-void
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 3
    .param p1, "input"    # B

    .line 248
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 249
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 256
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 257
    return-void
.end method

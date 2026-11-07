.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;
.source "BaseMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private blacklist keySize:I

.field private blacklist macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

.field private blacklist pbeHash:I

.field private blacklist scheme:I


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Mac;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x2

    .line 41
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    const/16 v0, 0xa0

    .line 43
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 48
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal()[B
    .registers 3

    .line 261
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    move-result v0

    new-array v0, v0, [B

    .line 263
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-object v0
.end method

.method protected whitelist test-api engineGetMacLength()I
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p0

    return p0
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 8

    if-eqz p1, :cond_180

    .line 75
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    if-eqz v0, :cond_b4

    .line 82
    :try_start_6
    move-object v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_ac

    .line 91
    :try_start_9
    move-object v1, p2

    check-cast v1, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_a4

    .line 98
    instance-of v2, v0, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v2, :cond_22

    if-nez v1, :cond_22

    .line 100
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v2, v0

    check-cast v2, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v3

    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v2

    invoke-direct {v1, v3, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 114
    :cond_22
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    instance-of v3, v2, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    if-eqz v3, :cond_9b

    .line 116
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 118
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-224"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x7

    const/16 v3, 0xe0

    goto :goto_9e

    .line 123
    :cond_46
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-256"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    const/4 v2, 0x4

    const/16 v3, 0x100

    goto :goto_9e

    .line 128
    :cond_58
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-384"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const/16 v2, 0x8

    const/16 v3, 0x180

    goto :goto_9e

    .line 133
    :cond_6b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-512"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const/16 v2, 0x9

    const/16 v3, 0x200

    goto :goto_9e

    .line 147
    :cond_7e
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no PKCS12 mapping for HMAC: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9b
    const/4 v2, 0x1

    const/16 v3, 0xa0

    :goto_9e
    const/4 v4, 0x2

    .line 152
    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    goto :goto_e4

    .line 95
    :catch_a4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "PKCS12 requires a PBEParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :catch_ac
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_b4
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_d7

    .line 156
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 158
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    if-eqz v1, :cond_c6

    .line 160
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    goto :goto_e4

    .line 162
    :cond_c6
    instance-of v1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v1, :cond_cf

    .line 164
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    goto :goto_e4

    .line 168
    :cond_cf
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "PBE requires PBE parameters to be set."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :cond_d7
    instance-of v0, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_161

    .line 177
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 181
    :goto_e4
    instance-of v1, v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_f2

    .line 183
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    goto :goto_f5

    .line 187
    :cond_f2
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 196
    :goto_f5
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_105

    .line 198
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    goto :goto_120

    :cond_105
    if-nez p2, :cond_111

    .line 214
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_120

    .line 216
    :cond_111
    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result p1

    if-eqz p1, :cond_11c

    .line 218
    invoke-static {v1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractAeadParameters(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    move-result-object v0

    goto :goto_120

    .line 220
    :cond_11c
    instance-of p1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz p1, :cond_142

    .line 227
    :goto_120
    :try_start_120
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {p0, v0}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_125} :catch_126

    return-void

    :catch_126
    move-exception p0

    .line 231
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot initialize MAC: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_142
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown parameter type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :cond_161
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inappropriate parameter type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_180
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineReset()V
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Mac;->reset()V

    return-void
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 4

    .line 256
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method

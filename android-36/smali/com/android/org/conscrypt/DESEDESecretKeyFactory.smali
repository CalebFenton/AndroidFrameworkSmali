.class public Lcom/android/org/conscrypt/DESEDESecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "DESEDESecretKeyFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 6
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 40
    if-eqz p1, :cond_59

    .line 43
    instance-of v0, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_25

    .line 44
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 46
    .local v0, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_9
    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/crypto/spec/DESedeKeySpec;->isParityAdjusted([BI)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 52
    nop

    .line 53
    return-object v0

    .line 47
    :cond_16
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "SecretKeySpec is not a parity-adjusted DESEDE key"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local v0    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local p0    # "this":Lcom/android/org/conscrypt/DESEDESecretKeyFactory;
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    throw v1
    :try_end_1e
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_1e} :catch_1e

    .line 50
    .restart local v0    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local p0    # "this":Lcom/android/org/conscrypt/DESEDESecretKeyFactory;
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :catch_1e
    move-exception v1

    .line 51
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 54
    .end local v0    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :cond_25
    instance-of v0, p1, Ljavax/crypto/spec/DESedeKeySpec;

    if-eqz v0, :cond_38

    .line 55
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DESedeKeySpec;

    .line 56
    .local v0, "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DESedeKeySpec;->getKey()[B

    move-result-object v2

    const-string v3, "DESEDE"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 58
    .end local v0    # "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    :cond_38
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported KeySpec class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_59
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Null KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 6
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "aClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 66
    if-eqz p1, :cond_63

    .line 69
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    if-ne p2, v0, :cond_35

    .line 71
    :try_start_6
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavax/crypto/spec/DESedeKeySpec;->isParityAdjusted([BI)Z

    move-result v0
    :try_end_f
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_f} :catch_2e

    if-eqz v0, :cond_26

    .line 76
    nop

    .line 77
    instance-of v0, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_1a

    .line 78
    move-object v0, p1

    check-cast v0, Ljava/security/spec/KeySpec;

    return-object v0

    .line 80
    :cond_1a
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    const-string v2, "DESEDE"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 72
    :cond_26
    :try_start_26
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "SecretKey is not a parity-adjusted DESEDE key"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/DESEDESecretKeyFactory;
    .end local p1    # "secretKey":Ljavax/crypto/SecretKey;
    .end local p2    # "aClass":Ljava/lang/Class;
    throw v0
    :try_end_2e
    .catch Ljava/security/InvalidKeyException; {:try_start_26 .. :try_end_2e} :catch_2e

    .line 74
    .restart local p0    # "this":Lcom/android/org/conscrypt/DESEDESecretKeyFactory;
    .restart local p1    # "secretKey":Ljavax/crypto/SecretKey;
    .restart local p2    # "aClass":Ljava/lang/Class;
    :catch_2e
    move-exception v0

    .line 75
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :cond_35
    const-class v0, Ljavax/crypto/spec/DESedeKeySpec;

    if-ne p2, v0, :cond_4a

    .line 84
    :try_start_39
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_42
    .catch Ljava/security/InvalidKeyException; {:try_start_39 .. :try_end_42} :catch_43

    return-object v0

    .line 85
    :catch_43
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 89
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :cond_4a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported KeySpec class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_63
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Null SecretKey"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 95
    if-eqz p1, :cond_10

    .line 98
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 96
    :cond_10
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Null SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

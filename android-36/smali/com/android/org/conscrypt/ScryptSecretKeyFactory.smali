.class public Lcom/android/org/conscrypt/ScryptSecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "ScryptSecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ScryptSecretKeyFactory$ScryptKey;,
        Lcom/android/org/conscrypt/ScryptSecretKeyFactory$NotImplementedException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    return-void
.end method

.method private blacklist getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "spec"    # Ljava/security/spec/KeySpec;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 81
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 11
    .param p1, "inKeySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 42
    instance-of v0, p1, Lcom/android/org/conscrypt/ScryptKeySpec;

    if-eqz v0, :cond_26

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/ScryptKeySpec;

    .line 44
    .local v0, "spec":Lcom/android/org/conscrypt/ScryptKeySpec;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/ScryptKeySpec;->getPassword()[C

    move-result-object v1

    .line 45
    .local v1, "password":[C
    invoke-virtual {v0}, Lcom/android/org/conscrypt/ScryptKeySpec;->getSalt()[B

    move-result-object v2

    .line 46
    .local v2, "salt":[B
    invoke-virtual {v0}, Lcom/android/org/conscrypt/ScryptKeySpec;->getCostParameter()I

    move-result v3

    .line 47
    .local v3, "n":I
    invoke-virtual {v0}, Lcom/android/org/conscrypt/ScryptKeySpec;->getBlockSize()I

    move-result v4

    .line 48
    .local v4, "r":I
    invoke-virtual {v0}, Lcom/android/org/conscrypt/ScryptKeySpec;->getParallelizationParameter()I

    move-result v5

    .line 49
    .local v5, "p":I
    invoke-virtual {v0}, Lcom/android/org/conscrypt/ScryptKeySpec;->getKeyLength()I

    move-result v0

    .line 50
    .local v0, "keyOutputBits":I
    move v6, v4

    move v7, v5

    move-object v4, v2

    move v5, v3

    move-object v2, v1

    move v1, v0

    goto :goto_71

    .line 54
    .end local v0    # "keyOutputBits":I
    .end local v1    # "password":[C
    .end local v2    # "salt":[B
    .end local v3    # "n":I
    .end local v4    # "r":I
    .end local v5    # "p":I
    :cond_26
    :try_start_26
    const-string v0, "getPassword"

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    move-object v1, v0

    .line 55
    .restart local v1    # "password":[C
    const-string v0, "getSalt"

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v2, v0

    .line 56
    .restart local v2    # "salt":[B
    const-string v0, "getCostParameter"

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    .line 57
    .restart local v3    # "n":I
    const-string v0, "getBlockSize"

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    .line 58
    .restart local v4    # "r":I
    const-string v0, "getParallelizationParameter"

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    .line 59
    .restart local v5    # "p":I
    const-string v0, "getKeyLength"

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ScryptSecretKeyFactory;->getValue(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_6b} :catch_9b

    .line 62
    .restart local v0    # "keyOutputBits":I
    move v6, v4

    move v7, v5

    move-object v4, v2

    move v5, v3

    move-object v2, v1

    move v1, v0

    .line 65
    .end local v0    # "keyOutputBits":I
    .end local v3    # "n":I
    .local v1, "keyOutputBits":I
    .local v2, "password":[C
    .local v4, "salt":[B
    .local v5, "n":I
    .local v6, "r":I
    .local v7, "p":I
    :goto_71
    rem-int/lit8 v0, v1, 0x8

    if-nez v0, :cond_93

    .line 70
    :try_start_75
    new-instance v0, Lcom/android/org/conscrypt/ScryptSecretKeyFactory$ScryptKey;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    const-string v8, "UTF-8"

    .line 71
    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    div-int/lit8 v8, v1, 0x8

    .line 70
    invoke-static/range {v3 .. v8}, Lcom/android/org/conscrypt/NativeCrypto;->Scrypt_generate_key([B[BIIII)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/conscrypt/ScryptSecretKeyFactory$ScryptKey;-><init>([B)V
    :try_end_8b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_75 .. :try_end_8b} :catch_8c

    return-object v0

    .line 72
    :catch_8c
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 66
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_93
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Cannot produce fractional-byte outputs"

    invoke-direct {v0, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    .end local v1    # "keyOutputBits":I
    .end local v2    # "password":[C
    .end local v4    # "salt":[B
    .end local v5    # "n":I
    .end local v6    # "r":I
    .end local v7    # "p":I
    :catch_9b
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Not a valid scrypt KeySpec"

    invoke-direct {v1, v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 5
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "aClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 88
    if-nez p1, :cond_a

    .line 89
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Null KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_a
    new-instance v0, Lcom/android/org/conscrypt/ScryptSecretKeyFactory$NotImplementedException;

    invoke-direct {v0}, Lcom/android/org/conscrypt/ScryptSecretKeyFactory$NotImplementedException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .registers 4
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 96
    if-nez p1, :cond_a

    .line 97
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Null SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_a
    new-instance v0, Lcom/android/org/conscrypt/ScryptSecretKeyFactory$NotImplementedException;

    invoke-direct {v0}, Lcom/android/org/conscrypt/ScryptSecretKeyFactory$NotImplementedException;-><init>()V

    throw v0
.end method

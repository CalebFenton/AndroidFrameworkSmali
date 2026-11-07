.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "DES.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 266
    const-string v0, "DES"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 3

    .line 308
    instance-of v0, p1, Ljavax/crypto/spec/DESKeySpec;

    if-eqz v0, :cond_12

    .line 310
    check-cast p1, Ljavax/crypto/spec/DESKeySpec;

    .line 311
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DESKeySpec;->getKey()[B

    move-result-object p1

    const-string v0, "DES"

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0

    .line 314
    :cond_12
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist test-api engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 4

    if-eqz p2, :cond_45

    if-eqz p1, :cond_3d

    .line 283
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 285
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    invoke-direct {p2, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p2

    .line 287
    :cond_18
    const-class p0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 289
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 293
    :try_start_24
    new-instance p1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {p1, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    return-object p1

    :catch_2a
    move-exception p0

    .line 297
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_35
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Invalid KeySpec"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :cond_3d
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "key parameter is null"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 276
    :cond_45
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "keySpec parameter is null"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;
.super Ljava/lang/Object;
.source "DefaultJcaJceHelper.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 2

    .line 66
    invoke-static {p1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .registers 2

    .line 115
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 2

    .line 42
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .registers 2

    .line 78
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 2

    .line 48
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .registers 2

    .line 84
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .registers 2

    .line 109
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.class public abstract Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;
.super Ljava/lang/Object;
.source "ProviderJcaJceHelper.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;


# instance fields
.field protected final blacklist provider:Ljava/security/Provider;


# direct methods
.method public constructor blacklist <init>(Ljava/security/Provider;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public blacklist createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 2

    .line 55
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

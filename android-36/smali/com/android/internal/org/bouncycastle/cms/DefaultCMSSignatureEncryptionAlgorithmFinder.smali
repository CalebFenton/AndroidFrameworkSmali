.class public Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;
.super Ljava/lang/Object;
.source "DefaultCMSSignatureEncryptionAlgorithmFinder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;


# static fields
.field protected static final blacklist GOST_ENC:Ljava/util/Map;

.field protected static final blacklist RSA_PKCS1d5:Ljava/util/Set;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->GOST_ENC:Ljava/util/Map;

    .line 32
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md5WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist findEncryptionAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 5
    .param p1, "signatureAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->RSA_PKCS1d5:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 66
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 69
    :cond_16
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->GOST_ENC:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 71
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;->GOST_ENC:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0

    .line 73
    :cond_2f
    return-object p1
.end method

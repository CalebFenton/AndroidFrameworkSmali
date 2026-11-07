.class public Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;
.super Ljava/lang/Object;
.source "CMSSignedGenerator.java"


# static fields
.field public static final blacklist DIGEST_MD5:Ljava/lang/String;

.field public static final blacklist DIGEST_SHA1:Ljava/lang/String;

.field public static final blacklist DIGEST_SHA224:Ljava/lang/String;

.field public static final blacklist DIGEST_SHA256:Ljava/lang/String;

.field public static final blacklist DIGEST_SHA384:Ljava/lang/String;

.field public static final blacklist DIGEST_SHA512:Ljava/lang/String;

.field private static final blacklist EC_ALGORITHMS:Ljava/util/Map;

.field public static final blacklist ENCRYPTION_DSA:Ljava/lang/String;

.field public static final blacklist ENCRYPTION_ECDSA:Ljava/lang/String;

.field private static final blacklist ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

.field private static final blacklist ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

.field private static final blacklist ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

.field private static final blacklist ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

.field private static final blacklist ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

.field public static final blacklist ENCRYPTION_RSA:Ljava/lang/String;

.field public static final blacklist ENCRYPTION_RSA_PSS:Ljava/lang/String;

.field private static final blacklist NO_PARAMS:Ljava/util/Set;


# instance fields
.field protected blacklist _signers:Ljava/util/List;

.field protected blacklist certs:Ljava/util/List;

.field protected blacklist crls:Ljava/util/List;

.field protected blacklist digestAlgIdFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field protected blacklist digests:Ljava/util/Map;

.field protected blacklist signerGens:Ljava/util/List;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 44
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA224:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA256:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA384:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA512:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_MD5:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_RSA:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_DSA:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_RSA_PSS:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    .line 80
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_DSA:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA224:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA256:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA384:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA512:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 108
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;-><init>(Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 109
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .registers 3
    .param p1, "digestAlgIdFinder"    # Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->certs:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->crls:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->signerGens:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->digests:Ljava/util/Map;

    .line 113
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->digestAlgIdFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 114
    return-void
.end method


# virtual methods
.method public blacklist addAttributeCertificate(Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;)V
    .registers 7
    .param p1, "attrCert"    # Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->certs:Ljava/util/List;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public blacklist addAttributeCertificates(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .registers 4
    .param p1, "attrStore"    # Lcom/android/internal/org/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->certs:Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getAttributeCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    return-void
.end method

.method public blacklist addCRL(Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;)V
    .registers 4
    .param p1, "crl"    # Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;

    .line 158
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->crls:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public blacklist addCRLs(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .registers 4
    .param p1, "crlStore"    # Lcom/android/internal/org/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->crls:Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    return-void
.end method

.method public blacklist addCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V
    .registers 4
    .param p1, "certificate"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->certs:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public blacklist addCertificates(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .registers 4
    .param p1, "certStore"    # Lcom/android/internal/org/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->certs:Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    return-void
.end method

.method public blacklist addSignerInfoGenerator(Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;)V
    .registers 3
    .param p1, "infoGen"    # Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    .line 255
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public blacklist addSigners(Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;)V
    .registers 5
    .param p1, "signerStore"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    .line 240
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 242
    .local v0, "it":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 244
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 246
    :cond_18
    return-void
.end method

.method protected blacklist getBaseParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .registers 7
    .param p1, "contentType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "digAlgId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "hash"    # [B

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v0, "param":Ljava/util/Map;
    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "digestAlgID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "digest"

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-object v0
.end method

.method public blacklist getGeneratedDigests()Ljava/util/Map;
    .registers 3

    .line 266
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;->digests:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

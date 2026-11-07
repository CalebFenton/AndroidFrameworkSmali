.class Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;
.super Ljava/lang/Object;
.source "CMSSignedHelper.java"


# static fields
.field static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

.field private static final blacklist encryptionAlgs:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 42
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    .line 53
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "DSA"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md5WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RSA"

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "ECDSA"

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTRSAsignatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 4
    .param p0, "alias"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "encryption"    # Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method blacklist fixDigestAlgID(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 5
    .param p1, "algId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "dgstAlgFinder"    # Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 160
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 161
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v0, :cond_10

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_10

    .line 167
    :cond_f
    return-object p1

    .line 163
    :cond_10
    :goto_10
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    return-object v1
.end method

.method blacklist getAttributeCertificates(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;
    .registers 9
    .param p1, "certSet"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 200
    if-eqz p1, :cond_4e

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v0, "certList":Ljava/util/List;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 206
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 208
    .local v2, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_47

    .line 210
    move-object v3, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 218
    .local v3, "tObj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_34

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_47

    .line 220
    :cond_34
    new-instance v4, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v2    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v3    # "tObj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_47
    goto :goto_f

    .line 225
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_48
    new-instance v1, Lcom/android/internal/org/bouncycastle/util/CollectionStore;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 228
    .end local v0    # "certList":Ljava/util/List;
    :cond_4e
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/CollectionStore;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method blacklist getCRLs(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;
    .registers 7
    .param p1, "crlSet"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 233
    if-eqz p1, :cond_36

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .local v0, "crlList":Ljava/util/List;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 239
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 241
    .local v2, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_2f

    .line 243
    new-instance v3, Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v2    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_2f
    goto :goto_f

    .line 247
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_30
    new-instance v1, Lcom/android/internal/org/bouncycastle/util/CollectionStore;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 250
    .end local v0    # "crlList":Ljava/util/List;
    :cond_36
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/CollectionStore;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method blacklist getCertificates(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;
    .registers 7
    .param p1, "certSet"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 178
    if-eqz p1, :cond_36

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v0, "certList":Ljava/util/List;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 184
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 186
    .local v2, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_2f

    .line 188
    new-instance v3, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v2    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_2f
    goto :goto_f

    .line 192
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_30
    new-instance v1, Lcom/android/internal/org/bouncycastle/util/CollectionStore;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 195
    .end local v0    # "certList":Ljava/util/List;
    :cond_36
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/CollectionStore;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method blacklist getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "encryptionAlgOID"    # Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->encryptionAlgs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 152
    return-object v0

    .line 155
    :cond_b
    return-object p1
.end method

.method blacklist setSigningEncryptionAlgorithmMapping(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "algorithmName"    # Ljava/lang/String;

    .line 173
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->addEntries(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.class public Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertAttributeUtils;
.super Ljava/lang/Object;
.source "DeltaCertAttributeUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isDeltaRequestSignatureValid(Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 14
    .param p0, "baseRequest"    # Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;
    .param p1, "contentVerifierProvider"    # Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.114027.80.6.2"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getAttributes(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v0

    .line 34
    .local v0, "attributes":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    new-instance v1, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)V

    .line 36
    .local v1, "deltaReq":Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.16.840.1.114027.80.6.3"

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getAttributes(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v3

    .line 39
    .local v3, "deltaPkcs10":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v5

    .line 41
    .local v5, "deltaInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 42
    .local v6, "deltaPkcs10InfoV":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 43
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 44
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 46
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 47
    .local v7, "attrSetV":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v8

    .local v8, "en":Ljava/util/Enumeration;
    :goto_4d
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 49
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v9

    .line 51
    .local v9, "attr":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v11, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-nez v10, :cond_6d

    .line 53
    invoke-virtual {v7, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 55
    .end local v9    # "attr":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    :cond_6d
    goto :goto_4d

    .line 57
    .end local v8    # "en":Ljava/util/Enumeration;
    :cond_6e
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v7}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v2, v2, v8}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 59
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 61
    .local v4, "deltaPkcs10V":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 62
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 63
    aget-object v8, v0, v2

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttributeValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    aget-object v2, v8, v2

    invoke-virtual {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 65
    new-instance v2, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;

    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;)V

    .line 67
    .local v2, "deltaPkcs10Req":Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;
    invoke-virtual {v2, p1}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->isSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z

    move-result v8

    return v8
.end method

.method public static blacklist makeDeltaCertificateExtension(Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 2
    .param p0, "deltaReqAttr"    # Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

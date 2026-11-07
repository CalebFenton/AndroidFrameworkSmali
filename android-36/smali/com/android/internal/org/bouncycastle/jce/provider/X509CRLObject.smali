.class public Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;
.super Ljava/security/cert/X509CRL;
.source "X509CRLObject.java"


# instance fields
.field private blacklist c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

.field private blacklist hashCodeValue:I

.field private blacklist isHashCodeSet:Z

.field private blacklist isIndirect:Z

.field private blacklist sigAlgName:Ljava/lang/String;

.field private blacklist sigAlgParams:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;)V
    .registers 6
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    .line 90
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    .line 94
    :try_start_8
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 98
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    goto :goto_34

    .line 102
    :cond_31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    .line 105
    :goto_34
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3a} :catch_3c

    .line 110
    nop

    .line 111
    return-void

    .line 107
    :catch_3c
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRL contents invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .registers 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sig"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 271
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getTBSCertList()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 278
    return-void

    .line 276
    :cond_2b
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "CRL does not verify with supplied public key."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_33
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Signature algorithm on CertificateList does not match TBSCertList."

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getExtensionOIDs(Z)Ljava/util/Set;
    .registers 8
    .param p1, "critical"    # Z

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 138
    .local v0, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_3b

    .line 140
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 141
    .local v1, "set":Ljava/util/Set;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 143
    .local v2, "e":Ljava/util/Enumeration;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 145
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 146
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 148
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_39

    .line 150
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_39
    goto :goto_1c

    .line 154
    :cond_3a
    return-object v1

    .line 158
    .end local v0    # "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .end local v1    # "set":Ljava/util/Set;
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist isIndirectCRL(Ljava/security/cert/X509CRL;)Z
    .registers 4
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 75
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 76
    .local v0, "idp":[B
    if-eqz v0, :cond_20

    .line 77
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_22

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 76
    :goto_21
    return v1

    .line 79
    .end local v0    # "idp":[B
    :catch_22
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/ExtCRLException;

    const-string v2, "Exception reading IssuingDistributionPoint"

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist loadCRLEntries()Ljava/util/Set;
    .registers 9

    .line 319
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 320
    .local v0, "entrySet":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 322
    .local v1, "certs":Ljava/util/Enumeration;
    const/4 v2, 0x0

    .line 323
    .local v2, "previousCertificateIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 325
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 326
    .local v3, "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLEntryObject;

    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    invoke-direct {v4, v3, v5, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    .line 327
    .local v4, "crlEntry":Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLEntryObject;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    if-eqz v5, :cond_4f

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 330
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v5

    .line 332
    .local v5, "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v5, :cond_4f

    .line 334
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    .line 337
    .end local v3    # "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .end local v4    # "crlEntry":Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLEntryObject;
    .end local v5    # "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_4f
    goto :goto_c

    .line 339
    :cond_50
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 623
    if-ne p0, p1, :cond_4

    .line 625
    const/4 v0, 0x1

    return v0

    .line 628
    :cond_4
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 630
    return v1

    .line 633
    :cond_a
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;

    if-eqz v0, :cond_29

    .line 635
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;

    .line 637
    .local v0, "crlObject":Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    if-eqz v2, :cond_20

    .line 639
    iget-boolean v2, v0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    .line 640
    .local v2, "otherIsHashCodeSet":Z
    if-eqz v2, :cond_20

    .line 642
    iget v3, v0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    if-eq v3, v4, :cond_20

    .line 644
    return v1

    .line 649
    .end local v2    # "otherIsHashCodeSet":Z
    :cond_20
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 652
    .end local v0    # "crlObject":Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;
    :cond_29
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 202
    :catch_9
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 8
    .param p1, "oid"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 175
    .local v0, "exts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_3e

    .line 177
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 179
    .local v1, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_3e

    .line 183
    :try_start_17
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B

    move-result-object v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_20

    return-object v2

    .line 185
    :catch_20
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 192
    .end local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 3

    .line 287
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    .line 294
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 296
    :catch_10
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t encode issuer DN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getNextUpdate()Ljava/util/Date;
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 311
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 314
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 8
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .line 344
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 346
    .local v0, "certs":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 347
    .local v1, "previousCertificateIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 349
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 351
    .local v2, "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 353
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLEntryObject;

    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    invoke-direct {v3, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v3

    .line 356
    :cond_25
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    if-eqz v3, :cond_52

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 358
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 360
    .local v3, "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v3, :cond_52

    .line 362
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    .line 365
    .end local v2    # "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .end local v3    # "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_52
    goto :goto_7

    .line 367
    :cond_53
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist test-api getRevokedCertificates()Ljava/util/Set;
    .registers 3

    .line 372
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->loadCRLEntries()Ljava/util/Set;

    move-result-object v0

    .line 374
    .local v0, "entrySet":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 376
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 379
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 5

    .line 412
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    if-eqz v0, :cond_11

    .line 414
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 416
    .local v0, "tmp":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    return-object v0

    .line 421
    .end local v0    # "tmp":[B
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getSignature()[B
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTBSCertList()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 389
    :catch_d
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getThisUpdate()Ljava/util/Date;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getThisUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 3

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 121
    .local v0, "extns":Ljava/util/Set;
    if-nez v0, :cond_8

    .line 123
    const/4 v1, 0x0

    return v1

    .line 126
    :cond_8
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 657
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    if-nez v0, :cond_d

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isHashCodeSet:Z

    .line 660
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    .line 663
    :cond_d
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->hashCodeValue:I

    return v0
.end method

.method public whitelist test-api isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 9
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 561
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 566
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 568
    .local v0, "certs":Ljava/util/Enumeration;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    .line 570
    .local v1, "caName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    const/4 v2, 0x0

    if-eqz v0, :cond_9a

    .line 572
    move-object v3, p1

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    .line 574
    .local v3, "serial":Ljava/math/BigInteger;
    :goto_22
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 576
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v4

    .line 578
    .local v4, "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    if-eqz v5, :cond_5c

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 580
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v5

    .line 582
    .local v5, "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v5, :cond_5c

    .line 584
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    .line 588
    .end local v5    # "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_5c
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 592
    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_7a

    .line 594
    move-object v5, p1

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .local v5, "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    goto :goto_87

    .line 600
    .end local v5    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5
    :try_end_86
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7a .. :try_end_86} :catch_90

    .line 605
    .restart local v5    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    nop

    .line 608
    :goto_87
    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8e

    .line 610
    return v2

    .line 613
    :cond_8e
    const/4 v2, 0x1

    return v2

    .line 602
    .end local v5    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :catch_90
    move-exception v2

    .line 604
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Cannot process certificate"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 615
    .end local v2    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v4    # "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :cond_99
    goto :goto_22

    .line 618
    .end local v3    # "serial":Ljava/math/BigInteger;
    :cond_9a
    return v2

    .line 563
    .end local v0    # "certs":Ljava/util/Enumeration;
    .end local v1    # "caName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :cond_9b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "X.509 CRL used with non X.509 Cert"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 14

    .line 431
    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 432
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "nl":Ljava/lang/String;
    const-string v3, "              Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 437
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    const-string v3, "          This update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getThisUpdate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 439
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string v3, "          Next update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getNextUpdate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 441
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 443
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v3

    .line 447
    .local v3, "sig":[B
    const-string v4, "            Signature: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    .line 448
    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-static {v3, v6, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 448
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    const/16 v4, 0x14

    .local v4, "i":I
    :goto_7f
    array-length v5, v3

    if-ge v4, v5, :cond_b6

    .line 451
    array-length v5, v3

    sub-int/2addr v5, v7

    const-string v6, "                       "

    if-ge v4, v5, :cond_9d

    .line 453
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    .line 454
    invoke-static {v3, v4, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    .line 453
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 454
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b3

    .line 458
    :cond_9d
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    array-length v8, v3

    sub-int/2addr v8, v4

    .line 459
    invoke-static {v3, v4, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    .line 458
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 459
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    :goto_b3
    add-int/lit8 v4, v4, 0x14

    goto :goto_7f

    .line 463
    .end local v4    # "i":I
    :cond_b6
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v4

    .line 465
    .local v4, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v4, :cond_1e2

    .line 467
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v5

    .line 469
    .local v5, "e":Ljava/util/Enumeration;
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 471
    const-string v6, "           Extensions: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    :cond_d5
    :goto_d5
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1e2

    .line 476
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 477
    .local v6, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v7

    .line 479
    .local v7, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    if-eqz v8, :cond_1dd

    .line 481
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 482
    .local v8, "octs":[B
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v9, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 483
    .local v9, "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    const-string v10, "                       critical("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 484
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v11

    .line 483
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 484
    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    :try_start_10b
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_12d

    .line 489
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;

    .line 491
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    .line 490
    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v11

    .line 491
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    .line 489
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 492
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1c6

    .line 494
    :cond_12d
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_161

    .line 496
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Base CRL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;

    .line 499
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    .line 498
    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v12

    .line 499
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 496
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 500
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c6

    .line 502
    :cond_161
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 503
    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_17a

    .line 505
    nop

    .line 506
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v10

    .line 505
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 506
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c6

    .line 508
    :cond_17a
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 509
    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_193

    .line 511
    nop

    .line 512
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v10

    .line 511
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 512
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c6

    .line 514
    :cond_193
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_1ac

    .line 516
    nop

    .line 517
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v10

    .line 516
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 517
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c6

    .line 521
    :cond_1ac
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 523
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 522
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 524
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_1c6} :catch_1c7

    .line 531
    :goto_1c6
    goto :goto_1dc

    .line 527
    :catch_1c7
    move-exception v10

    .line 529
    .local v10, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "*****"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    .end local v8    # "octs":[B
    .end local v9    # "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v10    # "ex":Ljava/lang/Exception;
    :goto_1dc
    goto :goto_1e0

    .line 535
    :cond_1dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    .end local v6    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :goto_1e0
    goto/16 :goto_d5

    .line 539
    .end local v5    # "e":Ljava/util/Enumeration;
    :cond_1e2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getRevokedCertificates()Ljava/util/Set;

    move-result-object v0

    .line 540
    .local v0, "set":Ljava/util/Set;
    if-eqz v0, :cond_1fd

    .line 542
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 543
    .local v5, "it":Ljava/util/Iterator;
    :goto_1ec
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1fd

    .line 545
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1ec

    .line 549
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_1fd
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 221
    .local v0, "sig":Ljava/security/Signature;
    goto :goto_15

    .line 218
    .end local v0    # "sig":Ljava/security/Signature;
    :catch_b
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    move-object v0, v1

    .line 223
    .local v0, "sig":Ljava/security/Signature;
    :goto_15
    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 224
    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 232
    if-eqz p2, :cond_b

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .local v0, "sig":Ljava/security/Signature;
    goto :goto_13

    .line 238
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 241
    .restart local v0    # "sig":Ljava/security/Signature;
    :goto_13
    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 242
    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 250
    if-eqz p2, :cond_b

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .local v0, "sig":Ljava/security/Signature;
    goto :goto_13

    .line 256
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 259
    .restart local v0    # "sig":Ljava/security/Signature;
    :goto_13
    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 260
    return-void
.end method

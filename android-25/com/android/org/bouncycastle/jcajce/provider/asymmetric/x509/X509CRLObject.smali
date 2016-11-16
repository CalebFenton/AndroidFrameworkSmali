.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
.super Ljava/security/cert/X509CRL;
.source "X509CRLObject.java"


# instance fields
.field private bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

.field private hashCodeValue:I

.field private isHashCodeSet:Z

.field private isIndirect:Z

.field private sigAlgName:Ljava/lang/String;

.field private sigAlgParams:[B


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)V
    .locals 4
    .param p1, "bcHelper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    #@3
    .line 66
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isHashCodeSet:Z

    #@6
    .line 90
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@8
    .line 91
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@a
    .line 95
    :try_start_0
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    move-result-object v1

    #@e
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->sigAlgName:Ljava/lang/String;

    #@14
    .line 97
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 99
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@25
    move-result-object v1

    #@26
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "DER"

    #@2d
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    #@30
    move-result-object v1

    #@31
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->sigAlgParams:[B

    #@33
    .line 106
    :goto_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z

    #@36
    move-result v1

    #@37
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirect:Z

    #@39
    .line 88
    return-void

    #@3a
    .line 103
    :cond_0
    const/4 v1, 0x0

    #@3b
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->sigAlgParams:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    goto :goto_0

    #@3e
    .line 109
    :catch_0
    move-exception v0

    #@3f
    .line 110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CRLException;

    #@41
    new-instance v2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v3, "CRL contents invalid: "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1
.end method

.method private doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .locals 2
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

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@8
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 269
    new-instance v0, Ljava/security/cert/CRLException;

    #@18
    const-string/jumbo v1, "Signature algorithm on CertificateList does not match TBSCertList."

    #@1b
    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 272
    :cond_0
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@22
    .line 273
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getTBSCertList()[B

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    #@29
    .line 275
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getSignature()[B

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {p2, v0}, Ljava/security/Signature;->verify([B)Z

    #@30
    move-result v0

    #@31
    if-nez v0, :cond_1

    #@33
    .line 277
    new-instance v0, Ljava/security/SignatureException;

    #@35
    const-string/jumbo v1, "CRL does not verify with supplied public key."

    #@38
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 265
    :cond_1
    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 8
    .param p1, "critical"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 135
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getVersion()I

    #@4
    move-result v5

    #@5
    const/4 v6, 0x2

    #@6
    if-ne v5, v6, :cond_2

    #@8
    .line 137
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@11
    move-result-object v2

    #@12
    .line 139
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_2

    #@14
    .line 141
    new-instance v4, Ljava/util/HashSet;

    #@16
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@19
    .line 142
    .local v4, "set":Ljava/util/Set;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@1c
    move-result-object v0

    #@1d
    .line 144
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 146
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29
    .line 147
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@2c
    move-result-object v1

    #@2d
    .line 149
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@30
    move-result v5

    #@31
    if-ne p1, v5, :cond_0

    #@33
    .line 151
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 155
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    return-object v4

    #@3c
    .line 159
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v2    # "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .end local v4    # "set":Ljava/util/Set;
    :cond_2
    return-object v7
.end method

.method static isIndirectCRL(Ljava/security/cert/X509CRL;)Z
    .locals 4
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    :try_start_0
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    #@9
    move-result-object v1

    #@a
    .line 75
    .local v1, "idp":[B
    if-eqz v1, :cond_0

    #@c
    .line 76
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v2

    #@1c
    .line 75
    :goto_0
    return v2

    #@1d
    :cond_0
    const/4 v2, 0x0

    #@1e
    goto :goto_0

    #@1f
    .line 79
    .end local v1    # "idp":[B
    :catch_0
    move-exception v0

    #@20
    .line 80
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;

    #@22
    .line 81
    const-string/jumbo v3, "Exception reading IssuingDistributionPoint"

    #@25
    .line 80
    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    throw v2
.end method

.method private loadCRLEntries()Ljava/util/Set;
    .locals 8

    #@0
    .prologue
    .line 320
    new-instance v4, Ljava/util/HashSet;

    #@2
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 321
    .local v4, "entrySet":Ljava/util/Set;
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@7
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    #@a
    move-result-object v0

    #@b
    .line 323
    .local v0, "certs":Ljava/util/Enumeration;
    const/4 v5, 0x0

    #@c
    .line 324
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_1

    #@12
    .line 326
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@18
    .line 327
    .local v3, "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    #@1a
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirect:Z

    #@1c
    invoke-direct {v1, v3, v6, v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    #@1f
    .line 328
    .local v1, "crlEntry":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    .line 329
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirect:Z

    #@24
    if-eqz v6, :cond_0

    #@26
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_0

    #@2c
    .line 331
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@2f
    move-result-object v6

    #@30
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@35
    move-result-object v2

    #@36
    .line 333
    .local v2, "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v2, :cond_0

    #@38
    .line 335
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3b
    move-result-object v6

    #@3c
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@43
    move-result-object v6

    #@44
    const/4 v7, 0x0

    #@45
    aget-object v6, v6, v7

    #@47
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4a
    move-result-object v6

    #@4b
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@4e
    move-result-object v5

    #@4f
    .local v5, "previousCertificateIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    goto :goto_0

    #@50
    .line 340
    .end local v1    # "crlEntry":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;
    .end local v2    # "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v3    # "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .end local v5    # "previousCertificateIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 624
    if-ne p0, p1, :cond_0

    #@3
    .line 626
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 629
    :cond_0
    instance-of v2, p1, Ljava/security/cert/X509CRL;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 631
    return v4

    #@a
    .line 634
    :cond_1
    instance-of v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;

    #@c
    if-eqz v2, :cond_3

    #@e
    move-object v0, p1

    #@f
    .line 636
    nop

    #@10
    nop

    #@11
    .line 638
    .local v0, "crlObject":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isHashCodeSet:Z

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 640
    iget-boolean v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isHashCodeSet:Z

    #@17
    .line 641
    .local v1, "otherIsHashCodeSet":Z
    if-eqz v1, :cond_2

    #@19
    .line 643
    iget v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashCodeValue:I

    #@1b
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashCodeValue:I

    #@1d
    if-eq v2, v3, :cond_2

    #@1f
    .line 645
    return v4

    #@20
    .line 650
    .end local v1    # "otherIsHashCodeSet":Z
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@22
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@24
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 653
    .end local v0    # "crlObject":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
    :cond_3
    invoke-super {p0, p1}, Ljava/security/cert/X509CRL;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    return v2
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 164
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@2
    const-string/jumbo v2, "DER"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 204
    :catch_0
    move-exception v0

    #@b
    .line 205
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    #@d
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 174
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@3
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@a
    move-result-object v2

    #@b
    .line 176
    .local v2, "exts":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_0

    #@d
    .line 178
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@15
    move-result-object v1

    #@16
    .line 180
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    #@18
    .line 184
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v3

    #@20
    return-object v3

    #@21
    .line 187
    :catch_0
    move-exception v0

    #@22
    .line 188
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "error parsing "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v3

    #@40
    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    return-object v4
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 2

    #@0
    .prologue
    .line 288
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    #@13
    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    #@0
    .prologue
    .line 295
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@4
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    return-object v1

    #@10
    .line 298
    :catch_0
    move-exception v0

    #@11
    .line 299
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v2, "can\'t encode issuer DN"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 310
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 312
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 315
    :cond_0
    return-object v1
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 169
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 7
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 345
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@3
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    .line 347
    .local v0, "certs":Ljava/util/Enumeration;
    const/4 v3, 0x0

    #@8
    .line 348
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_2

    #@e
    .line 350
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@14
    .line 352
    .local v2, "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 354
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    #@24
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirect:Z

    #@26
    invoke-direct {v4, v2, v5, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    #@29
    return-object v4

    #@2a
    .line 357
    :cond_1
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirect:Z

    #@2c
    if-eqz v4, :cond_0

    #@2e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_0

    #@34
    .line 359
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@37
    move-result-object v4

    #@38
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@3d
    move-result-object v1

    #@3e
    .line 361
    .local v1, "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    #@40
    .line 363
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@43
    move-result-object v4

    #@44
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@4b
    move-result-object v4

    #@4c
    const/4 v5, 0x0

    #@4d
    aget-object v4, v4, v5

    #@4f
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@52
    move-result-object v4

    #@53
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@56
    move-result-object v3

    #@57
    .local v3, "previousCertificateIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    goto :goto_0

    #@58
    .line 368
    .end local v1    # "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v2    # "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .end local v3    # "previousCertificateIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_2
    return-object v6
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 2

    #@0
    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->loadCRLEntries()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 375
    .local v0, "entrySet":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 377
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 380
    :cond_0
    const/4 v1, 0x0

    #@10
    return-object v1
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->sigAlgName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 413
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->sigAlgParams:[B

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 415
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->sigAlgParams:[B

    #@8
    array-length v1, v1

    #@9
    new-array v0, v1, [B

    #@b
    .line 417
    .local v0, "tmp":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->sigAlgParams:[B

    #@d
    array-length v2, v0

    #@e
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 419
    return-object v0

    #@12
    .line 422
    .end local v0    # "tmp":[B
    :cond_0
    return-object v2
.end method

.method public getSignature()[B
    .locals 1

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "DER"

    #@9
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 391
    :catch_0
    move-exception v0

    #@f
    .line 392
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    #@11
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getVersionNumber()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 120
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    .line 122
    .local v0, "extns":Ljava/util/Set;
    if-nez v0, :cond_0

    #@7
    .line 124
    return v1

    #@8
    .line 127
    :cond_0
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@11
    .line 128
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@1a
    .line 130
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    :goto_0
    return v1

    #@21
    :cond_1
    const/4 v1, 0x1

    #@22
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isHashCodeSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 660
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isHashCodeSet:Z

    #@7
    .line 661
    invoke-super {p0}, Ljava/security/cert/X509CRL;->hashCode()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashCodeValue:I

    #@d
    .line 664
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->hashCodeValue:I

    #@f
    return v0
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 10
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 562
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    #@4
    move-result-object v7

    #@5
    const-string/jumbo v8, "X.509"

    #@8
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v7

    #@c
    if-nez v7, :cond_0

    #@e
    .line 564
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v8, "X.509 CRL used with non X.509 Cert"

    #@13
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v7

    #@17
    .line 567
    :cond_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@19
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    #@1c
    move-result-object v1

    #@1d
    .line 569
    .local v1, "certs":Ljava/util/Enumeration;
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@1f
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@22
    move-result-object v0

    #@23
    .line 571
    .local v0, "caName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_5

    #@29
    move-object v7, p1

    #@2a
    .line 573
    check-cast v7, Ljava/security/cert/X509Certificate;

    #@2c
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@2f
    move-result-object v6

    #@30
    .line 575
    .local v6, "serial":Ljava/math/BigInteger;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_5

    #@36
    .line 577
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@39
    move-result-object v7

    #@3a
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@3d
    move-result-object v4

    #@3e
    .line 579
    .local v4, "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->isIndirect:Z

    #@40
    if-eqz v7, :cond_2

    #@42
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    #@45
    move-result v7

    #@46
    if-eqz v7, :cond_2

    #@48
    .line 581
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@4b
    move-result-object v7

    #@4c
    sget-object v8, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@51
    move-result-object v2

    #@52
    .line 583
    .local v2, "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v2, :cond_2

    #@54
    .line 585
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@57
    move-result-object v7

    #@58
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@5f
    move-result-object v7

    #@60
    aget-object v7, v7, v9

    #@62
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@65
    move-result-object v7

    #@66
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@69
    move-result-object v0

    #@6a
    .line 589
    .end local v2    # "currentCaName":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v7

    #@76
    if-eqz v7, :cond_1

    #@78
    .line 593
    instance-of v7, p1, Ljava/security/cert/X509Certificate;

    #@7a
    if-eqz v7, :cond_3

    #@7c
    .line 595
    nop

    #@7d
    nop

    #@7e
    .end local p1    # "cert":Ljava/security/cert/Certificate;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@85
    move-result-object v7

    #@86
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@89
    move-result-object v5

    #@8a
    .line 609
    .local v5, "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :goto_0
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v7

    #@8e
    if-nez v7, :cond_4

    #@90
    .line 611
    return v9

    #@91
    .line 601
    .end local v5    # "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .restart local p1    # "cert":Ljava/security/cert/Certificate;
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@94
    move-result-object v7

    #@95
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@9c
    move-result-object v5

    #@9d
    .restart local v5    # "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    goto :goto_0

    #@9e
    .line 604
    .end local v5    # "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :catch_0
    move-exception v3

    #@9f
    .line 605
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@a1
    new-instance v8, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v9, "Cannot process certificate: "

    #@a9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v8

    #@ad
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@b0
    move-result-object v9

    #@b1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v8

    #@b5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v8

    #@b9
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v7

    #@bd
    .line 614
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local p1    # "cert":Ljava/security/cert/Certificate;
    .restart local v5    # "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_4
    const/4 v7, 0x1

    #@be
    return v7

    #@bf
    .line 619
    .end local v4    # "entry":Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .end local v5    # "issuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .end local v6    # "serial":Ljava/math/BigInteger;
    .restart local p1    # "cert":Ljava/security/cert/Certificate;
    :cond_5
    return v9
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    #@0
    .prologue
    .line 432
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 433
    .local v2, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    #@8
    move-result-object v10

    #@9
    .line 435
    .local v10, "nl":Ljava/lang/String;
    const-string/jumbo v15, "              Version: "

    #@c
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    move-result-object v15

    #@10
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getVersion()I

    #@13
    move-result v16

    #@14
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@17
    move-result-object v15

    #@18
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    .line 437
    const-string/jumbo v15, "             IssuerDN: "

    #@1e
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    move-result-object v15

    #@22
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getIssuerDN()Ljava/security/Principal;

    #@25
    move-result-object v16

    #@26
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@29
    move-result-object v15

    #@2a
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    .line 439
    const-string/jumbo v15, "          This update: "

    #@30
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    move-result-object v15

    #@34
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getThisUpdate()Ljava/util/Date;

    #@37
    move-result-object v16

    #@38
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@3b
    move-result-object v15

    #@3c
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3f
    .line 441
    const-string/jumbo v15, "          Next update: "

    #@42
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@45
    move-result-object v15

    #@46
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getNextUpdate()Ljava/util/Date;

    #@49
    move-result-object v16

    #@4a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@4d
    move-result-object v15

    #@4e
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    .line 443
    const-string/jumbo v15, "  Signature Algorithm: "

    #@54
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@57
    move-result-object v15

    #@58
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    #@5b
    move-result-object v16

    #@5c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    move-result-object v15

    #@60
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@63
    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getSignature()[B

    #@66
    move-result-object v14

    #@67
    .line 448
    .local v14, "sig":[B
    const-string/jumbo v15, "            Signature: "

    #@6a
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6d
    move-result-object v15

    #@6e
    .line 449
    new-instance v16, Ljava/lang/String;

    #@70
    const/16 v17, 0x0

    #@72
    const/16 v18, 0x14

    #@74
    move/from16 v0, v17

    #@76
    move/from16 v1, v18

    #@78
    invoke-static {v14, v0, v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@7b
    move-result-object v17

    #@7c
    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    #@7f
    .line 448
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@82
    move-result-object v15

    #@83
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@86
    .line 450
    const/16 v8, 0x14

    #@88
    .local v8, "i":I
    :goto_0
    array-length v15, v14

    #@89
    if-ge v8, v15, :cond_1

    #@8b
    .line 452
    array-length v15, v14

    #@8c
    add-int/lit8 v15, v15, -0x14

    #@8e
    if-ge v8, v15, :cond_0

    #@90
    .line 454
    const-string/jumbo v15, "                       "

    #@93
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@96
    move-result-object v15

    #@97
    .line 455
    new-instance v16, Ljava/lang/String;

    #@99
    const/16 v17, 0x14

    #@9b
    move/from16 v0, v17

    #@9d
    invoke-static {v14, v8, v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@a0
    move-result-object v17

    #@a1
    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    #@a4
    .line 454
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a7
    move-result-object v15

    #@a8
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ab
    .line 450
    :goto_1
    add-int/lit8 v8, v8, 0x14

    #@ad
    goto :goto_0

    #@ae
    .line 459
    :cond_0
    const-string/jumbo v15, "                       "

    #@b1
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b4
    move-result-object v15

    #@b5
    .line 460
    new-instance v16, Ljava/lang/String;

    #@b7
    array-length v0, v14

    #@b8
    move/from16 v17, v0

    #@ba
    sub-int v17, v17, v8

    #@bc
    move/from16 v0, v17

    #@be
    invoke-static {v14, v8, v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@c1
    move-result-object v17

    #@c2
    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    #@c5
    .line 459
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c8
    move-result-object v15

    #@c9
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cc
    goto :goto_1

    #@cd
    .line 464
    :cond_1
    move-object/from16 v0, p0

    #@cf
    iget-object v15, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@d1
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@d4
    move-result-object v15

    #@d5
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@d8
    move-result-object v7

    #@d9
    .line 466
    .local v7, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v7, :cond_9

    #@db
    .line 468
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@de
    move-result-object v4

    #@df
    .line 470
    .local v4, "e":Ljava/util/Enumeration;
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e2
    move-result v15

    #@e3
    if-eqz v15, :cond_2

    #@e5
    .line 472
    const-string/jumbo v15, "           Extensions: "

    #@e8
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@eb
    move-result-object v15

    #@ec
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ef
    .line 475
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@f2
    move-result v15

    #@f3
    if-eqz v15, :cond_9

    #@f5
    .line 477
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@f8
    move-result-object v12

    #@f9
    check-cast v12, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fb
    .line 478
    .local v12, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v7, v12}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@fe
    move-result-object v6

    #@ff
    .line 480
    .local v6, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@102
    move-result-object v15

    #@103
    if-eqz v15, :cond_8

    #@105
    .line 482
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@108
    move-result-object v15

    #@109
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@10c
    move-result-object v11

    #@10d
    .line 483
    .local v11, "octs":[B
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@10f
    invoke-direct {v3, v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@112
    .line 484
    .local v3, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const-string/jumbo v15, "                       critical("

    #@115
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@118
    move-result-object v15

    #@119
    .line 485
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@11c
    move-result v16

    #@11d
    .line 484
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@120
    move-result-object v15

    #@121
    .line 485
    const-string/jumbo v16, ") "

    #@124
    .line 484
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@127
    .line 488
    :try_start_0
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@129
    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@12c
    move-result v15

    #@12d
    if-eqz v15, :cond_3

    #@12f
    .line 491
    new-instance v15, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    #@131
    .line 492
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@134
    move-result-object v16

    #@135
    .line 491
    invoke-static/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@138
    move-result-object v16

    #@139
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@13c
    move-result-object v16

    #@13d
    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    #@140
    .line 490
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@143
    move-result-object v15

    #@144
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@147
    goto :goto_2

    #@148
    .line 529
    :catch_0
    move-exception v5

    #@149
    .line 530
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@14c
    move-result-object v15

    #@14d
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@150
    .line 531
    const-string/jumbo v15, " value = "

    #@153
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@156
    move-result-object v15

    #@157
    const-string/jumbo v16, "*****"

    #@15a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15d
    move-result-object v15

    #@15e
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@161
    goto :goto_2

    #@162
    .line 495
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@164
    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@167
    move-result v15

    #@168
    if-eqz v15, :cond_4

    #@16a
    .line 498
    new-instance v15, Ljava/lang/StringBuilder;

    #@16c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@16f
    const-string/jumbo v16, "Base CRL: "

    #@172
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v15

    #@176
    .line 499
    new-instance v16, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    #@178
    .line 500
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@17b
    move-result-object v17

    #@17c
    .line 499
    invoke-static/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@17f
    move-result-object v17

    #@180
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@183
    move-result-object v17

    #@184
    invoke-direct/range {v16 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    #@187
    .line 498
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v15

    #@18b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v15

    #@18f
    .line 497
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@192
    move-result-object v15

    #@193
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@196
    goto/16 :goto_2

    #@198
    .line 504
    :cond_4
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19a
    .line 503
    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@19d
    move-result v15

    #@19e
    if-eqz v15, :cond_5

    #@1a0
    .line 507
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1a3
    move-result-object v15

    #@1a4
    invoke-static {v15}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    #@1a7
    move-result-object v15

    #@1a8
    .line 506
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1ab
    move-result-object v15

    #@1ac
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1af
    goto/16 :goto_2

    #@1b1
    .line 510
    :cond_5
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b3
    .line 509
    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@1b6
    move-result v15

    #@1b7
    if-eqz v15, :cond_6

    #@1b9
    .line 513
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1bc
    move-result-object v15

    #@1bd
    invoke-static {v15}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    #@1c0
    move-result-object v15

    #@1c1
    .line 512
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1c4
    move-result-object v15

    #@1c5
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c8
    goto/16 :goto_2

    #@1ca
    .line 515
    :cond_6
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1cc
    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@1cf
    move-result v15

    #@1d0
    if-eqz v15, :cond_7

    #@1d2
    .line 518
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1d5
    move-result-object v15

    #@1d6
    invoke-static {v15}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    #@1d9
    move-result-object v15

    #@1da
    .line 517
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1dd
    move-result-object v15

    #@1de
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e1
    goto/16 :goto_2

    #@1e3
    .line 522
    :cond_7
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1e6
    move-result-object v15

    #@1e7
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ea
    .line 523
    const-string/jumbo v15, " value = "

    #@1ed
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f0
    move-result-object v15

    #@1f1
    .line 524
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1f4
    move-result-object v16

    #@1f5
    invoke-static/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    #@1f8
    move-result-object v16

    #@1f9
    .line 523
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1fc
    move-result-object v15

    #@1fd
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@200
    goto/16 :goto_2

    #@202
    .line 536
    .end local v3    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v11    # "octs":[B
    :cond_8
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@205
    goto/16 :goto_2

    #@207
    .line 540
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v6    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v12    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getRevokedCertificates()Ljava/util/Set;

    #@20a
    move-result-object v13

    #@20b
    .line 541
    .local v13, "set":Ljava/util/Set;
    if-eqz v13, :cond_a

    #@20d
    .line 543
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@210
    move-result-object v9

    #@211
    .line 544
    .local v9, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@214
    move-result v15

    #@215
    if-eqz v15, :cond_a

    #@217
    .line 546
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21a
    move-result-object v15

    #@21b
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@21e
    .line 547
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@221
    goto :goto_3

    #@222
    .line 550
    .end local v9    # "it":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@225
    move-result-object v15

    #@226
    return-object v15
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 4
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

    #@0
    .prologue
    .line 217
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v2, v3}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    .line 224
    .local v1, "sig":Ljava/security/Signature;
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V

    #@d
    .line 211
    return-void

    #@e
    .line 220
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    #@f
    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@16
    move-result-object v1

    #@17
    .restart local v1    # "sig":Ljava/security/Signature;
    goto :goto_0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 2
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

    #@0
    .prologue
    .line 233
    if-eqz p2, :cond_0

    #@2
    .line 235
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@9
    move-result-object v0

    #@a
    .line 242
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V

    #@d
    .line 229
    return-void

    #@e
    .line 239
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@15
    move-result-object v0

    #@16
    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 2
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

    #@0
    .prologue
    .line 251
    if-eqz p2, :cond_0

    #@2
    .line 253
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    #@9
    move-result-object v0

    #@a
    .line 260
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->doVerify(Ljava/security/PublicKey;Ljava/security/Signature;)V

    #@d
    .line 247
    return-void

    #@e
    .line 257
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@15
    move-result-object v0

    #@16
    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0
.end method

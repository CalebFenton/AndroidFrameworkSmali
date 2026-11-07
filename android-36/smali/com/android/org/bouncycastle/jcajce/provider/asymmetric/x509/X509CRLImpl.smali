.class abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;
.super Ljava/security/cert/X509CRL;
.source "X509CRLImpl.java"


# instance fields
.field protected blacklist bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field protected blacklist c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

.field protected blacklist isIndirect:Z

.field protected blacklist sigAlgName:Ljava/lang/String;

.field protected blacklist sigAlgParams:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ)V
    .registers 6

    .line 79
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 81
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    .line 82
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgParams:[B

    .line 84
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    return-void
.end method

.method private blacklist checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;[B)V
    .registers 6

    if-eqz p3, :cond_5

    .line 363
    invoke-static {p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 366
    :cond_5
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 370
    :try_start_8
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object p3

    const/16 v0, 0x200

    invoke-direct {p1, p3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 372
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object p0

    const-string p3, "DER"

    invoke-virtual {p0, p1, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_21} :catch_30

    .line 381
    invoke-virtual {p2, p4}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_28

    return-void

    .line 383
    :cond_28
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "CRL does not verify with supplied public key."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_30
    move-exception p0

    .line 378
    new-instance p1, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist doVerify(Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    .registers 11

    .line 237
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 287
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_83

    .line 289
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 290
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 293
    :goto_45
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-eq v3, v5, :cond_78

    .line 295
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 296
    invoke-static {v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v6

    .line 302
    :try_start_57
    invoke-interface {p2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    .line 306
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 307
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v7

    .line 304
    invoke-direct {p0, p1, v6, v5, v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_6e
    .catch Ljava/security/InvalidKeyException; {:try_start_57 .. :try_end_6e} :catch_6f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_57 .. :try_end_6e} :catch_6f
    .catch Ljava/security/SignatureException; {:try_start_57 .. :try_end_6e} :catch_71

    const/4 v4, 0x1

    :catch_6f
    move-object v5, v1

    goto :goto_72

    :catch_71
    move-exception v5

    :goto_72
    if-nez v5, :cond_77

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 326
    :cond_77
    throw v5

    :cond_78
    if-eqz v4, :cond_7b

    return-void

    .line 332
    :cond_7b
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "no matching key found"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :cond_83
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 339
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgParams:[B

    if-nez v0, :cond_97

    .line 341
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSignature()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;[B)V

    return-void

    .line 347
    :cond_97
    :try_start_97
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSignature()[B

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a2} :catch_a3

    return-void

    :catch_a3
    move-exception p0

    .line 351
    new-instance p1, Ljava/security/SignatureException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot decode signature parameters: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_bf
    new-instance p0, Ljava/security/cert/CRLException;

    const-string p1, "Signature algorithm on CertificateList does not match TBSCertList."

    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getExtensionOIDs(Z)Ljava/util/Set;
    .registers 6

    .line 108
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b

    .line 110
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    .line 117
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 119
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-ne p1, v3, :cond_1c

    .line 124
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3a
    return-object v0

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static blacklist getExtensionOctets(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;)[B
    .registers 2

    .line 702
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionValue(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 705
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static blacklist getExtensionValue(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 3

    .line 712
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 715
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 718
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist loadCRLEntries()Ljava/util/Set;
    .registers 7

    .line 423
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 424
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    .line 427
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 429
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 430
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    invoke-direct {v4, v3, v5, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    .line 431
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 432
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 434
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 438
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    goto :goto_c

    :cond_50
    return-object v0
.end method


# virtual methods
.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 4

    .line 147
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionValue(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 152
    :try_start_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 156
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error parsing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 394
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 401
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 405
    :catch_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t encode issuer DN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getNextUpdate()Ljava/util/Date;
    .registers 1

    .line 416
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 418
    :cond_a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 7

    .line 448
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 451
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 453
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 455
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 457
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    iget-boolean p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    invoke-direct {p1, v3, p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    return-object p1

    .line 460
    :cond_26
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 462
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 466
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    goto :goto_8

    :cond_54
    return-object v1
.end method

.method public whitelist test-api getRevokedCertificates()Ljava/util/Set;
    .registers 2

    .line 476
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->loadCRLEntries()Ljava/util/Set;

    move-result-object p0

    .line 478
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 480
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 1

    .line 506
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 1

    .line 511
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 1

    .line 516
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgParams:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSignature()[B
    .registers 1

    .line 501
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getTBSCertList()[B
    .registers 2

    .line 491
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 495
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getThisUpdate()Ljava/util/Date;
    .registers 1

    .line 411
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getVersion()I
    .registers 1

    .line 389
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getVersionNumber()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 2

    .line 93
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 100
    :cond_8
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public whitelist test-api isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 10

    .line 640
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 645
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    .line 649
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_ac

    .line 651
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    .line 653
    :cond_26
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 655
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v5

    .line 657
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    if-eqz v6, :cond_60

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 659
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v6

    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v6

    if-eqz v6, :cond_60

    .line 663
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    .line 667
    :cond_60
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 671
    instance-of p0, p1, Ljava/security/cert/X509Certificate;

    if-eqz p0, :cond_7b

    .line 673
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    goto :goto_87

    .line 679
    :cond_7b
    :try_start_7b
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0
    :try_end_87
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7b .. :try_end_87} :catch_90

    .line 687
    :goto_87
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e

    return v3

    :cond_8e
    const/4 p0, 0x1

    return p0

    :catch_90
    move-exception p0

    .line 683
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot process certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ac
    return v3

    .line 642
    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "X.509 CRL used with non X.509 Cert"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 526
    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 527
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 529
    const-string v3, "              Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    const-string v3, "          This update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getThisUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 534
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    const-string v3, "          Next update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getNextUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSignature()[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->prettyPrintSignature([BLjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 542
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    if-eqz v3, :cond_17c

    .line 546
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v4

    .line 548
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 550
    const-string v5, "           Extensions: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    :cond_7b
    :goto_7b
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_17c

    .line 555
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 556
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v6

    .line 558
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    if-eqz v7, :cond_177

    .line 560
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 561
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 562
    const-string v7, "                       critical("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v6

    .line 562
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v6, ") "

    .line 563
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    :try_start_af
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 568
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    .line 570
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 569
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    .line 570
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    .line 568
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7b

    .line 573
    :cond_cf
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_101

    .line 575
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Base CRL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    .line 578
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    .line 577
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v8

    .line 578
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 575
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7b

    .line 581
    :cond_101
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 582
    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_119

    .line 585
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v6

    .line 584
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7b

    .line 587
    :cond_119
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 588
    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_131

    .line 591
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v6

    .line 590
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7b

    .line 593
    :cond_131
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_149

    .line 596
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v6

    .line 595
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 596
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7b

    .line 600
    :cond_149
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 601
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_161} :catch_163

    goto/16 :goto_7b

    .line 608
    :catch_163
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "*****"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7b

    .line 614
    :cond_177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7b

    .line 618
    :cond_17c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getRevokedCertificates()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_197

    .line 621
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 622
    :goto_186
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_197

    .line 624
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_186

    .line 628
    :cond_197
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 3

    .line 166
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$1;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$1;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;)V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4

    .line 187
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4

    .line 210
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;

    invoke-direct {v0, p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;Ljava/security/Provider;)V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    :try_end_8
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 229
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "provider issue: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

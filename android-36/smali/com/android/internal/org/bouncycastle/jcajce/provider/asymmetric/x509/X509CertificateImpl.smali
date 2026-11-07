.class abstract Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertificateImpl.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/interfaces/BCX509Certificate;


# instance fields
.field protected blacklist basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

.field protected blacklist bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field protected blacklist c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

.field protected blacklist keyUsage:[Z

.field protected blacklist sigAlgName:Ljava/lang/String;

.field protected blacklist sigAlgParams:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V
    .registers 7
    .param p1, "bcHelper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .param p3, "basicConstraints"    # Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .param p4, "keyUsage"    # [Z
    .param p5, "sigAlgName"    # Ljava/lang/String;
    .param p6, "sigAlgParams"    # [B

    .line 86
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 88
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 89
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    .line 90
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->keyUsage:[Z

    .line 91
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgName:Ljava/lang/String;

    .line 92
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgParams:[B

    .line 93
    return-void
.end method

.method private blacklist checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    .registers 8
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "signature"    # Ljava/security/Signature;
    .param p3, "params"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p4, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->isAlgIdEqual(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 766
    invoke-static {p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 768
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 772
    :try_start_1c
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x200

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 774
    .local v0, "sigOut":Ljava/io/OutputStream;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 776
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_35} :catch_45

    .line 781
    .end local v0    # "sigOut":Ljava/io/OutputStream;
    nop

    .line 783
    invoke-virtual {p2, p4}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 787
    return-void

    .line 785
    :cond_3d
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "certificate does not verify with supplied key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :catch_45
    move-exception v0

    .line 780
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    .end local v0    # "e":Ljava/io/IOException;
    :cond_50
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    .registers 16
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "signatureCreator"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 626
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    const-string v1, "no matching key found"

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 628
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->getPublicKeys()Ljava/util/List;

    move-result-object v0

    .line 629
    .local v0, "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 630
    .local v2, "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 632
    .local v3, "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    .line 633
    .local v4, "success":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_7d

    .line 635
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_48

    .line 637
    goto :goto_79

    .line 639
    :cond_48
    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    .line 640
    .local v6, "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 642
    .local v7, "sigName":Ljava/lang/String;
    invoke-interface {p2, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 644
    .local v8, "signature":Ljava/security/Signature;
    const/4 v9, 0x0

    .line 648
    .local v9, "sigExc":Ljava/security/SignatureException;
    nop

    .line 649
    :try_start_5a
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/PublicKey;

    .line 650
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    .line 651
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v12

    .line 648
    invoke-direct {p0, v10, v8, v11, v12}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_73
    .catch Ljava/security/SignatureException; {:try_start_5a .. :try_end_73} :catch_75

    .line 652
    const/4 v4, 0x1

    .line 657
    goto :goto_77

    .line 654
    :catch_75
    move-exception v10

    .line 656
    .local v10, "e":Ljava/security/SignatureException;
    move-object v9, v10

    .line 659
    .end local v10    # "e":Ljava/security/SignatureException;
    :goto_77
    if-nez v9, :cond_7c

    .line 633
    .end local v6    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v7    # "sigName":Ljava/lang/String;
    .end local v8    # "signature":Ljava/security/Signature;
    .end local v9    # "sigExc":Ljava/security/SignatureException;
    :goto_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 661
    .restart local v6    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v7    # "sigName":Ljava/lang/String;
    .restart local v8    # "signature":Ljava/security/Signature;
    .restart local v9    # "sigExc":Ljava/security/SignatureException;
    :cond_7c
    throw v9

    .line 665
    .end local v5    # "i":I
    .end local v6    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v7    # "sigName":Ljava/lang/String;
    .end local v8    # "signature":Ljava/security/Signature;
    .end local v9    # "sigExc":Ljava/security/SignatureException;
    :cond_7d
    if-eqz v4, :cond_81

    .line 669
    .end local v0    # "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v2    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "success":Z
    goto/16 :goto_14d

    .line 667
    .restart local v0    # "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v2    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v4    # "success":Z
    :cond_81
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 670
    .end local v0    # "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v2    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "success":Z
    :cond_87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 672
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 673
    .local v0, "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 675
    .local v2, "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    .line 676
    .local v3, "success":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b5
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-eq v4, v5, :cond_ef

    .line 678
    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 679
    .local v5, "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v6

    .line 681
    .local v6, "sigName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 685
    .local v7, "sigExc":Ljava/security/SignatureException;
    :try_start_c8
    invoke-interface {p2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 687
    .restart local v8    # "signature":Ljava/security/Signature;
    nop

    .line 689
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    .line 690
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v10

    .line 687
    invoke-direct {p0, p1, v8, v9, v10}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_e0
    .catch Ljava/security/InvalidKeyException; {:try_start_c8 .. :try_end_e0} :catch_e7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c8 .. :try_end_e0} :catch_e5
    .catch Ljava/security/SignatureException; {:try_start_c8 .. :try_end_e0} :catch_e2

    .line 692
    const/4 v3, 0x1

    .line 705
    .end local v8    # "signature":Ljava/security/Signature;
    :goto_e1
    goto :goto_e9

    .line 702
    :catch_e2
    move-exception v8

    .line 704
    .local v8, "e":Ljava/security/SignatureException;
    move-object v7, v8

    goto :goto_e9

    .line 698
    .end local v8    # "e":Ljava/security/SignatureException;
    :catch_e5
    move-exception v8

    goto :goto_e1

    .line 694
    :catch_e7
    move-exception v8

    goto :goto_e1

    .line 707
    :goto_e9
    if-nez v7, :cond_ee

    .line 676
    .end local v5    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "sigName":Ljava/lang/String;
    .end local v7    # "sigExc":Ljava/security/SignatureException;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 709
    .restart local v5    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v6    # "sigName":Ljava/lang/String;
    .restart local v7    # "sigExc":Ljava/security/SignatureException;
    :cond_ee
    throw v7

    .line 713
    .end local v4    # "i":I
    .end local v5    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "sigName":Ljava/lang/String;
    .end local v7    # "sigExc":Ljava/security/SignatureException;
    :cond_ef
    if-eqz v3, :cond_f2

    .line 717
    .end local v0    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "success":Z
    goto :goto_14d

    .line 715
    .restart local v0    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v2    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "success":Z
    :cond_f2
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 720
    .end local v0    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "success":Z
    :cond_f8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "sigName":Ljava/lang/String;
    invoke-interface {p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 724
    .local v1, "signature":Ljava/security/Signature;
    instance-of v2, p1, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    if-eqz v2, :cond_13c

    .line 726
    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->getPublicKeys()Ljava/util/List;

    move-result-object v2

    .line 728
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_112
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_134

    .line 732
    :try_start_118
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 733
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSignature()[B

    move-result-object v6

    .line 732
    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_12f
    .catch Ljava/security/InvalidKeyException; {:try_start_118 .. :try_end_12f} :catch_130

    .line 734
    return-void

    .line 736
    :catch_130
    move-exception v4

    .line 728
    add-int/lit8 v3, v3, 0x1

    goto :goto_112

    .line 742
    .end local v3    # "i":I
    :cond_134
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "no matching signature found"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 746
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :cond_13c
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 747
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSignature()[B

    move-result-object v3

    .line 746
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V

    .line 750
    .end local v0    # "sigName":Ljava/lang/String;
    .end local v1    # "signature":Ljava/security/Signature;
    :goto_14d
    return-void
.end method

.method private static blacklist getAlternativeNames(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Ljava/util/Collection;
    .registers 10
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 835
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    move-result-object v0

    .line 836
    .local v0, "extOctets":[B
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 838
    return-object v1

    .line 842
    :cond_8
    :try_start_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v2, "temp":Ljava/util/Collection;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 844
    .local v3, "it":Ljava/util/Enumeration;
    :goto_15
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 846
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 847
    .local v4, "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v5, "list":Ljava/util/List;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    packed-switch v6, :pswitch_data_cc

    .line 881
    new-instance v1, Ljava/io/IOException;

    goto :goto_9a

    .line 865
    :pswitch_3d
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    goto :goto_90

    .line 868
    :pswitch_4d
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_59} :catch_c1

    .line 872
    .local v6, "addrBytes":[B
    :try_start_59
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7
    :try_end_61
    .catch Ljava/net/UnknownHostException; {:try_start_59 .. :try_end_61} :catch_66
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_61} :catch_c1

    .line 877
    .local v7, "addr":Ljava/lang/String;
    nop

    .line 878
    :try_start_62
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    goto :goto_90

    .line 874
    .end local v7    # "addr":Ljava/lang/String;
    :catch_66
    move-exception v7

    .line 876
    .local v7, "e":Ljava/net/UnknownHostException;
    goto :goto_15

    .line 857
    .end local v6    # "addrBytes":[B
    .end local v7    # "e":Ljava/net/UnknownHostException;
    :pswitch_68
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    goto :goto_90

    .line 862
    :pswitch_7a
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    goto :goto_90

    .line 854
    :pswitch_88
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getEncoded()[B

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    nop

    .line 884
    :goto_90
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 885
    nop

    .end local v4    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "list":Ljava/util/List;
    goto/16 :goto_15

    .line 881
    .restart local v4    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "list":Ljava/util/List;
    :goto_9a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad tag number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "extOctets":[B
    .end local p0    # "c":Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .end local p1    # "oid":Ljava/lang/String;
    throw v1

    .line 886
    .end local v4    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "list":Ljava/util/List;
    .restart local v0    # "extOctets":[B
    .restart local p0    # "c":Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .restart local p1    # "oid":Ljava/lang/String;
    :cond_b5
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_bc

    .line 888
    return-object v1

    .line 890
    :cond_bc
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_c0} :catch_c1

    return-object v1

    .line 892
    .end local v2    # "temp":Ljava/util/Collection;
    .end local v3    # "it":Ljava/util/Enumeration;
    :catch_c1
    move-exception v1

    .line 894
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_88
        :pswitch_7a
        :pswitch_7a
        :pswitch_88
        :pswitch_68
        :pswitch_88
        :pswitch_7a
        :pswitch_4d
        :pswitch_3d
    .end packed-switch
.end method

.method protected static blacklist getExtensionOctets(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B
    .registers 4
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .param p1, "oid"    # Ljava/lang/String;

    .line 900
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 901
    .local v0, "extValue":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    if-eqz v0, :cond_b

    .line 903
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    return-object v1

    .line 905
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method protected static blacklist getExtensionValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 5
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .param p1, "oid"    # Ljava/lang/String;

    .line 910
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 911
    .local v0, "exts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_1a

    .line 913
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 914
    .local v1, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_1a

    .line 916
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    return-object v2

    .line 919
    .end local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist isAlgIdEqual(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z
    .registers 7
    .param p1, "id1"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "id2"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 791
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 793
    return v1

    .line 796
    :cond_10
    const-string v0, "com.android.internal.org.bouncycastle.x509.allow_absent_equiv_NULL"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4d

    .line 798
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_33

    .line 800
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 802
    return v1

    .line 805
    :cond_32
    return v2

    .line 808
    :cond_33
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_4d

    .line 810
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 812
    return v1

    .line 815
    :cond_4c
    return v2

    .line 819
    :cond_4d
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 821
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 824
    :cond_60
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 826
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 829
    :cond_73
    return v2
.end method


# virtual methods
.method public whitelist test-api checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkValidity(Ljava/util/Date;)V

    .line 114
    return-void
.end method

.method public whitelist test-api checkValidity(Ljava/util/Date;)V
    .registers 6
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_44

    .line 125
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_21

    .line 129
    return-void

    .line 127
    :cond_21
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_44
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getBasicConstraints()I
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1e

    .line 310
    :cond_d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    .line 311
    .local v0, "pathLenConstraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    if-nez v0, :cond_19

    .line 313
    const v1, 0x7fffffff

    return v1

    .line 316
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intPositiveValueExact()I

    move-result v1

    return v1

    .line 307
    .end local v0    # "pathLenConstraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :cond_1e
    :goto_1e
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 7

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 335
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 336
    .local v0, "set":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 338
    .local v1, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_3b

    .line 340
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 342
    .local v2, "e":Ljava/util/Enumeration;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 344
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 345
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 347
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 349
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_39
    goto :goto_1c

    .line 353
    :cond_3a
    return-object v0

    .line 357
    .end local v0    # "set":Ljava/util/Set;
    .end local v1    # "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getExtendedKeyUsage()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    const-string v1, "2.5.29.37"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    move-result-object v0

    .line 281
    .local v0, "extOctets":[B
    if-nez v0, :cond_c

    .line 283
    const/4 v1, 0x0

    return-object v1

    .line 288
    :cond_c
    :try_start_c
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 290
    .local v1, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v2, "list":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v3, v4, :cond_30

    .line 293
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 295
    .end local v3    # "i":I
    :cond_30
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_34} :catch_35

    return-object v3

    .line 297
    .end local v1    # "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "list":Ljava/util/List;
    :catch_35
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "error processing extended key usage extension"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 6
    .param p1, "oid"    # Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 363
    .local v0, "extValue":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    if-eqz v0, :cond_2a

    .line 367
    :try_start_8
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 369
    :catch_d
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/org/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v2

    throw v2

    .line 375
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getAlternativeNames(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 3

    .line 143
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getIssuerUniqueID()[Z
    .registers 8

    .line 234
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuerUniqueId()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    .line 236
    .local v0, "id":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    if-eqz v0, :cond_34

    .line 238
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    .line 239
    .local v1, "bytes":[B
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [Z

    .line 241
    .local v2, "boolId":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v2

    if-eq v3, v4, :cond_33

    .line 243
    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v1, v4

    rem-int/lit8 v5, v3, 0x8

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    aput-boolean v4, v2, v3

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 246
    .end local v3    # "i":I
    :cond_33
    return-object v2

    .line 249
    .end local v1    # "bytes":[B
    .end local v2    # "boolId":[Z
    :cond_34
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getIssuerX500Name()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 152
    .local v0, "encoding":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 154
    .end local v0    # "encoding":[B
    :catch_12
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t encode issuer DN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getKeyUsage()[Z
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->keyUsage:[Z

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 7

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 382
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 383
    .local v0, "set":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 385
    .local v1, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_3b

    .line 387
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 389
    .local v2, "e":Ljava/util/Enumeration;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 391
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 392
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 394
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-nez v5, :cond_39

    .line 396
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_39
    goto :goto_1c

    .line 400
    :cond_3a
    return-object v0

    .line 404
    .end local v0    # "set":Ljava/util/Set;
    .end local v1    # "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getNotAfter()Ljava/util/Date;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNotBefore()Ljava/util/Date;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .registers 4

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 455
    :catch_b
    move-exception v0

    .line 457
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to recover public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgParams:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSignature()[B
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getAlternativeNames(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectDN()Ljava/security/Principal;
    .registers 3

    .line 162
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getSubjectUniqueID()[Z
    .registers 8

    .line 254
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectUniqueId()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    .line 256
    .local v0, "id":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    if-eqz v0, :cond_34

    .line 258
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    .line 259
    .local v1, "bytes":[B
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [Z

    .line 261
    .local v2, "boolId":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v2

    if-eq v3, v4, :cond_33

    .line 263
    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v1, v4

    rem-int/lit8 v5, v3, 0x8

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    aput-boolean v4, v2, v3

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 266
    .end local v3    # "i":I
    :cond_33
    return-object v2

    .line 269
    .end local v1    # "bytes":[B
    .end local v2    # "boolId":[Z
    :cond_34
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getSubjectX500Name()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 171
    .local v0, "encoding":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 173
    .end local v0    # "encoding":[B
    :catch_12
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t encode subject DN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getTBSCertificate()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 196
    :catch_d
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getTBSCertificateNative()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 6

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_89

    .line 411
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 413
    .local v0, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_89

    .line 415
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    .line 417
    .local v1, "e":Ljava/util/Enumeration;
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 419
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 421
    .local v2, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 422
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 423
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 424
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 425
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 426
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 427
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 428
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 429
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 430
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 431
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 433
    goto :goto_17

    .line 436
    :cond_7c
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 438
    .local v3, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 440
    const/4 v4, 0x1

    return v4

    .line 442
    .end local v2    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_88
    goto :goto_17

    .line 446
    .end local v0    # "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 13

    .line 463
    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 464
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "nl":Ljava/lang/String;
    const-string v3, "  [0]         Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    const-string v3, "         SerialNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    const-string v3, "           Start Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    const-string v3, "           Final Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    const-string v3, "            SubjectDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string v3, "           Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSignature()[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->prettyPrintSignature([BLjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 477
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 479
    .local v3, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v3, :cond_1a9

    .line 481
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v4

    .line 483
    .local v4, "e":Ljava/util/Enumeration;
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 485
    const-string v5, "       Extensions: \n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    :cond_b5
    :goto_b5
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1a9

    .line 490
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 491
    .local v5, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v6

    .line 493
    .local v6, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    if-eqz v7, :cond_1a4

    .line 495
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 496
    .local v7, "octs":[B
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 497
    .local v8, "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    const-string v9, "                       critical("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    :try_start_eb
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_104

    .line 502
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_18d

    .line 504
    :cond_104
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_11c

    .line 506
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18d

    .line 508
    :cond_11c
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_139

    .line 510
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18d

    .line 512
    :cond_139
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_156

    .line 514
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeRevocationURL;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18d

    .line 516
    :cond_156
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_173

    .line 518
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/misc/VerisignCzagExtension;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/misc/VerisignCzagExtension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18d

    .line 522
    :cond_173
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_18d} :catch_18e

    .line 532
    :goto_18d
    goto :goto_1a3

    .line 527
    :catch_18e
    move-exception v9

    .line 529
    .local v9, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "*****"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    .end local v7    # "octs":[B
    .end local v8    # "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v9    # "ex":Ljava/lang/Exception;
    :goto_1a3
    goto :goto_1a7

    .line 536
    :cond_1a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    .end local v5    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :goto_1a7
    goto/16 :goto_b5

    .line 541
    .end local v4    # "e":Ljava/util/Enumeration;
    :cond_1a9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 549
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$1;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    .line 564
    return-void
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 572
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$2;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    .line 587
    return-void
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 597
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;Ljava/security/Provider;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    :try_end_8
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_8} :catch_a

    .line 617
    nop

    .line 618
    return-void

    .line 613
    :catch_a
    move-exception v0

    .line 616
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider issue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.class abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertificateImpl.java"


# instance fields
.field protected blacklist basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

.field protected blacklist bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field protected blacklist c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

.field protected blacklist keyUsage:[Z

.field protected blacklist sigAlgName:Ljava/lang/String;

.field protected blacklist sigAlgParams:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/Certificate;Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V
    .registers 7

    .line 86
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 88
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    .line 89
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    .line 90
    iput-object p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->keyUsage:[Z

    .line 91
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgName:Ljava/lang/String;

    .line 92
    iput-object p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgParams:[B

    return-void
.end method

.method private blacklist checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;[B)V
    .registers 7

    .line 760
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->isAlgIdEqual(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 766
    invoke-static {p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 768
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 772
    :try_start_1c
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object p3

    const/16 v0, 0x200

    invoke-direct {p1, p3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 774
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    const-string p3, "DER"

    invoke-virtual {p0, p1, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_35} :catch_44

    .line 783
    invoke-virtual {p2, p4}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_3c

    return-void

    .line 785
    :cond_3c
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "certificate does not verify with supplied key"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_44
    move-exception p0

    .line 780
    new-instance p1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 762
    :cond_4f
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist doVerify(Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    .registers 11

    .line 670
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 672
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 673
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 676
    :goto_2e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v2, v4, :cond_62

    .line 678
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 679
    invoke-static {v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 685
    :try_start_41
    invoke-interface {p2, v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 689
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 690
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v7

    .line 687
    invoke-direct {p0, p1, v5, v4, v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_58
    .catch Ljava/security/InvalidKeyException; {:try_start_41 .. :try_end_58} :catch_5c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_58} :catch_5c
    .catch Ljava/security/SignatureException; {:try_start_41 .. :try_end_58} :catch_5a

    const/4 v3, 0x1

    goto :goto_5c

    :catch_5a
    move-exception v4

    move-object v6, v4

    :catch_5c
    :goto_5c
    if-nez v6, :cond_61

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 709
    :cond_61
    throw v6

    :cond_62
    if-eqz v3, :cond_65

    return-void

    .line 715
    :cond_65
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "no matching key found"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 720
    :cond_6d
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-interface {p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 746
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    .line 747
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSignature()[B

    move-result-object v1

    .line 746
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;[B)V

    return-void
.end method

.method private static blacklist getAlternativeNames(Lcom/android/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Ljava/util/Collection;
    .registers 6

    .line 835
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Lcom/android/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 842
    :cond_8
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 843
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    .line 844
    :catch_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 846
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 847
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 848
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_c4

    .line 881
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad tag number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 865
    :pswitch_55
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 868
    :pswitch_65
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_71} :catch_b9

    .line 872
    :try_start_71
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_79
    .catch Ljava/net/UnknownHostException; {:try_start_71 .. :try_end_79} :catch_15
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_b9

    .line 878
    :try_start_79
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 857
    :pswitch_7d
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 862
    :pswitch_8f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 854
    :pswitch_9d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    :goto_a4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 886
    :cond_ad
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p0

    if-nez p0, :cond_b4

    return-object p1

    .line 890
    :cond_b4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_b8} :catch_b9

    return-object p0

    :catch_b9
    move-exception p0

    .line 894
    new-instance p1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_8f
        :pswitch_8f
        :pswitch_9d
        :pswitch_7d
        :pswitch_9d
        :pswitch_8f
        :pswitch_65
        :pswitch_55
    .end packed-switch
.end method

.method protected static blacklist getExtensionOctets(Lcom/android/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B
    .registers 2

    .line 900
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionValue(Lcom/android/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 903
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static blacklist getExtensionValue(Lcom/android/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 3

    .line 910
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 913
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 916
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist isAlgIdEqual(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z
    .registers 5

    .line 791
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return v0

    .line 796
    :cond_10
    const-string p0, "com.android.org.bouncycastle.x509.allow_absent_equiv_NULL"

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_4d

    .line 798
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-nez p0, :cond_33

    .line 800
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-eqz p0, :cond_32

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    sget-object p1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    return v0

    :cond_32
    return v1

    .line 808
    :cond_33
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-nez p0, :cond_4d

    .line 810
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-eqz p0, :cond_4c

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    sget-object p1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    return v0

    :cond_4c
    return v1

    .line 819
    :cond_4d
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-eqz p0, :cond_60

    .line 821
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 824
    :cond_60
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-eqz p0, :cond_73

    .line 826
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_73
    return v1
.end method


# virtual methods
.method public whitelist test-api checkValidity()V
    .registers 2

    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public whitelist test-api checkValidity(Ljava/util/Date;)V
    .registers 6

    .line 120
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_42

    .line 125
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotBefore()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_21

    return-void

    .line 127
    :cond_21
    new-instance p1, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate not valid till "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_42
    new-instance p1, Ljava/security/cert/CertificateExpiredException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate expired on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api getBasicConstraints()I
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1c

    .line 310
    :cond_b
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    if-nez p0, :cond_17

    const p0, 0x7fffffff

    return p0

    .line 316
    :cond_17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->intPositiveValueExact()I

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5

    .line 333
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 335
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 336
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 340
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    .line 342
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 344
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 345
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 347
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 349
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

.method public whitelist test-api getExtendedKeyUsage()Ljava/util/List;
    .registers 4

    .line 280
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    const-string v0, "2.5.29.37"

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Lcom/android/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 288
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 291
    :goto_1a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_30

    .line 293
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 295
    :cond_30
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_34} :catch_35

    return-object p0

    .line 299
    :catch_35
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "error processing extended key usage extension"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 3

    .line 362
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionValue(Lcom/android/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 367
    :try_start_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error parsing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 2

    .line 328
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getAlternativeNames(Lcom/android/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 143
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getIssuerUniqueID()[Z
    .registers 8

    .line 234
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuerUniqueId()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 238
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    .line 239
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result p0

    sub-int/2addr v1, p0

    new-array p0, v1, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-eq v3, v1, :cond_33

    .line 243
    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v0, v4

    rem-int/lit8 v5, v3, 0x8

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    move v4, v2

    :goto_2e
    aput-boolean v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_33
    return-object p0

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 150
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    .line 152
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 156
    :catch_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t encode issuer DN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getKeyUsage()[Z
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->keyUsage:[Z

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([Z)[Z

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5

    .line 380
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 382
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 383
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 387
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    .line 389
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 391
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 392
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 394
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 396
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

.method public whitelist test-api getNotAfter()Ljava/util/Date;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getNotBefore()Ljava/util/Date;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .registers 3

    .line 453
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to recover public key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgParams:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSignature()[B
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 2

    .line 322
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getAlternativeNames(Lcom/android/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSubjectDN()Ljava/security/Principal;
    .registers 2

    .line 162
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getSubjectUniqueID()[Z
    .registers 8

    .line 254
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectUniqueId()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 258
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    .line 259
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result p0

    sub-int/2addr v1, p0

    new-array p0, v1, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-eq v3, v1, :cond_33

    .line 263
    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v0, v4

    rem-int/lit8 v5, v3, 0x8

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    move v4, v2

    :goto_2e
    aput-boolean v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_33
    return-object p0

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 169
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    .line 171
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 175
    :catch_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t encode subject DN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getTBSCertificate()[B
    .registers 2

    .line 194
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 198
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getVersion()I
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 4

    .line 409
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_88

    .line 411
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_88

    .line 415
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 417
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 419
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 421
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 422
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 423
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 424
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 425
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 426
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 427
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 428
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 429
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 430
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 431
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_7c

    goto :goto_17

    .line 436
    :cond_7c
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 438
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_88
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 463
    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 464
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 466
    const-string v3, "  [0]         Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    const-string v3, "         SerialNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    const-string v3, "           Start Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    const-string v3, "           Final Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    const-string v3, "            SubjectDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string v3, "           Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSignature()[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->prettyPrintSignature([BLjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 477
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_190

    .line 481
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v3

    .line 483
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 485
    const-string v4, "       Extensions: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    :cond_a5
    :goto_a5
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_190

    .line 490
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 491
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v5

    .line 493
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    if-eqz v6, :cond_18b

    .line 495
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    .line 496
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 497
    const-string v6, "                       critical("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v5, ") "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    :try_start_d9
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 502
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a5

    .line 504
    :cond_f0
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_107

    .line 506
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a5

    .line 508
    :cond_107
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_123

    .line 510
    new-instance v5, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1BitString;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a5

    .line 512
    :cond_123
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_140

    .line 514
    new-instance v5, Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1IA5String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a5

    .line 516
    :cond_140
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 518
    new-instance v5, Lcom/android/org/bouncycastle/asn1/misc/VerisignCzagExtension;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/misc/VerisignCzagExtension;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1IA5String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a5

    .line 522
    :cond_15d
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_175} :catch_177

    goto/16 :goto_a5

    .line 529
    :catch_177
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "*****"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a5

    .line 536
    :cond_18b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a5

    .line 541
    :cond_190
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 3

    .line 549
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$1;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$1;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;)V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    return-void
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4

    .line 572
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$2;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    return-void
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4

    .line 597
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;

    invoke-direct {v0, p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;Ljava/security/Provider;)V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    :try_end_8
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 616
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

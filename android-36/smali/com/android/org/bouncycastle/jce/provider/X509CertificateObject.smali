.class public Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;
.super Ljava/security/cert/X509Certificate;
.source "X509CertificateObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private blacklist attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field private blacklist basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

.field private blacklist c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

.field private blacklist encoded:[B

.field private blacklist hashValue:I

.field private blacklist hashValueSet:Z

.field private blacklist keyUsage:[Z


# direct methods
.method private blacklist calculateHashCode()I
    .registers 5

    const/4 v0, 0x0

    .line 614
    :try_start_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object p0

    const/4 v1, 0x1

    move v2, v0

    .line 615
    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_11

    .line 617
    aget-byte v3, p0, v1
    :try_end_c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_c} :catch_12

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    return v2

    :catch_12
    return v0
.end method

.method private blacklist checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .registers 5

    .line 809
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->isAlgIdEqual(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 814
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 817
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 819
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getTBSCertificate()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 823
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_38

    return-void

    .line 825
    :cond_38
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "certificate does not verify with supplied key"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 811
    :cond_40
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getAlternativeNames([B)Ljava/util/Collection;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 868
    :cond_4
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 869
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    .line 870
    :catch_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 872
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 873
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 874
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_c2

    .line 909
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad tag number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 893
    :pswitch_51
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 896
    :pswitch_61
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6d} :catch_b6

    .line 900
    :try_start_6d
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_75
    .catch Ljava/net/UnknownHostException; {:try_start_6d .. :try_end_75} :catch_11
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_75} :catch_b6

    .line 906
    :try_start_75
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 884
    :pswitch_79
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v2

    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 890
    :pswitch_8c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 880
    :pswitch_9a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    :goto_a1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 914
    :cond_aa
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p0

    if-nez p0, :cond_b1

    return-object v0

    .line 918
    :cond_b1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_b5} :catch_b6

    return-object p0

    :catch_b6
    move-exception p0

    .line 922
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_8c
        :pswitch_8c
        :pswitch_9a
        :pswitch_79
        :pswitch_9a
        :pswitch_8c
        :pswitch_61
        :pswitch_51
    .end packed-switch
.end method

.method private blacklist getExtensionBytes(Ljava/lang/String;)[B
    .registers 3

    .line 427
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 431
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 434
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist isAlgIdEqual(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z
    .registers 5

    .line 831
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return v0

    .line 836
    :cond_10
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_2b

    .line 838
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-eqz p0, :cond_2a

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    sget-object p1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    return v0

    :cond_2a
    return v1

    .line 846
    :cond_2b
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-nez p0, :cond_45

    .line 848
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    sget-object p1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    return v0

    :cond_44
    return v1

    .line 856
    :cond_45
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public whitelist test-api checkValidity()V
    .registers 2

    .line 139
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public whitelist test-api checkValidity(Ljava/util/Date;)V
    .registers 6

    .line 146
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_42

    .line 151
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_21

    return-void

    .line 153
    :cond_21
    new-instance p1, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate not valid till "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_42
    new-instance p1, Ljava/security/cert/CertificateExpiredException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate expired on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 578
    :cond_4
    instance-of v0, p1, Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 583
    :cond_a
    check-cast p1, Ljava/security/cert/Certificate;

    .line 587
    :try_start_c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object p0

    .line 588
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    .line 590
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0
    :try_end_18
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_18} :catch_19

    return p0

    :catch_19
    return v1
.end method

.method public blacklist getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 637
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 1

    .line 642
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getBasicConstraints()I
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1c

    .line 375
    :cond_b
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    if-nez p0, :cond_17

    const p0, 0x7fffffff

    return p0

    .line 381
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

    .line 398
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 400
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 401
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 405
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    .line 407
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 409
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 410
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 412
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 414
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

.method public whitelist test-api getEncoded()[B
    .registers 3

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B

    if-nez v0, :cond_e

    .line 559
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B

    .line 561
    :cond_e
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 566
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getExtendedKeyUsage()Ljava/util/List;
    .registers 4

    .line 342
    const-string v0, "2.5.29.37"

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 348
    :try_start_8
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 349
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 352
    :goto_19
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_2f

    .line 354
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 357
    :cond_2f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_33} :catch_34

    return-object p0

    .line 361
    :catch_34
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "error processing extended key usage extension"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 4

    .line 443
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 447
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 453
    :try_start_17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p0

    .line 457
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

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 2

    .line 393
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getAlternativeNames([B)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 169
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getIssuerUniqueID()[Z
    .registers 8

    .line 296
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuerUniqueId()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 300
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    .line 301
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

    .line 305
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

    .line 176
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 180
    :catch_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t encode issuer DN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getKeyUsage()[Z
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    return-object p0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5

    .line 467
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 469
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 470
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 474
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    .line 476
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 478
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 479
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 481
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 483
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

    .line 208
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getNotBefore()Ljava/util/Date;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .registers 1

    .line 541
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 7

    .line 235
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 237
    const-string v1, "Alg.Alias.Signature."

    if-eqz v0, :cond_24

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    return-object v0

    .line 247
    :cond_24
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v2, 0x0

    .line 252
    :goto_29
    array-length v3, v0

    if-eq v2, v3, :cond_4b

    .line 254
    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_48

    return-object v3

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 261
    :cond_4b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 281
    :try_start_d
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    :cond_22
    return-object v1
.end method

.method public whitelist test-api getSignature()[B
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 2

    .line 387
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getAlternativeNames([B)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSubjectDN()Ljava/security/Principal;
    .registers 2

    .line 186
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getSubjectUniqueID()[Z
    .registers 8

    .line 316
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectUniqueId()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 320
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    .line 321
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

    .line 325
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

    .line 193
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 197
    :catch_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t encode issuer DN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getTBSCertificate()[B
    .registers 2

    .line 216
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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

    .line 220
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getVersion()I
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 5

    .line 496
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8c

    .line 498
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_8c

    .line 502
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 504
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 506
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 507
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    .line 509
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 510
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 513
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 514
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 515
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 517
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 519
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    goto :goto_17

    .line 524
    :cond_80
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_8c
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized whitelist test-api hashCode()I
    .registers 2

    monitor-enter p0

    .line 600
    :try_start_1
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    if-nez v0, :cond_11

    .line 602
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->calculateHashCode()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I

    const/4 v0, 0x1

    .line 603
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    goto :goto_11

    :catchall_f
    move-exception v0

    goto :goto_15

    .line 606
    :cond_11
    :goto_11
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_f

    monitor-exit p0

    return v0

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v0
.end method

.method public blacklist setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 631
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 647
    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 648
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 650
    const-string v3, "  [0]         Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    const-string v3, "         SerialNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    const-string v3, "           Start Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    const-string v3, "           Final Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 655
    const-string v3, "            SubjectDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    const-string v3, "           Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object v3

    .line 661
    const-string v4, "            Signature: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static {v3, v5, v6}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v6

    .line 662
    :goto_9f
    array-length v5, v3

    if-ge v4, v5, :cond_d2

    .line 664
    array-length v5, v3

    sub-int/2addr v5, v6

    const-string v7, "                       "

    if-ge v4, v5, :cond_bb

    .line 666
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/String;

    invoke-static {v3, v4, v6}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_cf

    .line 670
    :cond_bb
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/String;

    array-length v7, v3

    sub-int/2addr v7, v4

    invoke-static {v3, v4, v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_cf
    add-int/lit8 v4, v4, 0x14

    goto :goto_9f

    .line 674
    :cond_d2
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_1d2

    .line 678
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v3

    .line 680
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 682
    const-string v4, "       Extensions: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 685
    :cond_ed
    :goto_ed
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1d2

    .line 687
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 688
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v5

    .line 690
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    if-eqz v6, :cond_1cd

    .line 692
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    .line 693
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 694
    const-string v6, "                       critical("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v5, ") "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    :try_start_121
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_138

    .line 699
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ed

    .line 701
    :cond_138
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_14f

    .line 703
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ed

    .line 705
    :cond_14f
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_169

    .line 707
    new-instance v5, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1BitString;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ed

    .line 709
    :cond_169
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_184

    .line 711
    new-instance v5, Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1IA5String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_ed

    .line 713
    :cond_184
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_19f

    .line 715
    new-instance v5, Lcom/android/org/bouncycastle/asn1/misc/VerisignCzagExtension;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/misc/VerisignCzagExtension;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1IA5String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_ed

    .line 719
    :cond_19f
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 720
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_1b7} :catch_1b9

    goto/16 :goto_ed

    .line 726
    :catch_1b9
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "*****"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_ed

    .line 733
    :cond_1cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_ed

    .line 738
    :cond_1d2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 4

    .line 747
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 751
    :try_start_a
    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_15

    .line 755
    :catch_11
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 758
    :goto_15
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4

    .line 767
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_11

    .line 772
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_15

    .line 776
    :cond_11
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 779
    :goto_15
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4

    .line 788
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_11

    .line 793
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_15

    .line 797
    :cond_11
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 800
    :goto_15
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

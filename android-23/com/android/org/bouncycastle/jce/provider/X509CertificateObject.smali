.class public Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;
.super Ljava/security/cert/X509Certificate;
.source "X509CertificateObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field private basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

.field private c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

.field private encoded:[B

.field private hashValue:I

.field private hashValueSet:Z

.field private keyUsage:[Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V
    .locals 10
    .param p1, "c"    # Lcom/android/org/bouncycastle/asn1/x509/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x9

    #@2
    const/4 v6, 0x0

    #@3
    .line 82
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    #@6
    .line 80
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@8
    invoke-direct {v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@b
    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@d
    .line 86
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@f
    .line 90
    :try_start_0
    const-string/jumbo v7, "2.5.29.19"

    #@12
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    #@15
    move-result-object v1

    #@16
    .line 92
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    #@18
    .line 94
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1b
    move-result-object v7

    #@1c
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@1f
    move-result-object v7

    #@20
    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 104
    :cond_0
    :try_start_1
    const-string/jumbo v7, "2.5.29.15"

    #@25
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    #@28
    move-result-object v1

    #@29
    .line 105
    if-eqz v1, :cond_3

    #@2b
    .line 107
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2e
    move-result-object v7

    #@2f
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@32
    move-result-object v0

    #@33
    .line 109
    .local v0, "bits":Lcom/android/org/bouncycastle/asn1/DERBitString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@36
    move-result-object v1

    #@37
    .line 110
    array-length v7, v1

    #@38
    mul-int/lit8 v7, v7, 0x8

    #@3a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    #@3d
    move-result v8

    #@3e
    sub-int v4, v7, v8

    #@40
    .line 112
    .local v4, "length":I
    if-ge v4, v5, :cond_1

    #@42
    :goto_0
    new-array v5, v5, [Z

    #@44
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    #@46
    .line 114
    const/4 v3, 0x0

    #@47
    .local v3, "i":I
    :goto_1
    if-eq v3, v4, :cond_4

    #@49
    .line 116
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    #@4b
    div-int/lit8 v5, v3, 0x8

    #@4d
    aget-byte v5, v1, v5

    #@4f
    rem-int/lit8 v8, v3, 0x8

    #@51
    const/16 v9, 0x80

    #@53
    ushr-int v8, v9, v8

    #@55
    and-int/2addr v5, v8

    #@56
    if-eqz v5, :cond_2

    #@58
    const/4 v5, 0x1

    #@59
    :goto_2
    aput-boolean v5, v7, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@5b
    .line 114
    add-int/lit8 v3, v3, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 98
    .end local v0    # "bits":Lcom/android/org/bouncycastle/asn1/DERBitString;
    .end local v1    # "bytes":[B
    .end local v3    # "i":I
    .end local v4    # "length":I
    :catch_0
    move-exception v2

    #@5f
    .line 99
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@61
    new-instance v6, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v7, "cannot construct BasicConstraints: "

    #@69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v6

    #@75
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@78
    throw v5

    #@79
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bits":Lcom/android/org/bouncycastle/asn1/DERBitString;
    .restart local v1    # "bytes":[B
    .restart local v4    # "length":I
    :cond_1
    move v5, v4

    #@7a
    .line 112
    goto :goto_0

    #@7b
    .restart local v3    # "i":I
    :cond_2
    move v5, v6

    #@7c
    .line 116
    goto :goto_2

    #@7d
    .line 121
    .end local v0    # "bits":Lcom/android/org/bouncycastle/asn1/DERBitString;
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_3
    const/4 v5, 0x0

    #@7e
    :try_start_2
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@80
    .line 84
    :cond_4
    return-void

    #@81
    .line 125
    :catch_1
    move-exception v2

    #@82
    .line 126
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@84
    new-instance v6, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v7, "cannot construct KeyUsage: "

    #@8c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v6

    #@98
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v5
.end method

.method private calculateHashCode()I
    .locals 5

    #@0
    .prologue
    .line 632
    const/4 v2, 0x0

    #@1
    .line 633
    .local v2, "hashCode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    #@4
    move-result-object v0

    #@5
    .line 634
    .local v0, "certData":[B
    const/4 v3, 0x1

    #@6
    .local v3, "i":I
    :goto_0
    array-length v4, v0

    #@7
    if-ge v3, v4, :cond_0

    #@9
    .line 636
    aget-byte v4, v0, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    mul-int/2addr v4, v3

    #@c
    add-int/2addr v2, v4

    #@d
    .line 634
    add-int/lit8 v3, v3, 0x1

    #@f
    goto :goto_0

    #@10
    .line 638
    :cond_0
    return v2

    #@11
    .line 641
    .end local v0    # "certData":[B
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    #@12
    .line 642
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const/4 v4, 0x0

    #@13
    return v4
.end method

.method private checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "signature"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@8
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@f
    move-result-object v2

    #@10
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->isAlgIdEqual(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 800
    new-instance v1, Ljava/security/cert/CertificateException;

    #@18
    const-string/jumbo v2, "signature algorithm in TBS cert not same as outer cert"

    #@1b
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 803
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@21
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@28
    move-result-object v0

    #@29
    .line 806
    .local v0, "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2c
    .line 808
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@2f
    .line 810
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getTBSCertificate()[B

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p2, v1}, Ljava/security/Signature;->update([B)V

    #@36
    .line 812
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {p2, v1}, Ljava/security/Signature;->verify([B)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_1

    #@40
    .line 814
    new-instance v1, Ljava/security/SignatureException;

    #@42
    const-string/jumbo v2, "certificate does not verify with supplied key"

    #@45
    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@48
    throw v1

    #@49
    .line 796
    :cond_1
    return-void
.end method

.method private static getAlternativeNames([B)Ljava/util/Collection;
    .locals 12
    .param p0, "extVal"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 851
    if-nez p0, :cond_0

    #@3
    .line 853
    return-object v11

    #@4
    .line 857
    :cond_0
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    #@6
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 858
    .local v7, "temp":Ljava/util/Collection;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@c
    move-result-object v8

    #@d
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@10
    move-result-object v5

    #@11
    .line 859
    .local v5, "it":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@14
    move-result v8

    #@15
    if-eqz v8, :cond_1

    #@17
    .line 861
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1a
    move-result-object v8

    #@1b
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@1e
    move-result-object v4

    #@1f
    .line 862
    .local v4, "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v6, Ljava/util/ArrayList;

    #@21
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@24
    .line 863
    .local v6, "list":Ljava/util/List;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@27
    move-result v8

    #@28
    invoke-static {v8}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v8

    #@2c
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 864
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@32
    move-result v8

    #@33
    packed-switch v8, :pswitch_data_0

    #@36
    .line 898
    new-instance v8, Ljava/io/IOException;

    #@38
    new-instance v9, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v10, "Bad tag number: "

    #@40
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@47
    move-result v10

    #@48
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@53
    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 910
    .end local v4    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "it":Ljava/util/Enumeration;
    .end local v6    # "list":Ljava/util/List;
    .end local v7    # "temp":Ljava/util/Collection;
    :catch_0
    move-exception v2

    #@55
    .line 911
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/security/cert/CertificateParsingException;

    #@57
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    invoke-direct {v8, v9}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v8

    #@5f
    .line 869
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "it":Ljava/util/Enumeration;
    .restart local v6    # "list":Ljava/util/List;
    .restart local v7    # "temp":Ljava/util/Collection;
    :pswitch_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getEncoded()[B

    #@62
    move-result-object v8

    #@63
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@66
    .line 901
    :goto_1
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@69
    move-result-object v8

    #@6a
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@6d
    goto :goto_0

    #@6e
    .line 873
    :pswitch_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@71
    move-result-object v8

    #@72
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@75
    move-result-object v8

    #@76
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@78
    const/4 v10, 0x1

    #@79
    invoke-virtual {v8, v10, v9}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@80
    goto :goto_1

    #@81
    .line 879
    :pswitch_2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@84
    move-result-object v8

    #@85
    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@87
    invoke-interface {v8}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    #@8a
    move-result-object v8

    #@8b
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8e
    goto :goto_1

    #@8f
    .line 882
    :pswitch_3
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@92
    move-result-object v8

    #@93
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@96
    move-result-object v8

    #@97
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@9a
    move-result-object v8

    #@9b
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9e
    goto :goto_1

    #@9f
    .line 885
    :pswitch_4
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a2
    move-result-object v8

    #@a3
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@a6
    move-result-object v8

    #@a7
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@aa
    move-result-object v1

    #@ab
    .line 889
    .local v1, "addrBytes":[B
    :try_start_2
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@ae
    move-result-object v8

    #@af
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@b2
    move-result-object v0

    #@b3
    .line 895
    .local v0, "addr":Ljava/lang/String;
    :try_start_3
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b6
    goto :goto_1

    #@b7
    .line 903
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "addrBytes":[B
    .end local v4    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v6    # "list":Ljava/util/List;
    :cond_1
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    #@ba
    move-result v8

    #@bb
    if-nez v8, :cond_2

    #@bd
    .line 905
    return-object v11

    #@be
    .line 907
    :cond_2
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@c1
    move-result-object v8

    #@c2
    return-object v8

    #@c3
    .line 892
    .restart local v1    # "addrBytes":[B
    .restart local v4    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v6    # "list":Ljava/util/List;
    :catch_1
    move-exception v3

    #@c4
    .local v3, "e":Ljava/net/UnknownHostException;
    goto/16 :goto_0

    #@c6
    .line 864
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getExtensionBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 446
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@3
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@a
    move-result-object v1

    #@b
    .line 448
    .local v1, "exts":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_0

    #@d
    .line 450
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@15
    move-result-object v0

    #@16
    .line 451
    .local v0, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_0

    #@18
    .line 453
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@1f
    move-result-object v2

    #@20
    return-object v2

    #@21
    .line 457
    .end local v0    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    return-object v3
.end method

.method private isAlgIdEqual(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z
    .locals 4
    .param p1, "id1"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "id2"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 820
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 822
    return v2

    #@11
    .line 825
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_3

    #@17
    .line 827
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1a
    move-result-object v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@20
    move-result-object v0

    #@21
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 832
    :cond_1
    return v3

    #@2a
    .line 829
    :cond_2
    return v2

    #@2b
    .line 835
    :cond_3
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2e
    move-result-object v0

    #@2f
    if-nez v0, :cond_6

    #@31
    .line 837
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@34
    move-result-object v0

    #@35
    if-eqz v0, :cond_4

    #@37
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3a
    move-result-object v0

    #@3b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_5

    #@43
    .line 842
    :cond_4
    return v3

    #@44
    .line 839
    :cond_5
    return v2

    #@45
    .line 845
    :cond_6
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v0

    #@51
    return v0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->checkValidity(Ljava/util/Date;)V

    #@8
    .line 131
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    #@b
    move-result-wide v2

    #@c
    cmp-long v0, v0, v2

    #@e
    if-lez v0, :cond_0

    #@10
    .line 142
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "certificate expired on "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@20
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@37
    move-result-wide v0

    #@38
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    #@3f
    move-result-wide v2

    #@40
    cmp-long v0, v0, v2

    #@42
    if-gez v0, :cond_1

    #@44
    .line 147
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    #@46
    new-instance v1, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v2, "certificate not valid till "

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@54
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    #@67
    throw v0

    #@68
    .line 138
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 592
    if-ne p1, p0, :cond_0

    #@3
    .line 594
    const/4 v4, 0x1

    #@4
    return v4

    #@5
    .line 597
    :cond_0
    instance-of v4, p1, Ljava/security/cert/Certificate;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 599
    return v5

    #@a
    :cond_1
    move-object v3, p1

    #@b
    .line 602
    check-cast v3, Ljava/security/cert/Certificate;

    #@d
    .line 606
    .local v3, "other":Ljava/security/cert/Certificate;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    #@10
    move-result-object v0

    #@11
    .line 607
    .local v0, "b1":[B
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@14
    move-result-object v1

    #@15
    .line 609
    .local v1, "b2":[B
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v4

    #@19
    return v4

    #@1a
    .line 612
    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    :catch_0
    move-exception v2

    #@1b
    .line 613
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    return v5
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBasicConstraints()I
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 381
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@3
    if-eqz v0, :cond_2

    #@5
    .line 383
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 385
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 387
    const v0, 0x7fffffff

    #@18
    return v0

    #@19
    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@1b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@22
    move-result v0

    #@23
    return v0

    #@24
    .line 396
    :cond_1
    return v1

    #@25
    .line 400
    :cond_2
    return v1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 417
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    #@4
    move-result v5

    #@5
    const/4 v6, 0x3

    #@6
    if-ne v5, v6, :cond_2

    #@8
    .line 419
    new-instance v4, Ljava/util/HashSet;

    #@a
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@d
    .line 420
    .local v4, "set":Ljava/util/Set;
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@16
    move-result-object v2

    #@17
    .line 422
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_2

    #@19
    .line 424
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@1c
    move-result-object v0

    #@1d
    .line 426
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 428
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29
    .line 429
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@2c
    move-result-object v1

    #@2d
    .line 431
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_0

    #@33
    .line 433
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 437
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    return-object v4

    #@3c
    .line 441
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v2    # "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .end local v4    # "set":Ljava/util/Set;
    :cond_2
    return-object v7
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B

    #@2
    if-nez v1, :cond_0

    #@4
    .line 578
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@6
    const-string/jumbo v2, "DER"

    #@9
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B

    #@f
    .line 580
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    return-object v1

    #@12
    .line 584
    :catch_0
    move-exception v0

    #@13
    .line 585
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    #@15
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 353
    const-string/jumbo v6, "2.5.29.37"

    #@4
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    #@7
    move-result-object v0

    #@8
    .line 355
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    #@a
    .line 359
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@c
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@f
    .line 360
    .local v1, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@15
    .line 361
    .local v5, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v4, Ljava/util/ArrayList;

    #@17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 363
    .local v4, "list":Ljava/util/List;
    const/4 v3, 0x0

    #@1b
    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1e
    move-result v6

    #@1f
    if-eq v3, v6, :cond_0

    #@21
    .line 365
    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@24
    move-result-object v6

    #@25
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    .line 363
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_0

    #@31
    .line 368
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result-object v6

    #@35
    return-object v6

    #@36
    .line 371
    .end local v1    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/List;
    .end local v5    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v2

    #@37
    .line 372
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    #@39
    const-string/jumbo v7, "error processing extended key usage extension"

    #@3c
    invoke-direct {v6, v7}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v6

    #@40
    .line 376
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v7
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 462
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@3
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@a
    move-result-object v2

    #@b
    .line 464
    .local v2, "exts":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_0

    #@d
    .line 466
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@15
    move-result-object v1

    #@16
    .line 468
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    #@18
    .line 472
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v3

    #@20
    return-object v3

    #@21
    .line 475
    :catch_0
    move-exception v0

    #@22
    .line 476
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
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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
    .line 481
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    return-object v4
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getAlternativeNames([B)Ljava/util/Collection;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 3

    #@0
    .prologue
    .line 165
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@4
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    #@b
    move-result-object v2

    #@c
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    return-object v1

    #@14
    .line 168
    :catch_0
    move-exception v0

    #@15
    .line 169
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@16
    return-object v1
.end method

.method public getIssuerUniqueID()[Z
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 307
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@4
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuerUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@b
    move-result-object v3

    #@c
    .line 309
    .local v3, "id":Lcom/android/org/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_2

    #@e
    .line 311
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@11
    move-result-object v1

    #@12
    .line 312
    .local v1, "bytes":[B
    array-length v4, v1

    #@13
    mul-int/lit8 v4, v4, 0x8

    #@15
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    #@18
    move-result v6

    #@19
    sub-int/2addr v4, v6

    #@1a
    new-array v0, v4, [Z

    #@1c
    .line 314
    .local v0, "boolId":[Z
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@1e
    if-eq v2, v4, :cond_1

    #@20
    .line 316
    div-int/lit8 v4, v2, 0x8

    #@22
    aget-byte v4, v1, v4

    #@24
    rem-int/lit8 v6, v2, 0x8

    #@26
    const/16 v7, 0x80

    #@28
    ushr-int v6, v7, v6

    #@2a
    and-int/2addr v4, v6

    #@2b
    if-eqz v4, :cond_0

    #@2d
    const/4 v4, 0x1

    #@2e
    :goto_1
    aput-boolean v4, v0, v2

    #@30
    .line 314
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    :cond_0
    move v4, v5

    #@34
    .line 316
    goto :goto_1

    #@35
    .line 319
    :cond_1
    return-object v0

    #@36
    .line 322
    .end local v0    # "boolId":[Z
    .end local v1    # "bytes":[B
    .end local v2    # "i":I
    :cond_2
    return-object v6
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    #@0
    .prologue
    .line 177
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 178
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 180
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@13
    .line 182
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    #@15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@18
    move-result-object v4

    #@19
    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    return-object v3

    #@1d
    .line 185
    .end local v0    # "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .end local v1    # "bOut":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    #@1e
    .line 186
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@20
    const-string/jumbo v4, "can\'t encode issuer DN"

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3
.end method

.method public getKeyUsage()[Z
    .locals 1

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    #@2
    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 486
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    #@4
    move-result v5

    #@5
    const/4 v6, 0x3

    #@6
    if-ne v5, v6, :cond_2

    #@8
    .line 488
    new-instance v4, Ljava/util/HashSet;

    #@a
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@d
    .line 489
    .local v4, "set":Ljava/util/Set;
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@16
    move-result-object v2

    #@17
    .line 491
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_2

    #@19
    .line 493
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@1c
    move-result-object v0

    #@1d
    .line 495
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 497
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29
    .line 498
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@2c
    move-result-object v1

    #@2d
    .line 500
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_0

    #@33
    .line 502
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 506
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    return-object v4

    #@3c
    .line 510
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v2    # "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .end local v4    # "set":Ljava/util/Set;
    :cond_2
    return-object v7
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2

    #@0
    .prologue
    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 563
    :catch_0
    move-exception v0

    #@c
    .line 564
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 246
    const-string/jumbo v4, "BC"

    #@3
    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@6
    move-result-object v2

    #@7
    .line 248
    .local v2, "prov":Ljava/security/Provider;
    if-eqz v2, :cond_0

    #@9
    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "Alg.Alias.Signature."

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v2, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 252
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@27
    .line 254
    return-object v0

    #@28
    .line 258
    .end local v0    # "algName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@2b
    move-result-object v3

    #@2c
    .line 263
    .local v3, "provs":[Ljava/security/Provider;
    const/4 v1, 0x0

    #@2d
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@2e
    if-eq v1, v4, :cond_2

    #@30
    .line 265
    aget-object v4, v3, v1

    #@32
    new-instance v5, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v6, "Alg.Alias.Signature."

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v4, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    .line 266
    .restart local v0    # "algName":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@50
    .line 268
    return-object v0

    #@51
    .line 263
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_0

    #@54
    .line 272
    .end local v0    # "algName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    return-object v4
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

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
    const/4 v3, 0x0

    #@1
    .line 288
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@3
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@16
    move-result-object v1

    #@17
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "DER"

    #@1e
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 295
    :catch_0
    move-exception v0

    #@24
    .line 296
    .local v0, "e":Ljava/io/IOException;
    return-object v3

    #@25
    .line 301
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-object v3
.end method

.method public getSignature()[B
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getAlternativeNames([B)Ljava/util/Collection;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 2

    #@0
    .prologue
    .line 192
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

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

.method public getSubjectUniqueID()[Z
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 327
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@4
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@b
    move-result-object v3

    #@c
    .line 329
    .local v3, "id":Lcom/android/org/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_2

    #@e
    .line 331
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@11
    move-result-object v1

    #@12
    .line 332
    .local v1, "bytes":[B
    array-length v4, v1

    #@13
    mul-int/lit8 v4, v4, 0x8

    #@15
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    #@18
    move-result v6

    #@19
    sub-int/2addr v4, v6

    #@1a
    new-array v0, v4, [Z

    #@1c
    .line 334
    .local v0, "boolId":[Z
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@1e
    if-eq v2, v4, :cond_1

    #@20
    .line 336
    div-int/lit8 v4, v2, 0x8

    #@22
    aget-byte v4, v1, v4

    #@24
    rem-int/lit8 v6, v2, 0x8

    #@26
    const/16 v7, 0x80

    #@28
    ushr-int v6, v7, v6

    #@2a
    and-int/2addr v4, v6

    #@2b
    if-eqz v4, :cond_0

    #@2d
    const/4 v4, 0x1

    #@2e
    :goto_1
    aput-boolean v4, v0, v2

    #@30
    .line 334
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    :cond_0
    move v4, v5

    #@34
    .line 336
    goto :goto_1

    #@35
    .line 339
    :cond_1
    return-object v0

    #@36
    .line 342
    .end local v0    # "boolId":[Z
    .end local v1    # "bytes":[B
    .end local v2    # "i":I
    :cond_2
    return-object v6
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    #@0
    .prologue
    .line 199
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 200
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 202
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@13
    .line 204
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    #@15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@18
    move-result-object v4

    #@19
    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    return-object v3

    #@1d
    .line 207
    .end local v0    # "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .end local v1    # "bOut":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    #@1e
    .line 208
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@20
    const-string/jumbo v4, "can\'t encode issuer DN"

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3
.end method

.method public getTBSCertificate()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "DER"

    #@9
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 230
    :catch_0
    move-exception v0

    #@f
    .line 231
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    #@11
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 7

    #@0
    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    #@3
    move-result v5

    #@4
    const/4 v6, 0x3

    #@5
    if-ne v5, v6, :cond_1

    #@7
    .line 517
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@9
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@10
    move-result-object v2

    #@11
    .line 519
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_1

    #@13
    .line 521
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@16
    move-result-object v0

    #@17
    .line 523
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_1

    #@1d
    .line 525
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23
    .line 526
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 528
    .local v4, "oidId":Ljava/lang/String;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v5

    #@2d
    if-nez v5, :cond_0

    #@2f
    .line 529
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v5

    #@35
    .line 528
    if-nez v5, :cond_0

    #@37
    .line 530
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v5

    #@3d
    .line 528
    if-nez v5, :cond_0

    #@3f
    .line 531
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v5

    #@45
    .line 528
    if-nez v5, :cond_0

    #@47
    .line 532
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v5

    #@4d
    .line 528
    if-nez v5, :cond_0

    #@4f
    .line 533
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v5

    #@55
    .line 528
    if-nez v5, :cond_0

    #@57
    .line 534
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v5

    #@5d
    .line 528
    if-nez v5, :cond_0

    #@5f
    .line 535
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v5

    #@65
    .line 528
    if-nez v5, :cond_0

    #@67
    .line 536
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v5

    #@6d
    .line 528
    if-nez v5, :cond_0

    #@6f
    .line 537
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v5

    #@75
    .line 528
    if-nez v5, :cond_0

    #@77
    .line 538
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v5

    #@7d
    .line 528
    if-nez v5, :cond_0

    #@7f
    .line 543
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@82
    move-result-object v1

    #@83
    .line 545
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@86
    move-result v5

    #@87
    if-eqz v5, :cond_0

    #@89
    .line 547
    const/4 v5, 0x1

    #@8a
    return v5

    #@8b
    .line 553
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v2    # "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "oidId":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    #@8c
    return v5
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 619
    :try_start_0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 621
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->calculateHashCode()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I

    #@b
    .line 622
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    #@e
    .line 625
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    return v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5
    .line 648
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    #@0
    .prologue
    const/16 v14, 0x14

    #@2
    .line 666
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 667
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v11, "line.separator"

    #@a
    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v7

    #@e
    .line 669
    .local v7, "nl":Ljava/lang/String;
    const-string/jumbo v11, "  [0]         Version: "

    #@11
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    move-result-object v11

    #@15
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    #@18
    move-result v12

    #@19
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v11

    #@1d
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    .line 670
    const-string/jumbo v11, "         SerialNumber: "

    #@23
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    move-result-object v11

    #@27
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSerialNumber()Ljava/math/BigInteger;

    #@2a
    move-result-object v12

    #@2b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2e
    move-result-object v11

    #@2f
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    .line 671
    const-string/jumbo v11, "             IssuerDN: "

    #@35
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    move-result-object v11

    #@39
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getIssuerDN()Ljava/security/Principal;

    #@3c
    move-result-object v12

    #@3d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@40
    move-result-object v11

    #@41
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@44
    .line 672
    const-string/jumbo v11, "           Start Date: "

    #@47
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    move-result-object v11

    #@4b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    #@4e
    move-result-object v12

    #@4f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@52
    move-result-object v11

    #@53
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@56
    .line 673
    const-string/jumbo v11, "           Final Date: "

    #@59
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    move-result-object v11

    #@5d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    #@60
    move-result-object v12

    #@61
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@64
    move-result-object v11

    #@65
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@68
    .line 674
    const-string/jumbo v11, "            SubjectDN: "

    #@6b
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6e
    move-result-object v11

    #@6f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSubjectDN()Ljava/security/Principal;

    #@72
    move-result-object v12

    #@73
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@76
    move-result-object v11

    #@77
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7a
    .line 675
    const-string/jumbo v11, "           Public Key: "

    #@7d
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@80
    move-result-object v11

    #@81
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getPublicKey()Ljava/security/PublicKey;

    #@84
    move-result-object v12

    #@85
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@88
    move-result-object v11

    #@89
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8c
    .line 676
    const-string/jumbo v11, "  Signature Algorithm: "

    #@8f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@92
    move-result-object v11

    #@93
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgName()Ljava/lang/String;

    #@96
    move-result-object v12

    #@97
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9a
    move-result-object v11

    #@9b
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9e
    .line 678
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    #@a1
    move-result-object v10

    #@a2
    .line 680
    .local v10, "sig":[B
    const-string/jumbo v11, "            Signature: "

    #@a5
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a8
    move-result-object v11

    #@a9
    new-instance v12, Ljava/lang/String;

    #@ab
    const/4 v13, 0x0

    #@ac
    invoke-static {v10, v13, v14}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@af
    move-result-object v13

    #@b0
    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    #@b3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b6
    move-result-object v11

    #@b7
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ba
    .line 681
    const/16 v6, 0x14

    #@bc
    .local v6, "i":I
    :goto_0
    array-length v11, v10

    #@bd
    if-ge v6, v11, :cond_1

    #@bf
    .line 683
    array-length v11, v10

    #@c0
    add-int/lit8 v11, v11, -0x14

    #@c2
    if-ge v6, v11, :cond_0

    #@c4
    .line 685
    const-string/jumbo v11, "                       "

    #@c7
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ca
    move-result-object v11

    #@cb
    new-instance v12, Ljava/lang/String;

    #@cd
    invoke-static {v10, v6, v14}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@d0
    move-result-object v13

    #@d1
    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    #@d4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d7
    move-result-object v11

    #@d8
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@db
    .line 681
    :goto_1
    add-int/lit8 v6, v6, 0x14

    #@dd
    goto :goto_0

    #@de
    .line 689
    :cond_0
    const-string/jumbo v11, "                       "

    #@e1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e4
    move-result-object v11

    #@e5
    new-instance v12, Ljava/lang/String;

    #@e7
    array-length v13, v10

    #@e8
    sub-int/2addr v13, v6

    #@e9
    invoke-static {v10, v6, v13}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@ec
    move-result-object v13

    #@ed
    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    #@f0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f3
    move-result-object v11

    #@f4
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f7
    goto :goto_1

    #@f8
    .line 693
    :cond_1
    iget-object v11, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@fa
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@fd
    move-result-object v11

    #@fe
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@101
    move-result-object v5

    #@102
    .line 695
    .local v5, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v5, :cond_9

    #@104
    .line 697
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@107
    move-result-object v2

    #@108
    .line 699
    .local v2, "e":Ljava/util/Enumeration;
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@10b
    move-result v11

    #@10c
    if-eqz v11, :cond_2

    #@10e
    .line 701
    const-string/jumbo v11, "       Extensions: \n"

    #@111
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@114
    .line 704
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@117
    move-result v11

    #@118
    if-eqz v11, :cond_9

    #@11a
    .line 706
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@11d
    move-result-object v9

    #@11e
    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@120
    .line 707
    .local v9, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@123
    move-result-object v4

    #@124
    .line 709
    .local v4, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@127
    move-result-object v11

    #@128
    if-eqz v11, :cond_8

    #@12a
    .line 711
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@12d
    move-result-object v11

    #@12e
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@131
    move-result-object v8

    #@132
    .line 712
    .local v8, "octs":[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@134
    invoke-direct {v1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@137
    .line 713
    .local v1, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const-string/jumbo v11, "                       critical("

    #@13a
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13d
    move-result-object v11

    #@13e
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@141
    move-result v12

    #@142
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@145
    move-result-object v11

    #@146
    const-string/jumbo v12, ") "

    #@149
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14c
    .line 716
    :try_start_0
    sget-object v11, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14e
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@151
    move-result v11

    #@152
    if-eqz v11, :cond_3

    #@154
    .line 718
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@157
    move-result-object v11

    #@158
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@15b
    move-result-object v11

    #@15c
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@15f
    move-result-object v11

    #@160
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@163
    goto :goto_2

    #@164
    .line 744
    :catch_0
    move-exception v3

    #@165
    .line 745
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@168
    move-result-object v11

    #@169
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16c
    .line 747
    const-string/jumbo v11, " value = "

    #@16f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@172
    move-result-object v11

    #@173
    const-string/jumbo v12, "*****"

    #@176
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@179
    move-result-object v11

    #@17a
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17d
    goto :goto_2

    #@17e
    .line 720
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v11, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@180
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@183
    move-result v11

    #@184
    if-eqz v11, :cond_4

    #@186
    .line 722
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@189
    move-result-object v11

    #@18a
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    #@18d
    move-result-object v11

    #@18e
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@191
    move-result-object v11

    #@192
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@195
    goto/16 :goto_2

    #@197
    .line 724
    :cond_4
    sget-object v11, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@199
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@19c
    move-result v11

    #@19d
    if-eqz v11, :cond_5

    #@19f
    .line 726
    new-instance v12, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;

    #@1a1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1a4
    move-result-object v11

    #@1a5
    check-cast v11, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@1a7
    invoke-direct {v12, v11}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;-><init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    #@1aa
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1ad
    move-result-object v11

    #@1ae
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b1
    goto/16 :goto_2

    #@1b3
    .line 728
    :cond_5
    sget-object v11, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b5
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1b8
    move-result v11

    #@1b9
    if-eqz v11, :cond_6

    #@1bb
    .line 730
    new-instance v12, Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;

    #@1bd
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1c0
    move-result-object v11

    #@1c1
    check-cast v11, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@1c3
    invoke-direct {v12, v11}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lcom/android/org/bouncycastle/asn1/DERIA5String;)V

    #@1c6
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1c9
    move-result-object v11

    #@1ca
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1cd
    goto/16 :goto_2

    #@1cf
    .line 732
    :cond_6
    sget-object v11, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d1
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1d4
    move-result v11

    #@1d5
    if-eqz v11, :cond_7

    #@1d7
    .line 734
    new-instance v12, Lcom/android/org/bouncycastle/asn1/misc/VerisignCzagExtension;

    #@1d9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1dc
    move-result-object v11

    #@1dd
    check-cast v11, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@1df
    invoke-direct {v12, v11}, Lcom/android/org/bouncycastle/asn1/misc/VerisignCzagExtension;-><init>(Lcom/android/org/bouncycastle/asn1/DERIA5String;)V

    #@1e2
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1e5
    move-result-object v11

    #@1e6
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e9
    goto/16 :goto_2

    #@1eb
    .line 738
    :cond_7
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1ee
    move-result-object v11

    #@1ef
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f2
    .line 739
    const-string/jumbo v11, " value = "

    #@1f5
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f8
    move-result-object v11

    #@1f9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1fc
    move-result-object v12

    #@1fd
    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    #@200
    move-result-object v12

    #@201
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@204
    move-result-object v11

    #@205
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@208
    goto/16 :goto_2

    #@20a
    .line 752
    .end local v1    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v8    # "octs":[B
    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20d
    goto/16 :goto_2

    #@20f
    .line 757
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v4    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v9    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@212
    move-result-object v11

    #@213
    return-object v11
.end method

.method public final verify(Ljava/security/PublicKey;)V
    .locals 4
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

    #@0
    .prologue
    .line 766
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v3

    #@6
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 770
    .local v1, "sigName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "BC"

    #@d
    invoke-static {v1, v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    .line 777
    .local v2, "signature":Ljava/security/Signature;
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    #@14
    .line 763
    return-void

    #@15
    .line 773
    .end local v2    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v0

    #@16
    .line 774
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@19
    move-result-object v2

    #@1a
    .restart local v2    # "signature":Ljava/security/Signature;
    goto :goto_0
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 3
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

    #@0
    .prologue
    .line 786
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 787
    .local v0, "sigName":Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@d
    move-result-object v1

    #@e
    .line 789
    .local v1, "signature":Ljava/security/Signature;
    invoke-direct {p0, p1, v1}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    #@11
    .line 784
    return-void
.end method

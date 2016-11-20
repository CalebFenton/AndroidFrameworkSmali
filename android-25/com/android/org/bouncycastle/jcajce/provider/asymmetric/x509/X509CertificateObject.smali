.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;
.super Ljava/security/cert/X509Certificate;
.source "X509CertificateObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field private basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

.field private bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

.field private encoded:[B

.field private hashValue:I

.field private hashValueSet:Z

.field private keyUsage:[Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V
    .locals 10
    .param p1, "bcHelper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lcom/android/org/bouncycastle/asn1/x509/Certificate;
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
    .line 84
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    #@6
    .line 82
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@8
    invoke-direct {v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@b
    iput-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@d
    .line 89
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@f
    .line 90
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@11
    .line 94
    :try_start_0
    const-string/jumbo v7, "2.5.29.19"

    #@14
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    #@17
    move-result-object v1

    #@18
    .line 96
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    #@1a
    .line 98
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1d
    move-result-object v7

    #@1e
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@21
    move-result-object v7

    #@22
    iput-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 108
    :cond_0
    :try_start_1
    const-string/jumbo v7, "2.5.29.15"

    #@27
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    #@2a
    move-result-object v1

    #@2b
    .line 109
    if-eqz v1, :cond_3

    #@2d
    .line 111
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@30
    move-result-object v7

    #@31
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@34
    move-result-object v0

    #@35
    .line 113
    .local v0, "bits":Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    #@38
    move-result-object v1

    #@39
    .line 114
    array-length v7, v1

    #@3a
    mul-int/lit8 v7, v7, 0x8

    #@3c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    #@3f
    move-result v8

    #@40
    sub-int v4, v7, v8

    #@42
    .line 116
    .local v4, "length":I
    if-ge v4, v5, :cond_1

    #@44
    :goto_0
    new-array v5, v5, [Z

    #@46
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->keyUsage:[Z

    #@48
    .line 118
    const/4 v3, 0x0

    #@49
    .local v3, "i":I
    :goto_1
    if-eq v3, v4, :cond_4

    #@4b
    .line 120
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->keyUsage:[Z

    #@4d
    div-int/lit8 v5, v3, 0x8

    #@4f
    aget-byte v5, v1, v5

    #@51
    rem-int/lit8 v8, v3, 0x8

    #@53
    const/16 v9, 0x80

    #@55
    ushr-int v8, v9, v8

    #@57
    and-int/2addr v5, v8

    #@58
    if-eqz v5, :cond_2

    #@5a
    const/4 v5, 0x1

    #@5b
    :goto_2
    aput-boolean v5, v7, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@5d
    .line 118
    add-int/lit8 v3, v3, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 102
    .end local v0    # "bits":Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .end local v1    # "bytes":[B
    .end local v3    # "i":I
    .end local v4    # "length":I
    :catch_0
    move-exception v2

    #@61
    .line 103
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@63
    new-instance v6, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v7, "cannot construct BasicConstraints: "

    #@6b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v5

    #@7b
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bits":Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .restart local v1    # "bytes":[B
    .restart local v4    # "length":I
    :cond_1
    move v5, v4

    #@7c
    .line 116
    goto :goto_0

    #@7d
    .restart local v3    # "i":I
    :cond_2
    move v5, v6

    #@7e
    .line 120
    goto :goto_2

    #@7f
    .line 125
    .end local v0    # "bits":Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_3
    const/4 v5, 0x0

    #@80
    :try_start_2
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->keyUsage:[Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@82
    .line 87
    :cond_4
    return-void

    #@83
    .line 129
    :catch_1
    move-exception v2

    #@84
    .line 130
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@86
    new-instance v6, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v7, "cannot construct KeyUsage: "

    #@8e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v6

    #@92
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v6

    #@9a
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v5
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
    .line 808
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@8
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@f
    move-result-object v2

    #@10
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->isAlgIdEqual(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 810
    new-instance v1, Ljava/security/cert/CertificateException;

    #@18
    const-string/jumbo v2, "signature algorithm in TBS cert not same as outer cert"

    #@1b
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 813
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@21
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@28
    move-result-object v0

    #@29
    .line 816
    .local v0, "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2c
    .line 818
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@2f
    .line 820
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getTBSCertificate()[B

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p2, v1}, Ljava/security/Signature;->update([B)V

    #@36
    .line 822
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSignature()[B

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {p2, v1}, Ljava/security/Signature;->verify([B)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_1

    #@40
    .line 824
    new-instance v1, Ljava/security/SignatureException;

    #@42
    const-string/jumbo v2, "certificate does not verify with supplied key"

    #@45
    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@48
    throw v1

    #@49
    .line 806
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
    .line 861
    if-nez p0, :cond_0

    #@3
    .line 863
    return-object v11

    #@4
    .line 867
    :cond_0
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    #@6
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 868
    .local v7, "temp":Ljava/util/Collection;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@c
    move-result-object v8

    #@d
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@10
    move-result-object v5

    #@11
    .line 869
    .local v5, "it":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@14
    move-result v8

    #@15
    if-eqz v8, :cond_1

    #@17
    .line 871
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1a
    move-result-object v8

    #@1b
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@1e
    move-result-object v4

    #@1f
    .line 872
    .local v4, "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v6, Ljava/util/ArrayList;

    #@21
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@24
    .line 873
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
    .line 874
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@32
    move-result v8

    #@33
    packed-switch v8, :pswitch_data_0

    #@36
    .line 908
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
    .line 920
    .end local v4    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "it":Ljava/util/Enumeration;
    .end local v6    # "list":Ljava/util/List;
    .end local v7    # "temp":Ljava/util/Collection;
    :catch_0
    move-exception v2

    #@55
    .line 921
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/security/cert/CertificateParsingException;

    #@57
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    invoke-direct {v8, v9}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v8

    #@5f
    .line 879
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "it":Ljava/util/Enumeration;
    .restart local v6    # "list":Ljava/util/List;
    .restart local v7    # "temp":Ljava/util/Collection;
    :pswitch_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@62
    move-result-object v8

    #@63
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@66
    .line 911
    :goto_1
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@69
    move-result-object v8

    #@6a
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@6d
    goto :goto_0

    #@6e
    .line 883
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
    .line 889
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
    .line 892
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
    .line 895
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
    .line 899
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
    .line 905
    .local v0, "addr":Ljava/lang/String;
    :try_start_3
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b6
    goto :goto_1

    #@b7
    .line 913
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
    .line 915
    return-object v11

    #@be
    .line 917
    :cond_2
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@c1
    move-result-object v8

    #@c2
    return-object v8

    #@c3
    .line 902
    .restart local v1    # "addrBytes":[B
    .restart local v4    # "genName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v6    # "list":Ljava/util/List;
    :catch_1
    move-exception v3

    #@c4
    .local v3, "e":Ljava/net/UnknownHostException;
    goto/16 :goto_0

    #@c6
    .line 874
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
    .line 424
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@3
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@a
    move-result-object v1

    #@b
    .line 426
    .local v1, "exts":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_0

    #@d
    .line 428
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@15
    move-result-object v0

    #@16
    .line 429
    .local v0, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_0

    #@18
    .line 431
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
    .line 435
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
    .line 830
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 832
    return v2

    #@11
    .line 835
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_3

    #@17
    .line 837
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
    .line 842
    :cond_1
    return v3

    #@2a
    .line 839
    :cond_2
    return v2

    #@2b
    .line 845
    :cond_3
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2e
    move-result-object v0

    #@2f
    if-nez v0, :cond_6

    #@31
    .line 847
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
    .line 852
    :cond_4
    return v3

    #@44
    .line 849
    :cond_5
    return v2

    #@45
    .line 855
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
    .line 137
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->checkValidity(Ljava/util/Date;)V

    #@8
    .line 135
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
    .line 144
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getNotAfter()Ljava/util/Date;

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
    .line 146
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
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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
    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@37
    move-result-wide v0

    #@38
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getNotBefore()Ljava/util/Date;

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
    .line 151
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
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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
    .line 142
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 569
    if-ne p1, p0, :cond_0

    #@2
    .line 571
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 574
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    #@6
    if-eqz v1, :cond_2

    #@8
    move-object v0, p1

    #@9
    .line 576
    nop

    #@a
    nop

    #@b
    .line 578
    .local v0, "other":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    #@d
    if-eqz v1, :cond_1

    #@f
    iget-boolean v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 580
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    #@15
    iget v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    #@17
    if-eq v1, v2, :cond_1

    #@19
    .line 582
    const/4 v1, 0x0

    #@1a
    return v1

    #@1b
    .line 586
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@1d
    iget-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    return v1

    #@24
    .line 589
    .end local v0    # "other":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;
    :cond_2
    invoke-super {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    return v1
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

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
    .line 641
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

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
    .line 359
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@3
    if-eqz v0, :cond_2

    #@5
    .line 361
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 363
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 365
    const v0, 0x7fffffff

    #@18
    return v0

    #@19
    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

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
    .line 374
    :cond_1
    return v1

    #@25
    .line 378
    :cond_2
    return v1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 395
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getVersion()I

    #@4
    move-result v5

    #@5
    const/4 v6, 0x3

    #@6
    if-ne v5, v6, :cond_2

    #@8
    .line 397
    new-instance v4, Ljava/util/HashSet;

    #@a
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@d
    .line 398
    .local v4, "set":Ljava/util/Set;
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@16
    move-result-object v2

    #@17
    .line 400
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_2

    #@19
    .line 402
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@1c
    move-result-object v0

    #@1d
    .line 404
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 406
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29
    .line 407
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@2c
    move-result-object v1

    #@2d
    .line 409
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_0

    #@33
    .line 411
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 415
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    return-object v4

    #@3c
    .line 419
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
    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->encoded:[B

    #@2
    if-nez v1, :cond_0

    #@4
    .line 555
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@6
    const-string/jumbo v2, "DER"

    #@9
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->encoded:[B

    #@f
    .line 557
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->encoded:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    return-object v1

    #@12
    .line 561
    :catch_0
    move-exception v0

    #@13
    .line 562
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    #@15
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

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
    .line 331
    const-string/jumbo v6, "2.5.29.37"

    #@4
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    #@7
    move-result-object v0

    #@8
    .line 333
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    #@a
    .line 337
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@c
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@f
    .line 338
    .local v1, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@15
    .line 339
    .local v5, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v4, Ljava/util/ArrayList;

    #@17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 341
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
    .line 343
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
    .line 341
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_0

    #@31
    .line 346
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result-object v6

    #@35
    return-object v6

    #@36
    .line 349
    .end local v1    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/List;
    .end local v5    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v2

    #@37
    .line 350
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    #@39
    const-string/jumbo v7, "error processing extended key usage extension"

    #@3c
    invoke-direct {v6, v7}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v6

    #@40
    .line 354
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
    .line 440
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@3
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@a
    move-result-object v2

    #@b
    .line 442
    .local v2, "exts":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_0

    #@d
    .line 444
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@15
    move-result-object v1

    #@16
    .line 446
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    #@18
    .line 450
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
    .line 453
    :catch_0
    move-exception v0

    #@22
    .line 454
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
    .line 459
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
    .line 390
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getAlternativeNames([B)Ljava/util/Collection;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 3

    #@0
    .prologue
    .line 169
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@4
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

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
    .line 172
    :catch_0
    move-exception v0

    #@15
    .line 173
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
    .line 285
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@4
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuerUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@b
    move-result-object v3

    #@c
    .line 287
    .local v3, "id":Lcom/android/org/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_2

    #@e
    .line 289
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    #@11
    move-result-object v1

    #@12
    .line 290
    .local v1, "bytes":[B
    array-length v4, v1

    #@13
    mul-int/lit8 v4, v4, 0x8

    #@15
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    #@18
    move-result v6

    #@19
    sub-int/2addr v4, v6

    #@1a
    new-array v0, v4, [Z

    #@1c
    .line 292
    .local v0, "boolId":[Z
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@1e
    if-eq v2, v4, :cond_1

    #@20
    .line 294
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
    .line 292
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    :cond_0
    move v4, v5

    #@34
    .line 294
    goto :goto_1

    #@35
    .line 297
    :cond_1
    return-object v0

    #@36
    .line 300
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
    .line 181
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 182
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 184
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@13
    .line 186
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
    .line 189
    .end local v0    # "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .end local v1    # "bOut":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    #@1e
    .line 190
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
    .line 325
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->keyUsage:[Z

    #@2
    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 464
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getVersion()I

    #@4
    move-result v5

    #@5
    const/4 v6, 0x3

    #@6
    if-ne v5, v6, :cond_2

    #@8
    .line 466
    new-instance v4, Ljava/util/HashSet;

    #@a
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@d
    .line 467
    .local v4, "set":Ljava/util/Set;
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@16
    move-result-object v2

    #@17
    .line 469
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_2

    #@19
    .line 471
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@1c
    move-result-object v0

    #@1d
    .line 473
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 475
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29
    .line 476
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@2c
    move-result-object v1

    #@2d
    .line 478
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_0

    #@33
    .line 480
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 484
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    return-object v4

    #@3c
    .line 488
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
    .line 223
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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
    .line 218
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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
    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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
    .line 540
    :catch_0
    move-exception v0

    #@c
    .line 541
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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
    .line 266
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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
    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 273
    :catch_0
    move-exception v0

    #@24
    .line 274
    .local v0, "e":Ljava/io/IOException;
    return-object v3

    #@25
    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-object v3
.end method

.method public getSignature()[B
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

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
    .line 384
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getAlternativeNames([B)Ljava/util/Collection;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 2

    #@0
    .prologue
    .line 196
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

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
    .line 305
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@4
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@b
    move-result-object v3

    #@c
    .line 307
    .local v3, "id":Lcom/android/org/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_2

    #@e
    .line 309
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    #@11
    move-result-object v1

    #@12
    .line 310
    .local v1, "bytes":[B
    array-length v4, v1

    #@13
    mul-int/lit8 v4, v4, 0x8

    #@15
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    #@18
    move-result v6

    #@19
    sub-int/2addr v4, v6

    #@1a
    new-array v0, v4, [Z

    #@1c
    .line 312
    .local v0, "boolId":[Z
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@1e
    if-eq v2, v4, :cond_1

    #@20
    .line 314
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
    .line 312
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    :cond_0
    move v4, v5

    #@34
    .line 314
    goto :goto_1

    #@35
    .line 317
    :cond_1
    return-object v0

    #@36
    .line 320
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
    .line 203
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 204
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 206
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@13
    .line 208
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
    .line 211
    .end local v0    # "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .end local v1    # "bOut":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    #@1e
    .line 212
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
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

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
    .line 234
    :catch_0
    move-exception v0

    #@f
    .line 235
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    #@11
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

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
    .line 157
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 6

    #@0
    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getVersion()I

    #@3
    move-result v4

    #@4
    const/4 v5, 0x3

    #@5
    if-ne v4, v5, :cond_1

    #@7
    .line 495
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@9
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@10
    move-result-object v2

    #@11
    .line 497
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_1

    #@13
    .line 499
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@16
    move-result-object v0

    #@17
    .line 501
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 503
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23
    .line 505
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@25
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_0

    #@2b
    .line 506
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v4

    #@31
    .line 505
    if-nez v4, :cond_0

    #@33
    .line 507
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v4

    #@39
    .line 505
    if-nez v4, :cond_0

    #@3b
    .line 508
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v4

    #@41
    .line 505
    if-nez v4, :cond_0

    #@43
    .line 509
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@45
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v4

    #@49
    .line 505
    if-nez v4, :cond_0

    #@4b
    .line 510
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4d
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v4

    #@51
    .line 505
    if-nez v4, :cond_0

    #@53
    .line 511
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@55
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v4

    #@59
    .line 505
    if-nez v4, :cond_0

    #@5b
    .line 512
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5d
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v4

    #@61
    .line 505
    if-nez v4, :cond_0

    #@63
    .line 513
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@65
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v4

    #@69
    .line 505
    if-nez v4, :cond_0

    #@6b
    .line 514
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6d
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v4

    #@71
    .line 505
    if-nez v4, :cond_0

    #@73
    .line 515
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@75
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v4

    #@79
    .line 505
    if-nez v4, :cond_0

    #@7b
    .line 520
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@7e
    move-result-object v1

    #@7f
    .line 522
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@82
    move-result v4

    #@83
    if-eqz v4, :cond_0

    #@85
    .line 524
    const/4 v4, 0x1

    #@86
    return v4

    #@87
    .line 530
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v2    # "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    const/4 v4, 0x0

    #@88
    return v4
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 594
    :try_start_0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 596
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->hashCode()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    #@b
    .line 597
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    #@e
    .line 600
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I
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

.method public originalHashCode()I
    .locals 5

    #@0
    .prologue
    .line 612
    const/4 v2, 0x0

    #@1
    .line 613
    .local v2, "hashCode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getEncoded()[B

    #@4
    move-result-object v0

    #@5
    .line 614
    .local v0, "certData":[B
    const/4 v3, 0x1

    #@6
    .local v3, "i":I
    :goto_0
    array-length v4, v0

    #@7
    if-ge v3, v4, :cond_0

    #@9
    .line 616
    aget-byte v4, v0, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    mul-int/2addr v4, v3

    #@c
    add-int/2addr v2, v4

    #@d
    .line 614
    add-int/lit8 v3, v3, 0x1

    #@f
    goto :goto_0

    #@10
    .line 618
    :cond_0
    return v2

    #@11
    .line 621
    .end local v0    # "certData":[B
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    #@12
    .line 622
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const/4 v4, 0x0

    #@13
    return v4
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5
    .line 628
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    #@0
    .prologue
    const/16 v14, 0x14

    #@2
    .line 646
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 647
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    #@a
    move-result-object v7

    #@b
    .line 649
    .local v7, "nl":Ljava/lang/String;
    const-string/jumbo v11, "  [0]         Version: "

    #@e
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v11

    #@12
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getVersion()I

    #@15
    move-result v12

    #@16
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@19
    move-result-object v11

    #@1a
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    .line 650
    const-string/jumbo v11, "         SerialNumber: "

    #@20
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    move-result-object v11

    #@24
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSerialNumber()Ljava/math/BigInteger;

    #@27
    move-result-object v12

    #@28
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2b
    move-result-object v11

    #@2c
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 651
    const-string/jumbo v11, "             IssuerDN: "

    #@32
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    move-result-object v11

    #@36
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getIssuerDN()Ljava/security/Principal;

    #@39
    move-result-object v12

    #@3a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@3d
    move-result-object v11

    #@3e
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    .line 652
    const-string/jumbo v11, "           Start Date: "

    #@44
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    move-result-object v11

    #@48
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    #@4b
    move-result-object v12

    #@4c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@4f
    move-result-object v11

    #@50
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    .line 653
    const-string/jumbo v11, "           Final Date: "

    #@56
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@59
    move-result-object v11

    #@5a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    #@5d
    move-result-object v12

    #@5e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@61
    move-result-object v11

    #@62
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@65
    .line 654
    const-string/jumbo v11, "            SubjectDN: "

    #@68
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6b
    move-result-object v11

    #@6c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSubjectDN()Ljava/security/Principal;

    #@6f
    move-result-object v12

    #@70
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@73
    move-result-object v11

    #@74
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@77
    .line 655
    const-string/jumbo v11, "           Public Key: "

    #@7a
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7d
    move-result-object v11

    #@7e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getPublicKey()Ljava/security/PublicKey;

    #@81
    move-result-object v12

    #@82
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@85
    move-result-object v11

    #@86
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@89
    .line 656
    const-string/jumbo v11, "  Signature Algorithm: "

    #@8c
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8f
    move-result-object v11

    #@90
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSigAlgName()Ljava/lang/String;

    #@93
    move-result-object v12

    #@94
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@97
    move-result-object v11

    #@98
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9b
    .line 658
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getSignature()[B

    #@9e
    move-result-object v10

    #@9f
    .line 660
    .local v10, "sig":[B
    const-string/jumbo v11, "            Signature: "

    #@a2
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a5
    move-result-object v11

    #@a6
    new-instance v12, Ljava/lang/String;

    #@a8
    const/4 v13, 0x0

    #@a9
    invoke-static {v10, v13, v14}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@ac
    move-result-object v13

    #@ad
    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    #@b0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b3
    move-result-object v11

    #@b4
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b7
    .line 661
    const/16 v6, 0x14

    #@b9
    .local v6, "i":I
    :goto_0
    array-length v11, v10

    #@ba
    if-ge v6, v11, :cond_1

    #@bc
    .line 663
    array-length v11, v10

    #@bd
    add-int/lit8 v11, v11, -0x14

    #@bf
    if-ge v6, v11, :cond_0

    #@c1
    .line 665
    const-string/jumbo v11, "                       "

    #@c4
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c7
    move-result-object v11

    #@c8
    new-instance v12, Ljava/lang/String;

    #@ca
    invoke-static {v10, v6, v14}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@cd
    move-result-object v13

    #@ce
    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    #@d1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d4
    move-result-object v11

    #@d5
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d8
    .line 661
    :goto_1
    add-int/lit8 v6, v6, 0x14

    #@da
    goto :goto_0

    #@db
    .line 669
    :cond_0
    const-string/jumbo v11, "                       "

    #@de
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e1
    move-result-object v11

    #@e2
    new-instance v12, Ljava/lang/String;

    #@e4
    array-length v13, v10

    #@e5
    sub-int/2addr v13, v6

    #@e6
    invoke-static {v10, v6, v13}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@e9
    move-result-object v13

    #@ea
    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    #@ed
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f0
    move-result-object v11

    #@f1
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f4
    goto :goto_1

    #@f5
    .line 673
    :cond_1
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@f7
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@fa
    move-result-object v11

    #@fb
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@fe
    move-result-object v5

    #@ff
    .line 675
    .local v5, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v5, :cond_9

    #@101
    .line 677
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@104
    move-result-object v2

    #@105
    .line 679
    .local v2, "e":Ljava/util/Enumeration;
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@108
    move-result v11

    #@109
    if-eqz v11, :cond_2

    #@10b
    .line 681
    const-string/jumbo v11, "       Extensions: \n"

    #@10e
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@111
    .line 684
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@114
    move-result v11

    #@115
    if-eqz v11, :cond_9

    #@117
    .line 686
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@11a
    move-result-object v9

    #@11b
    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11d
    .line 687
    .local v9, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@120
    move-result-object v4

    #@121
    .line 689
    .local v4, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@124
    move-result-object v11

    #@125
    if-eqz v11, :cond_8

    #@127
    .line 691
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@12a
    move-result-object v11

    #@12b
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@12e
    move-result-object v8

    #@12f
    .line 692
    .local v8, "octs":[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@131
    invoke-direct {v1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@134
    .line 693
    .local v1, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const-string/jumbo v11, "                       critical("

    #@137
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13a
    move-result-object v11

    #@13b
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@13e
    move-result v12

    #@13f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@142
    move-result-object v11

    #@143
    const-string/jumbo v12, ") "

    #@146
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@149
    .line 696
    :try_start_0
    sget-object v11, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14b
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@14e
    move-result v11

    #@14f
    if-eqz v11, :cond_3

    #@151
    .line 698
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@154
    move-result-object v11

    #@155
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    #@158
    move-result-object v11

    #@159
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@15c
    move-result-object v11

    #@15d
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@160
    goto :goto_2

    #@161
    .line 724
    :catch_0
    move-exception v3

    #@162
    .line 725
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@165
    move-result-object v11

    #@166
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@169
    .line 727
    const-string/jumbo v11, " value = "

    #@16c
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16f
    move-result-object v11

    #@170
    const-string/jumbo v12, "*****"

    #@173
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@176
    move-result-object v11

    #@177
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17a
    goto :goto_2

    #@17b
    .line 700
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v11, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17d
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@180
    move-result v11

    #@181
    if-eqz v11, :cond_4

    #@183
    .line 702
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@186
    move-result-object v11

    #@187
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    #@18a
    move-result-object v11

    #@18b
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@18e
    move-result-object v11

    #@18f
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@192
    goto/16 :goto_2

    #@194
    .line 704
    :cond_4
    sget-object v11, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@196
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@199
    move-result v11

    #@19a
    if-eqz v11, :cond_5

    #@19c
    .line 706
    new-instance v12, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;

    #@19e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1a1
    move-result-object v11

    #@1a2
    check-cast v11, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@1a4
    invoke-direct {v12, v11}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;-><init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    #@1a7
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1aa
    move-result-object v11

    #@1ab
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ae
    goto/16 :goto_2

    #@1b0
    .line 708
    :cond_5
    sget-object v11, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b2
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@1b5
    move-result v11

    #@1b6
    if-eqz v11, :cond_6

    #@1b8
    .line 710
    new-instance v12, Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;

    #@1ba
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1bd
    move-result-object v11

    #@1be
    check-cast v11, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@1c0
    invoke-direct {v12, v11}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lcom/android/org/bouncycastle/asn1/DERIA5String;)V

    #@1c3
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1c6
    move-result-object v11

    #@1c7
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ca
    goto/16 :goto_2

    #@1cc
    .line 712
    :cond_6
    sget-object v11, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1ce
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@1d1
    move-result v11

    #@1d2
    if-eqz v11, :cond_7

    #@1d4
    .line 714
    new-instance v12, Lcom/android/org/bouncycastle/asn1/misc/VerisignCzagExtension;

    #@1d6
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1d9
    move-result-object v11

    #@1da
    check-cast v11, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@1dc
    invoke-direct {v12, v11}, Lcom/android/org/bouncycastle/asn1/misc/VerisignCzagExtension;-><init>(Lcom/android/org/bouncycastle/asn1/DERIA5String;)V

    #@1df
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1e2
    move-result-object v11

    #@1e3
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e6
    goto/16 :goto_2

    #@1e8
    .line 718
    :cond_7
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1eb
    move-result-object v11

    #@1ec
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ef
    .line 719
    const-string/jumbo v11, " value = "

    #@1f2
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f5
    move-result-object v11

    #@1f6
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1f9
    move-result-object v12

    #@1fa
    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    #@1fd
    move-result-object v12

    #@1fe
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@201
    move-result-object v11

    #@202
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@205
    goto/16 :goto_2

    #@207
    .line 732
    .end local v1    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v8    # "octs":[B
    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20a
    goto/16 :goto_2

    #@20c
    .line 737
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v4    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v9    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@20f
    move-result-object v11

    #@210
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
    .line 746
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v3

    #@6
    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 750
    .local v1, "sigName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@c
    invoke-interface {v3, v1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v2

    #@10
    .line 757
    .local v2, "signature":Ljava/security/Signature;
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    #@13
    .line 743
    return-void

    #@14
    .line 753
    .end local v2    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v0

    #@15
    .line 754
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@18
    move-result-object v2

    #@19
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
    .line 766
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 769
    .local v0, "sigName":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@c
    .line 771
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@f
    move-result-object v1

    #@10
    .line 778
    .local v1, "signature":Ljava/security/Signature;
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    #@13
    .line 764
    return-void

    #@14
    .line 775
    .end local v1    # "signature":Ljava/security/Signature;
    :cond_0
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@17
    move-result-object v1

    #@18
    .restart local v1    # "signature":Ljava/security/Signature;
    goto :goto_0
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 3
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

    #@0
    .prologue
    .line 787
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 790
    .local v0, "sigName":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@c
    .line 792
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    #@f
    move-result-object v1

    #@10
    .line 799
    .local v1, "signature":Ljava/security/Signature;
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    #@13
    .line 785
    return-void

    #@14
    .line 796
    .end local v1    # "signature":Ljava/security/Signature;
    :cond_0
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@17
    move-result-object v1

    #@18
    .restart local v1    # "signature":Ljava/security/Signature;
    goto :goto_0
.end method

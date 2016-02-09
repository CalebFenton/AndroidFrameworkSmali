.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;
.super Ljava/security/cert/CertPath;
.source "PKIXCertPath.java"


# static fields
.field static final certPathEncodings:Ljava/util/List;


# instance fields
.field private certificates:Ljava/util/List;

.field private final helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 58
    .local v0, "encodings":Ljava/util/List;
    const-string/jumbo v1, "PkiPath"

    #@8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b
    .line 62
    const-string/jumbo v1, "PKCS7"

    #@e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@14
    move-result-object v1

    #@15
    sput-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    #@17
    .line 48
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 13
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    const-string/jumbo v10, "X.509"

    #@3
    invoke-direct {p0, v10}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    #@6
    .line 51
    new-instance v10, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@8
    invoke-direct {v10}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@b
    iput-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@d
    .line 180
    :try_start_0
    const-string/jumbo v10, "PkiPath"

    #@10
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v10

    #@14
    if-eqz v10, :cond_1

    #@16
    .line 182
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@18
    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    #@1b
    .line 183
    .local v2, "derInStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1e
    move-result-object v3

    #@1f
    .line 184
    .local v3, "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v10, v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@21
    if-nez v10, :cond_0

    #@23
    .line 186
    new-instance v10, Ljava/security/cert/CertificateException;

    #@25
    const-string/jumbo v11, "input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath"

    #@28
    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    #@2c
    .line 216
    .end local v2    # "derInStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v3    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v7

    #@2d
    .line 217
    .local v7, "ex":Ljava/io/IOException;
    :goto_0
    new-instance v10, Ljava/security/cert/CertificateException;

    #@2f
    new-instance v11, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v12, "IOException throw while decoding CertPath:\n"

    #@37
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v11

    #@3b
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@3e
    move-result-object v12

    #@3f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v11

    #@43
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v11

    #@47
    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v10

    #@4b
    .line 188
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v2    # "derInStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v3    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    :try_start_1
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@4d
    .end local v3    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@50
    move-result-object v4

    #@51
    .line 189
    .local v4, "e":Ljava/util/Enumeration;
    new-instance v10, Ljava/util/ArrayList;

    #@53
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@56
    iput-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@58
    .line 190
    iget-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@5a
    const-string/jumbo v11, "X.509"

    #@5d
    invoke-interface {v10, v11}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@60
    move-result-object v1

    #@61
    .line 191
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@64
    move-result v10

    #@65
    if-eqz v10, :cond_5

    #@67
    .line 193
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@6a
    move-result-object v5

    #@6b
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6d
    .line 194
    .local v5, "element":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@70
    move-result-object v10

    #@71
    const-string/jumbo v11, "DER"

    #@74
    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@77
    move-result-object v6

    #@78
    .line 195
    .local v6, "encoded":[B
    iget-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@7a
    .line 196
    new-instance v11, Ljava/io/ByteArrayInputStream;

    #@7c
    invoke-direct {v11, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7f
    .line 195
    invoke-virtual {v1, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@82
    move-result-object v11

    #@83
    const/4 v12, 0x0

    #@84
    invoke-interface {v10, v12, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_1

    #@87
    goto :goto_1

    #@88
    .line 220
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "derInStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v5    # "element":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v6    # "encoded":[B
    :catch_1
    move-exception v8

    #@89
    .line 221
    .local v8, "ex":Ljava/security/NoSuchProviderException;
    :goto_2
    new-instance v10, Ljava/security/cert/CertificateException;

    #@8b
    new-instance v11, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v12, "BouncyCastle provider not found while trying to get a CertificateFactory:\n"

    #@93
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v11

    #@97
    invoke-virtual {v8}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    #@9a
    move-result-object v12

    #@9b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v11

    #@9f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v11

    #@a3
    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v10

    #@a7
    .line 199
    .end local v8    # "ex":Ljava/security/NoSuchProviderException;
    :cond_1
    :try_start_2
    const-string/jumbo v10, "PKCS7"

    #@aa
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ad
    move-result v10

    #@ae
    if-nez v10, :cond_2

    #@b0
    const-string/jumbo v10, "PEM"

    #@b3
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b6
    move-result v10

    #@b7
    if-eqz v10, :cond_3

    #@b9
    .line 201
    :cond_2
    new-instance v9, Ljava/io/BufferedInputStream;

    #@bb
    invoke-direct {v9, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_1

    #@be
    .line 202
    .end local p1    # "inStream":Ljava/io/InputStream;
    .local v9, "inStream":Ljava/io/InputStream;
    :try_start_3
    new-instance v10, Ljava/util/ArrayList;

    #@c0
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@c3
    iput-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@c5
    .line 203
    iget-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@c7
    const-string/jumbo v11, "X.509"

    #@ca
    invoke-interface {v10, v11}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@cd
    move-result-object v1

    #@ce
    .line 205
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_3
    invoke-virtual {v1, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@d1
    move-result-object v0

    #@d2
    .local v0, "cert":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_4

    #@d4
    .line 207
    iget-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@d6
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_3

    #@d9
    goto :goto_3

    #@da
    .line 216
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_2
    move-exception v7

    #@db
    .restart local v7    # "ex":Ljava/io/IOException;
    move-object p1, v9

    #@dc
    .end local v9    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    goto/16 :goto_0

    #@de
    .line 212
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_3
    :try_start_4
    new-instance v10, Ljava/security/cert/CertificateException;

    #@e0
    new-instance v11, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v12, "unsupported encoding: "

    #@e8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v11

    #@ec
    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v11

    #@f0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v11

    #@f4
    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@f7
    throw v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_1

    #@f8
    .end local p1    # "inStream":Ljava/io/InputStream;
    .restart local v0    # "cert":Ljava/security/cert/Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v9    # "inStream":Ljava/io/InputStream;
    :cond_4
    move-object p1, v9

    #@f9
    .line 224
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v9    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :cond_5
    iget-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@fb
    invoke-direct {p0, v10}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    #@fe
    move-result-object v10

    #@ff
    iput-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@101
    .line 175
    return-void

    #@102
    .line 220
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local p1    # "inStream":Ljava/io/InputStream;
    .restart local v9    # "inStream":Ljava/io/InputStream;
    :catch_3
    move-exception v8

    #@103
    .restart local v8    # "ex":Ljava/security/NoSuchProviderException;
    move-object p1, v9

    #@104
    .end local v9    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "certificates"    # Ljava/util/List;

    #@0
    .prologue
    .line 163
    const-string/jumbo v0, "X.509"

    #@3
    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    #@6
    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@8
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@d
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@12
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@18
    .line 161
    return-void
.end method

.method private sortCerts(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .param p1, "certs"    # Ljava/util/List;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v10

    #@5
    const/4 v11, 0x2

    #@6
    if-ge v10, v11, :cond_0

    #@8
    .line 76
    return-object p1

    #@9
    .line 79
    :cond_0
    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v10

    #@d
    check-cast v10, Ljava/security/cert/X509Certificate;

    #@f
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@12
    move-result-object v4

    #@13
    .line 80
    .local v4, "issuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v6, 0x1

    #@14
    .line 82
    .local v6, "okay":Z
    const/4 v3, 0x1

    #@15
    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@18
    move-result v10

    #@19
    if-eq v3, v10, :cond_2

    #@1b
    .line 84
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@21
    .line 86
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@24
    move-result-object v10

    #@25
    invoke-virtual {v4, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v10

    #@29
    if-eqz v10, :cond_1

    #@2b
    .line 88
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v10

    #@2f
    check-cast v10, Ljava/security/cert/X509Certificate;

    #@31
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@34
    move-result-object v4

    #@35
    .line 82
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_0

    #@38
    .line 92
    :cond_1
    const/4 v6, 0x0

    #@39
    .line 97
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    if-eqz v6, :cond_3

    #@3b
    .line 99
    return-object p1

    #@3c
    .line 103
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    #@3e
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@41
    move-result v10

    #@42
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    #@45
    .line 104
    .local v8, "retList":Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    #@47
    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@4a
    .line 106
    .local v7, "orig":Ljava/util/List;
    const/4 v3, 0x0

    #@4b
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4e
    move-result v10

    #@4f
    if-ge v3, v10, :cond_7

    #@51
    .line 108
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@57
    .line 109
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    #@58
    .line 111
    .local v2, "found":Z
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@5b
    move-result-object v9

    #@5c
    .line 113
    .local v9, "subject":Ljavax/security/auth/x500/X500Principal;
    const/4 v5, 0x0

    #@5d
    .local v5, "j":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@60
    move-result v10

    #@61
    if-eq v5, v10, :cond_4

    #@63
    .line 115
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@69
    .line 116
    .local v0, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@6c
    move-result-object v10

    #@6d
    invoke-virtual {v10, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v10

    #@71
    if-eqz v10, :cond_6

    #@73
    .line 118
    const/4 v2, 0x1

    #@74
    .line 123
    .end local v0    # "c":Ljava/security/cert/X509Certificate;
    :cond_4
    if-nez v2, :cond_5

    #@76
    .line 125
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@79
    .line 126
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@7c
    .line 106
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@7e
    goto :goto_1

    #@7f
    .line 113
    .restart local v0    # "c":Ljava/security/cert/X509Certificate;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    #@81
    goto :goto_2

    #@82
    .line 131
    .end local v0    # "c":Ljava/security/cert/X509Certificate;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "found":Z
    .end local v5    # "j":I
    .end local v9    # "subject":Ljavax/security/auth/x500/X500Principal;
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@85
    move-result v10

    #@86
    const/4 v11, 0x1

    #@87
    if-le v10, v11, :cond_8

    #@89
    .line 133
    return-object v7

    #@8a
    .line 136
    :cond_8
    const/4 v3, 0x0

    #@8b
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@8e
    move-result v10

    #@8f
    if-eq v3, v10, :cond_b

    #@91
    .line 138
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@94
    move-result-object v10

    #@95
    check-cast v10, Ljava/security/cert/X509Certificate;

    #@97
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@9a
    move-result-object v4

    #@9b
    .line 140
    const/4 v5, 0x0

    #@9c
    .restart local v5    # "j":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@9f
    move-result v10

    #@a0
    if-ge v5, v10, :cond_9

    #@a2
    .line 142
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a5
    move-result-object v0

    #@a6
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@a8
    .line 143
    .restart local v0    # "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v4, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v10

    #@b0
    if-eqz v10, :cond_a

    #@b2
    .line 145
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b5
    .line 146
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@b8
    .line 136
    .end local v0    # "c":Ljava/security/cert/X509Certificate;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    #@ba
    goto :goto_3

    #@bb
    .line 140
    .restart local v0    # "c":Ljava/security/cert/X509Certificate;
    :cond_a
    add-int/lit8 v5, v5, 0x1

    #@bd
    goto :goto_4

    #@be
    .line 153
    .end local v0    # "c":Ljava/security/cert/X509Certificate;
    .end local v5    # "j":I
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@c1
    move-result v10

    #@c2
    if-lez v10, :cond_c

    #@c4
    .line 155
    return-object v7

    #@c5
    .line 158
    :cond_c
    return-object v8
.end method

.method private toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@5
    move-result-object v2

    #@6
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 364
    :catch_0
    move-exception v0

    #@f
    .line 365
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Exception while encoding certificate: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
.end method

.method private toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 4
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    :try_start_0
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "DER"

    #@7
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 377
    :catch_0
    move-exception v0

    #@d
    .line 378
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Exception thrown: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 2

    #@0
    .prologue
    .line 345
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    return-object v0
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
    .line 250
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->getEncodings()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .line 251
    .local v1, "iter":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 254
    .local v0, "enc":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 256
    check-cast v0, Ljava/lang/String;

    #@14
    .end local v0    # "enc":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->getEncoded(Ljava/lang/String;)[B

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 259
    :cond_0
    const/4 v2, 0x0

    #@1a
    return-object v2
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 12
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 275
    const-string/jumbo v1, "PkiPath"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 277
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@c
    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@f
    .line 279
    .local v9, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@11
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@13
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@16
    move-result v2

    #@17
    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@1a
    move-result-object v8

    #@1b
    .line 280
    .local v8, "iter":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 282
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@27
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v9, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2e
    goto :goto_0

    #@2f
    .line 285
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@31
    invoke-direct {v1, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@34
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    #@37
    move-result-object v1

    #@38
    return-object v1

    #@39
    .line 287
    .end local v8    # "iter":Ljava/util/ListIterator;
    .end local v9    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1
    const-string/jumbo v1, "PKCS7"

    #@3c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_3

    #@42
    .line 289
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@44
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    invoke-direct {v3, v1, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@49
    .line 291
    .local v3, "encInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@4b
    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@4e
    .line 292
    .restart local v9    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x0

    #@4f
    .local v7, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@51
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@54
    move-result v1

    #@55
    if-eq v7, v1, :cond_2

    #@57
    .line 294
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    #@59
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@5f
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v9, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@66
    .line 292
    add-int/lit8 v7, v7, 0x1

    #@68
    goto :goto_1

    #@69
    .line 297
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    #@6b
    .line 298
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@6d
    const-wide/16 v10, 0x1

    #@6f
    invoke-direct {v1, v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@72
    .line 299
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@74
    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    #@77
    .line 301
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@79
    invoke-direct {v4, v9}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@7c
    .line 303
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@7e
    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    #@81
    .line 297
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@84
    .line 305
    .local v0, "sd":Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@86
    .line 306
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@88
    .line 305
    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@8b
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    #@8e
    move-result-object v1

    #@8f
    return-object v1

    #@90
    .line 333
    .end local v0    # "sd":Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
    .end local v3    # "encInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v7    # "i":I
    .end local v9    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_3
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    #@92
    new-instance v2, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v4, "unsupported encoding: "

    #@9a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v1
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 237
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

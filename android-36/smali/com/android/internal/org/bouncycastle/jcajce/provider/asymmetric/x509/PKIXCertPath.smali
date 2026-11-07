.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;
.super Ljava/security/cert/CertPath;
.source "PKIXCertPath.java"


# static fields
.field static final blacklist certPathEncodings:Ljava/util/List;


# instance fields
.field private blacklist certificates:Ljava/util/List;

.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "encodings":Ljava/util/List;
    const-string v1, "PkiPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "PKCS7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    .line 63
    .end local v0    # "encodings":Ljava/util/List;
    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 12
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 176
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 179
    :try_start_c
    const-string v1, "PkiPath"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 181
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v1, "derInStream":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 183
    .local v2, "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_5c

    .line 187
    move-object v3, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 188
    .local v3, "e":Ljava/util/Enumeration;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    .line 189
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v4, v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 190
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_35
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 192
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 193
    .local v4, "element":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    const-string v6, "DER"

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    .line 194
    .local v5, "encoded":[B
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 196
    .end local v4    # "element":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v5    # "encoded":[B
    goto :goto_35

    .line 197
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "derInStream":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v3    # "e":Ljava/util/Enumeration;
    :cond_5b
    goto :goto_b0

    .line 185
    .restart local v1    # "derInStream":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v2    # "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_5c
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v3, "input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath"

    invoke-direct {v0, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;
    .end local p1    # "inStream":Ljava/io/InputStream;
    .end local p2    # "encoding":Ljava/lang/String;
    throw v0

    .line 198
    .end local v1    # "derInStream":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    .restart local p2    # "encoding":Ljava/lang/String;
    :cond_64
    const-string v1, "PKCS7"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8f

    const-string v1, "PEM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    goto :goto_8f

    .line 211
    :cond_75
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;
    .end local p1    # "inStream":Ljava/io/InputStream;
    .end local p2    # "encoding":Ljava/lang/String;
    throw v0

    .line 200
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;
    .restart local p1    # "inStream":Ljava/io/InputStream;
    .restart local p2    # "encoding":Ljava/lang/String;
    :cond_8f
    :goto_8f
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    .line 202
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 204
    .restart local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_a2
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    move-object v2, v1

    .local v2, "cert":Ljava/security/cert/Certificate;
    if-eqz v1, :cond_af

    .line 206
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_ae} :catch_d8
    .catch Ljava/security/NoSuchProviderException; {:try_start_c .. :try_end_ae} :catch_ba

    goto :goto_a2

    .line 208
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    :cond_af
    nop

    .line 221
    :goto_b0
    nop

    .line 223
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    .line 224
    return-void

    .line 218
    :catch_ba
    move-exception v0

    .line 220
    .local v0, "ex":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BouncyCastle provider not found while trying to get a CertificateFactory:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    .end local v0    # "ex":Ljava/security/NoSuchProviderException;
    :catch_d8
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException throw while decoding CertPath:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .param p1, "certificates"    # Ljava/util/List;

    .line 162
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    .line 164
    return-void
.end method

.method private blacklist sortCerts(Ljava/util/List;)Ljava/util/List;
    .registers 13
    .param p1, "certs"    # Ljava/util/List;

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    .line 75
    return-object p1

    .line 78
    :cond_8
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 79
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v1, 0x1

    .line 81
    .local v1, "okay":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3a

    .line 83
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 85
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 87
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 81
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 91
    .restart local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_38
    const/4 v1, 0x0

    .line 92
    nop

    .line 96
    .end local v2    # "i":I
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_3a
    if-eqz v1, :cond_3d

    .line 98
    return-object p1

    .line 102
    :cond_3d
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v2, "retList":Ljava/util/List;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    .local v3, "orig":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_84

    .line 107
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 108
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    const/4 v6, 0x0

    .line 110
    .local v6, "found":Z
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 112
    .local v7, "subject":Ljavax/security/auth/x500/X500Principal;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_5e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_79

    .line 114
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 115
    .local v9, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_76

    .line 117
    const/4 v6, 0x1

    .line 118
    goto :goto_79

    .line 112
    .end local v9    # "c":Ljava/security/cert/X509Certificate;
    :cond_76
    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    .line 122
    .end local v8    # "j":I
    :cond_79
    :goto_79
    if-nez v6, :cond_81

    .line 124
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "found":Z
    .end local v7    # "subject":Ljavax/security/auth/x500/X500Principal;
    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 130
    .end local v4    # "i":I
    :cond_84
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8c

    .line 132
    return-object v3

    .line 135
    :cond_8c
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_8d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_c1

    .line 137
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 139
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_9e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_be

    .line 141
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 142
    .local v6, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 144
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 146
    goto :goto_be

    .line 139
    .end local v6    # "c":Ljava/security/cert/X509Certificate;
    :cond_bb
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    .line 135
    .end local v5    # "j":I
    :cond_be
    :goto_be
    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    .line 152
    .end local v4    # "i":I
    :cond_c1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c8

    .line 154
    return-object v3

    .line 157
    :cond_c8
    return-object v2
.end method

.method private blacklist toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 362
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 364
    :catch_e
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while encoding certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist toDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 6
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 375
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 377
    :catch_b
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api getCertificates()Ljava/util/List;
    .registers 3

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->getEncodings()Ljava/util/Iterator;

    move-result-object v0

    .line 250
    .local v0, "iter":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 253
    .local v1, "enc":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 255
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 258
    .end local v1    # "enc":Ljava/lang/Object;
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getEncoded(Ljava/lang/String;)[B
    .registers 12
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 274
    const-string v0, "PkiPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 276
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 278
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 279
    .local v1, "iter":Ljava/util/ListIterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 281
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_19

    .line 284
    :cond_2d
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v2

    return-object v2

    .line 286
    .end local v0    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v1    # "iter":Ljava/util/ListIterator;
    :cond_37
    const-string v0, "PKCS7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 288
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v6, v0

    .line 290
    .local v6, "encInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 291
    .restart local v0    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4e
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_68

    .line 293
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 296
    .end local v1    # "i":I
    :cond_68
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v4, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v5}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>()V

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v7, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v9}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 304
    .local v3, "sd":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    return-object v1

    .line 334
    .end local v0    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "sd":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SignedData;
    .end local v6    # "encInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    :cond_90
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getEncodings()Ljava/util/Iterator;
    .registers 2

    .line 236
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

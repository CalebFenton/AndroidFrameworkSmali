.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;
.super Ljava/security/cert/CertPath;
.source "PKIXCertPath.java"


# static fields
.field static final blacklist certPathEncodings:Ljava/util/List;


# instance fields
.field private blacklist certificates:Ljava/util/List;

.field private final blacklist helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const-string v1, "PkiPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "PKCS7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 6

    .line 176
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 179
    :try_start_c
    const-string v2, "PkiPath"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 181
    new-instance p2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 183
    instance-of p2, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz p2, :cond_58

    .line 187
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 188
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    .line 189
    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    .line 190
    :goto_32
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 192
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 193
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_32

    .line 185
    :cond_58
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 198
    :cond_60
    const-string v2, "PKCS7"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "PEM"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    goto :goto_88

    .line 211
    :cond_71
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported encoding: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_88
    :goto_88
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 201
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    .line 202
    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 204
    :goto_98
    invoke-virtual {p1, p2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 206
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_a3} :catch_c9
    .catch Ljava/security/NoSuchProviderException; {:try_start_c .. :try_end_a3} :catch_ad

    goto :goto_98

    .line 223
    :cond_a4
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    return-void

    :catch_ad
    move-exception p0

    .line 220
    new-instance p1, Ljava/security/cert/CertificateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BouncyCastle provider not found while trying to get a CertificateFactory:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_c9
    move-exception p0

    .line 216
    new-instance p1, Ljava/security/cert/CertificateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException throw while decoding CertPath:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3

    .line 162
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    return-void
.end method

.method private blacklist sortCerts(Ljava/util/List;)Ljava/util/List;
    .registers 10

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_9

    goto/16 :goto_c0

    :cond_9
    const/4 p0, 0x0

    .line 78
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    .line 81
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_c0

    .line 83
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 85
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 87
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 102
    :cond_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v3, p0

    .line 105
    :goto_48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7c

    .line 107
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 110
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    move v6, p0

    .line 112
    :goto_59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_73

    .line 114
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 115
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    goto :goto_79

    :cond_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    .line 124
    :cond_73
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 130
    :cond_7c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_83

    goto :goto_be

    :cond_83
    move v1, p0

    .line 135
    :goto_84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_b8

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    move v4, p0

    .line 139
    :goto_95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b5

    .line 141
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 142
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 144
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_b5

    :cond_b2
    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    :cond_b5
    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 152
    :cond_b8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_bf

    :goto_be
    return-object v2

    :cond_bf
    return-object v0

    :cond_c0
    :goto_c0
    return-object p1
.end method

.method private blacklist toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 362
    :try_start_0
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 366
    new-instance p1, Ljava/security/cert/CertificateEncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while encoding certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 4

    .line 375
    :try_start_0
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    const-string p1, "DER"

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 379
    new-instance p1, Ljava/security/cert/CertificateEncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception thrown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api getCertificates()Ljava/util/List;
    .registers 2

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 3

    .line 249
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->getEncodings()Ljava/util/Iterator;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 253
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 255
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getEncoded(Ljava/lang/String;)[B
    .registers 10

    .line 274
    const-string v0, "PkiPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 276
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 278
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 279
    :goto_17
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 281
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_17

    .line 284
    :cond_2b
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p0

    return-object p0

    .line 286
    :cond_35
    const-string v0, "PKCS7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 288
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object p1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 290
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v0, 0x0

    .line 291
    :goto_4b
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_65

    .line 293
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 296
    :cond_65
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v5, 0x1

    invoke-direct {v2, v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v5, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 304
    new-instance p1, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p0

    return-object p0

    .line 334
    :cond_8d
    new-instance p0, Ljava/security/cert/CertificateEncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getEncodings()Ljava/util/Iterator;
    .registers 1

    .line 236
    sget-object p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

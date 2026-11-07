.class public Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
.super Ljava/lang/Object;
.source "X509V3CertificateGenerator.java"


# instance fields
.field private final blacklist bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private final blacklist certificateFactory:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

.field private blacklist extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

.field private blacklist sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist signatureAlgorithm:Ljava/lang/String;

.field private blacklist tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->certificateFactory:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    return-void
.end method

.method private blacklist booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 8

    .line 221
    array-length p0, p1

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    new-array p0, p0, [B

    const/4 v0, 0x0

    move v1, v0

    .line 223
    :goto_9
    array-length v2, p1

    if-eq v1, v2, :cond_24

    .line 225
    div-int/lit8 v2, v1, 0x8

    aget-byte v3, p0, v2

    aget-boolean v4, p1, v1

    if-eqz v4, :cond_1c

    rem-int/lit8 v4, v1, 0x8

    rsub-int/lit8 v4, v4, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    goto :goto_1d

    :cond_1c
    move v4, v0

    :goto_1d
    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 228
    :cond_24
    array-length p1, p1

    rem-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2f

    .line 232
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    return-object p1

    .line 236
    :cond_2f
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    rsub-int/lit8 p1, p1, 0x8

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0
.end method

.method private blacklist generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;
    .registers 4

    .line 527
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 529
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 530
    iget-object p1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 531
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 533
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->certificateFactory:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    new-instance p1, Ljava/io/ByteArrayInputStream;

    new-instance p2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v0, "DER"

    .line 534
    invoke-virtual {p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private blacklist generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .registers 3

    .line 516
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 518
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->generate()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;)V

    .line 521
    :cond_13
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5

    .line 259
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public blacklist addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .registers 5

    .line 283
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-void
.end method

.method public blacklist addExtension(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5

    .line 248
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public blacklist addExtension(Ljava/lang/String;Z[B)V
    .registers 5

    .line 272
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-void
.end method

.method public blacklist copyAndAddExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLjava/security/cert/X509Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->copyAndAddExtension(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V

    return-void
.end method

.method public blacklist copyAndAddExtension(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 297
    invoke-virtual {p3, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p3

    if-eqz p3, :cond_19

    .line 306
    :try_start_6
    invoke-static {p3}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p3

    .line 308
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 312
    new-instance p1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_19
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extension "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not present"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public blacklist generate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public blacklist generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 492
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v5

    .line 497
    :try_start_4
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_1e

    .line 506
    :try_start_f
    invoke-direct {p0, v5, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception v0

    move-object p0, v0

    .line 510
    new-instance p1, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p2, "exception producing certificate object"

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1e
    move-exception v0

    move-object p0, v0

    .line 501
    new-instance p1, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p2, "exception encoding TBS cert"

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 447
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    .line 452
    :try_start_4
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_1a

    .line 461
    :try_start_c
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 465
    new-instance p1, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p2, "exception producing certificate object"

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1a
    move-exception p0

    .line 456
    new-instance p1, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p2, "exception encoding TBS cert"

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 341
    :try_start_0
    const-string v0, "BC"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_7
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    .line 345
    :catch_8
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "BC provider not installed!"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 397
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_4} :catch_21
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_4} :catch_1f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_4} :catch_1d
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 413
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1d
    move-exception p0

    .line 409
    throw p0

    :catch_1f
    move-exception p0

    .line 405
    throw p0

    :catch_21
    move-exception p0

    .line 401
    throw p0
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 362
    :try_start_0
    const-string v0, "BC"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 366
    :catch_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "BC provider not installed!"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getSignatureAlgNames()Ljava/util/Iterator;
    .registers 1

    .line 544
    invoke-static {}, Lcom/android/org/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public blacklist reset()V
    .registers 2

    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 73
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->reset()V

    return-void
.end method

.method public greylist setIssuerDN(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    return-void
.end method

.method public greylist setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V
    .registers 4

    .line 101
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t process principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setIssuerUniqueID([Z)V
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuerUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    return-void
.end method

.method public greylist setNotAfter(Ljava/util/Date;)V
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    return-void
.end method

.method public greylist setNotBefore(Ljava/util/Date;)V
    .registers 3

    .line 124
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    return-void
.end method

.method public greylist setPublicKey(Ljava/security/PublicKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 168
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .line 169
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 173
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to process key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist setSerialNumber(Ljava/math/BigInteger;)V
    .registers 3

    .line 83
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_13

    .line 88
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    return-void

    .line 85
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "serial number must be a positive integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setSignatureAlgorithm(Ljava/lang/String;)V
    .registers 4

    .line 187
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    .line 191
    :try_start_2
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_14

    .line 198
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getSigAlgID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 200
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void

    .line 195
    :catch_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown signature type requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setSubjectDN(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    return-void
.end method

.method public greylist setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V
    .registers 4

    .line 143
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 147
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t process principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setSubjectUniqueID([Z)V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    return-void
.end method

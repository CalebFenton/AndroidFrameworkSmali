.class public Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;
.super Ljava/lang/Object;
.source "X509V1CertificateGenerator.java"


# instance fields
.field private final blacklist bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private final blacklist certificateFactory:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

.field private blacklist sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist sigOID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist signatureAlgorithm:Ljava/lang/String;

.field private blacklist tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->certificateFactory:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    .line 57
    return-void
.end method

.method private blacklist generateJcaObject(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;
    .registers 8
    .param p1, "tbsCert"    # Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 355
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 357
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 358
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 359
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 363
    :try_start_15
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->certificateFactory:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v4, "DER"

    .line 364
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 363
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_2e

    return-object v1

    .line 366
    :catch_2e
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v3, "exception producing certificate object"

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public blacklist generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist generate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
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

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 11
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "random"    # Ljava/security/SecureRandom;
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

    .line 337
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v6

    .line 342
    .local v6, "tbsCert":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->sigOID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_1a

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    .end local p1    # "key":Ljava/security/PrivateKey;
    .end local p2    # "provider":Ljava/lang/String;
    .end local p3    # "random":Ljava/security/SecureRandom;
    .local v3, "provider":Ljava/lang/String;
    .local v4, "key":Ljava/security/PrivateKey;
    .local v5, "random":Ljava/security/SecureRandom;
    :try_start_d
    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_17

    .line 347
    .local p1, "signature":[B
    nop

    .line 349
    invoke-direct {p0, v6, p1}, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->generateJcaObject(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;

    move-result-object p2

    return-object p2

    .line 344
    .end local p1    # "signature":[B
    :catch_17
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "key":Ljava/security/PrivateKey;
    .end local v5    # "random":Ljava/security/SecureRandom;
    .local p1, "key":Ljava/security/PrivateKey;
    .restart local p2    # "provider":Ljava/lang/String;
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :catch_1a
    move-exception v0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object p1, v0

    .line 346
    .end local p2    # "provider":Ljava/lang/String;
    .end local p3    # "random":Ljava/security/SecureRandom;
    .restart local v3    # "provider":Ljava/lang/String;
    .restart local v4    # "key":Ljava/security/PrivateKey;
    .restart local v5    # "random":Ljava/security/SecureRandom;
    .local p1, "e":Ljava/io/IOException;
    :goto_1f
    new-instance p2, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p3, "exception encoding TBS cert"

    invoke-direct {p2, p3, p1}, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 7
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    .line 303
    .local v0, "tbsCert":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->sigOID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_14

    .line 308
    .local v1, "signature":[B
    nop

    .line 310
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->generateJcaObject(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2

    .line 305
    .end local v1    # "signature":[B
    :catch_14
    move-exception v1

    .line 307
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v3, "exception encoding TBS cert"

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .registers 5
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 194
    :try_start_0
    const-string v0, "BC"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_7
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 196
    :catch_8
    move-exception v0

    .line 198
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "BC provider not installed!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 8
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 250
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_4} :catch_23
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_4} :catch_21
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_4} :catch_1f
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 264
    :catch_5
    move-exception v0

    .line 266
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1f
    move-exception v0

    .line 262
    .local v0, "e":Ljava/security/InvalidKeyException;
    throw v0

    .line 256
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_21
    move-exception v0

    .line 258
    .local v0, "e":Ljava/security/SignatureException;
    throw v0

    .line 252
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_23
    move-exception v0

    .line 254
    .local v0, "e":Ljava/security/NoSuchProviderException;
    throw v0
.end method

.method public blacklist generateX509Certificate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 6
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 214
    :try_start_0
    const-string v0, "BC"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 216
    :catch_7
    move-exception v0

    .line 218
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "BC provider not installed!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getSignatureAlgNames()Ljava/util/Iterator;
    .registers 2

    .line 379
    invoke-static {}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 64
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    .line 65
    return-void
.end method

.method public blacklist setIssuerDN(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    .line 105
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V

    .line 106
    return-void
.end method

.method public blacklist setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V
    .registers 6
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_10

    .line 95
    nop

    .line 96
    return-void

    .line 92
    :catch_10
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t process principal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setNotAfter(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setEndDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    .line 118
    return-void
.end method

.method public blacklist setNotBefore(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setStartDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    .line 112
    return-void
.end method

.method public blacklist setPublicKey(Ljava/security/PublicKey;)V
    .registers 6
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    .line 155
    nop

    .line 156
    return-void

    .line 152
    :catch_f
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to process key - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setSerialNumber(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .line 73
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_13

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSerialNumber(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    .line 79
    return-void

    .line 75
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serial number must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSignatureAlgorithm(Ljava/lang/String;)V
    .registers 5
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    .line 171
    :try_start_2
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->sigOID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_19

    .line 176
    nop

    .line 178
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->sigOID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->getSigAlgID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 181
    return-void

    .line 173
    :catch_19
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown signature type requested"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setSubjectDN(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    .line 142
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSubject(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V

    .line 143
    return-void
.end method

.method public blacklist setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V
    .registers 6
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSubject(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_10

    .line 133
    nop

    .line 134
    return-void

    .line 130
    :catch_10
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t process principal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

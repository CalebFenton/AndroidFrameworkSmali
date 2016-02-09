.class public Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;
.super Ljava/lang/Object;
.source "X509V1CertificateGenerator.java"


# instance fields
.field private sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;

.field private tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@a
    .line 50
    return-void
.end method

.method private generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "tbsCert"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 352
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 354
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@8
    .line 355
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@a
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@d
    .line 356
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@f
    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    #@12
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15
    .line 360
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    #@17
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@19
    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1c
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    return-object v2

    #@24
    .line 363
    :catch_0
    move-exception v0

    #@25
    .line 364
    .local v0, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v2, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    #@27
    const-string/jumbo v3, "exception producing certificate object"

    #@2a
    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v2
.end method


# virtual methods
.method public generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 1
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

    #@0
    .prologue
    .line 279
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/security/SecureRandom;

    #@3
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1
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

    #@0
    .prologue
    .line 320
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 8
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

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@5
    move-result-object v5

    #@6
    .line 339
    .local v5, "tbsCert":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    #@a
    move-object v2, p2

    #@b
    move-object v3, p1

    #@c
    move-object v4, p3

    #@d
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v7

    #@11
    .line 346
    .local v7, "signature":[B
    invoke-direct {p0, v5, v7}, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 342
    .end local v7    # "signature":[B
    :catch_0
    move-exception v6

    #@17
    .line 343
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    #@19
    const-string/jumbo v1, "exception encoding TBS cert"

    #@1c
    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
    throw v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 5
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

    #@0
    .prologue
    .line 295
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@5
    move-result-object v2

    #@6
    .line 300
    .local v2, "tbsCert":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    #@a
    invoke-static {v3, v4, p1, p2, v2}, Lcom/android/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    .line 307
    .local v1, "signature":[B
    invoke-direct {p0, v2, v1}, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 303
    .end local v1    # "signature":[B
    :catch_0
    move-exception v0

    #@14
    .line 304
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    #@16
    const-string/jumbo v4, "exception encoding TBS cert"

    #@19
    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1c
    throw v3
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    :try_start_0
    const-string/jumbo v1, "BC"

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 194
    :catch_0
    move-exception v0

    #@a
    .line 195
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    #@c
    const-string/jumbo v2, "BC provider not installed!"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1
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

    #@0
    .prologue
    .line 230
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 7
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

    #@0
    .prologue
    .line 247
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v4

    #@4
    return-object v4

    #@5
    .line 262
    :catch_0
    move-exception v0

    #@6
    .line 263
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/SecurityException;

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "exception: "

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 258
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    #@21
    .line 259
    .local v1, "e":Ljava/security/InvalidKeyException;
    throw v1

    #@22
    .line 254
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v3

    #@23
    .line 255
    .local v3, "e":Ljava/security/SignatureException;
    throw v3

    #@24
    .line 250
    .end local v3    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v2

    #@25
    .line 251
    .local v2, "e":Ljava/security/NoSuchProviderException;
    throw v2
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    :try_start_0
    const-string/jumbo v1, "BC"

    #@3
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 214
    :catch_0
    move-exception v0

    #@9
    .line 215
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    #@b
    const-string/jumbo v2, "BC provider not installed!"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 375
    invoke-static {}, Lcom/android/org/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@7
    .line 58
    return-void
.end method

.method public setIssuerDN(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@5
    .line 99
    return-void
.end method

.method public setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V
    .locals 4
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@2
    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@4
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@7
    move-result-object v3

    #@8
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    #@b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 82
    return-void

    #@f
    .line 89
    :catch_0
    move-exception v0

    #@10
    .line 90
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "can\'t process principal: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1
.end method

.method public setNotAfter(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@4
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    #@a
    .line 111
    return-void
.end method

.method public setNotBefore(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@4
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    #@a
    .line 105
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 6
    .param p1, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@2
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@4
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@6
    .line 147
    new-instance v4, Ljava/io/ByteArrayInputStream;

    #@8
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@b
    move-result-object v5

    #@c
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@f
    .line 146
    invoke-direct {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    #@12
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@18
    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@1b
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 142
    return-void

    #@1f
    .line 150
    :catch_0
    move-exception v0

    #@20
    .line 151
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "unable to process key - "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v1
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 69
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@2
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@5
    move-result v0

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "serial number must be a positive integer"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@13
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@15
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@18
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    #@1b
    .line 67
    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .locals 3
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    #@2
    .line 168
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 175
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getSigAlgID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@10
    .line 177
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@12
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@14
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    #@17
    .line 162
    return-void

    #@18
    .line 171
    :catch_0
    move-exception v0

    #@19
    .line 172
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v2, "Unknown signature type requested"

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1
.end method

.method public setSubjectDN(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@5
    .line 136
    return-void
.end method

.method public setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V
    .locals 4
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    #@2
    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@4
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@7
    move-result-object v3

    #@8
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    #@b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 120
    return-void

    #@f
    .line 127
    :catch_0
    move-exception v0

    #@10
    .line 128
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "can\'t process principal: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1
.end method

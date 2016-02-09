.class public Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
.super Ljava/lang/Object;
.source "X509V3CertificateGenerator.java"


# instance fields
.field private extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

.field private sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;

.field private tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@a
    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    #@c
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    #@11
    .line 52
    return-void
.end method

.method private booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 8
    .param p1, "id"    # [Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 203
    array-length v3, p1

    #@2
    add-int/lit8 v3, v3, 0x7

    #@4
    div-int/lit8 v3, v3, 0x8

    #@6
    new-array v0, v3, [B

    #@8
    .line 205
    .local v0, "bytes":[B
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    array-length v3, p1

    #@a
    if-eq v1, v3, :cond_1

    #@c
    .line 207
    div-int/lit8 v5, v1, 0x8

    #@e
    aget-byte v6, v0, v5

    #@10
    aget-boolean v3, p1, v1

    #@12
    if-eqz v3, :cond_0

    #@14
    rem-int/lit8 v3, v1, 0x8

    #@16
    rsub-int/lit8 v3, v3, 0x7

    #@18
    const/4 v7, 0x1

    #@19
    shl-int v3, v7, v3

    #@1b
    :goto_1
    or-int/2addr v3, v6

    #@1c
    int-to-byte v3, v3

    #@1d
    aput-byte v3, v0, v5

    #@1f
    .line 205
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    :cond_0
    move v3, v4

    #@23
    .line 207
    goto :goto_1

    #@24
    .line 210
    :cond_1
    array-length v3, p1

    #@25
    rem-int/lit8 v2, v3, 0x8

    #@27
    .line 212
    .local v2, "pad":I
    if-nez v2, :cond_2

    #@29
    .line 214
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2b
    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    #@2e
    return-object v3

    #@2f
    .line 218
    :cond_2
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@31
    rsub-int/lit8 v4, v2, 0x8

    #@33
    invoke-direct {v3, v0, v4}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@36
    return-object v3
.end method

.method private generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "tbsCert"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 508
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 510
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@8
    .line 511
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@d
    .line 512
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@f
    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    #@12
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15
    .line 514
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    #@17
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@19
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1c
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    #@23
    return-object v1
.end method

.method private generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 2

    #@0
    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 499
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@a
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    #@c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->generate()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;)V

    #@13
    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@15
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method


# virtual methods
.method public addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e
    .line 239
    return-void
.end method

.method public addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    #@e
    .line 263
    return-void
.end method

.method public addExtension(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 230
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@8
    .line 228
    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    #@0
    .prologue
    .line 254
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    #@8
    .line 252
    return-void
.end method

.method public copyAndAddExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLjava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->copyAndAddExtension(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V

    #@7
    .line 307
    return-void
.end method

.method public copyAndAddExtension(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V
    .locals 6
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    invoke-virtual {p3, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@3
    move-result-object v1

    #@4
    .line 281
    .local v1, "extValue":[B
    if-nez v1, :cond_0

    #@6
    .line 283
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "extension "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, " not present"

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 288
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2a
    move-result-object v2

    #@2b
    .line 290
    .local v2, "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 277
    return-void

    #@2f
    .line 293
    .end local v2    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :catch_0
    move-exception v0

    #@30
    .line 294
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    #@32
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3
.end method

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
    .line 411
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/security/SecureRandom;

    #@3
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

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
    .line 459
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 9
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
    .line 473
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@3
    move-result-object v5

    #@4
    .line 478
    .local v5, "tbsCert":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    #@8
    move-object v2, p2

    #@9
    move-object v3, p1

    #@a
    move-object v4, p3

    #@b
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v8

    #@f
    .line 487
    .local v8, "signature":[B
    :try_start_1
    invoke-direct {p0, v5, v8}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_1

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 481
    .end local v8    # "signature":[B
    :catch_0
    move-exception v6

    #@15
    .line 482
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    #@17
    const-string/jumbo v1, "exception encoding TBS cert"

    #@1a
    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    throw v0

    #@1e
    .line 490
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v8    # "signature":[B
    :catch_1
    move-exception v7

    #@1f
    .line 491
    .local v7, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v0, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    #@21
    const-string/jumbo v1, "exception producing certificate object"

    #@24
    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    throw v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 6
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
    .line 428
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@3
    move-result-object v3

    #@4
    .line 433
    .local v3, "tbsCert":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_start_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    #@8
    invoke-static {v4, v5, p1, p2, v3}, Lcom/android/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    .line 442
    .local v2, "signature":[B
    :try_start_1
    invoke-direct {p0, v3, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;[B)Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_1

    #@f
    move-result-object v4

    #@10
    return-object v4

    #@11
    .line 436
    .end local v2    # "signature":[B
    :catch_0
    move-exception v0

    #@12
    .line 437
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    #@14
    const-string/jumbo v5, "exception encoding TBS cert"

    #@17
    invoke-direct {v4, v5, v0}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v4

    #@1b
    .line 445
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "signature":[B
    :catch_1
    move-exception v1

    #@1c
    .line 446
    .local v1, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v4, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    #@1e
    const-string/jumbo v5, "exception producing certificate object"

    #@21
    invoke-direct {v4, v5, v1}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v4
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
    .line 323
    :try_start_0
    const-string/jumbo v1, "BC"

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 326
    :catch_0
    move-exception v0

    #@a
    .line 327
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
    .line 362
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

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
    .line 379
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
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
    .line 394
    :catch_0
    move-exception v0

    #@6
    .line 395
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
    .line 390
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    #@21
    .line 391
    .local v1, "e":Ljava/security/InvalidKeyException;
    throw v1

    #@22
    .line 386
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v3

    #@23
    .line 387
    .local v3, "e":Ljava/security/SignatureException;
    throw v3

    #@24
    .line 382
    .end local v3    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v2

    #@25
    .line 383
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
    .line 344
    :try_start_0
    const-string/jumbo v1, "BC"

    #@3
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 347
    :catch_0
    move-exception v0

    #@9
    .line 348
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
    .line 524
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
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@7
    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    #@9
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->reset()V

    #@c
    .line 61
    return-void
.end method

.method public setIssuerDN(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@5
    .line 103
    return-void
.end method

.method public setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V
    .locals 4
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@4
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@7
    move-result-object v3

    #@8
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    #@b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 86
    return-void

    #@f
    .line 93
    :catch_0
    move-exception v0

    #@10
    .line 94
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

.method public setIssuerUniqueID([Z)V
    .locals 2
    .param p1, "uniqueID"    # [Z

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuerUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    #@9
    .line 196
    return-void
.end method

.method public setNotAfter(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@4
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    #@a
    .line 115
    return-void
.end method

.method public setNotBefore(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@4
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    #@a
    .line 109
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    .line 152
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@4
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@7
    move-result-object v3

    #@8
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@e
    move-result-object v2

    #@f
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@12
    move-result-object v2

    #@13
    .line 151
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 147
    return-void

    #@17
    .line 155
    :catch_0
    move-exception v0

    #@18
    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "unable to process key - "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 73
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@2
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@5
    move-result v0

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "serial number must be a positive integer"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@13
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@15
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@18
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    #@1b
    .line 71
    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .locals 4
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    #@2
    .line 173
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 180
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getSigAlgID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@10
    .line 182
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@12
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@14
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    #@17
    .line 167
    return-void

    #@18
    .line 176
    :catch_0
    move-exception v0

    #@19
    .line 177
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Unknown signature type requested: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1
.end method

.method public setSubjectDN(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@5
    .line 140
    return-void
.end method

.method public setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V
    .locals 4
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@4
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@7
    move-result-object v3

    #@8
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    #@b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 124
    return-void

    #@f
    .line 131
    :catch_0
    move-exception v0

    #@10
    .line 132
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

.method public setSubjectUniqueID([Z)V
    .locals 2
    .param p1, "uniqueID"    # [Z

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    #@2
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    #@9
    .line 188
    return-void
.end method

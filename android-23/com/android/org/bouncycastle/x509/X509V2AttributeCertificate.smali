.class public Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;
.super Ljava/lang/Object;
.source "X509V2AttributeCertificate.java"

# interfaces
.implements Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;


# instance fields
.field private cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;)V
    .locals 3
    .param p1, "cert"    # Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@5
    .line 85
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotAfterTime()Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    #@17
    .line 86
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotBeforeTime()Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    #@26
    move-result-object v1

    #@27
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 79
    return-void

    #@2a
    .line 89
    :catch_0
    move-exception v0

    #@2b
    .line 90
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/io/IOException;

    #@2d
    const-string/jumbo v2, "invalid data structure in certificate!"

    #@30
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "encIn"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;)V

    #@7
    .line 65
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Ljava/io/InputStream;)V

    #@8
    .line 72
    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 7
    .param p1, "critical"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 235
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@3
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@6
    move-result-object v5

    #@7
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@a
    move-result-object v2

    #@b
    .line 237
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_2

    #@d
    .line 239
    new-instance v4, Ljava/util/HashSet;

    #@f
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@12
    .line 240
    .local v4, "set":Ljava/util/Set;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@15
    move-result-object v0

    #@16
    .line 242
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 244
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22
    .line 245
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@25
    move-result-object v1

    #@26
    .line 247
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@29
    move-result v5

    #@2a
    if-ne v5, p1, :cond_0

    #@2c
    .line 249
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_0

    #@34
    .line 253
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    return-object v4

    #@35
    .line 256
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v4    # "set":Ljava/util/Set;
    :cond_2
    return-object v6
.end method

.method private static getObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v2

    #@9
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v2

    #@d
    return-object v2

    #@e
    .line 58
    :catch_0
    move-exception v1

    #@f
    .line 59
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "exception decoding certificate structure: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@2e
    .line 55
    .local v0, "e":Ljava/io/IOException;
    throw v0
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
    .line 147
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->checkValidity(Ljava/util/Date;)V

    #@8
    .line 145
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 156
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "certificate expired on "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_1

    #@32
    .line 161
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    #@34
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v2, "certificate not valid till "

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    .line 152
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
    .line 314
    if-ne p1, p0, :cond_0

    #@3
    .line 316
    const/4 v4, 0x1

    #@4
    return v4

    #@5
    .line 319
    :cond_0
    instance-of v4, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 321
    return v5

    #@a
    :cond_1
    move-object v3, p1

    #@b
    .line 324
    check-cast v3, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@d
    .line 328
    .local v3, "other":Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    #@10
    move-result-object v0

    #@11
    .line 329
    .local v0, "b1":[B
    invoke-interface {v3}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getEncoded()[B

    #@14
    move-result-object v1

    #@15
    .line 331
    .local v1, "b2":[B
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v4

    #@19
    return v4

    #@1a
    .line 334
    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    :catch_0
    move-exception v2

    #@1b
    .line 335
    .local v2, "e":Ljava/io/IOException;
    return v5
.end method

.method public getAttributes()[Lcom/android/org/bouncycastle/x509/X509Attribute;
    .locals 5

    #@0
    .prologue
    .line 278
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@9
    move-result-object v2

    #@a
    .line 279
    .local v2, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@d
    move-result v3

    #@e
    new-array v0, v3, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    #@10
    .line 281
    .local v0, "attrs":[Lcom/android/org/bouncycastle/x509/X509Attribute;
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@14
    move-result v3

    #@15
    if-eq v1, v3, :cond_0

    #@17
    .line 283
    new-instance v3, Lcom/android/org/bouncycastle/x509/X509Attribute;

    #@19
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1c
    move-result-object v4

    #@1d
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@20
    aput-object v3, v0, v1

    #@22
    .line 281
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 286
    :cond_0
    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;)[Lcom/android/org/bouncycastle/x509/X509Attribute;
    .locals 5
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 291
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@9
    move-result-object v3

    #@a
    .line 292
    .local v3, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v2, Ljava/util/ArrayList;

    #@c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 294
    .local v2, "list":Ljava/util/List;
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@13
    move-result v4

    #@14
    if-eq v1, v4, :cond_1

    #@16
    .line 296
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509Attribute;

    #@18
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1b
    move-result-object v4

    #@1c
    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1f
    .line 297
    .local v0, "attr":Lcom/android/org/bouncycastle/x509/X509Attribute;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_0

    #@29
    .line 299
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    .line 294
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 303
    .end local v0    # "attr":Lcom/android/org/bouncycastle/x509/X509Attribute;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_2

    #@35
    .line 305
    const/4 v4, 0x0

    #@36
    return-object v4

    #@37
    .line 308
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@3a
    move-result v4

    #@3b
    new-array v4, v4, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    #@3d
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    check-cast v4, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    #@43
    return-object v4
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 266
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getEncoded()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 210
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@3
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@a
    move-result-object v2

    #@b
    .line 212
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_0

    #@d
    .line 214
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@15
    move-result-object v1

    #@16
    .line 216
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    #@18
    .line 220
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, "DER"

    #@1f
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v3

    #@23
    return-object v3

    #@24
    .line 223
    :catch_0
    move-exception v0

    #@25
    .line 224
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@27
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "error encoding "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@42
    throw v3

    #@43
    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    return-object v4
.end method

.method public getHolder()Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;
    .locals 2

    #@0
    .prologue
    .line 106
    new-instance v1, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    #@2
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getHolder()Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@12
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@15
    return-object v1
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
    .locals 2

    #@0
    .prologue
    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    #@f
    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 126
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@4
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuerUniqueID()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@b
    move-result-object v3

    #@c
    .line 128
    .local v3, "id":Lcom/android/org/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_2

    #@e
    .line 130
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@11
    move-result-object v1

    #@12
    .line 131
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
    .line 133
    .local v0, "boolId":[Z
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@1e
    if-eq v2, v4, :cond_1

    #@20
    .line 135
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
    .line 133
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    :cond_0
    move v4, v5

    #@34
    .line 135
    goto :goto_1

    #@35
    .line 138
    :cond_1
    return-object v0

    #@36
    .line 141
    .end local v0    # "boolId":[Z
    .end local v1    # "bytes":[B
    .end local v2    # "i":I
    :cond_2
    return-object v6
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 261
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureValue()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@11
    move-result v0

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 271
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    .line 273
    .local v0, "extensions":Ljava/util/Set;
    if-eqz v0, :cond_0

    #@7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v1

    #@e
    :cond_1
    const/4 v1, 0x1

    #@f
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 346
    :catch_0
    move-exception v0

    #@a
    .line 347
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "provider"    # Ljava/lang/String;
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
    .line 176
    const/4 v1, 0x0

    #@1
    .line 178
    .local v1, "signature":Ljava/security/Signature;
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@3
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@6
    move-result-object v2

    #@7
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@9
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 180
    new-instance v2, Ljava/security/cert/CertificateException;

    #@19
    const-string/jumbo v3, "Signature algorithm in certificate info not same as outer certificate"

    #@1c
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 183
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@22
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@31
    move-result-object v1

    #@32
    .line 185
    .local v1, "signature":Ljava/security/Signature;
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@35
    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    #@37
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getEncoded()[B

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 196
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getSignature()[B

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    #@49
    move-result v2

    #@4a
    if-nez v2, :cond_1

    #@4c
    .line 198
    new-instance v2, Ljava/security/InvalidKeyException;

    #@4e
    const-string/jumbo v3, "Public key presented not for certificate signature"

    #@51
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@54
    throw v2

    #@55
    .line 192
    :catch_0
    move-exception v0

    #@56
    .line 193
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/SignatureException;

    #@58
    const-string/jumbo v3, "Exception encoding certificate info object"

    #@5b
    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v2

    #@5f
    .line 174
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

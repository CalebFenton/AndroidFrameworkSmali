.class public Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;
.super Ljava/lang/Object;
.source "X509V2AttributeCertificate.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;


# instance fields
.field private blacklist cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

.field private blacklist notAfter:Ljava/util/Date;

.field private blacklist notBefore:Ljava/util/Date;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;)V
    .registers 5
    .param p1, "cert"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    .line 87
    :try_start_5
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotAfterTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotBeforeTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_29} :catch_2b

    .line 93
    nop

    .line 94
    return-void

    .line 90
    :catch_2b
    move-exception v0

    .line 92
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid data structure in certificate!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "encIn"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getObject(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Ljava/io/InputStream;)V

    .line 77
    return-void
.end method

.method private blacklist getExtensionOIDs(Z)Ljava/util/Set;
    .registers 8
    .param p1, "critical"    # Z

    .line 237
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 239
    .local v0, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_34

    .line 241
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 242
    .local v1, "set":Ljava/util/Set;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 244
    .local v2, "e":Ljava/util/Enumeration;
    :goto_15
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 246
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 247
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 249
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-ne v5, p1, :cond_32

    .line 251
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_32
    goto :goto_15

    .line 255
    :cond_33
    return-object v1

    .line 258
    .end local v1    # "set":Ljava/util/Set;
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_34
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getObject(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 59
    :catch_e
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception decoding certificate structure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2c
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method


# virtual methods
.method public blacklist checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->checkValidity(Ljava/util/Date;)V

    .line 150
    return-void
.end method

.method public blacklist checkValidity(Ljava/util/Date;)V
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 165
    return-void

    .line 163
    :cond_15
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_32
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 316
    if-ne p1, p0, :cond_4

    .line 318
    const/4 v0, 0x1

    return v0

    .line 321
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 323
    return v1

    .line 326
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    .line 330
    .local v0, "other":Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v2

    .line 331
    .local v2, "b1":[B
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;->getEncoded()[B

    move-result-object v3

    .line 333
    .local v3, "b2":[B
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_1a

    return v1

    .line 335
    .end local v2    # "b1":[B
    .end local v3    # "b2":[B
    :catch_1a
    move-exception v2

    .line 337
    .local v2, "e":Ljava/io/IOException;
    return v1
.end method

.method public blacklist getAttributes()[Lcom/android/internal/org/bouncycastle/x509/X509Attribute;
    .registers 6

    .line 280
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 281
    .local v0, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/x509/X509Attribute;

    .line 283
    .local v1, "attrs":[Lcom/android/internal/org/bouncycastle/x509/X509Attribute;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_25

    .line 285
    new-instance v3, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v3, v1, v2

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 288
    .end local v2    # "i":I
    :cond_25
    return-object v1
.end method

.method public blacklist getAttributes(Ljava/lang/String;)[Lcom/android/internal/org/bouncycastle/x509/X509Attribute;
    .registers 7
    .param p1, "oid"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 294
    .local v0, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_2f

    .line 298
    new-instance v3, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 299
    .local v3, "attr":Lcom/android/internal/org/bouncycastle/x509/X509Attribute;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 301
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v3    # "attr":Lcom/android/internal/org/bouncycastle/x509/X509Attribute;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 305
    .end local v2    # "i":I
    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_37

    .line 307
    const/4 v2, 0x0

    return-object v2

    .line 310
    :cond_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/x509/X509Attribute;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/org/bouncycastle/x509/X509Attribute;

    return-object v2
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 268
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 8
    .param p1, "oid"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 214
    .local v0, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_40

    .line 216
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 218
    .local v1, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_40

    .line 222
    :try_start_17
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_22

    return-object v2

    .line 224
    :catch_22
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 231
    .end local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_40
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getHolder()Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;
    .registers 3

    .line 108
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getHolder()Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;
    .registers 3

    .line 113
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public blacklist getIssuerUniqueID()[Z
    .registers 8

    .line 128
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuerUniqueID()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    .line 130
    .local v0, "id":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    if-eqz v0, :cond_34

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    .line 133
    .local v1, "bytes":[B
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [Z

    .line 135
    .local v2, "boolId":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v2

    if-eq v3, v4, :cond_33

    .line 137
    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v1, v4

    rem-int/lit8 v5, v3, 0x8

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    aput-boolean v4, v2, v3

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 140
    .end local v3    # "i":I
    :cond_33
    return-object v2

    .line 143
    .end local v1    # "bytes":[B
    .end local v2    # "boolId":[Z
    :cond_34
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNotAfter()Ljava/util/Date;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    return-object v0
.end method

.method public blacklist getNotBefore()Ljava/util/Date;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignature()[B
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 3

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 275
    .local v0, "extensions":Ljava/util/Set;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 347
    :catch_9
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public final blacklist verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
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

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "signature":Ljava/security/Signature;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 185
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 191
    :try_start_2c
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_39} :catch_4d

    .line 196
    nop

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509V2AttributeCertificate;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 202
    return-void

    .line 200
    :cond_45
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Public key presented not for certificate signature"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :catch_4d
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Exception encoding certificate info object"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    :cond_56
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Signature algorithm in certificate info not same as outer certificate"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

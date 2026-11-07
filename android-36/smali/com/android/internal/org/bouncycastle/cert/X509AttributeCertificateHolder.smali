.class public Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "X509AttributeCertificateHolder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Encodable;
.implements Ljava/io/Serializable;


# static fields
.field private static blacklist EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute; = null

.field private static final whitelist serialVersionUID:J = 0x4b244cad1L


# instance fields
.field private transient blacklist attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

.field private transient blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    sput-object v0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;)V
    .registers 2
    .param p1, "attrCert"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->init(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;)V

    .line 80
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "certEncoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->parseBytes([B)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;)V

    .line 70
    return-void
.end method

.method private blacklist init(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;)V
    .registers 3
    .param p1, "attrCert"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    .line 84
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    .line 85
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 86
    return-void
.end method

.method private static blacklist parseBytes([B)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;
    .registers 5
    .param p0, "certEncoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const-string v0, "malformed data: "

    :try_start_2
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->parseNonEmptyASN1([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_a} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 54
    :catch_b
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 50
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_27
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 381
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 383
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->init(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;)V

    .line 384
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 393
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 357
    if-ne p1, p0, :cond_4

    .line 359
    const/4 v0, 0x1

    return v0

    .line 362
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;

    if-nez v0, :cond_a

    .line 364
    const/4 v0, 0x0

    return v0

    .line 367
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;

    .line 369
    .local v0, "other":Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getAttributes()[Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 163
    .local v0, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    .line 165
    .local v1, "attrs":[Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_24

    .line 167
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    move-result-object v3

    aput-object v3, v1, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 170
    .end local v2    # "i":I
    :cond_24
    return-object v1
.end method

.method public blacklist getAttributes(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;
    .registers 7
    .param p1, "type"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 181
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 182
    .local v0, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_2e

    .line 186
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    move-result-object v3

    .line 187
    .local v3, "attr":Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 189
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v3    # "attr":Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 193
    .end local v2    # "i":I
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_37

    .line 195
    sget-object v2, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    return-object v2

    .line 198
    :cond_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/org/bouncycastle/asn1/x509/Attribute;

    return-object v2
.end method

.method public blacklist getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->getCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

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

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 220
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_b

    .line 222
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0

    .line 225
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExtensionOIDs()Ljava/util/List;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->getExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getHolder()Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;
    .registers 3

    .line 122
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getHolder()Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;
    .registers 3

    .line 132
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public blacklist getIssuerUniqueID()[Z
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuerUniqueID()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->bitStringToBoolean(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)[Z

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->getNonCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNotAfter()Ljava/util/Date;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotAfterTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->recoverDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNotBefore()Ljava/util/Date;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotBeforeTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->recoverDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

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

    .line 293
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist hasExtensions()Z
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 7
    .param p1, "verifierProvider"    # Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    .line 331
    .local v0, "acinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->isAlgIdEqual(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 340
    :try_start_16
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v1

    .line 342
    .local v1, "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 343
    .local v2, "sOut":Ljava/io/OutputStream;
    const-string v3, "DER"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_34

    .line 349
    .end local v2    # "sOut":Ljava/io/OutputStream;
    nop

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->getSignature()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v2

    return v2

    .line 346
    .end local v1    # "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    :catch_34
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/CertException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to process signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 333
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_53
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/CertException;

    const-string/jumbo v2, "signature invalid - algorithm identifier mismatch"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist isValidOn(Ljava/util/Date;)Z
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 314
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v0

    .line 316
    .local v0, "certValidityPeriod":Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotBeforeTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->recoverDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotAfterTime()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->recoverDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    return-object v0
.end method

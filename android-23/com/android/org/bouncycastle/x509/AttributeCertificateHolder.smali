.class public Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "AttributeCertificateHolder.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field final holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 5
    .param p1, "digestedObjectType"    # I
    .param p2, "digestAlgorithm"    # Ljava/lang/String;
    .param p3, "otherObjectTypeID"    # Ljava/lang/String;
    .param p4, "objectDigest"    # [B

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@7
    .line 129
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    invoke-direct {v2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@c
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@e
    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;)V

    #@11
    invoke-static {p4}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@14
    move-result-object v4

    #@15
    .line 128
    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    #@18
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    #@1b
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@1d
    .line 126
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@9
    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V
    .locals 2
    .param p1, "principal"    # Lcom/android/org/bouncycastle/jce/X509Principal;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@5
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@e
    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V
    .locals 4
    .param p1, "issuerName"    # Lcom/android/org/bouncycastle/jce/X509Principal;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@7
    .line 64
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@9
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@b
    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@e
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@11
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@14
    move-result-object v2

    #@15
    .line 65
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@17
    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@1a
    .line 63
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    #@1d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@22
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    .line 88
    .local v1, "name":Lcom/android/org/bouncycastle/jce/X509Principal;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@9
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@b
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@e
    move-result-object v4

    #@f
    .line 89
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@14
    move-result-object v6

    #@15
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@18
    .line 88
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    #@1b
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V

    #@1e
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@20
    .line 75
    return-void

    #@21
    .line 84
    .end local v1    # "name":Lcom/android/org/bouncycastle/jce/X509Principal;
    :catch_0
    move-exception v0

    #@22
    .line 85
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@24
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 99
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/jce/X509Principal;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V

    #@7
    .line 97
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "issuerName"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 71
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/jce/X509Principal;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V

    #@7
    .line 69
    return-void
.end method

.method private generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 2
    .param p1, "principal"    # Lcom/android/org/bouncycastle/jce/X509Principal;

    #@0
    .prologue
    .line 204
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@4
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private getNames([Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;
    .locals 5
    .param p1, "names"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@0
    .prologue
    .line 236
    new-instance v2, Ljava/util/ArrayList;

    #@2
    array-length v3, p1

    #@3
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 238
    .local v2, "l":Ljava/util/List;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v3, p1

    #@8
    if-eq v1, v3, :cond_1

    #@a
    .line 240
    aget-object v3, p1, v1

    #@c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@f
    move-result v3

    #@10
    const/4 v4, 0x4

    #@11
    if-ne v3, v4, :cond_0

    #@13
    .line 244
    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    #@15
    .line 245
    aget-object v4, p1, v1

    #@17
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    #@22
    move-result-object v4

    #@23
    .line 244
    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@26
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 248
    :catch_0
    move-exception v0

    #@2d
    .line 249
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@2f
    const-string/jumbo v4, "badly formed Name object"

    #@32
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@35
    throw v3

    #@36
    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@39
    move-result v3

    #@3a
    new-array v3, v3, [Ljava/lang/Object;

    #@3c
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    return-object v3
.end method

.method private getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;
    .locals 4
    .param p1, "names"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@0
    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@3
    move-result-object v3

    #@4
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getNames([Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    .line 260
    .local v2, "p":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 262
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@f
    if-eq v0, v3, :cond_1

    #@11
    .line 264
    aget-object v3, v2, v0

    #@13
    instance-of v3, v3, Ljava/security/Principal;

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 266
    aget-object v3, v2, v0

    #@19
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 270
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@22
    move-result v3

    #@23
    new-array v3, v3, [Ljava/security/Principal;

    #@25
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, [Ljava/security/Principal;

    #@2b
    return-object v3
.end method

.method private matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 6
    .param p1, "subject"    # Lcom/android/org/bouncycastle/jce/X509Principal;
    .param p2, "targets"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@0
    .prologue
    .line 209
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@3
    move-result-object v3

    #@4
    .line 211
    .local v3, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    array-length v4, v3

    #@6
    if-eq v2, v4, :cond_1

    #@8
    .line 213
    aget-object v1, v3, v2

    #@a
    .line 215
    .local v1, "gn":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@d
    move-result v4

    #@e
    const/4 v5, 0x4

    #@f
    if-ne v4, v5, :cond_0

    #@11
    .line 219
    :try_start_0
    new-instance v4, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@13
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@16
    move-result-object v5

    #@17
    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    #@1e
    move-result-object v5

    #@1f
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    #@22
    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 222
    const/4 v4, 0x1

    #@29
    return v4

    #@2a
    .line 226
    :catch_0
    move-exception v0

    #@2b
    .line 211
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 231
    .end local v1    # "gn":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_1
    const/4 v4, 0x0

    #@2f
    return v4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 324
    new-instance v1, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    #@2
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@a
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@d
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 391
    if-ne p1, p0, :cond_0

    #@2
    .line 393
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 396
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 398
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 401
    check-cast v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    #@d
    .line 403
    .local v0, "other":Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@f
    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@11
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 165
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 170
    :cond_0
    return-object v1
.end method

.method public getDigestedObjectType()I
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestedObjectType()Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@19
    move-result v0

    #@1a
    return v0

    #@1b
    .line 154
    :cond_0
    const/4 v0, -0x1

    #@1c
    return v0
.end method

.method public getEntityNames()[Ljava/security/Principal;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 282
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 284
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 287
    :cond_0
    return-object v1
.end method

.method public getIssuer()[Ljava/security/Principal;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 297
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 299
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@12
    move-result-object v0

    #@13
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 302
    :cond_0
    return-object v1
.end method

.method public getObjectDigest()[B
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 182
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getObjectDigest()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 184
    :cond_0
    return-object v1
.end method

.method public getOtherObjectTypeID()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 195
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getOtherObjectTypeID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@16
    .line 199
    :cond_0
    return-object v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 314
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 316
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 319
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 413
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 415
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 418
    :cond_0
    check-cast p1, Ljava/security/cert/Certificate;

    #@8
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->match(Ljava/security/cert/Certificate;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 330
    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 332
    return v4

    #@6
    :cond_0
    move-object v3, p1

    #@7
    .line 335
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@9
    .line 339
    .local v3, "x509Cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@e
    move-result-object v5

    #@f
    if-eqz v5, :cond_2

    #@11
    .line 341
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@13
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_1

    #@29
    .line 342
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    #@2c
    move-result-object v5

    #@2d
    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@2f
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@36
    move-result-object v6

    #@37
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    #@3a
    move-result v4

    #@3b
    .line 341
    :cond_1
    return v4

    #@3c
    .line 345
    :cond_2
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@3e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@41
    move-result-object v5

    #@42
    if-eqz v5, :cond_3

    #@44
    .line 347
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    #@47
    move-result-object v5

    #@48
    .line 348
    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@4a
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@4d
    move-result-object v6

    #@4e
    .line 347
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_3

    #@54
    .line 350
    const/4 v4, 0x1

    #@55
    return v4

    #@56
    .line 353
    :cond_3
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@58
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    #@5b
    move-result-object v5

    #@5c
    if-eqz v5, :cond_4

    #@5e
    .line 355
    const/4 v2, 0x0

    #@5f
    .line 358
    .local v2, "md":Ljava/security/MessageDigest;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getDigestAlgorithm()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    const-string/jumbo v6, "BC"

    #@66
    invoke-static {v5, v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@69
    move-result-object v2

    #@6a
    .line 365
    .local v2, "md":Ljava/security/MessageDigest;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getDigestedObjectType()I

    #@6d
    move-result v5

    #@6e
    packed-switch v5, :pswitch_data_0

    #@71
    .line 375
    :goto_0
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    #@74
    move-result-object v5

    #@75
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getObjectDigest()[B

    #@78
    move-result-object v6

    #@79
    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@7c
    move-result v5

    #@7d
    if-nez v5, :cond_4

    #@7f
    .line 377
    return v4

    #@80
    .line 362
    .local v2, "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    #@81
    .line 363
    .local v0, "e":Ljava/lang/Exception;
    return v4

    #@82
    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    .local v2, "md":Ljava/security/MessageDigest;
    :pswitch_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@85
    move-result-object v5

    #@86
    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    #@8d
    goto :goto_0

    #@8e
    .line 382
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v1

    #@8f
    .line 383
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    return v4

    #@90
    .line 372
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v2    # "md":Ljava/security/MessageDigest;
    :pswitch_1
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@93
    move-result-object v5

    #@94
    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    #@97
    goto :goto_0

    #@98
    .line 386
    .end local v2    # "md":Ljava/security/MessageDigest;
    :cond_4
    return v4

    #@99
    .line 365
    nop

    #@9a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

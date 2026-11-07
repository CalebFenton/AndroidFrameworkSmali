.class public Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "AttributeCertificateHolder.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# instance fields
.field final blacklist holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .registers 10
    .param p1, "digestedObjectType"    # I
    .param p2, "digestAlgorithm"    # Ljava/lang/String;
    .param p3, "otherObjectTypeID"    # Ljava/lang/String;
    .param p4, "objectDigest"    # [B

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v4, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 132
    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 133
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jce/X509Principal;)V
    .registers 4
    .param p1, "principal"    # Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/internal/org/bouncycastle/jce/X509Principal;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V
    .registers 7
    .param p1, "issuerName"    # Lcom/android/internal/org/bouncycastle/jce/X509Principal;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v3, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 66
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v3, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/cert/X509Certificate;)V
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    :try_start_3
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_22

    .line 88
    .local v0, "name":Lcom/android/internal/org/bouncycastle/jce/X509Principal;
    nop

    .line 90
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/internal/org/bouncycastle/jce/X509Principal;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 91
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 92
    return-void

    .line 85
    .end local v0    # "name":Lcom/android/internal/org/bouncycastle/jce/X509Principal;
    :catch_22
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 101
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/jce/X509Principal;)V

    .line 102
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "issuerName"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .line 73
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V

    .line 74
    return-void
.end method

.method private blacklist generateGeneralNames(Lcom/android/internal/org/bouncycastle/jce/X509Principal;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 4
    .param p1, "principal"    # Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    .line 205
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNames([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;
    .registers 7
    .param p1, "names"    # [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    .local v0, "l":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p1

    if-eq v1, v2, :cond_36

    .line 241
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 245
    :try_start_13
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    aget-object v3, p1, v1

    .line 246
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 245
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_29} :catch_2a

    .line 251
    goto :goto_33

    .line 248
    :catch_2a
    move-exception v2

    .line 250
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "badly formed Name object"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    .end local v2    # "e":Ljava/io/IOException;
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 255
    .end local v1    # "i":I
    :cond_36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getPrincipals(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;
    .registers 6
    .param p1, "names"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 260
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->getNames([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, "p":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v1, "l":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v0

    if-eq v2, v3, :cond_1f

    .line 265
    aget-object v3, v0, v2

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_1c

    .line 267
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 271
    .end local v2    # "i":I
    :cond_1f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/Principal;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/Principal;

    return-object v2
.end method

.method private blacklist matchesDN(Lcom/android/internal/org/bouncycastle/jce/X509Principal;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .registers 8
    .param p1, "subject"    # Lcom/android/internal/org/bouncycastle/jce/X509Principal;
    .param p2, "targets"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 210
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    .line 212
    .local v0, "names":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-eq v1, v2, :cond_2f

    .line 214
    aget-object v2, v0, v1

    .line 216
    .local v2, "gn":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2c

    .line 220
    :try_start_11
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 221
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_26} :catch_2b

    if-eqz v3, :cond_2a

    .line 223
    const/4 v3, 0x1

    return v3

    .line 228
    :cond_2a
    goto :goto_2c

    .line 226
    :catch_2b
    move-exception v3

    .line 212
    .end local v2    # "gn":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 232
    .end local v1    # "i":I
    :cond_2f
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 325
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 326
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 325
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 392
    if-ne p1, p0, :cond_4

    .line 394
    const/4 v0, 0x1

    return v0

    .line 397
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;

    if-nez v0, :cond_a

    .line 399
    const/4 v0, 0x0

    return v0

    .line 402
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;

    .line 404
    .local v0, "other":Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getDigestAlgorithm()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 168
    return-object v0

    .line 171
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDigestedObjectType()I
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestedObjectType()Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v0

    return v0

    .line 155
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getEntityNames()[Ljava/security/Principal;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 285
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 288
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIssuer()[Ljava/security/Principal;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 300
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 303
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getObjectDigest()[B
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 183
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getObjectDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 185
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOtherObjectTypeID()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 198
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getOtherObjectTypeID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 200
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 317
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 320
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 414
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    .line 416
    const/4 v0, 0x0

    return v0

    .line 419
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api match(Ljava/security/cert/Certificate;)Z
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 331
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 333
    return v1

    .line 336
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 340
    .local v0, "x509Cert":Ljava/security/cert/X509Certificate;
    :try_start_9
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    .line 342
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 343
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lcom/android/internal/org/bouncycastle/jce/X509Principal;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move v1, v3

    goto :goto_3d

    :cond_3c
    nop

    .line 342
    :goto_3d
    return v1

    .line 346
    :cond_3e
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 348
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 349
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    .line 348
    invoke-direct {p0, v2, v4}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lcom/android/internal/org/bouncycastle/jce/X509Principal;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 351
    return v3

    .line 354
    :cond_57
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v2
    :try_end_5d
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9 .. :try_end_5d} :catch_9a

    if-eqz v2, :cond_98

    .line 356
    const/4 v2, 0x0

    .line 359
    .local v2, "md":Ljava/security/MessageDigest;
    :try_start_60
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6a} :catch_96
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_60 .. :try_end_6a} :catch_9a

    .line 365
    .end local v2    # "md":Ljava/security/MessageDigest;
    .local v3, "md":Ljava/security/MessageDigest;
    nop

    .line 366
    :try_start_6b
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->getDigestedObjectType()I

    move-result v2

    packed-switch v2, :pswitch_data_9c

    goto :goto_87

    .line 373
    :pswitch_73
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_87

    .line 370
    :pswitch_7b
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 371
    nop

    .line 376
    :goto_87
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;->getObjectDigest()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2
    :try_end_93
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_6b .. :try_end_93} :catch_9a

    if-nez v2, :cond_98

    .line 378
    return v1

    .line 362
    .end local v3    # "md":Ljava/security/MessageDigest;
    .restart local v2    # "md":Ljava/security/MessageDigest;
    :catch_96
    move-exception v3

    .line 364
    .local v3, "e":Ljava/lang/Exception;
    return v1

    .line 385
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_98
    nop

    .line 387
    return v1

    .line 382
    :catch_9a
    move-exception v2

    .line 384
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    return v1

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_73
    .end packed-switch
.end method

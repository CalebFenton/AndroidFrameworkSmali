.class public Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
.super Ljava/lang/Object;
.source "X509v3CertificateBuilder.java"


# instance fields
.field private blacklist extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

.field private blacklist tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 9
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .param p4, "notAfter"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .param p5, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p6, "publicKeyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p4}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    .line 93
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p5}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p6}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 96
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 14
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p6, "publicKeyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 56
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v3, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v4, p4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p5    # "subject":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local p6    # "publicKeyInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .local v1, "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v2, "serial":Ljava/math/BigInteger;
    .local v5, "subject":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v6, "publicKeyInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 15
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "dateLocale"    # Ljava/util/Locale;
    .param p6, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p7, "publicKeyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 73
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v3, p3, p5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v4, p4, p5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p6    # "subject":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local p7    # "publicKeyInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .local v1, "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v2, "serial":Ljava/math/BigInteger;
    .local v5, "subject":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v6, "publicKeyInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x509/Time;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V
    .registers 7
    .param p1, "template"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 107
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/internal/org/bouncycastle/asn1/x509/Time;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 114
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 118
    .local v0, "exts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_5e
    :goto_5e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 120
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 123
    .local v2, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAltPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_5e

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 124
    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_5e

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 125
    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 127
    goto :goto_5e

    .line 129
    :cond_83
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    .line 130
    .end local v2    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_5e

    .line 131
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_8d
    return-void
.end method

.method static blacklist booleanToBitString([Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 7
    .param p0, "id"    # [Z

    .line 505
    array-length v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 507
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-eq v1, v2, :cond_23

    .line 509
    div-int/lit8 v2, v1, 0x8

    aget-byte v3, v0, v2

    aget-boolean v4, p0, v1

    if-eqz v4, :cond_1b

    rem-int/lit8 v4, v1, 0x8

    rsub-int/lit8 v4, v4, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 512
    .end local v1    # "i":I
    :cond_23
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    .line 514
    .local v1, "pad":I
    if-nez v1, :cond_2e

    .line 516
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    return-object v2

    .line 520
    :cond_2e
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    rsub-int/lit8 v3, v1, 0x8

    invoke-direct {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v2
.end method

.method private blacklist doGetExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 157
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 164
    .local v0, "exts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist generateSig(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;)[B
    .registers 4
    .param p0, "signer"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p1, "tbsObj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 486
    .local v0, "sOut":Ljava/io/OutputStream;
    const-string v1, "DER"

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 489
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist generateStructure(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .registers 5
    .param p0, "tbsCert"    # Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .param p1, "sigAlgId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "signature"    # [B

    .line 494
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 496
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 497
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 498
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 500
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .registers 8
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 216
    nop

    .line 218
    return-object p0

    .line 213
    :catch_7
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot encode extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .registers 5
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "encodedValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 257
    return-object p0
.end method

.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .registers 3
    .param p1, "extension"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    .line 235
    return-object p0
.end method

.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 9
    .param p1, "signer"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    .line 381
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    .line 385
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->hasExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 387
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 388
    .local v0, "deltaExt":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    move-result-object v1

    .line 392
    .local v1, "deltaDesc":Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    :try_start_2b
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 393
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->trimTo(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    move-result-object v5

    .line 392
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_46} :catch_47

    .line 398
    goto :goto_66

    .line 395
    :catch_47
    move-exception v2

    .line 397
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to replace deltaCertificateDescriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 400
    .end local v0    # "deltaExt":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .end local v1    # "deltaDesc":Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 405
    :cond_71
    :try_start_71
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    .line 406
    .local v0, "tbsCert":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->generateSig(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;)[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->generateStructure(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_88} :catch_89

    return-object v1

    .line 408
    .end local v0    # "tbsCert":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    :catch_89
    move-exception v0

    .line 410
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "cannot produce certificate signature"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/util/Exceptions;->illegalArgumentException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;ZLcom/android/internal/org/bouncycastle/operator/ContentSigner;)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 12
    .param p1, "signer"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p2, "isCritical"    # Z
    .param p3, "altSigner"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p3}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d9

    .line 435
    nop

    .line 437
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->hasExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 439
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 442
    .local v0, "deltaExt":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    move-result-object v1

    .line 448
    .local v1, "deltaDesc":Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    :try_start_2f
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 449
    .local v2, "tmpExtGen":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 450
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 452
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 453
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->trimTo(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    move-result-object v6

    .line 452
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_5e} :catch_5f

    .line 458
    .end local v2    # "tmpExtGen":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    goto :goto_7e

    .line 455
    :catch_5f
    move-exception v2

    .line 457
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to replace deltaCertificateDescriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 461
    .end local v0    # "deltaExt":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .end local v1    # "deltaDesc":Lcom/android/internal/org/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 467
    :try_start_8f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generatePreTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->generateSig(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 471
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 473
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    .line 474
    .local v0, "tbsCert":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->generateSig(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;)[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->generateStructure(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_d0} :catch_d1

    return-object v1

    .line 476
    .end local v0    # "tbsCert":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    :catch_d1
    move-exception v0

    .line 478
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "cannot produce certificate signature"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/util/Exceptions;->illegalArgumentException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    :catch_d9
    move-exception v0

    .line 434
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "cannot add altSignatureAlgorithm extension"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method public blacklist copyAndAddExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .registers 9
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "certHolder"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 357
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    .line 359
    .local v0, "cert":Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 361
    .local v1, "extension":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_20

    .line 366
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 368
    return-object p0

    .line 363
    :cond_20
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extension "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 152
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->doGetExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->doGetExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist removeExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 338
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->doRemoveExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 340
    return-object p0
.end method

.method public blacklist replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .registers 8
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    invoke-interface {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->doReplaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_19

    .line 284
    nop

    .line 286
    return-object p0

    .line 281
    :catch_19
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot encode extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .registers 6
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "encodedValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->doReplaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 326
    return-object p0
.end method

.method public blacklist replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .registers 3
    .param p1, "extension"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->doReplaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->extGenerator:Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 304
    return-object p0
.end method

.method public blacklist setIssuerUniqueID([Z)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .registers 4
    .param p1, "uniqueID"    # [Z

    .line 188
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->booleanToBitString([Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuerUniqueID(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    .line 190
    return-object p0
.end method

.method public blacklist setSubjectUniqueID([Z)Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;
    .registers 4
    .param p1, "uniqueID"    # [Z

    .line 175
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->tbsGen:Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cert/X509v3CertificateBuilder;->booleanToBitString([Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectUniqueID(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    .line 177
    return-object p0
.end method

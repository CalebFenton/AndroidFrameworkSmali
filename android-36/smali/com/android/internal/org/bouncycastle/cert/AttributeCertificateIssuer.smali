.class public Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source "AttributeCertificateIssuer.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# instance fields
.field final blacklist form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 5
    .param p1, "principal"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;)V
    .registers 3
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 32
    return-void
.end method

.method private blacklist matchesDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .registers 8
    .param p1, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "targets"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 69
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    .line 71
    .local v0, "names":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-eq v1, v2, :cond_24

    .line 73
    aget-object v2, v0, v1

    .line 75
    .local v2, "gn":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_21

    .line 77
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 79
    const/4 v3, 0x1

    return v3

    .line 71
    .end local v2    # "gn":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 84
    .end local v1    # "i":I
    :cond_24
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 89
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 94
    if-ne p1, p0, :cond_4

    .line 96
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;

    if-nez v0, :cond_a

    .line 101
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;

    .line 106
    .local v0, "other":Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getNames()[Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 7

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_f

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    .local v0, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    goto :goto_13

    .line 49
    .end local v0    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 52
    .restart local v0    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :goto_13
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 54
    .local v1, "names":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v2, "l":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    array-length v4, v1

    if-eq v3, v4, :cond_3a

    .line 58
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_37

    .line 60
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 64
    .end local v3    # "i":I
    :cond_3a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v3
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 116
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 118
    return v1

    .line 121
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 123
    .local v0, "x509Cert":Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    const/4 v3, 0x1

    if-eqz v2, :cond_52

    .line 125
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    .line 126
    .local v2, "issuer":Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 128
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 129
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->matchesDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v4

    if-eqz v4, :cond_40

    move v1, v3

    goto :goto_41

    :cond_40
    nop

    .line 128
    :goto_41
    return v1

    .line 132
    :cond_42
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    .line 133
    .local v4, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->matchesDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 135
    return v3

    .line 137
    .end local v2    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;
    .end local v4    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :cond_51
    goto :goto_61

    .line 140
    :cond_52
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 141
    .local v2, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateIssuer;->matchesDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 143
    return v3

    .line 147
    .end local v2    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :cond_61
    :goto_61
    return v1
.end method

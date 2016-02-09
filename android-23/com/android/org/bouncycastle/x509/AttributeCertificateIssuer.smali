.class public Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source "AttributeCertificateIssuer.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field final form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V
    .locals 1
    .param p1, "issuer"    # Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getIssuer()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@9
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V
    .locals 3
    .param p1, "principal"    # Lcom/android/org/bouncycastle/jce/X509Principal;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@7
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@9
    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    #@c
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    #@16
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@18
    .line 47
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 2
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@2
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    #@9
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V

    #@c
    .line 42
    return-void
.end method

.method private getNames()[Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    .line 56
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    instance-of v5, v5, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@4
    if-eqz v5, :cond_1

    #@6
    .line 58
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@d
    move-result-object v3

    #@e
    .line 65
    .local v3, "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :goto_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@11
    move-result-object v4

    #@12
    .line 67
    .local v4, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    #@14
    array-length v5, v4

    #@15
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    .line 69
    .local v2, "l":Ljava/util/List;
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_1
    array-length v5, v4

    #@1a
    if-eq v1, v5, :cond_2

    #@1c
    .line 71
    aget-object v5, v4, v1

    #@1e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@21
    move-result v5

    #@22
    const/4 v6, 0x4

    #@23
    if-ne v5, v6, :cond_0

    #@25
    .line 75
    :try_start_0
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    #@27
    .line 76
    aget-object v6, v4, v1

    #@29
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2c
    move-result-object v6

    #@2d
    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    #@34
    move-result-object v6

    #@35
    .line 75
    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@38
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 62
    .end local v1    # "i":I
    .end local v2    # "l":Ljava/util/List;
    .end local v3    # "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v4    # "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@40
    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@42
    .restart local v3    # "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    goto :goto_0

    #@43
    .line 79
    .restart local v1    # "i":I
    .restart local v2    # "l":Ljava/util/List;
    .restart local v4    # "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v0

    #@44
    .line 80
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@46
    const-string/jumbo v6, "badly formed Name object"

    #@49
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v5

    #@4d
    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@50
    move-result v5

    #@51
    new-array v5, v5, [Ljava/lang/Object;

    #@53
    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@56
    move-result-object v5

    #@57
    return-object v5
.end method

.method private matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 6
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "targets"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@0
    .prologue
    .line 112
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@3
    move-result-object v3

    #@4
    .line 114
    .local v3, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    array-length v4, v3

    #@6
    if-eq v2, v4, :cond_1

    #@8
    .line 116
    aget-object v1, v3, v2

    #@a
    .line 118
    .local v1, "gn":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@d
    move-result v4

    #@e
    const/4 v5, 0x4

    #@f
    if-ne v4, v5, :cond_0

    #@11
    .line 122
    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

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
    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@22
    invoke-virtual {v4, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 124
    const/4 v4, 0x1

    #@29
    return v4

    #@2a
    .line 128
    :catch_0
    move-exception v0

    #@2b
    .line 114
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 133
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
    .line 138
    new-instance v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    #@b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 179
    if-ne p1, p0, :cond_0

    #@2
    .line 181
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 184
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 186
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 189
    check-cast v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    #@d
    .line 191
    .local v0, "other":Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@f
    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 4

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getNames()[Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    .line 97
    .local v2, "p":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 99
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@b
    if-eq v0, v3, :cond_1

    #@d
    .line 101
    aget-object v3, v2, v0

    #@f
    instance-of v3, v3, Ljava/security/Principal;

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 103
    aget-object v3, v2, v0

    #@15
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 107
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1e
    move-result v3

    #@1f
    new-array v3, v3, [Ljava/security/Principal;

    #@21
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, [Ljava/security/Principal;

    #@27
    return-object v3
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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
    .line 201
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 203
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 206
    :cond_0
    check-cast p1, Ljava/security/cert/Certificate;

    #@8
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 6
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 143
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 145
    return v3

    #@7
    :cond_0
    move-object v2, p1

    #@8
    .line 148
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@a
    .line 150
    .local v2, "x509Cert":Ljava/security/cert/X509Certificate;
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c
    instance-of v4, v4, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@e
    if-eqz v4, :cond_3

    #@10
    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    #@14
    .line 153
    .local v0, "issuer":Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@17
    move-result-object v4

    #@18
    if-eqz v4, :cond_2

    #@1a
    .line 155
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_1

    #@30
    .line 156
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@3b
    move-result-object v4

    #@3c
    invoke-direct {p0, v3, v4}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    #@3f
    move-result v3

    #@40
    .line 155
    :cond_1
    return v3

    #@41
    .line 159
    :cond_2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@44
    move-result-object v1

    #@45
    .line 160
    .local v1, "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@48
    move-result-object v4

    #@49
    invoke-direct {p0, v4, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_4

    #@4f
    .line 162
    return v5

    #@50
    .line 167
    .end local v0    # "issuer":Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    .end local v1    # "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@52
    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@54
    .line 168
    .restart local v1    # "name":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@57
    move-result-object v4

    #@58
    invoke-direct {p0, v4, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_4

    #@5e
    .line 170
    return v5

    #@5f
    .line 174
    :cond_4
    return v3
.end method

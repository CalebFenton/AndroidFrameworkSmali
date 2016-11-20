.class public Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryObject.java"


# instance fields
.field private c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

.field private certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field private hashValue:I

.field private isHashValueSet:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;)V
    .locals 1
    .param p1, "c"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@5
    .line 46
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@8
    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 1
    .param p1, "c"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .param p2, "isIndirect"    # Z
    .param p3, "previousCertificateIssuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@5
    .line 72
    invoke-direct {p0, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->loadCertificateIssuer(ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@b
    .line 69
    return-void
.end method

.method private getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 171
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@3
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@6
    move-result-object v0

    #@7
    .line 173
    .local v0, "exts":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_0

    #@9
    .line 175
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 178
    :cond_0
    return-object v2
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 7
    .param p1, "critical"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 135
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@3
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@6
    move-result-object v2

    #@7
    .line 137
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_2

    #@9
    .line 139
    new-instance v4, Ljava/util/HashSet;

    #@b
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@e
    .line 140
    .local v4, "set":Ljava/util/Set;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@11
    move-result-object v0

    #@12
    .line 142
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_1

    #@18
    .line 144
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    .line 145
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@21
    move-result-object v1

    #@22
    .line 147
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@25
    move-result v5

    #@26
    if-ne p1, v5, :cond_0

    #@28
    .line 149
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 153
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    return-object v4

    #@31
    .line 156
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v4    # "set":Ljava/util/Set;
    :cond_2
    return-object v6
.end method

.method private loadCertificateIssuer(ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 7
    .param p1, "isIndirect"    # Z
    .param p2, "previousCertificateIssuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 88
    if-nez p1, :cond_0

    #@3
    .line 90
    return-object v6

    #@4
    .line 93
    :cond_0
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@9
    move-result-object v1

    #@a
    .line 94
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-nez v1, :cond_1

    #@c
    .line 96
    return-object p2

    #@d
    .line 101
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v4

    #@11
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@18
    move-result-object v3

    #@19
    .line 102
    .local v3, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_0
    array-length v4, v3

    #@1b
    if-ge v2, v4, :cond_3

    #@1d
    .line 104
    aget-object v4, v3, v2

    #@1f
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@22
    move-result v4

    #@23
    const/4 v5, 0x4

    #@24
    if-ne v4, v5, :cond_2

    #@26
    .line 106
    aget-object v4, v3, v2

    #@28
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result-object v4

    #@30
    return-object v4

    #@31
    .line 102
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 109
    :cond_3
    return-object v6

    #@35
    .line 112
    .end local v2    # "i":I
    .end local v3    # "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v0

    #@36
    .line 113
    .local v0, "e":Ljava/lang/Exception;
    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 217
    if-ne p1, p0, :cond_0

    #@2
    .line 219
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 222
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;

    #@6
    if-eqz v1, :cond_1

    #@8
    move-object v0, p1

    #@9
    .line 224
    nop

    #@a
    nop

    #@b
    .line 226
    .local v0, "other":Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@d
    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@f
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 229
    .end local v0    # "other":Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    :cond_1
    invoke-super {p0, p0}, Ljava/security/cert/X509CRLEntry;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    return v1
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 119
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 121
    return-object v3

    #@6
    .line 125
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@8
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    return-object v1

    #@12
    .line 128
    :catch_0
    move-exception v0

    #@13
    .line 129
    .local v0, "e":Ljava/io/IOException;
    return-object v3
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 161
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@2
    const-string/jumbo v2, "DER"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 240
    :catch_0
    move-exception v0

    #@b
    .line 241
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    #@d
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 5
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 183
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3
    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@6
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@9
    move-result-object v1

    #@a
    .line 185
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    #@c
    .line 189
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 192
    :catch_0
    move-exception v0

    #@16
    .line 193
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "error encoding "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 166
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getRevocationDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 81
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    .line 83
    .local v0, "extns":Ljava/util/Set;
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
    .locals 1

    #@0
    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 208
    invoke-super {p0}, Ljava/security/cert/X509CRLEntry;->hashCode()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    #@a
    .line 209
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    #@d
    .line 212
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    #@f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 263
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    #@8
    move-result-object v6

    #@9
    .line 265
    .local v6, "nl":Ljava/lang/String;
    const-string/jumbo v9, "      userCertificate: "

    #@c
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    move-result-object v9

    #@10
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    #@13
    move-result-object v10

    #@14
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@17
    move-result-object v9

    #@18
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    .line 266
    const-string/jumbo v9, "       revocationDate: "

    #@1e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    move-result-object v9

    #@22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    #@25
    move-result-object v10

    #@26
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@29
    move-result-object v9

    #@2a
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    .line 267
    const-string/jumbo v9, "       certificateIssuer: "

    #@30
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    move-result-object v9

    #@34
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    #@37
    move-result-object v10

    #@38
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3f
    .line 269
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@41
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@44
    move-result-object v5

    #@45
    .line 271
    .local v5, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v5, :cond_3

    #@47
    .line 273
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@4a
    move-result-object v2

    #@4b
    .line 274
    .local v2, "e":Ljava/util/Enumeration;
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@4e
    move-result v9

    #@4f
    if-eqz v9, :cond_3

    #@51
    .line 276
    const-string/jumbo v9, "   crlEntryExtensions:"

    #@54
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    .line 278
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@5e
    move-result v9

    #@5f
    if-eqz v9, :cond_3

    #@61
    .line 280
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@64
    move-result-object v8

    #@65
    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@67
    .line 281
    .local v8, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@6a
    move-result-object v4

    #@6b
    .line 282
    .local v4, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@6e
    move-result-object v9

    #@6f
    if-eqz v9, :cond_2

    #@71
    .line 284
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@74
    move-result-object v9

    #@75
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@78
    move-result-object v7

    #@79
    .line 285
    .local v7, "octs":[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@7b
    invoke-direct {v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@7e
    .line 286
    .local v1, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const-string/jumbo v9, "                       critical("

    #@81
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@88
    move-result v10

    #@89
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@8c
    move-result-object v9

    #@8d
    const-string/jumbo v10, ") "

    #@90
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@93
    .line 289
    :try_start_0
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@95
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v9

    #@99
    if-eqz v9, :cond_0

    #@9b
    .line 291
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9e
    move-result-object v9

    #@9f
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@a2
    move-result-object v9

    #@a3
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    #@a6
    move-result-object v9

    #@a7
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@aa
    move-result-object v9

    #@ab
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@ae
    goto :goto_0

    #@af
    .line 304
    :catch_0
    move-exception v3

    #@b0
    .line 305
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@b3
    move-result-object v9

    #@b4
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b7
    .line 306
    const-string/jumbo v9, " value = "

    #@ba
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@bd
    move-result-object v9

    #@be
    const-string/jumbo v10, "*****"

    #@c1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c4
    move-result-object v9

    #@c5
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c8
    goto :goto_0

    #@c9
    .line 293
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cb
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v9

    #@cf
    if-eqz v9, :cond_1

    #@d1
    .line 295
    const-string/jumbo v9, "Certificate issuer: "

    #@d4
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d7
    move-result-object v9

    #@d8
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@db
    move-result-object v10

    #@dc
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@df
    move-result-object v10

    #@e0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@e3
    move-result-object v9

    #@e4
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e7
    goto/16 :goto_0

    #@e9
    .line 299
    :cond_1
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@ec
    move-result-object v9

    #@ed
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f0
    .line 300
    const-string/jumbo v9, " value = "

    #@f3
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f6
    move-result-object v9

    #@f7
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@fa
    move-result-object v10

    #@fb
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    #@fe
    move-result-object v10

    #@ff
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@102
    move-result-object v9

    #@103
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@106
    goto/16 :goto_0

    #@108
    .line 311
    .end local v1    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v7    # "octs":[B
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10b
    goto/16 :goto_0

    #@10d
    .line 317
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v4    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v8    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@110
    move-result-object v9

    #@111
    return-object v9
.end method

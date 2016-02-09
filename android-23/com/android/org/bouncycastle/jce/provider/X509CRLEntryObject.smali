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
    .line 42
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@5
    .line 45
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@8
    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 1
    .param p1, "c"    # Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .param p2, "isIndirect"    # Z
    .param p3, "previousCertificateIssuer"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    #@3
    .line 70
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@5
    .line 71
    invoke-direct {p0, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->loadCertificateIssuer(ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@b
    .line 68
    return-void
.end method

.method private getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 170
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@3
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@6
    move-result-object v0

    #@7
    .line 172
    .local v0, "exts":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_0

    #@9
    .line 174
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 177
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
    .line 134
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@3
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@6
    move-result-object v2

    #@7
    .line 136
    .local v2, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v2, :cond_2

    #@9
    .line 138
    new-instance v4, Ljava/util/HashSet;

    #@b
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@e
    .line 139
    .local v4, "set":Ljava/util/Set;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@11
    move-result-object v0

    #@12
    .line 141
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_1

    #@18
    .line 143
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    .line 144
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@21
    move-result-object v1

    #@22
    .line 146
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@25
    move-result v5

    #@26
    if-ne p1, v5, :cond_0

    #@28
    .line 148
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 152
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    return-object v4

    #@31
    .line 155
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
    .line 87
    if-nez p1, :cond_0

    #@3
    .line 89
    return-object v6

    #@4
    .line 92
    :cond_0
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@9
    move-result-object v1

    #@a
    .line 93
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-nez v1, :cond_1

    #@c
    .line 95
    return-object p2

    #@d
    .line 100
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
    .line 101
    .local v3, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_0
    array-length v4, v3

    #@1b
    if-ge v2, v4, :cond_3

    #@1d
    .line 103
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
    .line 105
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
    .line 101
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 108
    :cond_3
    return-object v6

    #@35
    .line 111
    .end local v2    # "i":I
    .end local v3    # "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v0

    #@36
    .line 112
    .local v0, "e":Ljava/lang/Exception;
    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 216
    if-ne p1, p0, :cond_0

    #@2
    .line 218
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 221
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;

    #@6
    if-eqz v1, :cond_1

    #@8
    move-object v0, p1

    #@9
    .line 223
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;

    #@b
    .line 225
    .local v0, "other":Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@d
    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@f
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 228
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
    .line 118
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 120
    return-object v3

    #@6
    .line 124
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@8
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    return-object v1

    #@12
    .line 127
    :catch_0
    move-exception v0

    #@13
    .line 128
    .local v0, "e":Ljava/io/IOException;
    return-object v3
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 160
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
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@2
    const-string/jumbo v2, "DER"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 239
    :catch_0
    move-exception v0

    #@b
    .line 240
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    #@d
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

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
    .line 182
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3
    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@6
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@9
    move-result-object v1

    #@a
    .line 184
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    #@c
    .line 188
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 191
    :catch_0
    move-exception v0

    #@16
    .line 192
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
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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
    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 165
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
    .line 251
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
    .line 246
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
    .line 256
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
    .line 80
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    .line 82
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
    .line 205
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 207
    invoke-super {p0}, Ljava/security/cert/X509CRLEntry;->hashCode()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    #@a
    .line 208
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    #@d
    .line 211
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    #@f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 262
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v9, "line.separator"

    #@8
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v6

    #@c
    .line 264
    .local v6, "nl":Ljava/lang/String;
    const-string/jumbo v9, "      userCertificate: "

    #@f
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    move-result-object v9

    #@13
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    #@16
    move-result-object v10

    #@17
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1a
    move-result-object v9

    #@1b
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 265
    const-string/jumbo v9, "       revocationDate: "

    #@21
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    move-result-object v9

    #@25
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    #@28
    move-result-object v10

    #@29
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 266
    const-string/jumbo v9, "       certificateIssuer: "

    #@33
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    move-result-object v9

    #@37
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    #@3a
    move-result-object v10

    #@3b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    .line 268
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@44
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@47
    move-result-object v5

    #@48
    .line 270
    .local v5, "extensions":Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v5, :cond_3

    #@4a
    .line 272
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    #@4d
    move-result-object v2

    #@4e
    .line 273
    .local v2, "e":Ljava/util/Enumeration;
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@51
    move-result v9

    #@52
    if-eqz v9, :cond_3

    #@54
    .line 275
    const-string/jumbo v9, "   crlEntryExtensions:"

    #@57
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5e
    .line 277
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@61
    move-result v9

    #@62
    if-eqz v9, :cond_3

    #@64
    .line 279
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@67
    move-result-object v8

    #@68
    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6a
    .line 280
    .local v8, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@6d
    move-result-object v4

    #@6e
    .line 281
    .local v4, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@71
    move-result-object v9

    #@72
    if-eqz v9, :cond_2

    #@74
    .line 283
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@7b
    move-result-object v7

    #@7c
    .line 284
    .local v7, "octs":[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@7e
    invoke-direct {v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@81
    .line 285
    .local v1, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const-string/jumbo v9, "                       critical("

    #@84
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@8b
    move-result v10

    #@8c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@8f
    move-result-object v9

    #@90
    const-string/jumbo v10, ") "

    #@93
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@96
    .line 288
    :try_start_0
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@98
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v9

    #@9c
    if-eqz v9, :cond_0

    #@9e
    .line 290
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@a1
    move-result-object v9

    #@a2
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@a5
    move-result-object v9

    #@a6
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    #@a9
    move-result-object v9

    #@aa
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@ad
    move-result-object v9

    #@ae
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b1
    goto :goto_0

    #@b2
    .line 303
    :catch_0
    move-exception v3

    #@b3
    .line 304
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@b6
    move-result-object v9

    #@b7
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ba
    .line 305
    const-string/jumbo v9, " value = "

    #@bd
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c0
    move-result-object v9

    #@c1
    const-string/jumbo v10, "*****"

    #@c4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c7
    move-result-object v9

    #@c8
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cb
    goto :goto_0

    #@cc
    .line 292
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ce
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@d1
    move-result v9

    #@d2
    if-eqz v9, :cond_1

    #@d4
    .line 294
    const-string/jumbo v9, "Certificate issuer: "

    #@d7
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@da
    move-result-object v9

    #@db
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@de
    move-result-object v10

    #@df
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@e2
    move-result-object v10

    #@e3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@e6
    move-result-object v9

    #@e7
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ea
    goto/16 :goto_0

    #@ec
    .line 298
    :cond_1
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@ef
    move-result-object v9

    #@f0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f3
    .line 299
    const-string/jumbo v9, " value = "

    #@f6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f9
    move-result-object v9

    #@fa
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@fd
    move-result-object v10

    #@fe
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    #@101
    move-result-object v10

    #@102
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@105
    move-result-object v9

    #@106
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@109
    goto/16 :goto_0

    #@10b
    .line 310
    .end local v1    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v7    # "octs":[B
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10e
    goto/16 :goto_0

    #@110
    .line 316
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v4    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v8    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@113
    move-result-object v9

    #@114
    return-object v9
.end method

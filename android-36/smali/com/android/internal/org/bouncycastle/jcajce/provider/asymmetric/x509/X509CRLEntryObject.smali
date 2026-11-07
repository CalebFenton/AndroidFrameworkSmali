.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryObject.java"


# instance fields
.field private blacklist c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

.field private blacklist certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private volatile blacklist hashValue:I

.field private volatile blacklist hashValueSet:Z


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;)V
    .registers 3
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 45
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 48
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 5
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .param p2, "isIndirect"    # Z
    .param p3, "previousCertificateIssuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 71
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->loadCertificateIssuer(ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 74
    return-void
.end method

.method private blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 172
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 174
    .local v0, "exts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_d

    .line 176
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    return-object v1

    .line 179
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getExtensionOIDs(Z)Ljava/util/Set;
    .registers 8
    .param p1, "critical"    # Z

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 138
    .local v0, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_30

    .line 140
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 141
    .local v1, "set":Ljava/util/Set;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 143
    .local v2, "e":Ljava/util/Enumeration;
    :goto_11
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 145
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 146
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 148
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_2e

    .line 150
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_2e
    goto :goto_11

    .line 154
    :cond_2f
    return-object v1

    .line 157
    .end local v1    # "set":Ljava/util/Set;
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_30
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist loadCertificateIssuer(ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 9
    .param p1, "isIndirect"    # Z
    .param p2, "previousCertificateIssuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 89
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 91
    return-object v0

    .line 94
    :cond_4
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 95
    .local v1, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-nez v1, :cond_d

    .line 97
    return-object p2

    .line 102
    :cond_d
    :try_start_d
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 103
    .local v2, "names":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    array-length v4, v2

    if-ge v3, v4, :cond_34

    .line 105
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_31

    .line 107
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_35

    return-object v0

    .line 103
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 110
    .end local v3    # "i":I
    :cond_34
    return-object v0

    .line 112
    .end local v2    # "names":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :catch_35
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 218
    if-ne p1, p0, :cond_4

    .line 220
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    if-eqz v0, :cond_24

    .line 225
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    .line 227
    .local v0, "otherBC":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    if-eqz v1, :cond_1b

    .line 229
    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    iget v2, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    if-eq v1, v2, :cond_1b

    .line 231
    const/4 v1, 0x0

    return v1

    .line 235
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 238
    .end local v0    # "otherBC":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;
    :cond_24
    invoke-super {p0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 122
    return-object v1

    .line 126
    :cond_6
    :try_start_6
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    .line 128
    :catch_12
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    return-object v1
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 248
    :catch_9
    move-exception v0

    .line 250
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 7
    .param p1, "oid"    # Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 186
    .local v0, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_32

    .line 190
    :try_start_b
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    return-object v1

    .line 192
    :catch_14
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_32
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRevocationDate()Ljava/util/Date;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getRevocationDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hasExtensions()Z
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 3

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 84
    .local v0, "extns":Ljava/util/Set;
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
    .registers 2

    .line 207
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    if-nez v0, :cond_d

    .line 209
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    .line 213
    :cond_d
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 13

    .line 271
    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "nl":Ljava/lang/String;
    const-string v3, "      userCertificate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    const-string v3, "       revocationDate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string v3, "       certificateIssuer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 280
    .local v3, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v3, :cond_ff

    .line 282
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v4

    .line 283
    .local v4, "e":Ljava/util/Enumeration;
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 285
    const-string v5, "   crlEntryExtensions:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    :goto_59
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 289
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 290
    .local v5, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v6

    .line 291
    .local v6, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    if-eqz v7, :cond_fa

    .line 293
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 294
    .local v7, "octs":[B
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 295
    .local v8, "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    const-string v9, "                       critical("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    :try_start_8f
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->reasonCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 300
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e3

    .line 302
    :cond_ab
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_c9

    .line 304
    const-string v9, "Certificate issuer: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e3

    .line 308
    :cond_c9
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_e3} :catch_e4

    .line 316
    :goto_e3
    goto :goto_f9

    .line 312
    :catch_e4
    move-exception v9

    .line 314
    .local v9, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "*****"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    .end local v7    # "octs":[B
    .end local v8    # "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v9    # "ex":Ljava/lang/Exception;
    :goto_f9
    goto :goto_fd

    .line 320
    :cond_fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    .end local v5    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :goto_fd
    goto/16 :goto_59

    .line 326
    .end local v4    # "e":Ljava/util/Enumeration;
    :cond_ff
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

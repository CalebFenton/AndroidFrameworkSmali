.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryObject.java"


# instance fields
.field private blacklist c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

.field private blacklist certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field private volatile blacklist hashValue:I

.field private volatile blacklist hashValueSet:Z


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->loadCertificateIssuer(ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method private blacklist getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .registers 2

    .line 172
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getExtensionOIDs(Z)Ljava/util/Set;
    .registers 6

    .line 136
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 141
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    .line 143
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 145
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-ne p1, v3, :cond_11

    .line 150
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2f
    return-object v0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist loadCertificateIssuer(ZLcom/android/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 94
    :cond_4
    sget-object p1, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object p0

    if-nez p0, :cond_d

    return-object p2

    .line 102
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p0

    const/4 p1, 0x0

    .line 103
    :goto_1a
    array-length p2, p0

    if-ge p1, p2, :cond_34

    .line 105
    aget-object p2, p0, p1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result p2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_31

    .line 107
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_34

    return-object p0

    :cond_31
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :catch_34
    :cond_34
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 223
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    if-eqz v0, :cond_23

    .line 225
    check-cast p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    .line 227
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    if-eqz v0, :cond_1a

    .line 229
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    iget v1, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    if-eq v0, v1, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 235
    :cond_1a
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    iget-object p1, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 238
    :cond_23
    invoke-super {p0, p0}, Ljava/security/cert/X509CRLEntry;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 126
    :cond_6
    :try_start_6
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    return-object v1
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 246
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 250
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 4

    .line 184
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 190
    :try_start_b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 194
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getRevocationDate()Ljava/util/Date;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getRevocationDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hasExtensions()Z
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 1

    .line 82
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 84
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 207
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    if-nez v0, :cond_d

    .line 209
    invoke-super {p0}, Ljava/security/cert/X509CRLEntry;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValueSet:Z

    .line 213
    :cond_d
    iget p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->hashValue:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 271
    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 274
    const-string v3, "      userCertificate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    const-string v3, "       revocationDate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string v3, "       certificateIssuer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_f0

    .line 282
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v3

    .line 283
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 285
    const-string v4, "   crlEntryExtensions:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    :goto_52
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 289
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 290
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v5

    .line 291
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    if-eqz v6, :cond_eb

    .line 293
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    .line 294
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 295
    const-string v6, "                       critical("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v5, ") "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    :try_start_86
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 300
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 302
    :cond_a1
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 304
    const-string v5, "Certificate issuer: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 308
    :cond_bd
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_d5} :catch_d7

    goto/16 :goto_52

    .line 314
    :catch_d7
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "*****"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_52

    .line 320
    :cond_eb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_52

    .line 326
    :cond_f0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

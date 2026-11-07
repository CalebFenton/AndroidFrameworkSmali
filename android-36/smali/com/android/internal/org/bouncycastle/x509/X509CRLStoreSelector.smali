.class public Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;
.super Ljava/security/cert/X509CRLSelector;
.source "X509CRLStoreSelector.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# instance fields
.field private blacklist attrCertChecking:Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

.field private blacklist completeCRLEnabled:Z

.field private blacklist deltaCRLIndicator:Z

.field private blacklist issuingDistributionPoint:[B

.field private blacklist issuingDistributionPointEnabled:Z

.field private blacklist maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 35
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 37
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method public static blacklist getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;
    .registers 5
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;

    .line 207
    if-eqz p0, :cond_3e

    .line 212
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 213
    .local v0, "cs":Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 214
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 217
    :try_start_15
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_33

    .line 223
    nop

    .line 224
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuers(Ljava/util/Collection;)V

    .line 225
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    .line 226
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 227
    return-object v0

    .line 219
    :catch_33
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    .end local v0    # "cs":Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot create from null selector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 232
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;

    move-result-object v0

    .line 233
    .local v0, "sel":Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iput-boolean v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 234
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    iput-boolean v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 235
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 236
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    .line 237
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    iput-boolean v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 238
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 239
    return-object v0
.end method

.method public blacklist getAttrCertificateChecking()Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public blacklist getIssuingDistributionPoint()[B
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist isCompleteCRLEnabled()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public blacklist isDeltaCRLIndicatorEnabled()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public blacklist isIssuingDistributionPointEnabled()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 96
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 98
    return v1

    .line 100
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 101
    .local v0, "crl":Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    .line 104
    .local v2, "dci":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :try_start_a
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 106
    .local v3, "bytes":[B
    if-eqz v3, :cond_20

    .line 108
    nop

    .line 109
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 108
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_6d

    move-object v2, v4

    .line 115
    .end local v3    # "bytes":[B
    :cond_20
    nop

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 118
    if-nez v2, :cond_2a

    .line 120
    return v1

    .line 123
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 125
    if-eqz v2, :cond_33

    .line 127
    return v1

    .line 130
    :cond_33
    if-eqz v2, :cond_47

    .line 133
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v3, :cond_47

    .line 135
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    .line 137
    return v1

    .line 141
    :cond_47
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v3, :cond_65

    .line 143
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 145
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 146
    .local v3, "idp":[B
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v4, :cond_5c

    .line 148
    if-eqz v3, :cond_65

    .line 150
    return v1

    .line 155
    :cond_5c
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_65

    .line 157
    return v1

    .line 162
    .end local v3    # "idp":[B
    :cond_65
    move-object v1, p1

    check-cast v1, Ljava/security/cert/X509CRL;

    invoke-super {p0, v1}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v1

    return v1

    .line 112
    :catch_6d
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist test-api match(Ljava/security/cert/CRL;)Z
    .registers 3
    .param p1, "crl"    # Ljava/security/cert/CRL;

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist setAttrCertificateChecking(Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;)V
    .registers 2
    .param p1, "attrCert"    # Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    .line 80
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    .line 81
    return-void
.end method

.method public blacklist setCompleteCRLEnabled(Z)V
    .registers 2
    .param p1, "completeCRLEnabled"    # Z

    .line 264
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 265
    return-void
.end method

.method public blacklist setDeltaCRLIndicatorEnabled(Z)V
    .registers 2
    .param p1, "deltaCRLIndicator"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 195
    return-void
.end method

.method public blacklist setIssuingDistributionPoint([B)V
    .registers 3
    .param p1, "issuingDistributionPoint"    # [B

    .line 330
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 331
    return-void
.end method

.method public blacklist setIssuingDistributionPointEnabled(Z)V
    .registers 2
    .param p1, "issuingDistributionPointEnabled"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 65
    return-void
.end method

.method public blacklist setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "maxBaseCRLNumber"    # Ljava/math/BigInteger;

    .line 290
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 291
    return-void
.end method

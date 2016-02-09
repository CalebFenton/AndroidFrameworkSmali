.class public Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
.super Ljava/security/cert/X509CRLSelector;
.source "X509CRLStoreSelector.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field private attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 23
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    #@5
    .line 27
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    #@7
    .line 29
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    #@9
    .line 31
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@b
    .line 33
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    #@d
    .line 35
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    #@f
    .line 23
    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    .locals 4
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;

    #@0
    .prologue
    .line 205
    if-nez p0, :cond_0

    #@2
    .line 207
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 208
    const-string/jumbo v3, "cannot create from null selector"

    #@7
    .line 207
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 210
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    #@d
    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    #@10
    .line 211
    .local v0, "cs":Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    #@17
    .line 212
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    #@1e
    .line 215
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 222
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuers(Ljava/util/Collection;)V

    #@2c
    .line 223
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    #@33
    .line 224
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    #@3a
    .line 225
    return-object v0

    #@3b
    .line 218
    :catch_0
    move-exception v1

    #@3c
    .line 220
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3e
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 230
    invoke-static {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    #@3
    move-result-object v0

    #@4
    .line 231
    .local v0, "sel":Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    #@6
    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    #@8
    .line 232
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    #@a
    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    #@c
    .line 233
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@e
    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@10
    .line 234
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@12
    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@14
    .line 235
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    #@16
    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    #@18
    .line 236
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    #@1a
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    #@20
    .line 237
    return-object v0
.end method

.method public getAttrCertificateChecking()Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@2
    return-object v0
.end method

.method public getIssuingDistributionPoint()[B
    .locals 1

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public isCompleteCRLEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    #@2
    return v0
.end method

.method public isDeltaCRLIndicatorEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    #@2
    return v0
.end method

.method public isIssuingDistributionPointEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    #@2
    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 94
    instance-of v5, p1, Ljava/security/cert/X509CRL;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 96
    return v7

    #@6
    :cond_0
    move-object v1, p1

    #@7
    .line 98
    check-cast v1, Ljava/security/cert/X509CRL;

    #@9
    .line 99
    .local v1, "crl":Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    #@a
    .line 103
    .local v2, "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_start_0
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    .line 102
    invoke-virtual {v1, v5}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    #@13
    move-result-object v0

    #@14
    .line 104
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    #@16
    .line 106
    invoke-static {v0}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@19
    move-result-object v5

    #@1a
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v2

    #@1e
    .line 114
    .end local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_2

    #@24
    .line 116
    if-nez v2, :cond_2

    #@26
    .line 118
    return v7

    #@27
    .line 111
    .end local v0    # "bytes":[B
    .restart local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :catch_0
    move-exception v3

    #@28
    .line 112
    .local v3, "e":Ljava/lang/Exception;
    return v7

    #@29
    .line 121
    .end local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytes":[B
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->isCompleteCRLEnabled()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_3

    #@2f
    .line 123
    if-eqz v2, :cond_3

    #@31
    .line 125
    return v7

    #@32
    .line 128
    :cond_3
    if-eqz v2, :cond_4

    #@34
    .line 131
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@36
    if-eqz v5, :cond_4

    #@38
    .line 133
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@3b
    move-result-object v5

    #@3c
    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@3e
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@41
    move-result v5

    #@42
    const/4 v6, 0x1

    #@43
    if-ne v5, v6, :cond_4

    #@45
    .line 135
    return v7

    #@46
    .line 139
    :cond_4
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    #@48
    if-eqz v5, :cond_6

    #@4a
    .line 142
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4c
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 141
    invoke-virtual {v1, v5}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    #@53
    move-result-object v4

    #@54
    .line 144
    .local v4, "idp":[B
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    #@56
    if-nez v5, :cond_5

    #@58
    .line 146
    if-eqz v4, :cond_6

    #@5a
    .line 148
    return v7

    #@5b
    .line 153
    :cond_5
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    #@5d
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@60
    move-result v5

    #@61
    if-nez v5, :cond_6

    #@63
    .line 155
    return v7

    #@64
    .line 160
    .end local v4    # "idp":[B
    :cond_6
    check-cast p1, Ljava/security/cert/X509CRL;

    #@66
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-super {p0, p1}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    #@69
    move-result v5

    #@6a
    return v5
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 1
    .param p1, "crl"    # Ljava/security/cert/CRL;

    #@0
    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setAttrCertificateChecking(Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;)V
    .locals 0
    .param p1, "attrCert"    # Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@0
    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@2
    .line 76
    return-void
.end method

.method public setCompleteCRLEnabled(Z)V
    .locals 0
    .param p1, "completeCRLEnabled"    # Z

    #@0
    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    #@2
    .line 260
    return-void
.end method

.method public setDeltaCRLIndicatorEnabled(Z)V
    .locals 0
    .param p1, "deltaCRLIndicator"    # Z

    #@0
    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    #@2
    .line 190
    return-void
.end method

.method public setIssuingDistributionPoint([B)V
    .locals 1
    .param p1, "issuingDistributionPoint"    # [B

    #@0
    .prologue
    .line 328
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    #@6
    .line 326
    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .locals 0
    .param p1, "issuingDistributionPointEnabled"    # Z

    #@0
    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    #@2
    .line 60
    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "maxBaseCRLNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@2
    .line 286
    return-void
.end method

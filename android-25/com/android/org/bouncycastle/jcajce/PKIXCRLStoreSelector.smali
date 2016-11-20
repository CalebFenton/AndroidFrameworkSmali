.class public Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
.super Ljava/lang/Object;
.source "PKIXCRLStoreSelector.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;,
        Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/CRL;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/org/bouncycastle/util/Selector",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CRLSelector;

.field private final completeCRLEnabled:Z

.field private final deltaCRLIndicator:Z

.field private final issuingDistributionPoint:[B

.field private final issuingDistributionPointEnabled:Z

.field private final maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method static synthetic -get0(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)V
    .locals 1
    .param p1, "baseBuilder"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    #@0
    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 155
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    #@9
    .line 156
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get2(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    #@c
    move-result v0

    #@d
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->deltaCRLIndicator:Z

    #@f
    .line 157
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get1(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    #@12
    move-result v0

    #@13
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->completeCRLEnabled:Z

    #@15
    .line 158
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get5(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@1b
    .line 159
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get3(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    #@21
    .line 160
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get4(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    #@24
    move-result v0

    #@25
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    #@27
    .line 153
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V
    .locals 0
    .param p1, "baseBuilder"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)V

    #@3
    return-void
.end method

.method public static getCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .locals 1
    .param p0, "selector"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p1, "certStore"    # Ljava/security/cert/CertStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V

    #@5
    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    #@0
    .prologue
    .line 265
    return-object p0
.end method

.method public getCertificateChecking()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    #@2
    instance-of v0, v0, Ljava/security/cert/X509CRLSelector;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 309
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    #@8
    check-cast v0, Ljava/security/cert/X509CRLSelector;

    #@a
    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 312
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public getIssuingDistributionPoint()[B
    .locals 1

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

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
    .line 286
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public isCompleteCRLEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->completeCRLEnabled:Z

    #@2
    return v0
.end method

.method public isDeltaCRLIndicatorEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->deltaCRLIndicator:Z

    #@2
    return v0
.end method

.method public isIssuingDistributionPointEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    #@2
    return v0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 180
    check-cast p1, Ljava/security/cert/CRL;

    #@2
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 8
    .param p1, "obj"    # Ljava/security/cert/CRL;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 182
    instance-of v5, p1, Ljava/security/cert/X509CRL;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 184
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    #@7
    invoke-interface {v5, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    #@a
    move-result v5

    #@b
    return v5

    #@c
    :cond_0
    move-object v1, p1

    #@d
    .line 187
    nop

    #@e
    nop

    #@f
    .line 188
    .local v1, "crl":Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    #@10
    .line 192
    .local v2, "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_start_0
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    .line 191
    invoke-virtual {v1, v5}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    #@19
    move-result-object v0

    #@1a
    .line 193
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    #@1c
    .line 195
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@23
    move-result-object v5

    #@24
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    move-result-object v2

    #@28
    .line 202
    .end local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_2

    #@2e
    .line 204
    if-nez v2, :cond_2

    #@30
    .line 206
    return v7

    #@31
    .line 199
    .end local v0    # "bytes":[B
    .restart local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :catch_0
    move-exception v3

    #@32
    .line 200
    .local v3, "e":Ljava/lang/Exception;
    return v7

    #@33
    .line 209
    .end local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytes":[B
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->isCompleteCRLEnabled()Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_3

    #@39
    .line 211
    if-eqz v2, :cond_3

    #@3b
    .line 213
    return v7

    #@3c
    .line 216
    :cond_3
    if-eqz v2, :cond_4

    #@3e
    .line 219
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@40
    if-eqz v5, :cond_4

    #@42
    .line 221
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    #@45
    move-result-object v5

    #@46
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@48
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@4b
    move-result v5

    #@4c
    const/4 v6, 0x1

    #@4d
    if-ne v5, v6, :cond_4

    #@4f
    .line 223
    return v7

    #@50
    .line 227
    :cond_4
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    #@52
    if-eqz v5, :cond_6

    #@54
    .line 230
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@56
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    .line 229
    invoke-virtual {v1, v5}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    #@5d
    move-result-object v4

    #@5e
    .line 232
    .local v4, "idp":[B
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    #@60
    if-nez v5, :cond_5

    #@62
    .line 234
    if-eqz v4, :cond_6

    #@64
    .line 236
    return v7

    #@65
    .line 241
    :cond_5
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    #@67
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@6a
    move-result v5

    #@6b
    if-nez v5, :cond_6

    #@6d
    .line 243
    return v7

    #@6e
    .line 248
    .end local v4    # "idp":[B
    :cond_6
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    #@70
    invoke-interface {v5, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    #@73
    move-result v5

    #@74
    return v5
.end method

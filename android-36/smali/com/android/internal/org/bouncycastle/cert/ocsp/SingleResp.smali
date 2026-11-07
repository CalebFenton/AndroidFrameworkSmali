.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;
.super Ljava/lang/Object;
.source "SingleResp.java"


# instance fields
.field private blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;)V
    .registers 3
    .param p1, "resp"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    .line 27
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getSingleExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist getCertID()Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .registers 3

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getCertID()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method

.method public blacklist getCertStatus()Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getCertStatus()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    .line 44
    .local v0, "s":Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->getTagNo()I

    move-result v1

    if-nez v1, :cond_e

    .line 46
    const/4 v1, 0x0

    return-object v1

    .line 48
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 50
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->getStatus()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;)V

    return-object v1

    .line 53
    :cond_23
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/UnknownStatus;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/UnknownStatus;-><init>()V

    return-object v1
.end method

.method public blacklist getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_b

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0

    .line 89
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExtensionOIDs()Ljava/util/List;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNextUpdate()Ljava/util/Date;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    if-nez v0, :cond_a

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThisUpdate()Ljava/util/Date;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getThisUpdate()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasExtensions()Z
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

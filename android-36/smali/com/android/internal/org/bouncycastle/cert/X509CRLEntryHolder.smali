.class public Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;
.super Ljava/lang/Object;
.source "X509CRLEntryHolder.java"


# instance fields
.field private blacklist ca:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

.field private blacklist entry:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 6
    .param p1, "entry"    # Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .param p2, "isIndirect"    # Z
    .param p3, "previousCA"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->entry:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 27
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->ca:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 29
    if-eqz p2, :cond_25

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 31
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 33
    .local v0, "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_25

    .line 35
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->ca:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 38
    .end local v0    # "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_25
    return-void
.end method


# virtual methods
.method public blacklist getCertificateIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->ca:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->entry:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->getCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->entry:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 96
    .local v0, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_d

    .line 98
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    return-object v1

    .line 101
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getExtensionOIDs()Ljava/util/List;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->entry:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->getExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->entry:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->entry:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->getNonCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRevocationDate()Ljava/util/Date;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->entry:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getRevocationDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->entry:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasExtensions()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/X509CRLEntryHolder;->entry:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v0

    return v0
.end method

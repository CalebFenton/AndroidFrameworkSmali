.class public Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRLEntry"
.end annotation


# instance fields
.field blacklist crlEntryExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field blacklist seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 56
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_14

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_14

    .line 62
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 63
    return-void

    .line 59
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 67
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    if-eqz v0, :cond_8

    .line 69
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    return-object v0

    .line 71
    :cond_8
    if-eqz p0, :cond_14

    .line 73
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 76
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 93
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 96
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getRevocationDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserCertificate()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasExtensions()Z
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

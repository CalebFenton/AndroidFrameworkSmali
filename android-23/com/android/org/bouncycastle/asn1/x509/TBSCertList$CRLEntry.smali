.class public Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRLEntry"
.end annotation


# instance fields
.field crlEntryExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 51
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x2

    #@8
    if-lt v0, v1, :cond_0

    #@a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x3

    #@f
    if-le v0, v1, :cond_1

    #@11
    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Bad sequence size: "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@22
    move-result v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 56
    :cond_1
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@31
    .line 49
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 61
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 63
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 65
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 67
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 70
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .locals 2

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x3

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    const/4 v1, 0x2

    #@10
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@1a
    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@1c
    return-object v0
.end method

.method public getRevocationDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 2

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getUserCertificate()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 2

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public hasExtensions()Z
    .locals 2

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x3

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    return-object v0
.end method

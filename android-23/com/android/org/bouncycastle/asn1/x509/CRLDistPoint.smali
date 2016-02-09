.class public Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CRLDistPoint.java"


# instance fields
.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 13
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@8
    .line 38
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)V
    .locals 3
    .param p1, "points"    # [Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 13
    const/4 v2, 0x0

    #@4
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    .line 46
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@8
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@b
    .line 48
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@d
    if-eq v0, v2, :cond_0

    #@f
    .line 50
    aget-object v2, p1, v0

    #@11
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 48
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 53
    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@19
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1c
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@1e
    .line 44
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 25
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 27
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 29
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 34
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .locals 3

    #@0
    .prologue
    .line 63
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@5
    move-result v2

    #@6
    new-array v0, v2, [Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    #@8
    .line 65
    .local v0, "dp":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@e
    move-result v2

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 67
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@13
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@16
    move-result-object v2

    #@17
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    #@1a
    move-result-object v2

    #@1b
    aput-object v2, v0, v1

    #@1d
    .line 65
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 70
    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 87
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "line.separator"

    #@8
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 89
    .local v3, "sep":Ljava/lang/String;
    const-string/jumbo v4, "CRLDistPoint:"

    #@f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 91
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    #@18
    move-result-object v1

    #@19
    .line 92
    .local v1, "dp":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_0
    array-length v4, v1

    #@1b
    if-eq v2, v4, :cond_0

    #@1d
    .line 94
    const-string/jumbo v4, "    "

    #@20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 95
    aget-object v4, v1, v2

    #@25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@28
    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 92
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    return-object v4
.end method

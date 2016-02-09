.class public Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AttCertValidityPeriod.java"


# instance fields
.field notAfterTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

.field notBeforeTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .locals 0
    .param p1, "notBeforeTime"    # Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p2, "notAfterTime"    # Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@5
    .line 53
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@7
    .line 50
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 34
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Bad sequence size: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 37
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1b
    move-result v2

    #@1c
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 40
    :cond_0
    const/4 v0, 0x0

    #@29
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@33
    .line 41
    const/4 v0, 0x1

    #@34
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@3e
    .line 32
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 19
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 21
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 23
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 28
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getNotAfterTime()Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@2
    return-object v0
.end method

.method public getNotBeforeTime()Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 79
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 80
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 82
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method

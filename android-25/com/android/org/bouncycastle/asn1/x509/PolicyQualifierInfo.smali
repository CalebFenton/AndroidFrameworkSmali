.class public Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PolicyQualifierInfo.java"


# instance fields
.field private policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "policyQualifierId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "qualifier"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 41
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "as"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 68
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 70
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
    .line 71
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1b
    move-result v2

    #@1c
    .line 70
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
    .line 74
    :cond_0
    const/4 v0, 0x0

    #@29
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33
    .line 75
    const/4 v0, 0x1

    #@34
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3a
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cps"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_cps:Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@9
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@e
    .line 52
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 81
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 83
    nop

    #@6
    nop

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 85
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 90
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getPolicyQualifierId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getQualifier()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 112
    .local v0, "dev":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 113
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 115
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method

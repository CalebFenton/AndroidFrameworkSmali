.class public Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PolicyInformation.java"


# instance fields
.field private policyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "policyIdentifier"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "policyIdentifier"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "policyQualifiers"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 44
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@7
    .line 41
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 16
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 19
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@7
    move-result v0

    #@8
    if-lt v0, v2, :cond_0

    #@a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x2

    #@f
    if-le v0, v1, :cond_1

    #@11
    .line 21
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
    .line 22
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@22
    move-result v2

    #@23
    .line 21
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
    .line 25
    :cond_1
    const/4 v0, 0x0

    #@30
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@33
    move-result-object v0

    #@34
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a
    .line 27
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@3d
    move-result v0

    #@3e
    if-le v0, v2, :cond_2

    #@40
    .line 29
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@43
    move-result-object v0

    #@44
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@4a
    .line 17
    :cond_2
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 50
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 52
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 55
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    #@b
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@12
    return-object v0
.end method


# virtual methods
.method public getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 78
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 80
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 82
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@10
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@13
    .line 85
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@15
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@18
    return-object v1
.end method

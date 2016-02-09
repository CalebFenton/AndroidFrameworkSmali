.class public Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CRLBag.java"


# instance fields
.field private crlId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private crlValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "crlId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "crlValue"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;->crlId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 44
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;->crlValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    .line 41
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 21
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;->crlId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    .line 22
    const/4 v0, 0x1

    #@d
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;->crlValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    .line 19
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 29
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 31
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 36
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCRLValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;->crlValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    return-object v0
.end method

.method public getcrlId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;->crlId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 77
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;->crlId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 78
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@c
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CRLBag;->crlValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@e
    const/4 v3, 0x0

    #@f
    invoke-direct {v1, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@12
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15
    .line 80
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@17
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1a
    return-object v1
.end method

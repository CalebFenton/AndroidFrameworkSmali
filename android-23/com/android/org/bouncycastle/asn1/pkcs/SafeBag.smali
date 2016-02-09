.class public Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SafeBag.java"


# instance fields
.field private bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 26
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    .line 27
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@a
    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .param p3, "bagAttributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 36
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    .line 37
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@9
    .line 33
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 59
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    .line 60
    const/4 v0, 0x1

    #@d
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    .line 61
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1c
    move-result v0

    #@1d
    const/4 v1, 0x3

    #@1e
    if-ne v0, v1, :cond_0

    #@20
    .line 63
    const/4 v0, 0x2

    #@21
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@27
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@29
    .line 57
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 43
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 45
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 48
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 53
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 86
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 87
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    #@c
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@e
    const/4 v3, 0x1

    #@f
    const/4 v4, 0x0

    #@10
    invoke-direct {v1, v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@13
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16
    .line 89
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 91
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@1c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1f
    .line 94
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLSequence;

    #@21
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@24
    return-object v1
.end method

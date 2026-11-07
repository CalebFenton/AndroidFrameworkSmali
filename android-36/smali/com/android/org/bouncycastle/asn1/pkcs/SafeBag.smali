.class public Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SafeBag.java"


# instance fields
.field private blacklist bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private blacklist bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 41
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 65
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    const/4 v0, 0x2

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    :cond_29
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .registers 2

    .line 47
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    if-eqz v0, :cond_7

    .line 49
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method

.method public blacklist getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public blacklist getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 88
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 90
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 91
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz p0, :cond_1e

    .line 95
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 98
    :cond_1e
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

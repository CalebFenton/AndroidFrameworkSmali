.class public Lcom/android/org/bouncycastle/asn1/x509/OtherName;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "OtherName.java"


# instance fields
.field private final blacklist typeID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final blacklist value:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->typeID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->value:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/OtherName;
    .registers 2

    .line 44
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/OtherName;

    if-eqz v0, :cond_7

    .line 46
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/OtherName;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/OtherName;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/OtherName;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getTypeID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->typeID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public blacklist getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->value:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 89
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->typeID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 90
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/OtherName;->value:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, p0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

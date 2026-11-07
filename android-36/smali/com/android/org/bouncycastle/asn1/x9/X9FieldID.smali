.class public Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9FieldID.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private blacklist id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .registers 10

    .line 67
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 70
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 72
    const-string p1, "inconsistent k values"

    if-nez p3, :cond_31

    if-nez p4, :cond_2b

    .line 79
    sget-object p1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->tpBasis:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_62

    .line 76
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    if-le p3, p2, :cond_6a

    if-le p4, p3, :cond_6a

    .line 89
    sget-object p1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ppBasis:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 90
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 91
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v2, p2

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    new-instance p2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p3

    invoke-direct {p2, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    new-instance p2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long p3, p4

    invoke-direct {p2, p3, p4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    new-instance p2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 97
    :goto_62
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-void

    .line 86
    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 102
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 33
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;
    .registers 2

    .line 109
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    if-eqz v0, :cond_7

    .line 111
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 116
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public blacklist getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 143
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 145
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 146
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 148
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

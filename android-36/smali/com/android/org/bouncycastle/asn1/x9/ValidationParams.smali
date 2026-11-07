.class public Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ValidationParams.java"


# instance fields
.field private blacklist pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist seed:Lcom/android/org/bouncycastle/asn1/ASN1BitString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void

    .line 81
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>([BI)V
    .registers 5

    .line 52
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_15

    .line 58
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    .line 59
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void

    .line 55
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'seed\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
    .registers 2

    .line 39
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    if-eqz v0, :cond_7

    .line 41
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getPgenCounter()Ljava/math/BigInteger;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSeed()[B
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 101
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 102
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

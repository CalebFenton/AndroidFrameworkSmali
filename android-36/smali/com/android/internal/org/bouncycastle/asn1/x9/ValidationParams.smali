.class public Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ValidationParams.java"


# instance fields
.field private blacklist pgenCounter:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist seed:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 78
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 86
    return-void

    .line 81
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 5
    .param p1, "seed"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .param p2, "pgenCounter"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 63
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    if-eqz p1, :cond_14

    .line 68
    if-eqz p2, :cond_c

    .line 73
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 74
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 75
    return-void

    .line 70
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'pgenCounter\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'seed\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([BI)V
    .registers 6
    .param p1, "seed"    # [B
    .param p2, "pgenCounter"    # I

    .line 52
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 53
    if-eqz p1, :cond_15

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 60
    return-void

    .line 55
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'seed\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 34
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 39
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    if-eqz v0, :cond_8

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    return-object v0

    .line 43
    :cond_8
    if-eqz p0, :cond_14

    .line 45
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 48
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getPgenCounter()Ljava/math/BigInteger;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSeed()[B
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 100
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 101
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 102
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

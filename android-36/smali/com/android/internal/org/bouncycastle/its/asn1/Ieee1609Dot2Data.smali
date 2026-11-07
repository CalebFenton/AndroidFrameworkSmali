.class public Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Data;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Ieee1609Dot2Data.java"


# instance fields
.field private final blacklist content:Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;

.field private final blacklist protcolVersion:Ljava/math/BigInteger;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 29
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Data;->protcolVersion:Ljava/math/BigInteger;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Data;->content:Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;

    .line 37
    return-void

    .line 32
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sequence not length 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Data;
    .registers 3
    .param p0, "src"    # Ljava/lang/Object;

    .line 41
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Data;

    if-eqz v0, :cond_8

    .line 43
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Data;

    return-object v0

    .line 45
    :cond_8
    if-eqz p0, :cond_14

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Data;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Data;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 50
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 57
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

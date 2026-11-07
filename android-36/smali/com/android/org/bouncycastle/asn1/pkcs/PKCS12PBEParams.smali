.class public Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PKCS12PBEParams.java"


# instance fields
.field blacklist iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field blacklist iv:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 5

    .line 27
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 29
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .registers 2

    .line 42
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    if-eqz v0, :cond_7

    .line 44
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getIV()[B
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getIterations()Ljava/math/BigInteger;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 68
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 69
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 71
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "PKCS12PBEParams.java"


# instance fields
.field blacklist iterations:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist iv:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 34
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 37
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 6
    .param p1, "salt"    # [B
    .param p2, "iterations"    # I

    .line 27
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 29
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 30
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 42
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    if-eqz v0, :cond_8

    .line 44
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    return-object v0

    .line 46
    :cond_8
    if-eqz p0, :cond_14

    .line 48
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 51
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getIV()[B
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIterations()Ljava/math/BigInteger;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 66
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 68
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 69
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 71
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.class public Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9FieldElement.java"


# static fields
.field private static converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field protected f:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@7
    .line 14
    return-void
.end method

.method public constructor <init>(IIIILcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "s"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@2
    new-instance v5, Ljava/math/BigInteger;

    #@4
    invoke-virtual {p5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x1

    #@9
    invoke-direct {v5, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@c
    move v1, p1

    #@d
    move v2, p2

    #@e
    move v3, p3

    #@f
    move v4, p4

    #@10
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    #@13
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@16
    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "f"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5
    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 4
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "s"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@2
    new-instance v1, Ljava/math/BigInteger;

    #@4
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x1

    #@9
    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@c
    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@f
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@12
    .line 26
    return-void
.end method


# virtual methods
.method public getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 59
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@2
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)I

    #@7
    move-result v0

    #@8
    .line 60
    .local v0, "byteCount":I
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@a
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    #@13
    move-result-object v1

    #@14
    .line 62
    .local v1, "paddedBigInteger":[B
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@16
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@19
    return-object v2
.end method

.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X9FieldElement.java"


# static fields
.field private static blacklist converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field protected blacklist f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 2
    .param p1, "f"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 21
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist getValue()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 48
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)I

    move-result v0

    .line 49
    .local v0, "byteCount":I
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 51
    .local v1, "paddedBigInteger":[B
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v2
.end method

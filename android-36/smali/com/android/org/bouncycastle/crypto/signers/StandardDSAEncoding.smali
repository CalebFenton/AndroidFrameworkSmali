.class public Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;
.super Ljava/lang/Object;
.source "StandardDSAEncoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/signers/DSAEncoding;


# static fields
.field public static final blacklist INSTANCE:Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;->INSTANCE:Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3

    .line 51
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-ltz p0, :cond_f

    if-eqz p1, :cond_e

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_f

    :cond_e
    return-object p2

    .line 53
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Value out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;
    .registers 8

    .line 33
    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 34
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;->decodeValue(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;I)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x1

    .line 37
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;->decodeValue(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 39
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p0

    .line 40
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 42
    new-array p0, v2, [Ljava/math/BigInteger;

    aput-object v3, p0, v1

    aput-object v0, p0, v4

    return-object p0

    .line 46
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Malformed signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected blacklist decodeValue(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;I)Ljava/math/BigInteger;
    .registers 4

    .line 61
    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    check-cast p2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;->checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 5

    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 26
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;->encodeValue(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Ljava/math/BigInteger;)V

    .line 27
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;->encodeValue(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Ljava/math/BigInteger;)V

    .line 28
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string p1, "DER"

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method protected blacklist encodeValue(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Ljava/math/BigInteger;)V
    .registers 5

    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0, p1, p3}, Lcom/android/org/bouncycastle/crypto/signers/StandardDSAEncoding;->checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

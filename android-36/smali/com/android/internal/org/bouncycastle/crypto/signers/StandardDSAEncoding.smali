.class public Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;
.super Ljava/lang/Object;
.source "StandardDSAEncoding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;->INSTANCE:Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;

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
    .registers 5
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "x"    # Ljava/math/BigInteger;

    .line 51
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_f

    if-eqz p1, :cond_e

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_f

    .line 56
    :cond_e
    return-object p2

    .line 53
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;
    .registers 11
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 34
    .local v0, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;->decodeValue(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 37
    .local v3, "r":Ljava/math/BigInteger;
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;->decodeValue(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;I)Ljava/math/BigInteger;

    move-result-object v5

    .line 39
    .local v5, "s":Ljava/math/BigInteger;
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v6

    .line 40
    .local v6, "expectedEncoding":[B
    invoke-static {v6, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 42
    new-array v2, v2, [Ljava/math/BigInteger;

    aput-object v3, v2, v1

    aput-object v5, v2, v4

    return-object v2

    .line 46
    .end local v3    # "r":Ljava/math/BigInteger;
    .end local v5    # "s":Ljava/math/BigInteger;
    .end local v6    # "expectedEncoding":[B
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Malformed signature"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist decodeValue(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;I)Ljava/math/BigInteger;
    .registers 5
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "s"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .param p3, "pos"    # I

    .line 61
    invoke-virtual {p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;->checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 7
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 26
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;->encodeValue(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;Ljava/math/BigInteger;)V

    .line 27
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;->encodeValue(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;Ljava/math/BigInteger;)V

    .line 28
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method protected blacklist encodeValue(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;Ljava/math/BigInteger;)V
    .registers 6
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "v"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p3, "x"    # Ljava/math/BigInteger;

    .line 66
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;->checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 67
    return-void
.end method

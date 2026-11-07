.class public Lcom/android/internal/org/bouncycastle/its/asn1/IValue;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "IValue.java"


# instance fields
.field private final blacklist value:Ljava/math/BigInteger;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 5
    .param p1, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 25
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v0

    .line 28
    .local v0, "i":I
    if-ltz v0, :cond_19

    const v1, 0xffff

    if-gt v0, v1, :cond_19

    .line 33
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;->value:Ljava/math/BigInteger;

    .line 34
    return-void

    .line 30
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "value out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/IValue;
    .registers 3
    .param p0, "src"    # Ljava/lang/Object;

    .line 38
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;

    if-eqz v0, :cond_8

    .line 40
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;

    return-object v0

    .line 42
    :cond_8
    if-eqz p0, :cond_14

    .line 44
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    return-object v0

    .line 47
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/IValue;->value:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

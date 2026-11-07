.class public abstract Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;
.super Ljava/lang/Object;
.source "FiniteFields.java"


# static fields
.field static final blacklist GF_2:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

.field static final blacklist GF_3:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 13
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    .line 14
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->GF_3:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBinaryExtensionField([I)Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;
    .registers 4
    .param p0, "exponents"    # [I

    .line 18
    const/4 v0, 0x0

    aget v0, p0, v0

    if-nez v0, :cond_29

    .line 22
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_1c

    .line 24
    aget v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    if-le v1, v2, :cond_14

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 26
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Polynomial exponents must be monotonically increasing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    .end local v0    # "i":I
    :cond_1c
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    new-instance v2, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;

    invoke-direct {v2, p0}, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;-><init>([I)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;-><init>(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;Lcom/android/internal/org/bouncycastle/math/field/Polynomial;)V

    return-object v0

    .line 20
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Irreducible polynomials in GF(2) must have constant term"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getPrimeField(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/field/FiniteField;
    .registers 4
    .param p0, "characteristic"    # Ljava/math/BigInteger;

    .line 40
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 41
    .local v0, "bitLength":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_24

    const/4 v1, 0x2

    if-lt v0, v1, :cond_24

    .line 46
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1e

    .line 48
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v1

    packed-switch v1, :pswitch_data_2c

    goto :goto_1e

    .line 53
    :pswitch_18
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->GF_3:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    return-object v1

    .line 51
    :pswitch_1b
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    return-object v1

    .line 57
    :cond_1e
    :goto_1e
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    return-object v1

    .line 43
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'characteristic\' must be >= 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

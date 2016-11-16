.class public abstract Lcom/android/org/bouncycastle/math/field/FiniteFields;
.super Ljava/lang/Object;
.source "FiniteFields.java"


# static fields
.field static final GF_2:Lcom/android/org/bouncycastle/math/field/FiniteField;

.field static final GF_3:Lcom/android/org/bouncycastle/math/field/FiniteField;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 7
    new-instance v0, Lcom/android/org/bouncycastle/math/field/PrimeField;

    #@2
    const-wide/16 v2, 0x2

    #@4
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    #@b
    sput-object v0, Lcom/android/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@d
    .line 8
    new-instance v0, Lcom/android/org/bouncycastle/math/field/PrimeField;

    #@f
    const-wide/16 v2, 0x3

    #@11
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    #@18
    sput-object v0, Lcom/android/org/bouncycastle/math/field/FiniteFields;->GF_3:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@1a
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getBinaryExtensionField([I)Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;
    .locals 4
    .param p0, "exponents"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 12
    aget v1, p0, v1

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "Irreducible polynomials in GF(2) must have constant term"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 16
    :cond_0
    const/4 v0, 0x1

    #@f
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@10
    if-ge v0, v1, :cond_2

    #@12
    .line 18
    aget v1, p0, v0

    #@14
    add-int/lit8 v2, v0, -0x1

    #@16
    aget v2, p0, v2

    #@18
    if-gt v1, v2, :cond_1

    #@1a
    .line 20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v2, "Polynomial exponents must be montonically increasing"

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 16
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 24
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    #@28
    sget-object v2, Lcom/android/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@2a
    new-instance v3, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;

    #@2c
    invoke-direct {v3, p0}, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;-><init>([I)V

    #@2f
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;-><init>(Lcom/android/org/bouncycastle/math/field/FiniteField;Lcom/android/org/bouncycastle/math/field/Polynomial;)V

    #@32
    return-object v1
.end method

.method public static getPrimeField(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/field/FiniteField;
    .locals 3
    .param p0, "characteristic"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@3
    move-result v0

    #@4
    .line 35
    .local v0, "bitLength":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@7
    move-result v1

    #@8
    if-lez v1, :cond_0

    #@a
    const/4 v1, 0x2

    #@b
    if-ge v0, v1, :cond_1

    #@d
    .line 37
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "\'characteristic\' must be >= 2"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 40
    :cond_1
    const/4 v1, 0x3

    #@17
    if-ge v0, v1, :cond_2

    #@19
    .line 42
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    #@1c
    move-result v1

    #@1d
    packed-switch v1, :pswitch_data_0

    #@20
    .line 51
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/math/field/PrimeField;

    #@22
    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    #@25
    return-object v1

    #@26
    .line 45
    :pswitch_0
    sget-object v1, Lcom/android/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@28
    return-object v1

    #@29
    .line 47
    :pswitch_1
    sget-object v1, Lcom/android/org/bouncycastle/math/field/FiniteFields;->GF_3:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@2b
    return-object v1

    #@2c
    .line 42
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

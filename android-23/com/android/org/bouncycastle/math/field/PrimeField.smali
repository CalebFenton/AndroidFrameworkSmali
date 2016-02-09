.class Lcom/android/org/bouncycastle/math/field/PrimeField;
.super Ljava/lang/Object;
.source "PrimeField.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/field/FiniteField;


# instance fields
.field protected final characteristic:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "characteristic"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 11
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    #@5
    .line 9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 26
    if-ne p0, p1, :cond_0

    #@2
    .line 28
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 30
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/field/PrimeField;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 32
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 34
    check-cast v0, Lcom/android/org/bouncycastle/math/field/PrimeField;

    #@d
    .line 35
    .local v0, "other":Lcom/android/org/bouncycastle/math/field/PrimeField;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    #@f
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    #@11
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getCharacteristic()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getDimension()I
    .locals 1

    #@0
    .prologue
    .line 21
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

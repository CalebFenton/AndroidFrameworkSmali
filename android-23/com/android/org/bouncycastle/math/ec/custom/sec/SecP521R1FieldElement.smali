.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "SecP521R1FieldElement.java"


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 12
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->q:Ljava/math/BigInteger;

    #@2
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->Q:Ljava/math/BigInteger;

    #@4
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 28
    const/16 v0, 0x11

    #@5
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@b
    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 18
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@8
    move-result v0

    #@9
    if-gez v0, :cond_1

    #@b
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "x value invalid for SecP521R1FieldElement"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 18
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->Q:Ljava/math/BigInteger;

    #@16
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@19
    move-result v0

    #@1a
    if-gez v0, :cond_0

    #@1c
    .line 23
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@22
    .line 16
    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0
    .param p1, "x"    # [I

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@5
    .line 31
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 68
    const/16 v1, 0x11

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 69
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@a
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@c
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    #@f
    .line 70
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@14
    return-object v1
.end method

.method public addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 75
    const/16 v1, 0x11

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 76
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@8
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->addOne([I[I)V

    #@b
    .line 77
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@10
    return-object v1
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 97
    const/16 v1, 0x11

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 98
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@a
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@c
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@f
    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@11
    invoke-static {v0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@14
    .line 100
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@16
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@19
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 151
    if-ne p1, p0, :cond_0

    #@2
    .line 153
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 156
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 158
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 161
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@d
    .line 162
    .local v0, "o":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@f
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@11
    const/16 v3, 0x11

    #@13
    invoke-static {v3, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "SecP521R1Field"

    #@3
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->Q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 167
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->Q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@8
    const/4 v2, 0x0

    #@9
    const/16 v3, 0x11

    #@b
    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([III)I

    #@e
    move-result v1

    #@f
    xor-int/2addr v0, v1

    #@10
    return v0
.end method

.method public invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    #@0
    .prologue
    .line 120
    const/16 v1, 0x11

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 121
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    #@8
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@d
    .line 122
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@12
    return-object v1
.end method

.method public isOne()Z
    .locals 2

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@2
    const/16 v1, 0x11

    #@4
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isZero()Z
    .locals 2

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@2
    const/16 v1, 0x11

    #@4
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 89
    const/16 v1, 0x11

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 90
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@a
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@c
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    #@f
    .line 91
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@14
    return-object v1
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 105
    const/16 v1, 0x11

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 106
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@8
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->negate([I[I)V

    #@b
    .line 107
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@10
    return-object v1
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x11

    #@2
    .line 134
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@4
    .line 135
    .local v2, "x1":[I
    invoke-static {v4, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    invoke-static {v4, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 137
    :cond_0
    return-object p0

    #@11
    .line 140
    :cond_1
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@14
    move-result-object v0

    #@15
    .line 141
    .local v0, "t1":[I
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@18
    move-result-object v1

    #@19
    .line 143
    .local v1, "t2":[I
    const/16 v3, 0x207

    #@1b
    invoke-static {v2, v3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->squareN([II[I)V

    #@1e
    .line 144
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@21
    .line 146
    invoke-static {v4, v2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2

    #@27
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@29
    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@2c
    :goto_0
    return-object v3

    #@2d
    :cond_2
    const/4 v3, 0x0

    #@2e
    goto :goto_0
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 112
    const/16 v1, 0x11

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 113
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@8
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    #@b
    .line 114
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@10
    return-object v1
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 82
    const/16 v1, 0x11

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 83
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@a
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@c
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    #@f
    .line 84
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    #@14
    return-object v1
.end method

.method public testBitZero()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 48
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@4
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->getBit([II)I

    #@7
    move-result v2

    #@8
    if-ne v2, v0, :cond_0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    move v0, v1

    #@c
    goto :goto_0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    #@2
    const/16 v1, 0x11

    #@4
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

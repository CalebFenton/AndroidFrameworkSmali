.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "SecP384R1FieldElement.java"


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
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->q:Ljava/math/BigInteger;

    #@2
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->Q:Ljava/math/BigInteger;

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
    const/16 v0, 0xc

    #@5
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

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
    const-string/jumbo v1, "x value invalid for SecP384R1FieldElement"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 18
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->Q:Ljava/math/BigInteger;

    #@16
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@19
    move-result v0

    #@1a
    if-gez v0, :cond_0

    #@1c
    .line 23
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

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
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

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
    const/16 v1, 0xc

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 69
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@a
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->add([I[I[I)V

    #@f
    .line 70
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@14
    return-object v1
.end method

.method public addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 75
    const/16 v1, 0xc

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 76
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@8
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addOne([I[I)V

    #@b
    .line 77
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@10
    return-object v1
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 97
    const/16 v1, 0xc

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 98
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@a
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@f
    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@11
    invoke-static {v0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@14
    .line 100
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@16
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@19
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 193
    if-ne p1, p0, :cond_0

    #@2
    .line 195
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 198
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 200
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 203
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@d
    .line 204
    .local v0, "o":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@f
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@11
    const/16 v3, 0xc

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
    const-string/jumbo v0, "SecP384R1Field"

    #@3
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->Q:Ljava/math/BigInteger;

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
    .line 209
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->Q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@8
    const/4 v2, 0x0

    #@9
    const/16 v3, 0xc

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
    const/16 v1, 0xc

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 121
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    #@8
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@d
    .line 122
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@12
    return-object v1
.end method

.method public isOne()Z
    .locals 2

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@2
    const/16 v1, 0xc

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
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@2
    const/16 v1, 0xc

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
    const/16 v1, 0xc

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 90
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@a
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@f
    .line 91
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@14
    return-object v1
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 105
    const/16 v1, 0xc

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 106
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@8
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->negate([I[I)V

    #@b
    .line 107
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@10
    return-object v1
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 11

    #@0
    .prologue
    const/16 v10, 0xf

    #@2
    const/4 v9, 0x5

    #@3
    const/4 v8, 0x2

    #@4
    const/16 v7, 0xc

    #@6
    .line 133
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@8
    .line 134
    .local v5, "x1":[I
    invoke-static {v7, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@b
    move-result v6

    #@c
    if-nez v6, :cond_0

    #@e
    invoke-static {v7, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_1

    #@14
    .line 136
    :cond_0
    return-object p0

    #@15
    .line 139
    :cond_1
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@18
    move-result-object v1

    #@19
    .line 140
    .local v1, "t1":[I
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@1c
    move-result-object v2

    #@1d
    .line 141
    .local v2, "t2":[I
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@20
    move-result-object v3

    #@21
    .line 142
    .local v3, "t3":[I
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@24
    move-result-object v4

    #@25
    .line 144
    .local v4, "t4":[I
    invoke-static {v5, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@28
    .line 145
    invoke-static {v1, v5, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@2b
    .line 147
    invoke-static {v1, v8, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@2e
    .line 148
    invoke-static {v2, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@31
    .line 150
    invoke-static {v2, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@34
    .line 151
    invoke-static {v2, v5, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@37
    .line 153
    invoke-static {v2, v9, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@3a
    .line 154
    invoke-static {v3, v2, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@3d
    .line 156
    invoke-static {v3, v9, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@40
    .line 157
    invoke-static {v4, v2, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@43
    .line 159
    invoke-static {v4, v10, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@46
    .line 160
    invoke-static {v2, v4, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@49
    .line 162
    invoke-static {v2, v8, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@4c
    .line 163
    invoke-static {v1, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@4f
    .line 165
    const/16 v6, 0x1c

    #@51
    invoke-static {v3, v6, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@54
    .line 166
    invoke-static {v2, v3, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@57
    .line 168
    const/16 v6, 0x3c

    #@59
    invoke-static {v2, v6, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@5c
    .line 169
    invoke-static {v3, v2, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@5f
    .line 171
    move-object v0, v2

    #@60
    .line 173
    .local v0, "r":[I
    const/16 v6, 0x78

    #@62
    invoke-static {v3, v6, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@65
    .line 174
    invoke-static {v0, v3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@68
    .line 176
    invoke-static {v0, v10, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@6b
    .line 177
    invoke-static {v0, v4, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@6e
    .line 179
    const/16 v6, 0x21

    #@70
    invoke-static {v0, v6, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@73
    .line 180
    invoke-static {v0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@76
    .line 182
    const/16 v6, 0x40

    #@78
    invoke-static {v0, v6, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@7b
    .line 183
    invoke-static {v0, v5, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    #@7e
    .line 185
    const/16 v6, 0x1e

    #@80
    invoke-static {v0, v6, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->squareN([II[I)V

    #@83
    .line 186
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@86
    .line 188
    invoke-static {v7, v5, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    #@89
    move-result v6

    #@8a
    if-eqz v6, :cond_2

    #@8c
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@8e
    invoke-direct {v6, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@91
    :goto_0
    return-object v6

    #@92
    :cond_2
    const/4 v6, 0x0

    #@93
    goto :goto_0
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 112
    const/16 v1, 0xc

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 113
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@8
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    #@b
    .line 114
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    #@10
    return-object v1
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 82
    const/16 v1, 0xc

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 83
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@a
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@c
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    #@f
    .line 84
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

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
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

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
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    #@2
    const/16 v1, 0xc

    #@4
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

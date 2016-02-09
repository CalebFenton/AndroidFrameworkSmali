.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "SecP256K1FieldElement.java"


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
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->q:Ljava/math/BigInteger;

    #@2
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

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
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@9
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
    const-string/jumbo v1, "x value invalid for SecP256K1FieldElement"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 18
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    #@16
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@19
    move-result v0

    #@1a
    if-gez v0, :cond_0

    #@1c
    .line 23
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

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
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

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
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 69
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->add([I[I[I)V

    #@d
    .line 70
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    #@12
    return-object v1
.end method

.method public addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 75
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 76
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->addOne([I[I)V

    #@9
    .line 77
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 97
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 98
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@d
    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@f
    invoke-static {v0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@12
    .line 100
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@14
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    #@17
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 197
    if-ne p1, p0, :cond_0

    #@2
    .line 199
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 202
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 204
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 207
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@d
    .line 208
    .local v0, "o":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@f
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@11
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "SecP256K1Field"

    #@3
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

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
    .line 213
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@8
    const/4 v2, 0x0

    #@9
    const/16 v3, 0x8

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
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 121
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@6
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@8
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@b
    .line 122
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    #@10
    return-object v1
.end method

.method public isOne()Z
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isZero()Z
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 89
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 90
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@d
    .line 91
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    #@12
    return-object v1
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 105
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 106
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->negate([I[I)V

    #@9
    .line 107
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 15

    #@0
    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@2
    .line 143
    .local v2, "x1":[I
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    #@5
    move-result v14

    #@6
    if-nez v14, :cond_0

    #@8
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    #@b
    move-result v14

    #@c
    if-eqz v14, :cond_1

    #@e
    .line 145
    :cond_0
    return-object p0

    #@f
    .line 148
    :cond_1
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@12
    move-result-object v5

    #@13
    .line 149
    .local v5, "x2":[I
    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    #@16
    .line 150
    invoke-static {v5, v2, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@19
    .line 151
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@1c
    move-result-object v9

    #@1d
    .line 152
    .local v9, "x3":[I
    invoke-static {v5, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    #@20
    .line 153
    invoke-static {v9, v2, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@23
    .line 154
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@26
    move-result-object v11

    #@27
    .line 155
    .local v11, "x6":[I
    const/4 v14, 0x3

    #@28
    invoke-static {v9, v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@2b
    .line 156
    invoke-static {v11, v9, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@2e
    .line 157
    move-object v13, v11

    #@2f
    .line 158
    .local v13, "x9":[I
    const/4 v14, 0x3

    #@30
    invoke-static {v11, v14, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@33
    .line 159
    invoke-static {v13, v9, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@36
    .line 160
    move-object v3, v13

    #@37
    .line 161
    .local v3, "x11":[I
    const/4 v14, 0x2

    #@38
    invoke-static {v13, v14, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@3b
    .line 162
    invoke-static {v3, v5, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@3e
    .line 163
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@41
    move-result-object v6

    #@42
    .line 164
    .local v6, "x22":[I
    const/16 v14, 0xb

    #@44
    invoke-static {v3, v14, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@47
    .line 165
    invoke-static {v6, v3, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@4a
    .line 166
    move-object v10, v3

    #@4b
    .line 167
    .local v10, "x44":[I
    const/16 v14, 0x16

    #@4d
    invoke-static {v6, v14, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@50
    .line 168
    invoke-static {v10, v6, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@53
    .line 169
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@56
    move-result-object v12

    #@57
    .line 170
    .local v12, "x88":[I
    const/16 v14, 0x2c

    #@59
    invoke-static {v10, v14, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@5c
    .line 171
    invoke-static {v12, v10, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@5f
    .line 172
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@62
    move-result-object v4

    #@63
    .line 173
    .local v4, "x176":[I
    const/16 v14, 0x58

    #@65
    invoke-static {v12, v14, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@68
    .line 174
    invoke-static {v4, v12, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@6b
    .line 175
    move-object v7, v12

    #@6c
    .line 176
    .local v7, "x220":[I
    const/16 v14, 0x2c

    #@6e
    invoke-static {v4, v14, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@71
    .line 177
    invoke-static {v7, v10, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@74
    .line 178
    move-object v8, v10

    #@75
    .line 179
    .local v8, "x223":[I
    const/4 v14, 0x3

    #@76
    invoke-static {v7, v14, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@79
    .line 180
    invoke-static {v8, v9, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@7c
    .line 182
    move-object v0, v8

    #@7d
    .line 183
    .local v0, "t1":[I
    const/16 v14, 0x17

    #@7f
    invoke-static {v0, v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@82
    .line 184
    invoke-static {v0, v6, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@85
    .line 185
    const/4 v14, 0x6

    #@86
    invoke-static {v0, v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@89
    .line 186
    invoke-static {v0, v5, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    #@8c
    .line 187
    const/4 v14, 0x2

    #@8d
    invoke-static {v0, v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    #@90
    .line 189
    move-object v1, v5

    #@91
    .line 190
    .local v1, "t2":[I
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    #@94
    .line 192
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    #@97
    move-result v14

    #@98
    if-eqz v14, :cond_2

    #@9a
    new-instance v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@9c
    invoke-direct {v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    #@9f
    :goto_0
    return-object v14

    #@a0
    :cond_2
    const/4 v14, 0x0

    #@a1
    goto :goto_0
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 112
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 113
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    #@9
    .line 114
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 82
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 83
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    #@d
    .line 84
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    #@12
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
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@4
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->getBit([II)I

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
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->toBigInteger([I)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

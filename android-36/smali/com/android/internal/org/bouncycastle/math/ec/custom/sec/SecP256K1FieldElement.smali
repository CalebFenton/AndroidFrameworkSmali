.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP256K1FieldElement.java"


# static fields
.field public static final blacklist Q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist x:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Ljava/math/BigInteger;

    .line 17
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    .line 16
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 22
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 23
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 28
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 29
    return-void

    .line 25
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP256K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>([I)V
    .registers 2
    .param p1, "x"    # [I

    .line 37
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 73
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 74
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->add([I[I[I)V

    .line 75
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 80
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 81
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->addOne([I[I)V

    .line 82
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 102
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 103
    .local v0, "z":[I
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->inv([I[I)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 105
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 204
    if-ne p1, p0, :cond_4

    .line 206
    const/4 v0, 0x1

    return v0

    .line 209
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    if-nez v0, :cond_a

    .line 211
    const/4 v0, 0x0

    return v0

    .line 214
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 215
    .local v0, "o":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, "SecP256K1Field"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 68
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 220
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 125
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 126
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->inv([I[I)V

    .line 127
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist isOne()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 94
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 95
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 96
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 110
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 111
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->negate([I[I)V

    .line 112
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 18

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 148
    .local v1, "x1":[I
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v2

    if-nez v2, :cond_a5

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_a5

    .line 153
    :cond_12
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v2

    .line 155
    .local v2, "tt0":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v3

    .line 156
    .local v3, "x2":[I
    invoke-static {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 157
    invoke-static {v3, v1, v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 158
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    .line 159
    .local v4, "x3":[I
    invoke-static {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 160
    invoke-static {v4, v1, v4, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 161
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v5

    .line 162
    .local v5, "x6":[I
    const/4 v6, 0x3

    invoke-static {v4, v6, v5, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 163
    invoke-static {v5, v4, v5, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 164
    move-object v7, v5

    .line 165
    .local v7, "x9":[I
    invoke-static {v5, v6, v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 166
    invoke-static {v7, v4, v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 167
    move-object v8, v7

    .line 168
    .local v8, "x11":[I
    const/4 v9, 0x2

    invoke-static {v7, v9, v8, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 169
    invoke-static {v8, v3, v8, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 170
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    .line 171
    .local v10, "x22":[I
    const/16 v11, 0xb

    invoke-static {v8, v11, v10, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 172
    invoke-static {v10, v8, v10, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 173
    move-object v11, v8

    .line 174
    .local v11, "x44":[I
    const/16 v12, 0x16

    invoke-static {v10, v12, v11, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 175
    invoke-static {v11, v10, v11, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 176
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 177
    .local v12, "x88":[I
    const/16 v13, 0x2c

    invoke-static {v11, v13, v12, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 178
    invoke-static {v12, v11, v12, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 179
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v14

    .line 180
    .local v14, "x176":[I
    const/16 v15, 0x58

    invoke-static {v12, v15, v14, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 181
    invoke-static {v14, v12, v14, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 182
    move-object v15, v12

    .line 183
    .local v15, "x220":[I
    invoke-static {v14, v13, v15, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 184
    invoke-static {v15, v11, v15, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 185
    move-object v13, v11

    .line 186
    .local v13, "x223":[I
    invoke-static {v15, v6, v13, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 187
    invoke-static {v13, v4, v13, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 189
    move-object v6, v13

    .line 190
    .local v6, "t1":[I
    const/16 v9, 0x17

    invoke-static {v6, v9, v6, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 191
    invoke-static {v6, v10, v6, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 192
    const/4 v9, 0x6

    invoke-static {v6, v9, v6, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 193
    invoke-static {v6, v3, v6, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 194
    const/4 v9, 0x2

    invoke-static {v6, v9, v6, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I[I)V

    .line 196
    move-object v9, v3

    .line 197
    .local v9, "t2":[I
    invoke-static {v6, v9, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 199
    invoke-static {v1, v9}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v16

    if-eqz v16, :cond_a3

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    goto :goto_a4

    :cond_a3
    const/4 v0, 0x0

    :goto_a4
    return-object v0

    .line 150
    .end local v2    # "tt0":[I
    .end local v3    # "x2":[I
    .end local v4    # "x3":[I
    .end local v5    # "x6":[I
    .end local v6    # "t1":[I
    .end local v7    # "x9":[I
    .end local v8    # "x11":[I
    .end local v9    # "t2":[I
    .end local v10    # "x22":[I
    .end local v11    # "x44":[I
    .end local v12    # "x88":[I
    .end local v13    # "x223":[I
    .end local v14    # "x176":[I
    .end local v15    # "x220":[I
    :cond_a5
    :goto_a5
    return-object p0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 117
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 118
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 119
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 87
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 88
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 89
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist testBitZero()Z
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

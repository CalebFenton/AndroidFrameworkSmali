.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP224K1FieldElement.java"


# static fields
.field private static final blacklist PRECOMP_POW2:[I

.field public static final blacklist Q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist x:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Ljava/math/BigInteger;

    .line 17
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    return-void

    nop

    :array_18
    .array-data 4
        0x33bfd202
        -0x23052ecd
        0x2287624a
        -0x3c7ee458
        -0x57aaa704
        0x1eaef5d7
        -0x7120eab4
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 37
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 26
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 27
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 32
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 33
    return-void

    .line 29
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP224K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>([I)V
    .registers 2
    .param p1, "x"    # [I

    .line 41
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 77
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 78
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->add([I[I[I)V

    .line 79
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 84
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 85
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->addOne([I[I)V

    .line 86
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 106
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 107
    .local v0, "z":[I
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->inv([I[I)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 109
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 230
    if-ne p1, p0, :cond_4

    .line 232
    const/4 v0, 0x1

    return v0

    .line 235
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    if-nez v0, :cond_a

    .line 237
    const/4 v0, 0x0

    return v0

    .line 240
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .line 241
    .local v0, "o":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "SecP224K1Field"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 72
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 246
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 129
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 130
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->inv([I[I)V

    .line 131
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist isOne()Z
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 98
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 99
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 100
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 114
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 115
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->negate([I[I)V

    .line 116
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 17

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 154
    .local v1, "x1":[I
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v2

    if-nez v2, :cond_c0

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_c0

    .line 159
    :cond_12
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    .line 160
    .local v2, "x2":[I
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 161
    invoke-static {v2, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 162
    move-object v3, v2

    .line 163
    .local v3, "x3":[I
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 164
    invoke-static {v3, v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 165
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    .line 166
    .local v4, "x4":[I
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 167
    invoke-static {v4, v1, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 168
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v5

    .line 169
    .local v5, "x8":[I
    const/4 v6, 0x4

    invoke-static {v4, v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 170
    invoke-static {v5, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 171
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    .line 172
    .local v7, "x11":[I
    const/4 v8, 0x3

    invoke-static {v5, v8, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 173
    invoke-static {v7, v3, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 174
    move-object v9, v7

    .line 175
    .local v9, "x19":[I
    const/16 v10, 0x8

    invoke-static {v7, v10, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 176
    invoke-static {v9, v5, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 177
    move-object v10, v5

    .line 178
    .local v10, "x23":[I
    invoke-static {v9, v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 179
    invoke-static {v10, v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 180
    move-object v11, v4

    .line 181
    .local v11, "x42":[I
    const/16 v12, 0x13

    invoke-static {v10, v12, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 182
    invoke-static {v11, v9, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 183
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v12

    .line 184
    .local v12, "x84":[I
    const/16 v13, 0x2a

    invoke-static {v11, v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 185
    invoke-static {v12, v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 186
    move-object v13, v11

    .line 187
    .local v13, "x107":[I
    const/16 v14, 0x17

    invoke-static {v12, v14, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 188
    invoke-static {v13, v10, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 189
    move-object v14, v10

    .line 190
    .local v14, "x191":[I
    const/16 v15, 0x54

    invoke-static {v13, v15, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 191
    invoke-static {v14, v12, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 193
    move-object v15, v14

    .line 194
    .local v15, "t1":[I
    const/16 v6, 0x14

    invoke-static {v15, v6, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 195
    invoke-static {v15, v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 196
    invoke-static {v15, v8, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 197
    invoke-static {v15, v1, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 198
    const/4 v6, 0x2

    invoke-static {v15, v6, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 199
    invoke-static {v15, v1, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 200
    const/4 v6, 0x4

    invoke-static {v15, v6, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 201
    invoke-static {v15, v3, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 202
    invoke-static {v15, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 204
    move-object v6, v12

    .line 205
    .local v6, "t2":[I
    invoke-static {v15, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 207
    invoke-static {v1, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 209
    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v8, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v8

    .line 216
    :cond_aa
    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    invoke-static {v15, v8, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 218
    invoke-static {v15, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 220
    invoke-static {v1, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v8

    if-eqz v8, :cond_be

    .line 222
    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v8, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v8

    .line 225
    :cond_be
    const/4 v8, 0x0

    return-object v8

    .line 156
    .end local v2    # "x2":[I
    .end local v3    # "x3":[I
    .end local v4    # "x4":[I
    .end local v5    # "x8":[I
    .end local v6    # "t2":[I
    .end local v7    # "x11":[I
    .end local v9    # "x19":[I
    .end local v10    # "x23":[I
    .end local v11    # "x42":[I
    .end local v12    # "x84":[I
    .end local v13    # "x107":[I
    .end local v14    # "x191":[I
    .end local v15    # "t1":[I
    :cond_c0
    :goto_c0
    return-object v0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 121
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 122
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 123
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 91
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 92
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 93
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist testBitZero()Z
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

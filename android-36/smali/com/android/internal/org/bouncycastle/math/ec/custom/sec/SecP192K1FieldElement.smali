.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP192K1FieldElement.java"


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
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

    .line 16
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

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

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 28
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    .line 29
    return-void

    .line 25
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP192K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>([I)V
    .registers 2
    .param p1, "x"    # [I

    .line 37
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 73
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 74
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->add([I[I[I)V

    .line 75
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 80
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 81
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->addOne([I[I)V

    .line 82
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 102
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 103
    .local v0, "z":[I
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->inv([I[I)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 105
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 200
    if-ne p1, p0, :cond_4

    .line 202
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    if-nez v0, :cond_a

    .line 207
    const/4 v0, 0x0

    return v0

    .line 210
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 211
    .local v0, "o":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, "SecP192K1Field"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 68
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 216
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 125
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 126
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->inv([I[I)V

    .line 127
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist isOne()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 94
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 95
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 96
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 110
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 111
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->negate([I[I)V

    .line 112
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 15

    .line 146
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    .line 147
    .local v0, "x1":[I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_9a

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_9a

    .line 152
    :cond_10
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v1

    .line 153
    .local v1, "x2":[I
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 154
    invoke-static {v1, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 155
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v2

    .line 156
    .local v2, "x3":[I
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 157
    invoke-static {v2, v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 158
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v3

    .line 159
    .local v3, "x6":[I
    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 160
    invoke-static {v3, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 161
    move-object v5, v3

    .line 162
    .local v5, "x8":[I
    const/4 v6, 0x2

    invoke-static {v3, v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 163
    invoke-static {v5, v1, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 164
    move-object v6, v1

    .line 165
    .local v6, "x16":[I
    const/16 v7, 0x8

    invoke-static {v5, v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 166
    invoke-static {v6, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 167
    move-object v7, v5

    .line 168
    .local v7, "x19":[I
    invoke-static {v6, v4, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 169
    invoke-static {v7, v2, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 170
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v4

    .line 171
    .local v4, "x35":[I
    const/16 v8, 0x10

    invoke-static {v7, v8, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 172
    invoke-static {v4, v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 173
    move-object v8, v6

    .line 174
    .local v8, "x70":[I
    const/16 v9, 0x23

    invoke-static {v4, v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 175
    invoke-static {v8, v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 176
    move-object v9, v4

    .line 177
    .local v9, "x140":[I
    const/16 v10, 0x46

    invoke-static {v8, v10, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 178
    invoke-static {v9, v8, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 179
    move-object v10, v8

    .line 180
    .local v10, "x159":[I
    const/16 v11, 0x13

    invoke-static {v9, v11, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 181
    invoke-static {v10, v7, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 183
    move-object v11, v10

    .line 184
    .local v11, "t1":[I
    const/16 v12, 0x14

    invoke-static {v11, v12, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 185
    invoke-static {v11, v7, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 186
    const/4 v12, 0x4

    invoke-static {v11, v12, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 187
    invoke-static {v11, v2, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 188
    const/4 v12, 0x6

    invoke-static {v11, v12, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 189
    invoke-static {v11, v2, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 190
    invoke-static {v11, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 192
    move-object v12, v2

    .line 193
    .local v12, "t2":[I
    invoke-static {v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 195
    invoke-static {v0, v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->eq([I[I)Z

    move-result v13

    if-eqz v13, :cond_98

    new-instance v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v13, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    goto :goto_99

    :cond_98
    const/4 v13, 0x0

    :goto_99
    return-object v13

    .line 149
    .end local v1    # "x2":[I
    .end local v2    # "x3":[I
    .end local v3    # "x6":[I
    .end local v4    # "x35":[I
    .end local v5    # "x8":[I
    .end local v6    # "x16":[I
    .end local v7    # "x19":[I
    .end local v8    # "x70":[I
    .end local v9    # "x140":[I
    .end local v10    # "x159":[I
    .end local v11    # "t1":[I
    .end local v12    # "t2":[I
    :cond_9a
    :goto_9a
    return-object p0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 117
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 118
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 119
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 87
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 88
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 89
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist testBitZero()Z
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->getBit([II)I

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
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

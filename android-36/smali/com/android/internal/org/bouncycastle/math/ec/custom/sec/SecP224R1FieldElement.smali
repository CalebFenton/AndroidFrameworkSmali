.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP224R1FieldElement.java"


# static fields
.field public static final blacklist Q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist x:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Ljava/math/BigInteger;

    .line 19
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    .line 18
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 35
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 24
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 25
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 30
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 31
    return-void

    .line 27
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP224R1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>([I)V
    .registers 2
    .param p1, "x"    # [I

    .line 39
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 41
    return-void
.end method

.method private static blacklist RM([I[I[I[I[I[I[I)V
    .registers 7
    .param p0, "nc"    # [I
    .param p1, "d0"    # [I
    .param p2, "e0"    # [I
    .param p3, "d1"    # [I
    .param p4, "e1"    # [I
    .param p5, "f1"    # [I
    .param p6, "t"    # [I

    .line 205
    invoke-static {p4, p2, p6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 206
    invoke-static {p6, p0, p6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 207
    invoke-static {p3, p1, p5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 208
    invoke-static {p5, p6, p5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 209
    invoke-static {p3, p2, p6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 210
    invoke-static {p5, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 211
    invoke-static {p4, p1, p4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 212
    invoke-static {p4, p6, p4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 213
    invoke-static {p4, p5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 214
    invoke-static {p5, p0, p5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 215
    return-void
.end method

.method private static blacklist RP([I[I[I[I[I)V
    .registers 14
    .param p0, "nc"    # [I
    .param p1, "d1"    # [I
    .param p2, "e1"    # [I
    .param p3, "f1"    # [I
    .param p4, "t"    # [I

    .line 219
    invoke-static {p0, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 221
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 222
    .local v1, "d0":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    .line 224
    .local v2, "e0":[I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_d
    const/4 v0, 0x7

    if-ge v7, v0, :cond_2c

    .line 226
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 227
    invoke-static {p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 229
    const/4 v0, 0x1

    shl-int/2addr v0, v7

    .line 230
    .local v0, "j":I
    :goto_18
    add-int/lit8 v8, v0, -0x1

    .end local v0    # "j":I
    .local v8, "j":I
    if-ltz v8, :cond_21

    .line 232
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    move v0, v8

    goto :goto_18

    .line 235
    :cond_21
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p0    # "nc":[I
    .end local p1    # "d1":[I
    .end local p2    # "e1":[I
    .end local p3    # "f1":[I
    .end local p4    # "t":[I
    .local v0, "nc":[I
    .local v3, "d1":[I
    .local v4, "e1":[I
    .local v5, "f1":[I
    .local v6, "t":[I
    invoke-static/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RM([I[I[I[I[I[I[I)V

    .line 224
    .end local v8    # "j":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 237
    .end local v0    # "nc":[I
    .end local v3    # "d1":[I
    .end local v4    # "e1":[I
    .end local v5    # "f1":[I
    .end local v6    # "t":[I
    .end local v7    # "i":I
    .restart local p0    # "nc":[I
    .restart local p1    # "d1":[I
    .restart local p2    # "e1":[I
    .restart local p3    # "f1":[I
    .restart local p4    # "t":[I
    :cond_2c
    return-void
.end method

.method private static blacklist RS([I[I[I[I)V
    .registers 7
    .param p0, "d"    # [I
    .param p1, "e"    # [I
    .param p2, "f"    # [I
    .param p3, "t"    # [I

    .line 241
    invoke-static {p1, p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 242
    invoke-static {p1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->twice([I[I)V

    .line 243
    invoke-static {p0, p3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 244
    invoke-static {p2, p3, p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 245
    invoke-static {p2, p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 246
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v2, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v0

    .line 247
    .local v0, "c":I
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 248
    return-void
.end method

.method private static blacklist isSquare([I)Z
    .registers 5
    .param p0, "x"    # [I

    .line 188
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 189
    .local v0, "t1":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 190
    .local v1, "t2":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 192
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1d

    .line 194
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 195
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    invoke-static {v0, v3, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    .line 196
    invoke-static {v0, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 199
    .end local v2    # "i":I
    :cond_1d
    const/16 v2, 0x5f

    invoke-static {v0, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    .line 200
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v2

    return v2
.end method

.method private static blacklist trySqrt([I[I[I)Z
    .registers 12
    .param p0, "nc"    # [I
    .param p1, "r"    # [I
    .param p2, "t"    # [I

    .line 252
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 253
    .local v0, "d1":[I
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 254
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 255
    .local v1, "e1":[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 256
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    .line 257
    .local v4, "f1":[I
    invoke-static {p0, v0, v1, v4, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RP([I[I[I[I[I)V

    .line 259
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v5

    .line 260
    .local v5, "d0":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v6

    .line 262
    .local v6, "e0":[I
    const/4 v7, 0x1

    .local v7, "k":I
    :goto_1f
    const/16 v8, 0x60

    if-ge v7, v8, :cond_3c

    .line 264
    invoke-static {v0, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 265
    invoke-static {v1, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 267
    invoke-static {v0, v1, v4, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    .line 269
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 271
    invoke-static {v6, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->inv([I[I)V

    .line 272
    invoke-static {p2, v5, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 273
    return v3

    .line 262
    :cond_39
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 277
    .end local v7    # "k":I
    :cond_3c
    return v2
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 75
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 76
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 77
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 82
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 83
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    .line 84
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 104
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 105
    .local v0, "z":[I
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->inv([I[I)V

    .line 106
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 107
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 167
    if-ne p1, p0, :cond_4

    .line 169
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    if-nez v0, :cond_a

    .line 174
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 178
    .local v0, "o":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .registers 2

    .line 65
    const-string v0, "SecP224R1Field"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 70
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 183
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 127
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 128
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->inv([I[I)V

    .line 129
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist isOne()Z
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 96
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 97
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 98
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 112
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 113
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    .line 114
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 139
    .local v0, "c":[I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_41

    .line 144
    :cond_f
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 145
    .local v1, "nc":[I
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    .line 147
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->random([I)[I

    move-result-object v2

    .line 148
    .local v2, "r":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v3

    .line 150
    .local v3, "t":[I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isSquare([I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_28

    .line 152
    return-object v5

    .line 155
    :cond_28
    :goto_28
    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->trySqrt([I[I[I)Z

    move-result v4

    if-nez v4, :cond_32

    .line 157
    invoke-static {v2, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    goto :goto_28

    .line 160
    :cond_32
    invoke-static {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 162
    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v4

    if-eqz v4, :cond_40

    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    :cond_40
    return-object v5

    .line 141
    .end local v1    # "nc":[I
    .end local v2    # "r":[I
    .end local v3    # "t":[I
    :cond_41
    :goto_41
    return-object p0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 119
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 120
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 121
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 89
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 90
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 91
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist testBitZero()Z
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

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

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

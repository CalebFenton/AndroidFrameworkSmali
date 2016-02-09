.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "SecP224R1FieldElement.java"


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 13
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Curve;->q:Ljava/math/BigInteger;

    #@2
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    #@4
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 29
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@9
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 19
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@8
    move-result v0

    #@9
    if-gez v0, :cond_1

    #@b
    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "x value invalid for SecP224R1FieldElement"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 19
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    #@16
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@19
    move-result v0

    #@1a
    if-gez v0, :cond_0

    #@1c
    .line 24
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@22
    .line 17
    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0
    .param p1, "x"    # [I

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@5
    .line 32
    return-void
.end method

.method private static RM([I[I[I[I[I[I[I)V
    .locals 0
    .param p0, "nc"    # [I
    .param p1, "d0"    # [I
    .param p2, "e0"    # [I
    .param p3, "d1"    # [I
    .param p4, "e1"    # [I
    .param p5, "f1"    # [I
    .param p6, "t"    # [I

    #@0
    .prologue
    .line 199
    invoke-static {p4, p2, p6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@3
    .line 200
    invoke-static {p6, p0, p6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@6
    .line 201
    invoke-static {p3, p1, p5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@9
    .line 202
    invoke-static {p5, p6, p5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    #@c
    .line 203
    invoke-static {p3, p2, p6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@f
    .line 204
    invoke-static {p5, p3}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    #@12
    .line 205
    invoke-static {p4, p1, p4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@15
    .line 206
    invoke-static {p4, p6, p4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    #@18
    .line 207
    invoke-static {p4, p5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    #@1b
    .line 208
    invoke-static {p5, p0, p5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@1e
    .line 197
    return-void
.end method

.method private static RP([I[I[I[I[I)V
    .locals 9
    .param p0, "nc"    # [I
    .param p1, "d1"    # [I
    .param p2, "e1"    # [I
    .param p3, "f1"    # [I
    .param p4, "t"    # [I

    #@0
    .prologue
    .line 213
    invoke-static {p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    #@3
    .line 215
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@6
    move-result-object v1

    #@7
    .line 216
    .local v1, "d0":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@a
    move-result-object v2

    #@b
    .line 218
    .local v2, "e0":[I
    const/4 v7, 0x0

    #@c
    .local v7, "i":I
    :goto_0
    const/4 v0, 0x7

    #@d
    if-ge v7, v0, :cond_1

    #@f
    .line 220
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    #@12
    .line 221
    invoke-static {p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    #@15
    .line 223
    const/4 v0, 0x1

    #@16
    shl-int v8, v0, v7

    #@18
    .line 224
    .local v8, "j":I
    :goto_1
    add-int/lit8 v8, v8, -0x1

    #@1a
    if-ltz v8, :cond_0

    #@1c
    .line 226
    invoke-static {p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    #@1f
    goto :goto_1

    #@20
    :cond_0
    move-object v0, p0

    #@21
    move-object v3, p1

    #@22
    move-object v4, p2

    #@23
    move-object v5, p3

    #@24
    move-object v6, p4

    #@25
    .line 229
    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RM([I[I[I[I[I[I[I)V

    #@28
    .line 218
    add-int/lit8 v7, v7, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 211
    .end local v8    # "j":I
    :cond_1
    return-void
.end method

.method private static RS([I[I[I[I)V
    .locals 4
    .param p0, "d"    # [I
    .param p1, "e"    # [I
    .param p2, "f"    # [I
    .param p3, "t"    # [I

    #@0
    .prologue
    .line 235
    invoke-static {p1, p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@3
    .line 236
    invoke-static {p1, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->twice([I[I)V

    #@6
    .line 237
    invoke-static {p0, p3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    #@9
    .line 238
    invoke-static {p2, p3, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    #@c
    .line 239
    invoke-static {p2, p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@f
    .line 240
    const/4 v1, 0x7

    #@10
    const/4 v2, 0x2

    #@11
    const/4 v3, 0x0

    #@12
    invoke-static {v1, p2, v2, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    #@15
    move-result v0

    #@16
    .line 241
    .local v0, "c":I
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    #@19
    .line 233
    return-void
.end method

.method private static isSquare([I)Z
    .locals 4
    .param p0, "x"    # [I

    #@0
    .prologue
    .line 182
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v1

    #@4
    .line 183
    .local v1, "t1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@7
    move-result-object v2

    #@8
    .line 184
    .local v2, "t2":[I
    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    #@b
    .line 186
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    #@d
    if-ge v0, v3, :cond_0

    #@f
    .line 188
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    #@12
    .line 189
    const/4 v3, 0x1

    #@13
    shl-int/2addr v3, v0

    #@14
    invoke-static {v1, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    #@17
    .line 190
    invoke-static {v1, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@1a
    .line 186
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 193
    :cond_0
    const/16 v3, 0x5f

    #@1f
    invoke-static {v1, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    #@22
    .line 194
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    #@25
    move-result v3

    #@26
    return v3
.end method

.method private static trySqrt([I[I[I)Z
    .locals 9
    .param p0, "nc"    # [I
    .param p1, "r"    # [I
    .param p2, "t"    # [I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 246
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@5
    move-result-object v1

    #@6
    .line 247
    .local v1, "d1":[I
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    #@9
    .line 248
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@c
    move-result-object v3

    #@d
    .line 249
    .local v3, "e1":[I
    aput v8, v3, v7

    #@f
    .line 250
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@12
    move-result-object v4

    #@13
    .line 251
    .local v4, "f1":[I
    invoke-static {p0, v1, v3, v4, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RP([I[I[I[I[I)V

    #@16
    .line 253
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@19
    move-result-object v0

    #@1a
    .line 254
    .local v0, "d0":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@1d
    move-result-object v2

    #@1e
    .line 256
    .local v2, "e0":[I
    const/4 v5, 0x1

    #@1f
    .local v5, "k":I
    :goto_0
    const/16 v6, 0x60

    #@21
    if-ge v5, v6, :cond_1

    #@23
    .line 258
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    #@26
    .line 259
    invoke-static {v3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    #@29
    .line 261
    invoke-static {v1, v3, v4, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    #@2c
    .line 263
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_0

    #@32
    .line 265
    sget-object v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@34
    invoke-static {v6, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@37
    .line 266
    invoke-static {p2, v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@3a
    .line 267
    return v8

    #@3b
    .line 256
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 271
    :cond_1
    return v7
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 69
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 70
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    #@d
    .line 71
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    #@12
    return-object v1
.end method

.method public addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 76
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 77
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    #@9
    .line 78
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 98
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 99
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@d
    .line 100
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@f
    invoke-static {v0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@12
    .line 101
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@14
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    #@17
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 161
    if-ne p1, p0, :cond_0

    #@2
    .line 163
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 166
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 168
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 171
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@d
    .line 172
    .local v0, "o":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@f
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@11
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "SecP224R1Field"

    #@3
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 64
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

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
    .line 177
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x7

    #@a
    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([III)I

    #@d
    move-result v1

    #@e
    xor-int/2addr v0, v1

    #@f
    return v0
.end method

.method public invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    #@0
    .prologue
    .line 121
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 122
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@6
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@8
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@b
    .line 123
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    #@10
    return-object v1
.end method

.method public isOne()Z
    .locals 1

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isZero()Z
    .locals 1

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

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
    .line 90
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 91
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    #@d
    .line 92
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    #@12
    return-object v1
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 106
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 107
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    #@9
    .line 108
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@3
    .line 133
    .local v0, "c":[I
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_0

    #@9
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 135
    :cond_0
    return-object p0

    #@10
    .line 138
    :cond_1
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@13
    move-result-object v1

    #@14
    .line 139
    .local v1, "nc":[I
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    #@17
    .line 141
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@19
    invoke-static {v5}, Lcom/android/org/bouncycastle/math/raw/Mod;->random([I)[I

    #@1c
    move-result-object v2

    #@1d
    .line 142
    .local v2, "r":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@20
    move-result-object v3

    #@21
    .line 144
    .local v3, "t":[I
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isSquare([I)Z

    #@24
    move-result v5

    #@25
    if-nez v5, :cond_2

    #@27
    .line 146
    return-object v4

    #@28
    .line 149
    :cond_2
    :goto_0
    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->trySqrt([I[I[I)Z

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_3

    #@2e
    .line 151
    invoke-static {v2, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    #@31
    goto :goto_0

    #@32
    .line 154
    :cond_3
    invoke-static {v3, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    #@35
    .line 156
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_4

    #@3b
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@3d
    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    #@40
    :cond_4
    return-object v4
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 113
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 114
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    #@9
    .line 115
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 83
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 84
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    #@d
    .line 85
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

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
    .line 49
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@4
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->getBit([II)I

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
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

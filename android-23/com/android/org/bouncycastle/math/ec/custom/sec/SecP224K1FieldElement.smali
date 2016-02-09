.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "SecP224K1FieldElement.java"


# static fields
.field private static final PRECOMP_POW2:[I

.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 12
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->q:Ljava/math/BigInteger;

    #@2
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    #@4
    .line 15
    const/4 v0, 0x7

    #@5
    new-array v0, v0, [I

    #@7
    fill-array-data v0, :array_0

    #@a
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    #@c
    .line 10
    return-void

    #@d
    .line 15
    nop

    #@e
    :array_0
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

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 32
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@9
    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 22
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@8
    move-result v0

    #@9
    if-gez v0, :cond_1

    #@b
    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "x value invalid for SecP224K1FieldElement"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 22
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    #@16
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@19
    move-result v0

    #@1a
    if-gez v0, :cond_0

    #@1c
    .line 27
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@22
    .line 20
    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0
    .param p1, "x"    # [I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@5
    .line 35
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 72
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 73
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->add([I[I[I)V

    #@d
    .line 74
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    #@12
    return-object v1
.end method

.method public addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 79
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 80
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->addOne([I[I)V

    #@9
    .line 81
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 101
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 102
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@d
    .line 103
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@f
    invoke-static {v0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@12
    .line 104
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@14
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    #@17
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 225
    if-ne p1, p0, :cond_0

    #@2
    .line 227
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 230
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 232
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 235
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@d
    .line 236
    .local v0, "o":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@f
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

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
    .line 62
    const-string/jumbo v0, "SecP224K1Field"

    #@3
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 67
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

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
    .line 241
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

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
    .line 124
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 125
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    #@6
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@8
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@b
    .line 126
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    #@10
    return-object v1
.end method

.method public isOne()Z
    .locals 1

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

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
    .line 42
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

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
    .line 93
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 94
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@d
    .line 95
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    #@12
    return-object v1
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 109
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 110
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->negate([I[I)V

    #@9
    .line 111
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 15

    #@0
    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@2
    .line 149
    .local v2, "x1":[I
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    #@5
    move-result v14

    #@6
    if-nez v14, :cond_0

    #@8
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    #@b
    move-result v14

    #@c
    if-eqz v14, :cond_1

    #@e
    .line 151
    :cond_0
    return-object p0

    #@f
    .line 154
    :cond_1
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@12
    move-result-object v7

    #@13
    .line 155
    .local v7, "x2":[I
    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    #@16
    .line 156
    invoke-static {v7, v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@19
    .line 157
    move-object v9, v7

    #@1a
    .line 158
    .local v9, "x3":[I
    invoke-static {v7, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    #@1d
    .line 159
    invoke-static {v9, v2, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@20
    .line 160
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@23
    move-result-object v10

    #@24
    .line 161
    .local v10, "x4":[I
    invoke-static {v9, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    #@27
    .line 162
    invoke-static {v10, v2, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@2a
    .line 163
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@2d
    move-result-object v12

    #@2e
    .line 164
    .local v12, "x8":[I
    const/4 v14, 0x4

    #@2f
    invoke-static {v10, v14, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@32
    .line 165
    invoke-static {v12, v10, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@35
    .line 166
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@38
    move-result-object v4

    #@39
    .line 167
    .local v4, "x11":[I
    const/4 v14, 0x3

    #@3a
    invoke-static {v12, v14, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@3d
    .line 168
    invoke-static {v4, v9, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@40
    .line 169
    move-object v5, v4

    #@41
    .line 170
    .local v5, "x19":[I
    const/16 v14, 0x8

    #@43
    invoke-static {v4, v14, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@46
    .line 171
    invoke-static {v5, v12, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@49
    .line 172
    move-object v8, v12

    #@4a
    .line 173
    .local v8, "x23":[I
    const/4 v14, 0x4

    #@4b
    invoke-static {v5, v14, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@4e
    .line 174
    invoke-static {v8, v10, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@51
    .line 175
    move-object v11, v10

    #@52
    .line 176
    .local v11, "x42":[I
    const/16 v14, 0x13

    #@54
    invoke-static {v8, v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@57
    .line 177
    invoke-static {v11, v5, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@5a
    .line 178
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@5d
    move-result-object v13

    #@5e
    .line 179
    .local v13, "x84":[I
    const/16 v14, 0x2a

    #@60
    invoke-static {v11, v14, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@63
    .line 180
    invoke-static {v13, v11, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@66
    .line 181
    move-object v3, v11

    #@67
    .line 182
    .local v3, "x107":[I
    const/16 v14, 0x17

    #@69
    invoke-static {v13, v14, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@6c
    .line 183
    invoke-static {v3, v8, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@6f
    .line 184
    move-object v6, v8

    #@70
    .line 185
    .local v6, "x191":[I
    const/16 v14, 0x54

    #@72
    invoke-static {v3, v14, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@75
    .line 186
    invoke-static {v6, v13, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@78
    .line 188
    move-object v0, v6

    #@79
    .line 189
    .local v0, "t1":[I
    const/16 v14, 0x14

    #@7b
    invoke-static {v0, v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@7e
    .line 190
    invoke-static {v0, v5, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@81
    .line 191
    const/4 v14, 0x3

    #@82
    invoke-static {v0, v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@85
    .line 192
    invoke-static {v0, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@88
    .line 193
    const/4 v14, 0x2

    #@89
    invoke-static {v0, v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@8c
    .line 194
    invoke-static {v0, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@8f
    .line 195
    const/4 v14, 0x4

    #@90
    invoke-static {v0, v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    #@93
    .line 196
    invoke-static {v0, v9, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@96
    .line 197
    invoke-static {v0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    #@99
    .line 199
    move-object v1, v13

    #@9a
    .line 200
    .local v1, "t2":[I
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    #@9d
    .line 202
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    #@a0
    move-result v14

    #@a1
    if-eqz v14, :cond_2

    #@a3
    .line 204
    new-instance v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@a5
    invoke-direct {v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    #@a8
    return-object v14

    #@a9
    .line 211
    :cond_2
    sget-object v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    #@ab
    invoke-static {v0, v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    #@ae
    .line 213
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    #@b1
    .line 215
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    #@b4
    move-result v14

    #@b5
    if-eqz v14, :cond_3

    #@b7
    .line 217
    new-instance v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@b9
    invoke-direct {v14, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    #@bc
    return-object v14

    #@bd
    .line 220
    :cond_3
    const/4 v14, 0x0

    #@be
    return-object v14
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 116
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 117
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    #@9
    .line 118
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 86
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 87
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    #@d
    .line 88
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

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
    .line 52
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

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
    .line 57
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

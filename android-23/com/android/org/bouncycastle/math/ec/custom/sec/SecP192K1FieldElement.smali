.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "SecP192K1FieldElement.java"


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
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve;->q:Ljava/math/BigInteger;

    #@2
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

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
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

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
    const-string/jumbo v1, "x value invalid for SecP192K1FieldElement"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 18
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

    #@16
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@19
    move-result v0

    #@1a
    if-gez v0, :cond_0

    #@1c
    .line 23
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

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
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

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
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 69
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->add([I[I[I)V

    #@d
    .line 70
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@12
    return-object v1
.end method

.method public addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 75
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 76
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->addOne([I[I)V

    #@9
    .line 77
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 97
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 98
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@d
    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@f
    invoke-static {v0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@12
    .line 100
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@14
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@17
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 195
    if-ne p1, p0, :cond_0

    #@2
    .line 197
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 200
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 202
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 205
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@d
    .line 206
    .local v0, "o":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@f
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@11
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->eq([I[I)Z

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
    const-string/jumbo v0, "SecP192K1Field"

    #@3
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

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
    .line 211
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x6

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
    .line 120
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 121
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@6
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@8
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    #@b
    .line 122
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@10
    return-object v1
.end method

.method public isOne()Z
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isOne([I)Z

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
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

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
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 90
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@d
    .line 91
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@12
    return-object v1
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 105
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 106
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->negate([I[I)V

    #@9
    .line 107
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x3

    #@1
    .line 141
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@3
    .line 142
    .local v2, "x1":[I
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    #@6
    move-result v13

    #@7
    if-nez v13, :cond_0

    #@9
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isOne([I)Z

    #@c
    move-result v13

    #@d
    if-eqz v13, :cond_1

    #@f
    .line 144
    :cond_0
    return-object p0

    #@10
    .line 147
    :cond_1
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@13
    move-result-object v7

    #@14
    .line 148
    .local v7, "x2":[I
    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@17
    .line 149
    invoke-static {v7, v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@1a
    .line 150
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@1d
    move-result-object v8

    #@1e
    .line 151
    .local v8, "x3":[I
    invoke-static {v7, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@21
    .line 152
    invoke-static {v8, v2, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@24
    .line 153
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@27
    move-result-object v10

    #@28
    .line 154
    .local v10, "x6":[I
    invoke-static {v8, v14, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    #@2b
    .line 155
    invoke-static {v10, v8, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@2e
    .line 156
    move-object v12, v10

    #@2f
    .line 157
    .local v12, "x8":[I
    const/4 v13, 0x2

    #@30
    invoke-static {v10, v13, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    #@33
    .line 158
    invoke-static {v12, v7, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@36
    .line 159
    move-object v5, v7

    #@37
    .line 160
    .local v5, "x16":[I
    const/16 v13, 0x8

    #@39
    invoke-static {v12, v13, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    #@3c
    .line 161
    invoke-static {v5, v12, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@3f
    .line 162
    move-object v6, v12

    #@40
    .line 163
    .local v6, "x19":[I
    invoke-static {v5, v14, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    #@43
    .line 164
    invoke-static {v6, v8, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@46
    .line 165
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@49
    move-result-object v9

    #@4a
    .line 166
    .local v9, "x35":[I
    const/16 v13, 0x10

    #@4c
    invoke-static {v6, v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    #@4f
    .line 167
    invoke-static {v9, v5, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@52
    .line 168
    move-object v11, v5

    #@53
    .line 169
    .local v11, "x70":[I
    const/16 v13, 0x23

    #@55
    invoke-static {v9, v13, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    #@58
    .line 170
    invoke-static {v11, v9, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@5b
    .line 171
    move-object v3, v9

    #@5c
    .line 172
    .local v3, "x140":[I
    const/16 v13, 0x46

    #@5e
    invoke-static {v11, v13, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    #@61
    .line 173
    invoke-static {v3, v11, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@64
    .line 174
    move-object v4, v11

    #@65
    .line 175
    .local v4, "x159":[I
    const/16 v13, 0x13

    #@67
    invoke-static {v3, v13, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    #@6a
    .line 176
    invoke-static {v4, v6, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@6d
    .line 178
    move-object v0, v4

    #@6e
    .line 179
    .local v0, "t1":[I
    const/16 v13, 0x14

    #@70
    invoke-static {v0, v13, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    #@73
    .line 180
    invoke-static {v0, v6, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@76
    .line 181
    const/4 v13, 0x4

    #@77
    invoke-static {v0, v13, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    #@7a
    .line 182
    invoke-static {v0, v8, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@7d
    .line 183
    const/4 v13, 0x6

    #@7e
    invoke-static {v0, v13, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    #@81
    .line 184
    invoke-static {v0, v8, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    #@84
    .line 185
    invoke-static {v0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@87
    .line 187
    move-object v1, v8

    #@88
    .line 188
    .local v1, "t2":[I
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@8b
    .line 190
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->eq([I[I)Z

    #@8e
    move-result v13

    #@8f
    if-eqz v13, :cond_2

    #@91
    new-instance v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@93
    invoke-direct {v13, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@96
    :goto_0
    return-object v13

    #@97
    :cond_2
    const/4 v13, 0x0

    #@98
    goto :goto_0
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    #@0
    .prologue
    .line 112
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 113
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@6
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    #@9
    .line 114
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@b
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    #@e
    return-object v1
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 82
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@3
    move-result-object v0

    #@4
    .line 83
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@8
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@a
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    #@d
    .line 84
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    #@f
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

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
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@4
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->getBit([II)I

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
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->toBigInteger([I)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;
.super Ljava/lang/Object;
.source "SecP256K1Field.java"


# static fields
.field static final P:[I

.field private static final P7:I = -0x1

.field static final PExt:[I

.field private static final PExt15:I = -0x1

.field private static final PExtInv:[I

.field private static final PInv33:I = 0x3d1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 11
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@9
    .line 13
    const/16 v0, 0x10

    #@b
    new-array v0, v0, [I

    #@d
    fill-array-data v0, :array_1

    #@10
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    #@12
    .line 16
    const/16 v0, 0xa

    #@14
    new-array v0, v0, [I

    #@16
    fill-array-data v0, :array_2

    #@19
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    #@1b
    .line 8
    return-void

    #@1c
    .line 11
    :array_0
    .array-data 4
        -0x3d1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    #@30
    .line 13
    :array_1
    .array-data 4
        0xe90a1
        0x7a2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x7a2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    #@54
    .line 16
    :array_2
    .array-data 4
        -0xe90a1
        -0x7a3
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7a1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static add([I[I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 25
    .local v0, "c":I
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x7

    #@7
    aget v1, p2, v1

    #@9
    const/4 v2, -0x1

    #@a
    if-ne v1, v2, :cond_1

    #@c
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@e
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 27
    :cond_0
    const/16 v1, 0x8

    #@16
    const/16 v2, 0x3d1

    #@18
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@1b
    .line 22
    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 33
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 34
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0xf

    #@a
    aget v1, p2, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 36
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    #@19
    array-length v1, v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    #@1c
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 38
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    #@24
    array-length v1, v1

    #@25
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@28
    .line 31
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    .line 45
    invoke-static {v3, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    #@5
    move-result v0

    #@6
    .line 46
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/4 v1, 0x7

    #@9
    aget v1, p1, v1

    #@b
    const/4 v2, -0x1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@10
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 48
    :cond_0
    const/16 v1, 0x3d1

    #@18
    invoke-static {v3, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@1b
    .line 43
    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@3
    move-result-object v0

    #@4
    .line 55
    .local v0, "z":[I
    const/4 v1, 0x7

    #@5
    aget v1, v0, v1

    #@7
    const/4 v2, -0x1

    #@8
    if-ne v1, v2, :cond_0

    #@a
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 57
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@14
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    #@17
    .line 59
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    const/4 v2, 0x0

    #@3
    .line 64
    aget v1, p0, v2

    #@5
    and-int/lit8 v1, v1, 0x1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 66
    invoke-static {v3, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    #@c
    .line 62
    :goto_0
    return-void

    #@d
    .line 70
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@f
    invoke-static {p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    #@12
    move-result v0

    #@13
    .line 71
    .local v0, "c":I
    invoke-static {v3, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    #@16
    goto :goto_0
.end method

.method public static multiply([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 77
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 78
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    #@7
    .line 79
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    #@a
    .line 75
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 84
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    #@5
    move-result v0

    #@6
    .line 85
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0xf

    #@a
    aget v1, p2, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 87
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    #@19
    array-length v1, v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    #@1c
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 89
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    #@24
    array-length v1, v1

    #@25
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@28
    .line 82
    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 98
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->zero([I)V

    #@9
    .line 94
    :goto_0
    return-void

    #@a
    .line 102
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@c
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    #@f
    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 10
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    const/16 v0, 0x3d1

    #@4
    const/4 v4, 0x0

    #@5
    move-object v1, p0

    #@6
    move-object v3, p0

    #@7
    move-object v5, p1

    #@8
    move v6, v4

    #@9
    .line 108
    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul33Add(I[II[II[II)J

    #@c
    move-result-wide v8

    #@d
    .line 109
    .local v8, "cc":J
    invoke-static {v0, v8, v9, p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul33DWordAdd(IJ[II)I

    #@10
    move-result v7

    #@11
    .line 113
    .local v7, "c":I
    if-nez v7, :cond_0

    #@13
    const/4 v1, 0x7

    #@14
    aget v1, p1, v1

    #@16
    const/4 v3, -0x1

    #@17
    if-ne v1, v3, :cond_1

    #@19
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@1b
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 115
    :cond_0
    invoke-static {v2, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@24
    .line 106
    :cond_1
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v2, 0x3d1

    #@2
    const/4 v0, 0x0

    #@3
    .line 121
    if-eqz p0, :cond_1

    #@5
    invoke-static {v2, p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul33WordAdd(II[II)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 124
    :goto_0
    const/16 v0, 0x8

    #@d
    invoke-static {v0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@10
    .line 119
    :cond_0
    return-void

    #@11
    .line 122
    :cond_1
    const/4 v0, 0x7

    #@12
    aget v0, p1, v0

    #@14
    const/4 v1, -0x1

    #@15
    if-ne v0, v1, :cond_0

    #@17
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@19
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    #@1c
    move-result v0

    #@1d
    .line 121
    if-eqz v0, :cond_0

    #@1f
    goto :goto_0
.end method

.method public static square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 130
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 131
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    #@7
    .line 132
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    #@a
    .line 128
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 139
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 140
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    #@7
    .line 141
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    #@a
    .line 143
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@c
    if-lez p1, :cond_0

    #@e
    .line 145
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    #@11
    .line 146
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    #@14
    goto :goto_0

    #@15
    .line 135
    :cond_0
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 152
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 153
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@6
    .line 155
    const/16 v1, 0x8

    #@8
    const/16 v2, 0x3d1

    #@a
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    #@d
    .line 150
    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 161
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 162
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@8
    .line 164
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    #@a
    array-length v1, v1

    #@b
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    #@d
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 166
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    #@15
    array-length v1, v1

    #@16
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@19
    .line 159
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    const/4 v1, 0x0

    #@3
    .line 173
    invoke-static {v3, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    #@6
    move-result v0

    #@7
    .line 174
    .local v0, "c":I
    if-nez v0, :cond_0

    #@9
    const/4 v1, 0x7

    #@a
    aget v1, p1, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    #@11
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 176
    :cond_0
    const/16 v1, 0x3d1

    #@19
    invoke-static {v3, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@1c
    .line 171
    :cond_1
    return-void
.end method

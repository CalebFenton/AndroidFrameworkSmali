.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;
.super Ljava/lang/Object;
.source "SecP224K1Field.java"


# static fields
.field static final P:[I

.field private static final P6:I = -0x1

.field static final PExt:[I

.field private static final PExt13:I = -0x1

.field private static final PExtInv:[I

.field private static final PInv33:I = 0x1a93


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 11
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [I

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    #@8
    .line 13
    const/16 v0, 0xe

    #@a
    new-array v0, v0, [I

    #@c
    fill-array-data v0, :array_1

    #@f
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExt:[I

    #@11
    .line 15
    const/16 v0, 0x9

    #@13
    new-array v0, v0, [I

    #@15
    fill-array-data v0, :array_2

    #@18
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    #@1a
    .line 8
    return-void

    #@1b
    .line 11
    nop

    #@1c
    :array_0
    .array-data 4
        -0x1a93
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    #@2e
    .line 13
    :array_1
    .array-data 4
        0x2c23069
        0x3526
        0x1
        0x0
        0x0
        0x0
        0x0
        -0x3526
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    #@4e
    .line 15
    :array_2
    .array-data 4
        -0x2c23069
        -0x3527
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        0x3525
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
    .line 23
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 24
    .local v0, "c":I
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x6

    #@7
    aget v1, p2, v1

    #@9
    const/4 v2, -0x1

    #@a
    if-ne v1, v2, :cond_1

    #@c
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    #@e
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 26
    :cond_0
    const/4 v1, 0x7

    #@15
    const/16 v2, 0x1a93

    #@17
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@1a
    .line 21
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
    const/16 v3, 0xe

    #@2
    .line 32
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 33
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0xd

    #@a
    aget v1, p2, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExt:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 35
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    #@19
    array-length v1, v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    #@1c
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 37
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    #@24
    array-length v1, v1

    #@25
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@28
    .line 30
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v3, 0x7

    #@1
    .line 44
    invoke-static {v3, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    #@4
    move-result v0

    #@5
    .line 45
    .local v0, "c":I
    if-nez v0, :cond_0

    #@7
    const/4 v1, 0x6

    #@8
    aget v1, p1, v1

    #@a
    const/4 v2, -0x1

    #@b
    if-ne v1, v2, :cond_1

    #@d
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    #@f
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 47
    :cond_0
    const/16 v1, 0x1a93

    #@17
    invoke-static {v3, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@1a
    .line 42
    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@3
    move-result-object v0

    #@4
    .line 54
    .local v0, "z":[I
    const/4 v1, 0x6

    #@5
    aget v1, v0, v1

    #@7
    const/4 v2, -0x1

    #@8
    if-ne v1, v2, :cond_0

    #@a
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    #@c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 56
    const/4 v1, 0x7

    #@13
    const/16 v2, 0x1a93

    #@15
    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@18
    .line 58
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v3, 0x7

    #@1
    const/4 v2, 0x0

    #@2
    .line 63
    aget v1, p0, v2

    #@4
    and-int/lit8 v1, v1, 0x1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 65
    invoke-static {v3, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    #@b
    .line 61
    :goto_0
    return-void

    #@c
    .line 69
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    #@e
    invoke-static {p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    #@11
    move-result v0

    #@12
    .line 70
    .local v0, "c":I
    invoke-static {v3, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    #@15
    goto :goto_0
.end method

.method public static multiply([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 76
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 77
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    #@7
    .line 78
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    #@a
    .line 74
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    const/16 v3, 0xe

    #@2
    .line 83
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mulAddTo([I[I[I)I

    #@5
    move-result v0

    #@6
    .line 84
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0xd

    #@a
    aget v1, p2, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExt:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 86
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    #@19
    array-length v1, v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    #@1c
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 88
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    #@24
    array-length v1, v1

    #@25
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@28
    .line 81
    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 97
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->zero([I)V

    #@9
    .line 93
    :goto_0
    return-void

    #@a
    .line 101
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    #@c
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    #@f
    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 10
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v2, 0x7

    #@1
    const/16 v0, 0x1a93

    #@3
    const/4 v4, 0x0

    #@4
    move-object v1, p0

    #@5
    move-object v3, p0

    #@6
    move-object v5, p1

    #@7
    move v6, v4

    #@8
    .line 107
    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul33Add(I[II[II[II)J

    #@b
    move-result-wide v8

    #@c
    .line 108
    .local v8, "cc":J
    invoke-static {v0, v8, v9, p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul33DWordAdd(IJ[II)I

    #@f
    move-result v7

    #@10
    .line 112
    .local v7, "c":I
    if-nez v7, :cond_0

    #@12
    const/4 v1, 0x6

    #@13
    aget v1, p1, v1

    #@15
    const/4 v3, -0x1

    #@16
    if-ne v1, v3, :cond_1

    #@18
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    #@1a
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 114
    :cond_0
    invoke-static {v2, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@23
    .line 105
    :cond_1
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v2, 0x1a93

    #@2
    const/4 v0, 0x0

    #@3
    .line 120
    if-eqz p0, :cond_1

    #@5
    invoke-static {v2, p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul33WordAdd(II[II)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 123
    :goto_0
    const/4 v0, 0x7

    #@c
    invoke-static {v0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@f
    .line 118
    :cond_0
    return-void

    #@10
    .line 121
    :cond_1
    const/4 v0, 0x6

    #@11
    aget v0, p1, v0

    #@13
    const/4 v1, -0x1

    #@14
    if-ne v0, v1, :cond_0

    #@16
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    #@18
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@1b
    move-result v0

    #@1c
    .line 120
    if-eqz v0, :cond_0

    #@1e
    goto :goto_0
.end method

.method public static square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 129
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 130
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    #@7
    .line 131
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    #@a
    .line 127
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 138
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 139
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    #@7
    .line 140
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    #@a
    .line 142
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@c
    if-lez p1, :cond_0

    #@e
    .line 144
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    #@11
    .line 145
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    #@14
    goto :goto_0

    #@15
    .line 134
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
    .line 151
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 152
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@6
    .line 154
    const/4 v1, 0x7

    #@7
    const/16 v2, 0x1a93

    #@9
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    #@c
    .line 149
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
    const/16 v3, 0xe

    #@2
    .line 160
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 161
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@8
    .line 163
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    #@a
    array-length v1, v1

    #@b
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    #@d
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 165
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    #@15
    array-length v1, v1

    #@16
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@19
    .line 158
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v3, 0x7

    #@1
    const/4 v1, 0x0

    #@2
    .line 172
    invoke-static {v3, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    #@5
    move-result v0

    #@6
    .line 173
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/4 v1, 0x6

    #@9
    aget v1, p1, v1

    #@b
    const/4 v2, -0x1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    #@10
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 175
    :cond_0
    const/16 v1, 0x1a93

    #@18
    invoke-static {v3, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@1b
    .line 170
    :cond_1
    return-void
.end method

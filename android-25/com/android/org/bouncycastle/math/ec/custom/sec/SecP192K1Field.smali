.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;
.super Ljava/lang/Object;
.source "SecP192K1Field.java"


# static fields
.field static final P:[I

.field private static final P5:I = -0x1

.field static final PExt:[I

.field private static final PExt11:I = -0x1

.field private static final PExtInv:[I

.field private static final PInv33:I = 0x11c9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 11
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [I

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@8
    .line 12
    const/16 v0, 0xc

    #@a
    new-array v0, v0, [I

    #@c
    fill-array-data v0, :array_1

    #@f
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    #@11
    .line 14
    const/16 v0, 0x8

    #@13
    new-array v0, v0, [I

    #@15
    fill-array-data v0, :array_2

    #@18
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    #@1a
    .line 8
    return-void

    #@1b
    .line 11
    nop

    #@1c
    :array_0
    .array-data 4
        -0x11c9
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    #@2c
    .line 12
    :array_1
    .array-data 4
        0x13c4fd1
        0x2392
        0x1
        0x0
        0x0
        0x0
        -0x2392
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    #@48
    .line 14
    :array_2
    .array-data 4
        -0x13c4fd1
        -0x2393
        -0x2
        -0x1
        -0x1
        -0x1
        0x2391
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
    .line 22
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 23
    .local v0, "c":I
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x5

    #@7
    aget v1, p2, v1

    #@9
    const/4 v2, -0x1

    #@a
    if-ne v1, v2, :cond_1

    #@c
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@e
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 25
    :cond_0
    const/4 v1, 0x6

    #@15
    const/16 v2, 0x11c9

    #@17
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@1a
    .line 20
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
    const/16 v3, 0xc

    #@2
    .line 31
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 32
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0xb

    #@a
    aget v1, p2, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 34
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    #@19
    array-length v1, v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    #@1c
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 36
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    #@24
    array-length v1, v1

    #@25
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@28
    .line 29
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    .line 43
    invoke-static {v3, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    #@4
    move-result v0

    #@5
    .line 44
    .local v0, "c":I
    if-nez v0, :cond_0

    #@7
    const/4 v1, 0x5

    #@8
    aget v1, p1, v1

    #@a
    const/4 v2, -0x1

    #@b
    if-ne v1, v2, :cond_1

    #@d
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@f
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 46
    :cond_0
    const/16 v1, 0x11c9

    #@17
    invoke-static {v3, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@1a
    .line 41
    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@3
    move-result-object v0

    #@4
    .line 53
    .local v0, "z":[I
    const/4 v1, 0x5

    #@5
    aget v1, v0, v1

    #@7
    const/4 v2, -0x1

    #@8
    if-ne v1, v2, :cond_0

    #@a
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 55
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@14
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

    #@17
    .line 57
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    const/4 v2, 0x0

    #@2
    .line 62
    aget v1, p0, v2

    #@4
    and-int/lit8 v1, v1, 0x1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 64
    invoke-static {v3, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    #@b
    .line 60
    :goto_0
    return-void

    #@c
    .line 68
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@e
    invoke-static {p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    #@11
    move-result v0

    #@12
    .line 69
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
    .line 75
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 76
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    #@7
    .line 77
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    #@a
    .line 73
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    .line 82
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    #@5
    move-result v0

    #@6
    .line 83
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0xb

    #@a
    aget v1, p2, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 85
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    #@19
    array-length v1, v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    #@1c
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 87
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    #@24
    array-length v1, v1

    #@25
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@28
    .line 80
    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 96
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->zero([I)V

    #@9
    .line 92
    :goto_0
    return-void

    #@a
    .line 100
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@c
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    #@f
    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 10
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v2, 0x6

    #@1
    const/16 v0, 0x11c9

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
    .line 106
    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul33Add(I[II[II[II)J

    #@b
    move-result-wide v8

    #@c
    .line 107
    .local v8, "cc":J
    invoke-static {v0, v8, v9, p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul33DWordAdd(IJ[II)I

    #@f
    move-result v7

    #@10
    .line 111
    .local v7, "c":I
    if-nez v7, :cond_0

    #@12
    const/4 v1, 0x5

    #@13
    aget v1, p1, v1

    #@15
    const/4 v3, -0x1

    #@16
    if-ne v1, v3, :cond_1

    #@18
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@1a
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 113
    :cond_0
    invoke-static {v2, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@23
    .line 104
    :cond_1
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v2, 0x11c9

    #@2
    const/4 v0, 0x0

    #@3
    .line 119
    if-eqz p0, :cond_1

    #@5
    invoke-static {v2, p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul33WordAdd(II[II)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 122
    :goto_0
    const/4 v0, 0x6

    #@c
    invoke-static {v0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@f
    .line 117
    :cond_0
    return-void

    #@10
    .line 120
    :cond_1
    const/4 v0, 0x5

    #@11
    aget v0, p1, v0

    #@13
    const/4 v1, -0x1

    #@14
    if-ne v0, v1, :cond_0

    #@16
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@18
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@1b
    move-result v0

    #@1c
    .line 119
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
    .line 128
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 129
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    #@7
    .line 130
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    #@a
    .line 126
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 137
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 138
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    #@7
    .line 139
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    #@a
    .line 141
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@c
    if-lez p1, :cond_0

    #@e
    .line 143
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    #@11
    .line 144
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    #@14
    goto :goto_0

    #@15
    .line 133
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
    .line 150
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 151
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@6
    .line 153
    const/4 v1, 0x6

    #@7
    const/16 v2, 0x11c9

    #@9
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    #@c
    .line 148
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
    const/16 v3, 0xc

    #@2
    .line 159
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 160
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@8
    .line 162
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    #@a
    array-length v1, v1

    #@b
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    #@d
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 164
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    #@15
    array-length v1, v1

    #@16
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@19
    .line 157
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    const/4 v1, 0x0

    #@2
    .line 171
    invoke-static {v3, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    #@5
    move-result v0

    #@6
    .line 172
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/4 v1, 0x5

    #@9
    aget v1, p1, v1

    #@b
    const/4 v2, -0x1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    #@10
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 174
    :cond_0
    const/16 v1, 0x11c9

    #@18
    invoke-static {v3, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    #@1b
    .line 169
    :cond_1
    return-void
.end method

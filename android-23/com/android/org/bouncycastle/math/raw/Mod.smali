.class public abstract Lcom/android/org/bouncycastle/math/raw/Mod;
.super Ljava/lang/Object;
.source "Mod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static add([I[I[I[I)V
    .locals 2
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    #@0
    .prologue
    .line 117
    array-length v1, p0

    #@1
    .line 118
    .local v1, "len":I
    invoke-static {v1, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    #@4
    move-result v0

    #@5
    .line 119
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@7
    .line 121
    invoke-static {v1, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@a
    .line 115
    :cond_0
    return-void
.end method

.method private static getTrailingZeroes(I)I
    .locals 2
    .param p0, "x"    # I

    #@0
    .prologue
    .line 191
    const/4 v0, 0x0

    #@1
    .line 192
    .local v0, "count":I
    :goto_0
    and-int/lit8 v1, p0, 0x1

    #@3
    if-nez v1, :cond_0

    #@5
    .line 194
    ushr-int/lit8 p0, p0, 0x1

    #@7
    .line 195
    add-int/lit8 v0, v0, 0x1

    #@9
    goto :goto_0

    #@a
    .line 197
    :cond_0
    return v0
.end method

.method public static inverse32(I)I
    .locals 2
    .param p0, "d"    # I

    #@0
    .prologue
    .line 12
    move v0, p0

    #@1
    .line 13
    .local v0, "x":I
    mul-int v1, p0, v0

    #@3
    rsub-int/lit8 v1, v1, 0x2

    #@5
    mul-int/2addr v0, v1

    #@6
    .line 14
    mul-int v1, p0, v0

    #@8
    rsub-int/lit8 v1, v1, 0x2

    #@a
    mul-int/2addr v0, v1

    #@b
    .line 15
    mul-int v1, p0, v0

    #@d
    rsub-int/lit8 v1, v1, 0x2

    #@f
    mul-int/2addr v0, v1

    #@10
    .line 16
    mul-int v1, p0, v0

    #@12
    rsub-int/lit8 v1, v1, 0x2

    #@14
    mul-int/2addr v0, v1

    #@15
    .line 18
    return v0
.end method

.method private static inversionResult([II[I[I)V
    .locals 2
    .param p0, "p"    # [I
    .param p1, "ac"    # I
    .param p2, "a"    # [I
    .param p3, "z"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 137
    if-gez p1, :cond_0

    #@3
    .line 139
    array-length v0, p0

    #@4
    invoke-static {v0, p2, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    #@7
    .line 135
    :goto_0
    return-void

    #@8
    .line 143
    :cond_0
    array-length v0, p0

    #@9
    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@c
    goto :goto_0
.end method

.method private static inversionStep([I[II[II)I
    .locals 6
    .param p0, "p"    # [I
    .param p1, "u"    # [I
    .param p2, "uLen"    # I
    .param p3, "x"    # [I
    .param p4, "xc"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 149
    array-length v2, p0

    #@2
    .line 150
    .local v2, "len":I
    const/4 v0, 0x0

    #@3
    .line 151
    .local v0, "count":I
    :goto_0
    aget v4, p1, v5

    #@5
    if-nez v4, :cond_0

    #@7
    .line 153
    invoke-static {p2, p1, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownWord(I[II)I

    #@a
    .line 154
    add-int/lit8 v0, v0, 0x20

    #@c
    goto :goto_0

    #@d
    .line 158
    :cond_0
    aget v4, p1, v5

    #@f
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/raw/Mod;->getTrailingZeroes(I)I

    #@12
    move-result v3

    #@13
    .line 159
    .local v3, "zeroes":I
    if-lez v3, :cond_1

    #@15
    .line 161
    invoke-static {p2, p1, v3, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBits(I[III)I

    #@18
    .line 162
    add-int/2addr v0, v3

    #@19
    .line 166
    :cond_1
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    #@1c
    .line 168
    aget v4, p3, v5

    #@1e
    and-int/lit8 v4, v4, 0x1

    #@20
    if-eqz v4, :cond_2

    #@22
    .line 170
    if-gez p4, :cond_3

    #@24
    .line 172
    invoke-static {v2, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@27
    move-result v4

    #@28
    add-int/2addr p4, v4

    #@29
    .line 181
    :cond_2
    :goto_2
    invoke-static {v2, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    #@2c
    .line 166
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 176
    :cond_3
    invoke-static {v2, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@32
    move-result v4

    #@33
    add-int/2addr p4, v4

    #@34
    goto :goto_2

    #@35
    .line 184
    :cond_4
    return p4
.end method

.method public static invert([I[I[I)V
    .locals 10
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 23
    array-length v4, p0

    #@2
    .line 24
    .local v4, "len":I
    invoke-static {v4, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@5
    move-result v8

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 26
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v9, "\'x\' cannot be 0"

    #@d
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v8

    #@11
    .line 28
    :cond_0
    invoke-static {v4, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    #@14
    move-result v8

    #@15
    if-eqz v8, :cond_1

    #@17
    .line 30
    invoke-static {p1, v9, p2, v9, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@1a
    .line 31
    return-void

    #@1b
    .line 34
    :cond_1
    invoke-static {v4, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->copy(I[I)[I

    #@1e
    move-result-object v5

    #@1f
    .line 35
    .local v5, "u":[I
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@22
    move-result-object v0

    #@23
    .line 36
    .local v0, "a":[I
    const/4 v8, 0x1

    #@24
    aput v8, v0, v9

    #@26
    .line 37
    const/4 v1, 0x0

    #@27
    .line 39
    .local v1, "ac":I
    aget v8, v5, v9

    #@29
    and-int/lit8 v8, v8, 0x1

    #@2b
    if-nez v8, :cond_2

    #@2d
    .line 41
    invoke-static {p0, v5, v4, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    #@30
    move-result v1

    #@31
    .line 43
    :cond_2
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    #@34
    move-result v8

    #@35
    if-eqz v8, :cond_3

    #@37
    .line 45
    invoke-static {p0, v1, v0, p2}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    #@3a
    .line 46
    return-void

    #@3b
    .line 49
    :cond_3
    invoke-static {v4, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->copy(I[I)[I

    #@3e
    move-result-object v7

    #@3f
    .line 50
    .local v7, "v":[I
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@42
    move-result-object v2

    #@43
    .line 51
    .local v2, "b":[I
    const/4 v3, 0x0

    #@44
    .line 53
    .local v3, "bc":I
    move v6, v4

    #@45
    .line 57
    .local v6, "uvLen":I
    :cond_4
    :goto_0
    add-int/lit8 v8, v6, -0x1

    #@47
    aget v8, v5, v8

    #@49
    if-nez v8, :cond_5

    #@4b
    add-int/lit8 v8, v6, -0x1

    #@4d
    aget v8, v7, v8

    #@4f
    if-nez v8, :cond_5

    #@51
    .line 59
    add-int/lit8 v6, v6, -0x1

    #@53
    goto :goto_0

    #@54
    .line 62
    :cond_5
    invoke-static {v6, v5, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@57
    move-result v8

    #@58
    if-eqz v8, :cond_6

    #@5a
    .line 64
    invoke-static {v6, v7, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@5d
    .line 66
    invoke-static {v4, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@60
    move-result v8

    #@61
    sub-int/2addr v8, v3

    #@62
    add-int/2addr v1, v8

    #@63
    .line 67
    invoke-static {p0, v5, v6, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    #@66
    move-result v1

    #@67
    .line 68
    invoke-static {v6, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    #@6a
    move-result v8

    #@6b
    if-eqz v8, :cond_4

    #@6d
    .line 70
    invoke-static {p0, v1, v0, p2}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    #@70
    .line 71
    return-void

    #@71
    .line 76
    :cond_6
    invoke-static {v6, v5, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@74
    .line 78
    invoke-static {v4, v0, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@77
    move-result v8

    #@78
    sub-int/2addr v8, v1

    #@79
    add-int/2addr v3, v8

    #@7a
    .line 79
    invoke-static {p0, v7, v6, v2, v3}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    #@7d
    move-result v3

    #@7e
    .line 80
    invoke-static {v6, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    #@81
    move-result v8

    #@82
    if-eqz v8, :cond_4

    #@84
    .line 82
    invoke-static {p0, v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    #@87
    .line 83
    return-void
.end method

.method public static random([I)[I
    .locals 7
    .param p0, "p"    # [I

    #@0
    .prologue
    .line 91
    array-length v1, p0

    #@1
    .line 92
    .local v1, "len":I
    new-instance v3, Ljava/util/Random;

    #@3
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    #@6
    .line 93
    .local v3, "rand":Ljava/util/Random;
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@9
    move-result-object v4

    #@a
    .line 95
    .local v4, "s":[I
    add-int/lit8 v5, v1, -0x1

    #@c
    aget v2, p0, v5

    #@e
    .line 96
    .local v2, "m":I
    ushr-int/lit8 v5, v2, 0x1

    #@10
    or-int/2addr v2, v5

    #@11
    .line 97
    ushr-int/lit8 v5, v2, 0x2

    #@13
    or-int/2addr v2, v5

    #@14
    .line 98
    ushr-int/lit8 v5, v2, 0x4

    #@16
    or-int/2addr v2, v5

    #@17
    .line 99
    ushr-int/lit8 v5, v2, 0x8

    #@19
    or-int/2addr v2, v5

    #@1a
    .line 100
    ushr-int/lit8 v5, v2, 0x10

    #@1c
    or-int/2addr v2, v5

    #@1d
    .line 104
    :cond_0
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    if-eq v0, v1, :cond_1

    #@20
    .line 106
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    #@23
    move-result v5

    #@24
    aput v5, v4, v0

    #@26
    .line 104
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 108
    :cond_1
    add-int/lit8 v5, v1, -0x1

    #@2b
    aget v6, v4, v5

    #@2d
    and-int/2addr v6, v2

    #@2e
    aput v6, v4, v5

    #@30
    .line 110
    invoke-static {v1, v4, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@33
    move-result v5

    #@34
    if-nez v5, :cond_0

    #@36
    .line 112
    return-object v4
.end method

.method public static subtract([I[I[I[I)V
    .locals 2
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    #@0
    .prologue
    .line 127
    array-length v1, p0

    #@1
    .line 128
    .local v1, "len":I
    invoke-static {v1, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@4
    move-result v0

    #@5
    .line 129
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@7
    .line 131
    invoke-static {v1, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@a
    .line 125
    :cond_0
    return-void
.end method

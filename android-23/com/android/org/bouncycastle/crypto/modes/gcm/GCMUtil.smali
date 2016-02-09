.class public abstract Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# static fields
.field private static final E1:I = -0x1f000000

.field private static final E1L:J = -0x1f00000000000000L

.field private static final LOOKUP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->generateLookup()[I

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    #@6
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static asBytes([I[B)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [B

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    #@4
    .line 60
    return-void
.end method

.method public static asBytes([J[B)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "z"    # [B

    #@0
    .prologue
    .line 74
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    #@4
    .line 72
    return-void
.end method

.method public static asBytes([I)[B
    .locals 2
    .param p0, "x"    # [I

    #@0
    .prologue
    .line 55
    const/16 v1, 0x10

    #@2
    new-array v0, v1, [B

    #@4
    .line 56
    .local v0, "z":[B
    const/4 v1, 0x0

    #@5
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    #@8
    .line 57
    return-object v0
.end method

.method public static asBytes([J)[B
    .locals 2
    .param p0, "x"    # [J

    #@0
    .prologue
    .line 67
    const/16 v1, 0x10

    #@2
    new-array v0, v1, [B

    #@4
    .line 68
    .local v0, "z":[B
    const/4 v1, 0x0

    #@5
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    #@8
    .line 69
    return-object v0
.end method

.method public static asInts([B[I)V
    .locals 1
    .param p0, "x"    # [B
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 86
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI[I)V

    #@4
    .line 84
    return-void
.end method

.method public static asInts([B)[I
    .locals 2
    .param p0, "x"    # [B

    #@0
    .prologue
    .line 79
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [I

    #@3
    .line 80
    .local v0, "z":[I
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI[I)V

    #@7
    .line 81
    return-object v0
.end method

.method public static asLongs([B[J)V
    .locals 1
    .param p0, "x"    # [B
    .param p1, "z"    # [J

    #@0
    .prologue
    .line 98
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0, p1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI[J)V

    #@4
    .line 96
    return-void
.end method

.method public static asLongs([B)[J
    .locals 2
    .param p0, "x"    # [B

    #@0
    .prologue
    .line 91
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [J

    #@3
    .line 92
    .local v0, "z":[J
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI[J)V

    #@7
    .line 93
    return-object v0
.end method

.method private static generateLookup()[I
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x100

    #@2
    .line 12
    new-array v2, v6, [I

    #@4
    .line 14
    .local v2, "lookup":[I
    const/4 v0, 0x0

    #@5
    .local v0, "c":I
    :goto_0
    if-ge v0, v6, :cond_2

    #@7
    .line 16
    const/4 v3, 0x0

    #@8
    .line 17
    .local v3, "v":I
    const/4 v1, 0x7

    #@9
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    #@b
    .line 19
    const/4 v4, 0x1

    #@c
    shl-int/2addr v4, v1

    #@d
    and-int/2addr v4, v0

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 21
    rsub-int/lit8 v4, v1, 0x7

    #@12
    const/high16 v5, -0x1f000000

    #@14
    ushr-int v4, v5, v4

    #@16
    xor-int/2addr v3, v4

    #@17
    .line 17
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@19
    goto :goto_1

    #@1a
    .line 24
    :cond_1
    aput v3, v2, v0

    #@1c
    .line 14
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 27
    .end local v1    # "i":I
    .end local v3    # "v":I
    :cond_2
    return-object v2
.end method

.method public static multiply([B[B)V
    .locals 2
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    #@0
    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    #@3
    move-result-object v0

    #@4
    .line 104
    .local v0, "t1":[I
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    #@7
    move-result-object v1

    #@8
    .line 105
    .local v1, "t2":[I
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([I[I)V

    #@b
    .line 106
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([I[B)V

    #@e
    .line 101
    return-void
.end method

.method public static multiply([I[I)V
    .locals 15
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    #@0
    .prologue
    .line 111
    const/4 v13, 0x0

    #@1
    aget v5, p0, v13

    #@3
    .local v5, "r00":I
    const/4 v13, 0x1

    #@4
    aget v6, p0, v13

    #@6
    .local v6, "r01":I
    const/4 v13, 0x2

    #@7
    aget v7, p0, v13

    #@9
    .local v7, "r02":I
    const/4 v13, 0x3

    #@a
    aget v8, p0, v13

    #@c
    .line 112
    .local v8, "r03":I
    const/4 v9, 0x0

    #@d
    .local v9, "r10":I
    const/4 v10, 0x0

    #@e
    .local v10, "r11":I
    const/4 v11, 0x0

    #@f
    .local v11, "r12":I
    const/4 v12, 0x0

    #@10
    .line 114
    .local v12, "r13":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    const/4 v13, 0x4

    #@12
    if-ge v1, v13, :cond_1

    #@14
    .line 116
    aget v0, p1, v1

    #@16
    .line 117
    .local v0, "bits":I
    const/4 v2, 0x0

    #@17
    .local v2, "j":I
    :goto_1
    const/16 v13, 0x20

    #@19
    if-ge v2, v13, :cond_0

    #@1b
    .line 119
    shr-int/lit8 v3, v0, 0x1f

    #@1d
    .local v3, "m1":I
    shl-int/lit8 v0, v0, 0x1

    #@1f
    .line 120
    and-int v13, v5, v3

    #@21
    xor-int/2addr v9, v13

    #@22
    .line 121
    and-int v13, v6, v3

    #@24
    xor-int/2addr v10, v13

    #@25
    .line 122
    and-int v13, v7, v3

    #@27
    xor-int/2addr v11, v13

    #@28
    .line 123
    and-int v13, v8, v3

    #@2a
    xor-int/2addr v12, v13

    #@2b
    .line 125
    shl-int/lit8 v13, v8, 0x1f

    #@2d
    shr-int/lit8 v4, v13, 0x8

    #@2f
    .line 126
    .local v4, "m2":I
    ushr-int/lit8 v13, v8, 0x1

    #@31
    shl-int/lit8 v14, v7, 0x3f

    #@33
    or-int v8, v13, v14

    #@35
    .line 127
    ushr-int/lit8 v13, v7, 0x1

    #@37
    shl-int/lit8 v14, v6, 0x3f

    #@39
    or-int v7, v13, v14

    #@3b
    .line 128
    ushr-int/lit8 v13, v6, 0x1

    #@3d
    shl-int/lit8 v14, v5, 0x3f

    #@3f
    or-int v6, v13, v14

    #@41
    .line 129
    ushr-int/lit8 v13, v5, 0x1

    #@43
    const/high16 v14, -0x1f000000

    #@45
    and-int/2addr v14, v4

    #@46
    xor-int v5, v13, v14

    #@48
    .line 117
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 114
    .end local v3    # "m1":I
    .end local v4    # "m2":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 133
    .end local v0    # "bits":I
    .end local v2    # "j":I
    :cond_1
    const/4 v13, 0x0

    #@4f
    aput v9, p0, v13

    #@51
    .line 134
    const/4 v13, 0x1

    #@52
    aput v10, p0, v13

    #@54
    .line 135
    const/4 v13, 0x2

    #@55
    aput v11, p0, v13

    #@57
    .line 136
    const/4 v13, 0x3

    #@58
    aput v12, p0, v13

    #@5a
    .line 109
    return-void
.end method

.method public static multiply([J[J)V
    .locals 22
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    #@0
    .prologue
    .line 141
    const/16 v18, 0x0

    #@2
    aget-wide v10, p0, v18

    #@4
    .local v10, "r00":J
    const/16 v18, 0x1

    #@6
    aget-wide v12, p0, v18

    #@8
    .local v12, "r01":J
    const-wide/16 v14, 0x0

    #@a
    .local v14, "r10":J
    const-wide/16 v16, 0x0

    #@c
    .line 143
    .local v16, "r11":J
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    const/16 v18, 0x2

    #@f
    move/from16 v0, v18

    #@11
    if-ge v4, v0, :cond_1

    #@13
    .line 145
    aget-wide v2, p1, v4

    #@15
    .line 146
    .local v2, "bits":J
    const/4 v5, 0x0

    #@16
    .local v5, "j":I
    :goto_1
    const/16 v18, 0x40

    #@18
    move/from16 v0, v18

    #@1a
    if-ge v5, v0, :cond_0

    #@1c
    .line 148
    const/16 v18, 0x3f

    #@1e
    shr-long v6, v2, v18

    #@20
    .local v6, "m1":J
    const/16 v18, 0x1

    #@22
    shl-long v2, v2, v18

    #@24
    .line 149
    and-long v18, v10, v6

    #@26
    xor-long v14, v14, v18

    #@28
    .line 150
    and-long v18, v12, v6

    #@2a
    xor-long v16, v16, v18

    #@2c
    .line 152
    const/16 v18, 0x3f

    #@2e
    shl-long v18, v12, v18

    #@30
    const/16 v20, 0x8

    #@32
    shr-long v8, v18, v20

    #@34
    .line 153
    .local v8, "m2":J
    const/16 v18, 0x1

    #@36
    ushr-long v18, v12, v18

    #@38
    const/16 v20, 0x3f

    #@3a
    shl-long v20, v10, v20

    #@3c
    or-long v12, v18, v20

    #@3e
    .line 154
    const/16 v18, 0x1

    #@40
    ushr-long v18, v10, v18

    #@42
    const-wide/high16 v20, -0x1f00000000000000L    # -1.757388200993436E159

    #@44
    and-long v20, v20, v8

    #@46
    xor-long v10, v18, v20

    #@48
    .line 146
    add-int/lit8 v5, v5, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 143
    .end local v6    # "m1":J
    .end local v8    # "m2":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 158
    .end local v2    # "bits":J
    .end local v5    # "j":I
    :cond_1
    const/16 v18, 0x0

    #@50
    aput-wide v14, p0, v18

    #@52
    .line 159
    const/16 v18, 0x1

    #@54
    aput-wide v16, p0, v18

    #@56
    .line 139
    return-void
.end method

.method public static multiplyP([I)V
    .locals 4
    .param p0, "x"    # [I

    #@0
    .prologue
    .line 165
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)I

    #@3
    move-result v1

    #@4
    shr-int/lit8 v0, v1, 0x8

    #@6
    .line 166
    .local v0, "m":I
    const/4 v1, 0x0

    #@7
    aget v2, p0, v1

    #@9
    const/high16 v3, -0x1f000000

    #@b
    and-int/2addr v3, v0

    #@c
    xor-int/2addr v2, v3

    #@d
    aput v2, p0, v1

    #@f
    .line 163
    return-void
.end method

.method public static multiplyP([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 171
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I[I)I

    #@3
    move-result v1

    #@4
    shr-int/lit8 v0, v1, 0x8

    #@6
    .line 172
    .local v0, "m":I
    const/4 v1, 0x0

    #@7
    aget v2, p1, v1

    #@9
    const/high16 v3, -0x1f000000

    #@b
    and-int/2addr v3, v0

    #@c
    xor-int/2addr v2, v3

    #@d
    aput v2, p1, v1

    #@f
    .line 169
    return-void
.end method

.method public static multiplyP8([I)V
    .locals 5
    .param p0, "x"    # [I

    #@0
    .prologue
    .line 183
    const/16 v1, 0x8

    #@2
    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRightN([II)I

    #@5
    move-result v0

    #@6
    .line 184
    .local v0, "c":I
    const/4 v1, 0x0

    #@7
    aget v2, p0, v1

    #@9
    sget-object v3, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    #@b
    ushr-int/lit8 v4, v0, 0x18

    #@d
    aget v3, v3, v4

    #@f
    xor-int/2addr v2, v3

    #@10
    aput v2, p0, v1

    #@12
    .line 176
    return-void
.end method

.method public static multiplyP8([I[I)V
    .locals 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    #@0
    .prologue
    .line 189
    const/16 v1, 0x8

    #@2
    invoke-static {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRightN([II[I)I

    #@5
    move-result v0

    #@6
    .line 190
    .local v0, "c":I
    const/4 v1, 0x0

    #@7
    aget v2, p1, v1

    #@9
    sget-object v3, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    #@b
    ushr-int/lit8 v4, v0, 0x18

    #@d
    aget v3, v3, v4

    #@f
    xor-int/2addr v2, v3

    #@10
    aput v2, p1, v1

    #@12
    .line 187
    return-void
.end method

.method public static oneAsBytes()[B
    .locals 3

    #@0
    .prologue
    .line 34
    const/16 v1, 0x10

    #@2
    new-array v0, v1, [B

    #@4
    .line 35
    .local v0, "tmp":[B
    const/16 v1, -0x80

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 36
    return-object v0
.end method

.method public static oneAsInts()[I
    .locals 3

    #@0
    .prologue
    .line 41
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [I

    #@3
    .line 42
    .local v0, "tmp":[I
    const/high16 v1, -0x80000000

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    .line 43
    return-object v0
.end method

.method public static oneAsLongs()[J
    .locals 4

    #@0
    .prologue
    .line 48
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [J

    #@3
    .line 49
    .local v0, "tmp":[J
    const-wide/high16 v2, -0x8000000000000000L

    #@5
    const/4 v1, 0x0

    #@6
    aput-wide v2, v0, v1

    #@8
    .line 50
    return-object v0
.end method

.method static shiftRight([I)I
    .locals 7
    .param p0, "x"    # [I

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 204
    aget v0, p0, v3

    #@6
    .line 205
    .local v0, "b":I
    ushr-int/lit8 v2, v0, 0x1

    #@8
    aput v2, p0, v3

    #@a
    .line 206
    shl-int/lit8 v1, v0, 0x1f

    #@c
    .line 207
    .local v1, "c":I
    aget v0, p0, v4

    #@e
    .line 208
    ushr-int/lit8 v2, v0, 0x1

    #@10
    or-int/2addr v2, v1

    #@11
    aput v2, p0, v4

    #@13
    .line 209
    shl-int/lit8 v1, v0, 0x1f

    #@15
    .line 210
    aget v0, p0, v5

    #@17
    .line 211
    ushr-int/lit8 v2, v0, 0x1

    #@19
    or-int/2addr v2, v1

    #@1a
    aput v2, p0, v5

    #@1c
    .line 212
    shl-int/lit8 v1, v0, 0x1f

    #@1e
    .line 213
    aget v0, p0, v6

    #@20
    .line 214
    ushr-int/lit8 v2, v0, 0x1

    #@22
    or-int/2addr v2, v1

    #@23
    aput v2, p0, v6

    #@25
    .line 215
    shl-int/lit8 v2, v0, 0x1f

    #@27
    return v2
.end method

.method static shiftRight([I[I)I
    .locals 7
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 229
    aget v0, p0, v3

    #@6
    .line 230
    .local v0, "b":I
    ushr-int/lit8 v2, v0, 0x1

    #@8
    aput v2, p1, v3

    #@a
    .line 231
    shl-int/lit8 v1, v0, 0x1f

    #@c
    .line 232
    .local v1, "c":I
    aget v0, p0, v4

    #@e
    .line 233
    ushr-int/lit8 v2, v0, 0x1

    #@10
    or-int/2addr v2, v1

    #@11
    aput v2, p1, v4

    #@13
    .line 234
    shl-int/lit8 v1, v0, 0x1f

    #@15
    .line 235
    aget v0, p0, v5

    #@17
    .line 236
    ushr-int/lit8 v2, v0, 0x1

    #@19
    or-int/2addr v2, v1

    #@1a
    aput v2, p1, v5

    #@1c
    .line 237
    shl-int/lit8 v1, v0, 0x1f

    #@1e
    .line 238
    aget v0, p0, v6

    #@20
    .line 239
    ushr-int/lit8 v2, v0, 0x1

    #@22
    or-int/2addr v2, v1

    #@23
    aput v2, p1, v6

    #@25
    .line 240
    shl-int/lit8 v2, v0, 0x1f

    #@27
    return v2
.end method

.method static shiftRight([J)J
    .locals 9
    .param p0, "x"    # [J

    #@0
    .prologue
    const/16 v8, 0x3f

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, 0x1

    #@4
    .line 245
    aget-wide v0, p0, v7

    #@6
    .line 246
    .local v0, "b":J
    ushr-long v4, v0, v6

    #@8
    aput-wide v4, p0, v7

    #@a
    .line 247
    shl-long v2, v0, v8

    #@c
    .line 248
    .local v2, "c":J
    aget-wide v0, p0, v6

    #@e
    .line 249
    ushr-long v4, v0, v6

    #@10
    or-long/2addr v4, v2

    #@11
    aput-wide v4, p0, v6

    #@13
    .line 250
    shl-long v4, v0, v8

    #@15
    return-wide v4
.end method

.method static shiftRight([J[J)J
    .locals 9
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    #@0
    .prologue
    const/16 v8, 0x3f

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, 0x1

    #@4
    .line 255
    aget-wide v0, p0, v7

    #@6
    .line 256
    .local v0, "b":J
    ushr-long v4, v0, v6

    #@8
    aput-wide v4, p1, v7

    #@a
    .line 257
    shl-long v2, v0, v8

    #@c
    .line 258
    .local v2, "c":J
    aget-wide v0, p0, v6

    #@e
    .line 259
    ushr-long v4, v0, v6

    #@10
    or-long/2addr v4, v2

    #@11
    aput-wide v4, p1, v6

    #@13
    .line 260
    shl-long v4, v0, v8

    #@15
    return-wide v4
.end method

.method static shiftRightN([II)I
    .locals 8
    .param p0, "x"    # [I
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 274
    aget v0, p0, v4

    #@6
    .local v0, "b":I
    rsub-int/lit8 v2, p1, 0x20

    #@8
    .line 275
    .local v2, "nInv":I
    ushr-int v3, v0, p1

    #@a
    aput v3, p0, v4

    #@c
    .line 276
    shl-int v1, v0, v2

    #@e
    .line 277
    .local v1, "c":I
    aget v0, p0, v5

    #@10
    .line 278
    ushr-int v3, v0, p1

    #@12
    or-int/2addr v3, v1

    #@13
    aput v3, p0, v5

    #@15
    .line 279
    shl-int v1, v0, v2

    #@17
    .line 280
    aget v0, p0, v6

    #@19
    .line 281
    ushr-int v3, v0, p1

    #@1b
    or-int/2addr v3, v1

    #@1c
    aput v3, p0, v6

    #@1e
    .line 282
    shl-int v1, v0, v2

    #@20
    .line 283
    aget v0, p0, v7

    #@22
    .line 284
    ushr-int v3, v0, p1

    #@24
    or-int/2addr v3, v1

    #@25
    aput v3, p0, v7

    #@27
    .line 285
    shl-int v3, v0, v2

    #@29
    return v3
.end method

.method static shiftRightN([II[I)I
    .locals 8
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 299
    aget v0, p0, v4

    #@6
    .local v0, "b":I
    rsub-int/lit8 v2, p1, 0x20

    #@8
    .line 300
    .local v2, "nInv":I
    ushr-int v3, v0, p1

    #@a
    aput v3, p2, v4

    #@c
    .line 301
    shl-int v1, v0, v2

    #@e
    .line 302
    .local v1, "c":I
    aget v0, p0, v5

    #@10
    .line 303
    ushr-int v3, v0, p1

    #@12
    or-int/2addr v3, v1

    #@13
    aput v3, p2, v5

    #@15
    .line 304
    shl-int v1, v0, v2

    #@17
    .line 305
    aget v0, p0, v6

    #@19
    .line 306
    ushr-int v3, v0, p1

    #@1b
    or-int/2addr v3, v1

    #@1c
    aput v3, p2, v6

    #@1e
    .line 307
    shl-int v1, v0, v2

    #@20
    .line 308
    aget v0, p0, v7

    #@22
    .line 309
    ushr-int v3, v0, p1

    #@24
    or-int/2addr v3, v1

    #@25
    aput v3, p2, v7

    #@27
    .line 310
    shl-int v3, v0, v2

    #@29
    return v3
.end method

.method public static xor([B[B)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    #@0
    .prologue
    .line 315
    const/4 v0, 0x0

    #@1
    .line 318
    .local v0, "i":I
    :cond_0
    aget-byte v1, p0, v0

    #@3
    aget-byte v2, p1, v0

    #@5
    xor-int/2addr v1, v2

    #@6
    int-to-byte v1, v1

    #@7
    aput-byte v1, p0, v0

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    .line 319
    aget-byte v1, p0, v0

    #@d
    aget-byte v2, p1, v0

    #@f
    xor-int/2addr v1, v2

    #@10
    int-to-byte v1, v1

    #@11
    aput-byte v1, p0, v0

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    .line 320
    aget-byte v1, p0, v0

    #@17
    aget-byte v2, p1, v0

    #@19
    xor-int/2addr v1, v2

    #@1a
    int-to-byte v1, v1

    #@1b
    aput-byte v1, p0, v0

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    .line 321
    aget-byte v1, p0, v0

    #@21
    aget-byte v2, p1, v0

    #@23
    xor-int/2addr v1, v2

    #@24
    int-to-byte v1, v1

    #@25
    aput-byte v1, p0, v0

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    .line 323
    const/16 v1, 0x10

    #@2b
    if-lt v0, v1, :cond_0

    #@2d
    .line 313
    return-void
.end method

.method public static xor([B[BII)V
    .locals 2
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "yOff"    # I
    .param p3, "yLen"    # I

    #@0
    .prologue
    .line 328
    :goto_0
    add-int/lit8 p3, p3, -0x1

    #@2
    if-ltz p3, :cond_0

    #@4
    .line 330
    aget-byte v0, p0, p3

    #@6
    add-int v1, p2, p3

    #@8
    aget-byte v1, p1, v1

    #@a
    xor-int/2addr v0, v1

    #@b
    int-to-byte v0, v0

    #@c
    aput-byte v0, p0, p3

    #@e
    goto :goto_0

    #@f
    .line 326
    :cond_0
    return-void
.end method

.method public static xor([B[B[B)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "z"    # [B

    #@0
    .prologue
    .line 336
    const/4 v0, 0x0

    #@1
    .line 339
    .local v0, "i":I
    :cond_0
    aget-byte v1, p0, v0

    #@3
    aget-byte v2, p1, v0

    #@5
    xor-int/2addr v1, v2

    #@6
    int-to-byte v1, v1

    #@7
    aput-byte v1, p2, v0

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    .line 340
    aget-byte v1, p0, v0

    #@d
    aget-byte v2, p1, v0

    #@f
    xor-int/2addr v1, v2

    #@10
    int-to-byte v1, v1

    #@11
    aput-byte v1, p2, v0

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    .line 341
    aget-byte v1, p0, v0

    #@17
    aget-byte v2, p1, v0

    #@19
    xor-int/2addr v1, v2

    #@1a
    int-to-byte v1, v1

    #@1b
    aput-byte v1, p2, v0

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    .line 342
    aget-byte v1, p0, v0

    #@21
    aget-byte v2, p1, v0

    #@23
    xor-int/2addr v1, v2

    #@24
    int-to-byte v1, v1

    #@25
    aput-byte v1, p2, v0

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    .line 344
    const/16 v1, 0x10

    #@2b
    if-lt v0, v1, :cond_0

    #@2d
    .line 334
    return-void
.end method

.method public static xor([I[I)V
    .locals 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 349
    aget v0, p0, v2

    #@6
    aget v1, p1, v2

    #@8
    xor-int/2addr v0, v1

    #@9
    aput v0, p0, v2

    #@b
    .line 350
    aget v0, p0, v3

    #@d
    aget v1, p1, v3

    #@f
    xor-int/2addr v0, v1

    #@10
    aput v0, p0, v3

    #@12
    .line 351
    aget v0, p0, v4

    #@14
    aget v1, p1, v4

    #@16
    xor-int/2addr v0, v1

    #@17
    aput v0, p0, v4

    #@19
    .line 352
    aget v0, p0, v5

    #@1b
    aget v1, p1, v5

    #@1d
    xor-int/2addr v0, v1

    #@1e
    aput v0, p0, v5

    #@20
    .line 347
    return-void
.end method

.method public static xor([I[I[I)V
    .locals 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 357
    aget v0, p0, v2

    #@6
    aget v1, p1, v2

    #@8
    xor-int/2addr v0, v1

    #@9
    aput v0, p2, v2

    #@b
    .line 358
    aget v0, p0, v3

    #@d
    aget v1, p1, v3

    #@f
    xor-int/2addr v0, v1

    #@10
    aput v0, p2, v3

    #@12
    .line 359
    aget v0, p0, v4

    #@14
    aget v1, p1, v4

    #@16
    xor-int/2addr v0, v1

    #@17
    aput v0, p2, v4

    #@19
    .line 360
    aget v0, p0, v5

    #@1b
    aget v1, p1, v5

    #@1d
    xor-int/2addr v0, v1

    #@1e
    aput v0, p2, v5

    #@20
    .line 355
    return-void
.end method

.method public static xor([J[J)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 365
    aget-wide v0, p0, v4

    #@4
    aget-wide v2, p1, v4

    #@6
    xor-long/2addr v0, v2

    #@7
    aput-wide v0, p0, v4

    #@9
    .line 366
    aget-wide v0, p0, v5

    #@b
    aget-wide v2, p1, v5

    #@d
    xor-long/2addr v0, v2

    #@e
    aput-wide v0, p0, v5

    #@10
    .line 363
    return-void
.end method

.method public static xor([J[J[J)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 371
    aget-wide v0, p0, v4

    #@4
    aget-wide v2, p1, v4

    #@6
    xor-long/2addr v0, v2

    #@7
    aput-wide v0, p2, v4

    #@9
    .line 372
    aget-wide v0, p0, v5

    #@b
    aget-wide v2, p1, v5

    #@d
    xor-long/2addr v0, v2

    #@e
    aput-wide v0, p2, v5

    #@10
    .line 369
    return-void
.end method

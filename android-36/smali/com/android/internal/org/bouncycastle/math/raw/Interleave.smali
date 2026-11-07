.class public Lcom/android/internal/org/bouncycastle/math/raw/Interleave;
.super Ljava/lang/Object;
.source "Interleave.java"


# static fields
.field private static final blacklist M32:J = 0x55555555L

.field private static final blacklist M64:J = 0x5555555555555555L

.field private static final blacklist M64R:J = -0x5555555555555556L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist expand16to32(I)I
    .registers 3
    .param p0, "x"    # I

    .line 66
    const v0, 0xffff

    and-int/2addr p0, v0

    .line 67
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p0

    const v1, 0xff00ff

    and-int p0, v0, v1

    .line 68
    shl-int/lit8 v0, p0, 0x4

    or-int/2addr v0, p0

    const v1, 0xf0f0f0f

    and-int p0, v0, v1

    .line 69
    shl-int/lit8 v0, p0, 0x2

    or-int/2addr v0, p0

    const v1, 0x33333333

    and-int p0, v0, v1

    .line 70
    shl-int/lit8 v0, p0, 0x1

    or-int/2addr v0, p0

    const v1, 0x55555555

    and-int p0, v0, v1

    .line 71
    return p0
.end method

.method public static blacklist expand32to64(I)J
    .registers 7
    .param p0, "x"    # I

    .line 77
    const v0, 0xff00

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 78
    const v0, 0xf000f0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 79
    const v0, 0xc0c0c0c

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 80
    const v0, 0x22222222

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 82
    ushr-int/lit8 v0, p0, 0x1

    int-to-long v0, v0

    const-wide/32 v2, 0x55555555

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist expand64To128(J[JI)V
    .registers 10
    .param p0, "x"    # J
    .param p2, "z"    # [J
    .param p3, "zOff"    # I

    .line 88
    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 89
    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 90
    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 91
    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 92
    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 94
    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v3, p0, v0

    aput-wide v3, p2, p3

    .line 95
    add-int/lit8 v3, p3, 0x1

    ushr-long v4, p0, v2

    and-long/2addr v0, v4

    aput-wide v0, p2, v3

    .line 96
    return-void
.end method

.method public static blacklist expand64To128([JII[JI)V
    .registers 8
    .param p0, "xs"    # [J
    .param p1, "xsOff"    # I
    .param p2, "xsLen"    # I
    .param p3, "zs"    # [J
    .param p4, "zsOff"    # I

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_f

    .line 102
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 103
    add-int/lit8 p4, p4, 0x2

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public static blacklist expand64To128Rev(J[JI)V
    .registers 10
    .param p0, "x"    # J
    .param p2, "z"    # [J
    .param p3, "zOff"    # I

    .line 110
    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 111
    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 112
    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 113
    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 114
    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 116
    const-wide v0, -0x5555555555555556L

    and-long v3, p0, v0

    aput-wide v3, p2, p3

    .line 117
    add-int/lit8 v3, p3, 0x1

    shl-long v4, p0, v2

    and-long/2addr v0, v4

    aput-wide v0, p2, v3

    .line 118
    return-void
.end method

.method public static blacklist expand8to16(I)I
    .registers 2
    .param p0, "x"    # I

    .line 57
    and-int/lit16 p0, p0, 0xff

    .line 58
    shl-int/lit8 v0, p0, 0x4

    or-int/2addr v0, p0

    and-int/lit16 p0, v0, 0xf0f

    .line 59
    shl-int/lit8 v0, p0, 0x2

    or-int/2addr v0, p0

    and-int/lit16 p0, v0, 0x3333

    .line 60
    shl-int/lit8 v0, p0, 0x1

    or-int/2addr v0, p0

    and-int/lit16 p0, v0, 0x5555

    .line 61
    return p0
.end method

.method public static blacklist shuffle(I)I
    .registers 3
    .param p0, "x"    # I

    .line 123
    const v0, 0xff00

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 124
    const v0, 0xf000f0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 125
    const v0, 0xc0c0c0c

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 126
    const v0, 0x22222222

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 127
    return p0
.end method

.method public static blacklist shuffle(J)J
    .registers 5
    .param p0, "x"    # J

    .line 133
    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 134
    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 135
    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 136
    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 137
    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 138
    return-wide p0
.end method

.method public static blacklist shuffle2(I)I
    .registers 3
    .param p0, "x"    # I

    .line 144
    const v0, 0xaa00aa

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 145
    const v0, 0xcccc

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 146
    const v0, 0xf000f0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 147
    const v0, 0xff00

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 148
    return p0
.end method

.method public static blacklist shuffle2(J)J
    .registers 5
    .param p0, "x"    # J

    .line 154
    const-wide v0, 0xff00ff00L

    const/16 v2, 0x18

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 155
    const-wide v0, 0xcc00cc00cc00ccL

    const/4 v2, 0x6

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 156
    const-wide v0, 0xf0f00000f0f0L

    const/16 v2, 0xc

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 157
    const-wide v0, 0xa0a0a0a0a0a0a0aL

    const/4 v2, 0x3

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 158
    return-wide p0
.end method

.method public static blacklist shuffle3(J)J
    .registers 5
    .param p0, "x"    # J

    .line 164
    const-wide v0, 0xaa00aa00aa00aaL

    const/4 v2, 0x7

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 165
    const-wide v0, 0xcccc0000ccccL

    const/16 v2, 0xe

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 166
    const-wide v0, 0xf0f0f0f0L

    const/16 v2, 0x1c

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 167
    return-wide p0
.end method

.method public static blacklist unshuffle(I)I
    .registers 3
    .param p0, "x"    # I

    .line 173
    const v0, 0x22222222

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 174
    const v0, 0xc0c0c0c

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 175
    const v0, 0xf000f0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 176
    const v0, 0xff00

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 177
    return p0
.end method

.method public static blacklist unshuffle(J)J
    .registers 5
    .param p0, "x"    # J

    .line 183
    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 184
    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 185
    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 186
    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 187
    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 188
    return-wide p0
.end method

.method public static blacklist unshuffle2(I)I
    .registers 3
    .param p0, "x"    # I

    .line 194
    const v0, 0xff00

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 195
    const v0, 0xf000f0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 196
    const v0, 0xcccc

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 197
    const v0, 0xaa00aa

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    .line 198
    return p0
.end method

.method public static blacklist unshuffle2(J)J
    .registers 5
    .param p0, "x"    # J

    .line 204
    const-wide v0, 0xa0a0a0a0a0a0a0aL

    const/4 v2, 0x3

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 205
    const-wide v0, 0xf0f00000f0f0L

    const/16 v2, 0xc

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 206
    const-wide v0, 0xcc00cc00cc00ccL

    const/4 v2, 0x6

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 207
    const-wide v0, 0xff00ff00L

    const/16 v2, 0x18

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    .line 208
    return-wide p0
.end method

.method public static blacklist unshuffle3(J)J
    .registers 4
    .param p0, "x"    # J

    .line 214
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Interleave;->shuffle3(J)J

    move-result-wide v0

    return-wide v0
.end method

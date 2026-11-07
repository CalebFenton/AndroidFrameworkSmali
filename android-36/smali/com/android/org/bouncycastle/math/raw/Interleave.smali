.class public Lcom/android/org/bouncycastle/math/raw/Interleave;
.super Ljava/lang/Object;
.source "Interleave.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist expand16to32(I)I
    .registers 2

    .line 0
    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    const v0, 0xff00ff

    and-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    const v0, 0xf0f0f0f

    and-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    const v0, 0x33333333

    and-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    const v0, 0x55555555

    and-int/2addr p0, v0

    return p0
.end method

.method public static blacklist expand32to64(I)J
    .registers 7

    const v0, 0xff00

    const/16 v1, 0x8

    .line 77
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xf000f0

    const/4 v1, 0x4

    .line 78
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xc0c0c0c

    const/4 v1, 0x2

    .line 79
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0x22222222

    const/4 v1, 0x1

    .line 80
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

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
    .registers 9

    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    .line 88
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    .line 89
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    .line 90
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    .line 91
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    .line 92
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v3, p0, v0

    .line 94
    aput-wide v3, p2, p3

    add-int/2addr p3, v2

    ushr-long/2addr p0, v2

    and-long/2addr p0, v0

    .line 95
    aput-wide p0, p2, p3

    return-void
.end method

.method public static blacklist expand64To128([JII[JI)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_f

    add-int v1, p1, v0

    .line 102
    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    add-int/lit8 p4, p4, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public static blacklist expand64To128Rev(J[JI)V
    .registers 9

    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    .line 110
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    .line 111
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    .line 112
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    .line 113
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    .line 114
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, -0x5555555555555556L

    and-long v3, p0, v0

    .line 116
    aput-wide v3, p2, p3

    add-int/2addr p3, v2

    shl-long/2addr p0, v2

    and-long/2addr p0, v0

    .line 117
    aput-wide p0, p2, p3

    return-void
.end method

.method public static blacklist expand8to16(I)I
    .registers 2

    .line 0
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xf0f

    shl-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    and-int/lit16 p0, p0, 0x3333

    shl-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    and-int/lit16 p0, p0, 0x5555

    return p0
.end method

.method public static blacklist shuffle(I)I
    .registers 3

    const v0, 0xff00

    const/16 v1, 0x8

    .line 123
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xf000f0

    const/4 v1, 0x4

    .line 124
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xc0c0c0c

    const/4 v1, 0x2

    .line 125
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0x22222222

    const/4 v1, 0x1

    .line 126
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    return p0
.end method

.method public static blacklist shuffle(J)J
    .registers 5

    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    .line 133
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    .line 134
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    .line 135
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    .line 136
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    .line 137
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist shuffle2(I)I
    .registers 3

    const v0, 0xaa00aa

    const/4 v1, 0x7

    .line 144
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xcccc

    const/16 v1, 0xe

    .line 145
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xf000f0

    const/4 v1, 0x4

    .line 146
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xff00

    const/16 v1, 0x8

    .line 147
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    return p0
.end method

.method public static blacklist shuffle2(J)J
    .registers 5

    const-wide v0, 0xff00ff00L

    const/16 v2, 0x18

    .line 154
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xcc00cc00cc00ccL

    const/4 v2, 0x6

    .line 155
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xf0f00000f0f0L

    const/16 v2, 0xc

    .line 156
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xa0a0a0a0a0a0a0aL

    const/4 v2, 0x3

    .line 157
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist shuffle3(J)J
    .registers 5

    const-wide v0, 0xaa00aa00aa00aaL

    const/4 v2, 0x7

    .line 164
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xcccc0000ccccL

    const/16 v2, 0xe

    .line 165
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xf0f0f0f0L

    const/16 v2, 0x1c

    .line 166
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist unshuffle(I)I
    .registers 3

    const v0, 0x22222222

    const/4 v1, 0x1

    .line 173
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xc0c0c0c

    const/4 v1, 0x2

    .line 174
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xf000f0

    const/4 v1, 0x4

    .line 175
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xff00

    const/16 v1, 0x8

    .line 176
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    return p0
.end method

.method public static blacklist unshuffle(J)J
    .registers 5

    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    .line 183
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    .line 184
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    .line 185
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    .line 186
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    .line 187
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist unshuffle2(I)I
    .registers 3

    const v0, 0xff00

    const/16 v1, 0x8

    .line 194
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xf000f0

    const/4 v1, 0x4

    .line 195
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xcccc

    const/16 v1, 0xe

    .line 196
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    const v0, 0xaa00aa

    const/4 v1, 0x7

    .line 197
    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result p0

    return p0
.end method

.method public static blacklist unshuffle2(J)J
    .registers 5

    const-wide v0, 0xa0a0a0a0a0a0a0aL

    const/4 v2, 0x3

    .line 204
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xf0f00000f0f0L

    const/16 v2, 0xc

    .line 205
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xcc00cc00cc00ccL

    const/4 v2, 0x6

    .line 206
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    const-wide v0, 0xff00ff00L

    const/16 v2, 0x18

    .line 207
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist unshuffle3(J)J
    .registers 2

    .line 214
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/raw/Interleave;->shuffle3(J)J

    move-result-wide p0

    return-wide p0
.end method

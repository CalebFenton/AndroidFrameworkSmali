.class public final Lcom/android/org/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/util/Arrays$Iterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static append([BB)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 782
    if-nez p0, :cond_0

    #@3
    .line 784
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [B

    #@6
    aput-byte p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 787
    :cond_0
    array-length v0, p0

    #@a
    .line 788
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [B

    #@e
    .line 789
    .local v1, "result":[B
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 790
    aput-byte p1, v1, v0

    #@13
    .line 791
    return-object v1
.end method

.method public static append([II)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 810
    if-nez p0, :cond_0

    #@3
    .line 812
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [I

    #@6
    aput p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 815
    :cond_0
    array-length v0, p0

    #@a
    .line 816
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [I

    #@e
    .line 817
    .local v1, "result":[I
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@11
    .line 818
    aput p1, v1, v0

    #@13
    .line 819
    return-object v1
.end method

.method public static append([SS)[S
    .locals 4
    .param p0, "a"    # [S
    .param p1, "b"    # S

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 796
    if-nez p0, :cond_0

    #@3
    .line 798
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [S

    #@6
    aput-short p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 801
    :cond_0
    array-length v0, p0

    #@a
    .line 802
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [S

    #@e
    .line 803
    .local v1, "result":[S
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@11
    .line 804
    aput-short p1, v1, v0

    #@13
    .line 805
    return-object v1
.end method

.method public static areEqual([B[B)Z
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 80
    if-ne p0, p1, :cond_0

    #@4
    .line 82
    return v4

    #@5
    .line 85
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 87
    :cond_1
    return v3

    #@a
    .line 90
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-eq v1, v2, :cond_3

    #@e
    .line 92
    return v3

    #@f
    .line 95
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@11
    if-eq v0, v1, :cond_5

    #@13
    .line 97
    aget-byte v1, p0, v0

    #@15
    aget-byte v2, p1, v0

    #@17
    if-eq v1, v2, :cond_4

    #@19
    .line 99
    return v3

    #@1a
    .line 95
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 103
    :cond_5
    return v4
.end method

.method public static areEqual([C[C)Z
    .locals 5
    .param p0, "a"    # [C
    .param p1, "b"    # [C

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 50
    if-ne p0, p1, :cond_0

    #@4
    .line 52
    return v4

    #@5
    .line 55
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 57
    :cond_1
    return v3

    #@a
    .line 60
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-eq v1, v2, :cond_3

    #@e
    .line 62
    return v3

    #@f
    .line 65
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@11
    if-eq v0, v1, :cond_5

    #@13
    .line 67
    aget-char v1, p0, v0

    #@15
    aget-char v2, p1, v0

    #@17
    if-eq v1, v2, :cond_4

    #@19
    .line 69
    return v3

    #@1a
    .line 65
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 73
    :cond_5
    return v4
.end method

.method public static areEqual([I[I)Z
    .locals 5
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 147
    if-ne p0, p1, :cond_0

    #@4
    .line 149
    return v4

    #@5
    .line 152
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 154
    :cond_1
    return v3

    #@a
    .line 157
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-eq v1, v2, :cond_3

    #@e
    .line 159
    return v3

    #@f
    .line 162
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@11
    if-eq v0, v1, :cond_5

    #@13
    .line 164
    aget v1, p0, v0

    #@15
    aget v2, p1, v0

    #@17
    if-eq v1, v2, :cond_4

    #@19
    .line 166
    return v3

    #@1a
    .line 162
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 170
    :cond_5
    return v4
.end method

.method public static areEqual([J[J)Z
    .locals 8
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 177
    if-ne p0, p1, :cond_0

    #@4
    .line 179
    return v7

    #@5
    .line 182
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 184
    :cond_1
    return v6

    #@a
    .line 187
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-eq v1, v2, :cond_3

    #@e
    .line 189
    return v6

    #@f
    .line 192
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@11
    if-eq v0, v1, :cond_5

    #@13
    .line 194
    aget-wide v2, p0, v0

    #@15
    aget-wide v4, p1, v0

    #@17
    cmp-long v1, v2, v4

    #@19
    if-eqz v1, :cond_4

    #@1b
    .line 196
    return v6

    #@1c
    .line 192
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 200
    :cond_5
    return v7
.end method

.method public static areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 205
    if-ne p0, p1, :cond_0

    #@4
    .line 207
    return v6

    #@5
    .line 209
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 211
    :cond_1
    return v5

    #@a
    .line 213
    :cond_2
    array-length v3, p0

    #@b
    array-length v4, p1

    #@c
    if-eq v3, v4, :cond_3

    #@e
    .line 215
    return v5

    #@f
    .line 217
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    #@11
    if-eq v0, v3, :cond_6

    #@13
    .line 219
    aget-object v1, p0, v0

    #@15
    .local v1, "objA":Ljava/lang/Object;
    aget-object v2, p1, v0

    #@17
    .line 220
    .local v2, "objB":Ljava/lang/Object;
    if-nez v1, :cond_4

    #@19
    .line 222
    if-eqz v2, :cond_5

    #@1b
    .line 224
    return v5

    #@1c
    .line 227
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_5

    #@22
    .line 229
    return v5

    #@23
    .line 217
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 232
    .end local v1    # "objA":Ljava/lang/Object;
    .end local v2    # "objB":Ljava/lang/Object;
    :cond_6
    return v6
.end method

.method public static areEqual([Z[Z)Z
    .locals 5
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 20
    if-ne p0, p1, :cond_0

    #@4
    .line 22
    return v4

    #@5
    .line 25
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 27
    :cond_1
    return v3

    #@a
    .line 30
    :cond_2
    array-length v1, p0

    #@b
    array-length v2, p1

    #@c
    if-eq v1, v2, :cond_3

    #@e
    .line 32
    return v3

    #@f
    .line 35
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@11
    if-eq v0, v1, :cond_5

    #@13
    .line 37
    aget-boolean v1, p0, v0

    #@15
    aget-boolean v2, p1, v0

    #@17
    if-eq v1, v2, :cond_4

    #@19
    .line 39
    return v3

    #@1a
    .line 35
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 43
    :cond_5
    return v4
.end method

.method public static clone([B)[B
    .locals 3
    .param p0, "data"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 480
    if-nez p0, :cond_0

    #@4
    .line 482
    return-object v1

    #@5
    .line 484
    :cond_0
    array-length v1, p0

    #@6
    new-array v0, v1, [B

    #@8
    .line 486
    .local v0, "copy":[B
    array-length v1, p0

    #@9
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c
    .line 488
    return-object v0
.end method

.method public static clone([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "existing"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 493
    if-nez p0, :cond_0

    #@4
    .line 495
    return-object v0

    #@5
    .line 497
    :cond_0
    if-eqz p1, :cond_1

    #@7
    array-length v0, p1

    #@8
    array-length v1, p0

    #@9
    if-eq v0, v1, :cond_2

    #@b
    .line 499
    :cond_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 501
    :cond_2
    array-length v0, p1

    #@11
    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 502
    return-object p1
.end method

.method public static clone([I)[I
    .locals 3
    .param p0, "data"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 541
    if-nez p0, :cond_0

    #@4
    .line 543
    return-object v1

    #@5
    .line 545
    :cond_0
    array-length v1, p0

    #@6
    new-array v0, v1, [I

    #@8
    .line 547
    .local v0, "copy":[I
    array-length v1, p0

    #@9
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@c
    .line 549
    return-object v0
.end method

.method public static clone([J)[J
    .locals 3
    .param p0, "data"    # [J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 554
    if-nez p0, :cond_0

    #@4
    .line 556
    return-object v1

    #@5
    .line 558
    :cond_0
    array-length v1, p0

    #@6
    new-array v0, v1, [J

    #@8
    .line 560
    .local v0, "copy":[J
    array-length v1, p0

    #@9
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@c
    .line 562
    return-object v0
.end method

.method public static clone([J[J)[J
    .locals 3
    .param p0, "data"    # [J
    .param p1, "existing"    # [J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 567
    if-nez p0, :cond_0

    #@4
    .line 569
    return-object v0

    #@5
    .line 571
    :cond_0
    if-eqz p1, :cond_1

    #@7
    array-length v0, p1

    #@8
    array-length v1, p0

    #@9
    if-eq v0, v1, :cond_2

    #@b
    .line 573
    :cond_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([J)[J

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 575
    :cond_2
    array-length v0, p1

    #@11
    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@14
    .line 576
    return-object p1
.end method

.method public static clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "data"    # [Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 594
    if-nez p0, :cond_0

    #@4
    .line 596
    return-object v1

    #@5
    .line 598
    :cond_0
    array-length v1, p0

    #@6
    new-array v0, v1, [Ljava/math/BigInteger;

    #@8
    .line 600
    .local v0, "copy":[Ljava/math/BigInteger;
    array-length v1, p0

    #@9
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 602
    return-object v0
.end method

.method public static clone([S)[S
    .locals 3
    .param p0, "data"    # [S

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 581
    if-nez p0, :cond_0

    #@4
    .line 583
    return-object v1

    #@5
    .line 585
    :cond_0
    array-length v1, p0

    #@6
    new-array v0, v1, [S

    #@8
    .line 587
    .local v0, "copy":[S
    array-length v1, p0

    #@9
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@c
    .line 589
    return-object v0
.end method

.method public static clone([[B)[[B
    .locals 3
    .param p0, "data"    # [[B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 507
    if-nez p0, :cond_0

    #@3
    .line 509
    return-object v2

    #@4
    .line 512
    :cond_0
    array-length v2, p0

    #@5
    new-array v0, v2, [[B

    #@7
    .line 514
    .local v0, "copy":[[B
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 516
    aget-object v2, p0, v1

    #@d
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@10
    move-result-object v2

    #@11
    aput-object v2, v0, v1

    #@13
    .line 514
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 519
    :cond_1
    return-object v0
.end method

.method public static clone([[[B)[[[B
    .locals 3
    .param p0, "data"    # [[[B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 524
    if-nez p0, :cond_0

    #@3
    .line 526
    return-object v2

    #@4
    .line 529
    :cond_0
    array-length v2, p0

    #@5
    new-array v0, v2, [[[B

    #@7
    .line 531
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 533
    aget-object v2, p0, v1

    #@d
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([[B)[[B

    #@10
    move-result-object v2

    #@11
    aput-object v2, v0, v1

    #@13
    .line 531
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 536
    :cond_1
    return-object v0
.end method

.method public static concatenate([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 824
    if-eqz p0, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    .line 826
    array-length v1, p0

    #@6
    array-length v2, p1

    #@7
    add-int/2addr v1, v2

    #@8
    new-array v0, v1, [B

    #@a
    .line 828
    .local v0, "rv":[B
    array-length v1, p0

    #@b
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 829
    array-length v1, p0

    #@f
    array-length v2, p1

    #@10
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@13
    .line 831
    return-object v0

    #@14
    .line 833
    .end local v0    # "rv":[B
    :cond_0
    if-eqz p1, :cond_1

    #@16
    .line 835
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@19
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 839
    :cond_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public static concatenate([B[B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 845
    if-eqz p0, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    if-eqz p2, :cond_0

    #@7
    .line 847
    array-length v1, p0

    #@8
    array-length v2, p1

    #@9
    add-int/2addr v1, v2

    #@a
    array-length v2, p2

    #@b
    add-int/2addr v1, v2

    #@c
    new-array v0, v1, [B

    #@e
    .line 849
    .local v0, "rv":[B
    array-length v1, p0

    #@f
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 850
    array-length v1, p0

    #@13
    array-length v2, p1

    #@14
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@17
    .line 851
    array-length v1, p0

    #@18
    array-length v2, p1

    #@19
    add-int/2addr v1, v2

    #@1a
    array-length v2, p2

    #@1b
    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1e
    .line 853
    return-object v0

    #@1f
    .line 855
    .end local v0    # "rv":[B
    :cond_0
    if-nez p1, :cond_1

    #@21
    .line 857
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 861
    :cond_1
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method public static concatenate([B[B[B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B
    .param p3, "d"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 867
    if-eqz p0, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    if-eqz p2, :cond_0

    #@7
    if-eqz p3, :cond_0

    #@9
    .line 869
    array-length v1, p0

    #@a
    array-length v2, p1

    #@b
    add-int/2addr v1, v2

    #@c
    array-length v2, p2

    #@d
    add-int/2addr v1, v2

    #@e
    array-length v2, p3

    #@f
    add-int/2addr v1, v2

    #@10
    new-array v0, v1, [B

    #@12
    .line 871
    .local v0, "rv":[B
    array-length v1, p0

    #@13
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@16
    .line 872
    array-length v1, p0

    #@17
    array-length v2, p1

    #@18
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b
    .line 873
    array-length v1, p0

    #@1c
    array-length v2, p1

    #@1d
    add-int/2addr v1, v2

    #@1e
    array-length v2, p2

    #@1f
    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@22
    .line 874
    array-length v1, p0

    #@23
    array-length v2, p1

    #@24
    add-int/2addr v1, v2

    #@25
    array-length v2, p2

    #@26
    add-int/2addr v1, v2

    #@27
    array-length v2, p3

    #@28
    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2b
    .line 876
    return-object v0

    #@2c
    .line 878
    .end local v0    # "rv":[B
    :cond_0
    if-nez p3, :cond_1

    #@2e
    .line 880
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    #@31
    move-result-object v1

    #@32
    return-object v1

    #@33
    .line 882
    :cond_1
    if-nez p2, :cond_2

    #@35
    .line 884
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    #@38
    move-result-object v1

    #@39
    return-object v1

    #@3a
    .line 886
    :cond_2
    if-nez p1, :cond_3

    #@3c
    .line 888
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    #@3f
    move-result-object v1

    #@40
    return-object v1

    #@41
    .line 892
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    #@44
    move-result-object v1

    #@45
    return-object v1
.end method

.method public static concatenate([I[I)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 898
    if-nez p0, :cond_0

    #@3
    .line 900
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 902
    :cond_0
    if-nez p1, :cond_1

    #@a
    .line 904
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 907
    :cond_1
    array-length v1, p0

    #@10
    array-length v2, p1

    #@11
    add-int/2addr v1, v2

    #@12
    new-array v0, v1, [I

    #@14
    .line 908
    .local v0, "c":[I
    array-length v1, p0

    #@15
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@18
    .line 909
    array-length v1, p0

    #@19
    array-length v2, p1

    #@1a
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@1d
    .line 910
    return-object v0
.end method

.method public static constantTimeAreEqual([B[B)Z
    .locals 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 118
    if-ne p0, p1, :cond_0

    #@4
    .line 120
    return v2

    #@5
    .line 123
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 125
    :cond_1
    return v3

    #@a
    .line 128
    :cond_2
    array-length v4, p0

    #@b
    array-length v5, p1

    #@c
    if-eq v4, v5, :cond_3

    #@e
    .line 130
    return v3

    #@f
    .line 133
    :cond_3
    const/4 v1, 0x0

    #@10
    .line 135
    .local v1, "nonEqual":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    array-length v4, p0

    #@12
    if-eq v0, v4, :cond_4

    #@14
    .line 137
    aget-byte v4, p0, v0

    #@16
    aget-byte v5, p1, v0

    #@18
    xor-int/2addr v4, v5

    #@19
    or-int/2addr v1, v4

    #@1a
    .line 135
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 140
    :cond_4
    if-nez v1, :cond_5

    #@1f
    :goto_1
    return v2

    #@20
    :cond_5
    move v2, v3

    #@21
    goto :goto_1
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "a"    # [I
    .param p1, "n"    # I

    #@0
    .prologue
    .line 249
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 251
    aget v1, p0, v0

    #@6
    if-ne v1, p1, :cond_0

    #@8
    .line 253
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 256
    :cond_1
    const/4 v1, 0x0

    #@e
    return v1
.end method

.method public static contains([SS)Z
    .locals 2
    .param p0, "a"    # [S
    .param p1, "n"    # S

    #@0
    .prologue
    .line 237
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 239
    aget-short v1, p0, v0

    #@6
    if-ne v1, p1, :cond_0

    #@8
    .line 241
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 244
    :cond_1
    const/4 v1, 0x0

    #@e
    return v1
.end method

.method public static copyOf([BI)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 607
    new-array v0, p1, [B

    #@3
    .line 609
    .local v0, "tmp":[B
    array-length v1, p0

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 611
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@9
    .line 618
    :goto_0
    return-object v0

    #@a
    .line 615
    :cond_0
    array-length v1, p0

    #@b
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    goto :goto_0
.end method

.method public static copyOf([CI)[C
    .locals 3
    .param p0, "data"    # [C
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 623
    new-array v0, p1, [C

    #@3
    .line 625
    .local v0, "tmp":[C
    array-length v1, p0

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 627
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@9
    .line 634
    :goto_0
    return-object v0

    #@a
    .line 631
    :cond_0
    array-length v1, p0

    #@b
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@e
    goto :goto_0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "data"    # [I
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 639
    new-array v0, p1, [I

    #@3
    .line 641
    .local v0, "tmp":[I
    array-length v1, p0

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 643
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@9
    .line 650
    :goto_0
    return-object v0

    #@a
    .line 647
    :cond_0
    array-length v1, p0

    #@b
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@e
    goto :goto_0
.end method

.method public static copyOf([JI)[J
    .locals 3
    .param p0, "data"    # [J
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 655
    new-array v0, p1, [J

    #@3
    .line 657
    .local v0, "tmp":[J
    array-length v1, p0

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 659
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@9
    .line 666
    :goto_0
    return-object v0

    #@a
    .line 663
    :cond_0
    array-length v1, p0

    #@b
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@e
    goto :goto_0
.end method

.method public static copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 671
    new-array v0, p1, [Ljava/math/BigInteger;

    #@3
    .line 673
    .local v0, "tmp":[Ljava/math/BigInteger;
    array-length v1, p0

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 675
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@9
    .line 682
    :goto_0
    return-object v0

    #@a
    .line 679
    :cond_0
    array-length v1, p0

    #@b
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e
    goto :goto_0
.end method

.method public static copyOfRange([BII)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 698
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    #@4
    move-result v0

    #@5
    .line 700
    .local v0, "newLength":I
    new-array v1, v0, [B

    #@7
    .line 702
    .local v1, "tmp":[B
    array-length v2, p0

    #@8
    sub-int/2addr v2, p1

    #@9
    if-ge v2, v0, :cond_0

    #@b
    .line 704
    array-length v2, p0

    #@c
    sub-int/2addr v2, p1

    #@d
    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10
    .line 711
    :goto_0
    return-object v1

    #@11
    .line 708
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    goto :goto_0
.end method

.method public static copyOfRange([III)[I
    .locals 4
    .param p0, "data"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 716
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    #@4
    move-result v0

    #@5
    .line 718
    .local v0, "newLength":I
    new-array v1, v0, [I

    #@7
    .line 720
    .local v1, "tmp":[I
    array-length v2, p0

    #@8
    sub-int/2addr v2, p1

    #@9
    if-ge v2, v0, :cond_0

    #@b
    .line 722
    array-length v2, p0

    #@c
    sub-int/2addr v2, p1

    #@d
    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@10
    .line 729
    :goto_0
    return-object v1

    #@11
    .line 726
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@14
    goto :goto_0
.end method

.method public static copyOfRange([JII)[J
    .locals 4
    .param p0, "data"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 734
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    #@4
    move-result v0

    #@5
    .line 736
    .local v0, "newLength":I
    new-array v1, v0, [J

    #@7
    .line 738
    .local v1, "tmp":[J
    array-length v2, p0

    #@8
    sub-int/2addr v2, p1

    #@9
    if-ge v2, v0, :cond_0

    #@b
    .line 740
    array-length v2, p0

    #@c
    sub-int/2addr v2, p1

    #@d
    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@10
    .line 747
    :goto_0
    return-object v1

    #@11
    .line 744
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@14
    goto :goto_0
.end method

.method public static copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 4
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 752
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    #@4
    move-result v0

    #@5
    .line 754
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/math/BigInteger;

    #@7
    .line 756
    .local v1, "tmp":[Ljava/math/BigInteger;
    array-length v2, p0

    #@8
    sub-int/2addr v2, p1

    #@9
    if-ge v2, v0, :cond_0

    #@b
    .line 758
    array-length v2, p0

    #@c
    sub-int/2addr v2, p1

    #@d
    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    .line 765
    :goto_0
    return-object v1

    #@11
    .line 762
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    goto :goto_0
.end method

.method public static fill([BB)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    #@0
    .prologue
    .line 263
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 265
    aput-byte p1, p0, v0

    #@6
    .line 263
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 261
    :cond_0
    return-void
.end method

.method public static fill([CC)V
    .locals 2
    .param p0, "array"    # [C
    .param p1, "value"    # C

    #@0
    .prologue
    .line 273
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 275
    aput-char p1, p0, v0

    #@6
    .line 273
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 271
    :cond_0
    return-void
.end method

.method public static fill([II)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    #@0
    .prologue
    .line 303
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 305
    aput p1, p0, v0

    #@6
    .line 303
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 301
    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J

    #@0
    .prologue
    .line 283
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 285
    aput-wide p1, p0, v0

    #@6
    .line 283
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 281
    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2
    .param p0, "array"    # [S
    .param p1, "value"    # S

    #@0
    .prologue
    .line 293
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 295
    aput-short p1, p0, v0

    #@6
    .line 293
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 291
    :cond_0
    return-void
.end method

.method private static getLength(II)I
    .locals 4
    .param p0, "from"    # I
    .param p1, "to"    # I

    #@0
    .prologue
    .line 770
    sub-int v0, p1, p0

    #@2
    .line 771
    .local v0, "newLength":I
    if-gez v0, :cond_0

    #@4
    .line 773
    new-instance v1, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@9
    .line 774
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, " > "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@13
    .line 775
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 777
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return v0
.end method

.method public static hashCode([B)I
    .locals 3
    .param p0, "data"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 311
    if-nez p0, :cond_0

    #@3
    .line 313
    return v2

    #@4
    .line 316
    :cond_0
    array-length v1, p0

    #@5
    .line 317
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    #@7
    .line 319
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@9
    if-ltz v1, :cond_1

    #@b
    .line 321
    mul-int/lit16 v0, v0, 0x101

    #@d
    .line 322
    aget-byte v2, p0, v1

    #@f
    xor-int/2addr v0, v2

    #@10
    goto :goto_0

    #@11
    .line 325
    :cond_1
    return v0
.end method

.method public static hashCode([BII)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 330
    if-nez p0, :cond_0

    #@3
    .line 332
    return v2

    #@4
    .line 335
    :cond_0
    move v1, p2

    #@5
    .line 336
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    #@7
    .line 338
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@9
    if-ltz v1, :cond_1

    #@b
    .line 340
    mul-int/lit16 v0, v0, 0x101

    #@d
    .line 341
    add-int v2, p1, v1

    #@f
    aget-byte v2, p0, v2

    #@11
    xor-int/2addr v0, v2

    #@12
    goto :goto_0

    #@13
    .line 344
    :cond_1
    return v0
.end method

.method public static hashCode([C)I
    .locals 3
    .param p0, "data"    # [C

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 349
    if-nez p0, :cond_0

    #@3
    .line 351
    return v2

    #@4
    .line 354
    :cond_0
    array-length v1, p0

    #@5
    .line 355
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    #@7
    .line 357
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@9
    if-ltz v1, :cond_1

    #@b
    .line 359
    mul-int/lit16 v0, v0, 0x101

    #@d
    .line 360
    aget-char v2, p0, v1

    #@f
    xor-int/2addr v0, v2

    #@10
    goto :goto_0

    #@11
    .line 363
    :cond_1
    return v0
.end method

.method public static hashCode([I)I
    .locals 3
    .param p0, "data"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 380
    if-nez p0, :cond_0

    #@3
    .line 382
    return v2

    #@4
    .line 385
    :cond_0
    array-length v1, p0

    #@5
    .line 386
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    #@7
    .line 388
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@9
    if-ltz v1, :cond_1

    #@b
    .line 390
    mul-int/lit16 v0, v0, 0x101

    #@d
    .line 391
    aget v2, p0, v1

    #@f
    xor-int/2addr v0, v2

    #@10
    goto :goto_0

    #@11
    .line 394
    :cond_1
    return v0
.end method

.method public static hashCode([III)I
    .locals 3
    .param p0, "data"    # [I
    .param p1, "off"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 399
    if-nez p0, :cond_0

    #@3
    .line 401
    return v2

    #@4
    .line 404
    :cond_0
    move v1, p2

    #@5
    .line 405
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    #@7
    .line 407
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@9
    if-ltz v1, :cond_1

    #@b
    .line 409
    mul-int/lit16 v0, v0, 0x101

    #@d
    .line 410
    add-int v2, p1, v1

    #@f
    aget v2, p0, v2

    #@11
    xor-int/2addr v0, v2

    #@12
    goto :goto_0

    #@13
    .line 413
    :cond_1
    return v0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 3
    .param p0, "data"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 461
    if-nez p0, :cond_0

    #@3
    .line 463
    return v2

    #@4
    .line 466
    :cond_0
    array-length v1, p0

    #@5
    .line 467
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    #@7
    .line 469
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@9
    if-ltz v1, :cond_1

    #@b
    .line 471
    mul-int/lit16 v0, v0, 0x101

    #@d
    .line 472
    aget-object v2, p0, v1

    #@f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@12
    move-result v2

    #@13
    xor-int/2addr v0, v2

    #@14
    goto :goto_0

    #@15
    .line 475
    :cond_1
    return v0
.end method

.method public static hashCode([S)I
    .locals 3
    .param p0, "data"    # [S

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 442
    if-nez p0, :cond_0

    #@3
    .line 444
    return v2

    #@4
    .line 447
    :cond_0
    array-length v1, p0

    #@5
    .line 448
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    #@7
    .line 450
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@9
    if-ltz v1, :cond_1

    #@b
    .line 452
    mul-int/lit16 v0, v0, 0x101

    #@d
    .line 453
    aget-short v2, p0, v1

    #@f
    and-int/lit16 v2, v2, 0xff

    #@11
    xor-int/2addr v0, v2

    #@12
    goto :goto_0

    #@13
    .line 456
    :cond_1
    return v0
.end method

.method public static hashCode([[I)I
    .locals 4
    .param p0, "ints"    # [[I

    #@0
    .prologue
    .line 368
    const/4 v0, 0x0

    #@1
    .line 370
    .local v0, "hc":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 372
    mul-int/lit16 v2, v0, 0x101

    #@7
    aget-object v3, p0, v1

    #@9
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    #@c
    move-result v3

    #@d
    add-int v0, v2, v3

    #@f
    .line 370
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 375
    :cond_0
    return v0
.end method

.method public static hashCode([[S)I
    .locals 4
    .param p0, "shorts"    # [[S

    #@0
    .prologue
    .line 430
    const/4 v0, 0x0

    #@1
    .line 432
    .local v0, "hc":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 434
    mul-int/lit16 v2, v0, 0x101

    #@7
    aget-object v3, p0, v1

    #@9
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([S)I

    #@c
    move-result v3

    #@d
    add-int v0, v2, v3

    #@f
    .line 432
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 437
    :cond_0
    return v0
.end method

.method public static hashCode([[[S)I
    .locals 4
    .param p0, "shorts"    # [[[S

    #@0
    .prologue
    .line 418
    const/4 v0, 0x0

    #@1
    .line 420
    .local v0, "hc":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 422
    mul-int/lit16 v2, v0, 0x101

    #@7
    aget-object v3, p0, v1

    #@9
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([[S)I

    #@c
    move-result v3

    #@d
    add-int v0, v2, v3

    #@f
    .line 420
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 425
    :cond_0
    return v0
.end method

.method public static prepend([BB)[B
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 915
    if-nez p0, :cond_0

    #@4
    .line 917
    new-array v2, v4, [B

    #@6
    aput-byte p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 920
    :cond_0
    array-length v0, p0

    #@a
    .line 921
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [B

    #@e
    .line 922
    .local v1, "result":[B
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 923
    aput-byte p1, v1, v3

    #@13
    .line 924
    return-object v1
.end method

.method public static prepend([II)[I
    .locals 5
    .param p0, "a"    # [I
    .param p1, "b"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 943
    if-nez p0, :cond_0

    #@4
    .line 945
    new-array v2, v4, [I

    #@6
    aput p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 948
    :cond_0
    array-length v0, p0

    #@a
    .line 949
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [I

    #@e
    .line 950
    .local v1, "result":[I
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@11
    .line 951
    aput p1, v1, v3

    #@13
    .line 952
    return-object v1
.end method

.method public static prepend([SS)[S
    .locals 5
    .param p0, "a"    # [S
    .param p1, "b"    # S

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 929
    if-nez p0, :cond_0

    #@4
    .line 931
    new-array v2, v4, [S

    #@6
    aput-short p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 934
    :cond_0
    array-length v0, p0

    #@a
    .line 935
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [S

    #@e
    .line 936
    .local v1, "result":[S
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@11
    .line 937
    aput-short p1, v1, v3

    #@13
    .line 938
    return-object v1
.end method

.method public static reverse([B)[B
    .locals 5
    .param p0, "a"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 957
    if-nez p0, :cond_0

    #@3
    .line 959
    return-object v4

    #@4
    .line 962
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "p1":I
    array-length v2, p0

    #@6
    .line 963
    .local v2, "p2":I
    new-array v3, v2, [B

    #@8
    .local v3, "result":[B
    move v1, v0

    #@9
    .line 965
    .end local v0    # "p1":I
    .local v1, "p1":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    #@b
    if-ltz v2, :cond_1

    #@d
    .line 967
    add-int/lit8 v0, v1, 0x1

    #@f
    .end local v1    # "p1":I
    .restart local v0    # "p1":I
    aget-byte v4, p0, v1

    #@11
    aput-byte v4, v3, v2

    #@13
    move v1, v0

    #@14
    .end local v0    # "p1":I
    .restart local v1    # "p1":I
    goto :goto_0

    #@15
    .line 970
    :cond_1
    return-object v3
.end method

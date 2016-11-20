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
    .line 839
    if-nez p0, :cond_0

    #@3
    .line 841
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [B

    #@6
    aput-byte p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 844
    :cond_0
    array-length v0, p0

    #@a
    .line 845
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [B

    #@e
    .line 846
    .local v1, "result":[B
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 847
    aput-byte p1, v1, v0

    #@13
    .line 848
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
    .line 867
    if-nez p0, :cond_0

    #@3
    .line 869
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [I

    #@6
    aput p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 872
    :cond_0
    array-length v0, p0

    #@a
    .line 873
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [I

    #@e
    .line 874
    .local v1, "result":[I
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@11
    .line 875
    aput p1, v1, v0

    #@13
    .line 876
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
    .line 853
    if-nez p0, :cond_0

    #@3
    .line 855
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [S

    #@6
    aput-short p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 858
    :cond_0
    array-length v0, p0

    #@a
    .line 859
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [S

    #@e
    .line 860
    .local v1, "result":[S
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@11
    .line 861
    aput-short p1, v1, v0

    #@13
    .line 862
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
    .line 524
    if-nez p0, :cond_0

    #@4
    .line 526
    return-object v1

    #@5
    .line 528
    :cond_0
    array-length v1, p0

    #@6
    new-array v0, v1, [B

    #@8
    .line 530
    .local v0, "copy":[B
    array-length v1, p0

    #@9
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c
    .line 532
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
    .line 550
    if-nez p0, :cond_0

    #@4
    .line 552
    return-object v0

    #@5
    .line 554
    :cond_0
    if-eqz p1, :cond_1

    #@7
    array-length v0, p1

    #@8
    array-length v1, p0

    #@9
    if-eq v0, v1, :cond_2

    #@b
    .line 556
    :cond_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 558
    :cond_2
    array-length v0, p1

    #@11
    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 559
    return-object p1
.end method

.method public static clone([C)[C
    .locals 3
    .param p0, "data"    # [C

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 537
    if-nez p0, :cond_0

    #@4
    .line 539
    return-object v1

    #@5
    .line 541
    :cond_0
    array-length v1, p0

    #@6
    new-array v0, v1, [C

    #@8
    .line 543
    .local v0, "copy":[C
    array-length v1, p0

    #@9
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@c
    .line 545
    return-object v0
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
    .line 598
    if-nez p0, :cond_0

    #@4
    .line 600
    return-object v1

    #@5
    .line 602
    :cond_0
    array-length v1, p0

    #@6
    new-array v0, v1, [I

    #@8
    .line 604
    .local v0, "copy":[I
    array-length v1, p0

    #@9
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@c
    .line 606
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
    .line 611
    if-nez p0, :cond_0

    #@4
    .line 613
    return-object v1

    #@5
    .line 615
    :cond_0
    array-length v1, p0

    #@6
    new-array v0, v1, [J

    #@8
    .line 617
    .local v0, "copy":[J
    array-length v1, p0

    #@9
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@c
    .line 619
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
    .line 624
    if-nez p0, :cond_0

    #@4
    .line 626
    return-object v0

    #@5
    .line 628
    :cond_0
    if-eqz p1, :cond_1

    #@7
    array-length v0, p1

    #@8
    array-length v1, p0

    #@9
    if-eq v0, v1, :cond_2

    #@b
    .line 630
    :cond_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([J)[J

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 632
    :cond_2
    array-length v0, p1

    #@11
    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@14
    .line 633
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
    .line 651
    if-nez p0, :cond_0

    #@4
    .line 653
    return-object v1

    #@5
    .line 655
    :cond_0
    array-length v1, p0

    #@6
    new-array v0, v1, [Ljava/math/BigInteger;

    #@8
    .line 657
    .local v0, "copy":[Ljava/math/BigInteger;
    array-length v1, p0

    #@9
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 659
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
    .line 638
    if-nez p0, :cond_0

    #@4
    .line 640
    return-object v1

    #@5
    .line 642
    :cond_0
    array-length v1, p0

    #@6
    new-array v0, v1, [S

    #@8
    .line 644
    .local v0, "copy":[S
    array-length v1, p0

    #@9
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@c
    .line 646
    return-object v0
.end method

.method public static clone([[B)[[B
    .locals 3
    .param p0, "data"    # [[B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 564
    if-nez p0, :cond_0

    #@3
    .line 566
    return-object v2

    #@4
    .line 569
    :cond_0
    array-length v2, p0

    #@5
    new-array v0, v2, [[B

    #@7
    .line 571
    .local v0, "copy":[[B
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 573
    aget-object v2, p0, v1

    #@d
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@10
    move-result-object v2

    #@11
    aput-object v2, v0, v1

    #@13
    .line 571
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 576
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
    .line 581
    if-nez p0, :cond_0

    #@3
    .line 583
    return-object v2

    #@4
    .line 586
    :cond_0
    array-length v2, p0

    #@5
    new-array v0, v2, [[[B

    #@7
    .line 588
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 590
    aget-object v2, p0, v1

    #@d
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([[B)[[B

    #@10
    move-result-object v2

    #@11
    aput-object v2, v0, v1

    #@13
    .line 588
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 593
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
    .line 881
    if-eqz p0, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    .line 883
    array-length v1, p0

    #@6
    array-length v2, p1

    #@7
    add-int/2addr v1, v2

    #@8
    new-array v0, v1, [B

    #@a
    .line 885
    .local v0, "rv":[B
    array-length v1, p0

    #@b
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 886
    array-length v1, p0

    #@f
    array-length v2, p1

    #@10
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@13
    .line 888
    return-object v0

    #@14
    .line 890
    .end local v0    # "rv":[B
    :cond_0
    if-eqz p1, :cond_1

    #@16
    .line 892
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@19
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 896
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
    .line 902
    if-eqz p0, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    if-eqz p2, :cond_0

    #@7
    .line 904
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
    .line 906
    .local v0, "rv":[B
    array-length v1, p0

    #@f
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 907
    array-length v1, p0

    #@13
    array-length v2, p1

    #@14
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@17
    .line 908
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
    .line 910
    return-object v0

    #@1f
    .line 912
    .end local v0    # "rv":[B
    :cond_0
    if-nez p0, :cond_1

    #@21
    .line 914
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 916
    :cond_1
    if-nez p1, :cond_2

    #@28
    .line 918
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    #@2b
    move-result-object v1

    #@2c
    return-object v1

    #@2d
    .line 922
    :cond_2
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    #@30
    move-result-object v1

    #@31
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
    .line 928
    if-eqz p0, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    if-eqz p2, :cond_0

    #@7
    if-eqz p3, :cond_0

    #@9
    .line 930
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
    .line 932
    .local v0, "rv":[B
    array-length v1, p0

    #@13
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@16
    .line 933
    array-length v1, p0

    #@17
    array-length v2, p1

    #@18
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b
    .line 934
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
    .line 935
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
    .line 937
    return-object v0

    #@2c
    .line 939
    .end local v0    # "rv":[B
    :cond_0
    if-nez p3, :cond_1

    #@2e
    .line 941
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    #@31
    move-result-object v1

    #@32
    return-object v1

    #@33
    .line 943
    :cond_1
    if-nez p2, :cond_2

    #@35
    .line 945
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    #@38
    move-result-object v1

    #@39
    return-object v1

    #@3a
    .line 947
    :cond_2
    if-nez p1, :cond_3

    #@3c
    .line 949
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    #@3f
    move-result-object v1

    #@40
    return-object v1

    #@41
    .line 953
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
    .line 959
    if-nez p0, :cond_0

    #@3
    .line 961
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 963
    :cond_0
    if-nez p1, :cond_1

    #@a
    .line 965
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 968
    :cond_1
    array-length v1, p0

    #@10
    array-length v2, p1

    #@11
    add-int/2addr v1, v2

    #@12
    new-array v0, v1, [I

    #@14
    .line 969
    .local v0, "c":[I
    array-length v1, p0

    #@15
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@18
    .line 970
    array-length v1, p0

    #@19
    array-length v2, p1

    #@1a
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@1d
    .line 971
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
    .line 664
    new-array v0, p1, [B

    #@3
    .line 666
    .local v0, "tmp":[B
    array-length v1, p0

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 668
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@9
    .line 675
    :goto_0
    return-object v0

    #@a
    .line 672
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
    .line 680
    new-array v0, p1, [C

    #@3
    .line 682
    .local v0, "tmp":[C
    array-length v1, p0

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 684
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@9
    .line 691
    :goto_0
    return-object v0

    #@a
    .line 688
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
    .line 696
    new-array v0, p1, [I

    #@3
    .line 698
    .local v0, "tmp":[I
    array-length v1, p0

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 700
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@9
    .line 707
    :goto_0
    return-object v0

    #@a
    .line 704
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
    .line 712
    new-array v0, p1, [J

    #@3
    .line 714
    .local v0, "tmp":[J
    array-length v1, p0

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 716
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@9
    .line 723
    :goto_0
    return-object v0

    #@a
    .line 720
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
    .line 728
    new-array v0, p1, [Ljava/math/BigInteger;

    #@3
    .line 730
    .local v0, "tmp":[Ljava/math/BigInteger;
    array-length v1, p0

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 732
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@9
    .line 739
    :goto_0
    return-object v0

    #@a
    .line 736
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
    .line 755
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    #@4
    move-result v0

    #@5
    .line 757
    .local v0, "newLength":I
    new-array v1, v0, [B

    #@7
    .line 759
    .local v1, "tmp":[B
    array-length v2, p0

    #@8
    sub-int/2addr v2, p1

    #@9
    if-ge v2, v0, :cond_0

    #@b
    .line 761
    array-length v2, p0

    #@c
    sub-int/2addr v2, p1

    #@d
    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10
    .line 768
    :goto_0
    return-object v1

    #@11
    .line 765
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
    .line 773
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    #@4
    move-result v0

    #@5
    .line 775
    .local v0, "newLength":I
    new-array v1, v0, [I

    #@7
    .line 777
    .local v1, "tmp":[I
    array-length v2, p0

    #@8
    sub-int/2addr v2, p1

    #@9
    if-ge v2, v0, :cond_0

    #@b
    .line 779
    array-length v2, p0

    #@c
    sub-int/2addr v2, p1

    #@d
    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@10
    .line 786
    :goto_0
    return-object v1

    #@11
    .line 783
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
    .line 791
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    #@4
    move-result v0

    #@5
    .line 793
    .local v0, "newLength":I
    new-array v1, v0, [J

    #@7
    .line 795
    .local v1, "tmp":[J
    array-length v2, p0

    #@8
    sub-int/2addr v2, p1

    #@9
    if-ge v2, v0, :cond_0

    #@b
    .line 797
    array-length v2, p0

    #@c
    sub-int/2addr v2, p1

    #@d
    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@10
    .line 804
    :goto_0
    return-object v1

    #@11
    .line 801
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
    .line 809
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    #@4
    move-result v0

    #@5
    .line 811
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/math/BigInteger;

    #@7
    .line 813
    .local v1, "tmp":[Ljava/math/BigInteger;
    array-length v2, p0

    #@8
    sub-int/2addr v2, p1

    #@9
    if-ge v2, v0, :cond_0

    #@b
    .line 815
    array-length v2, p0

    #@c
    sub-int/2addr v2, p1

    #@d
    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    .line 822
    :goto_0
    return-object v1

    #@11
    .line 819
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
    .line 827
    sub-int v0, p1, p0

    #@2
    .line 828
    .local v0, "newLength":I
    if-gez v0, :cond_0

    #@4
    .line 830
    new-instance v1, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@9
    .line 831
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, " > "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@13
    .line 832
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
    .line 834
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
    add-int/lit8 v0, p2, 0x1

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
    add-int/lit8 v0, p2, 0x1

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

.method public static hashCode([J)I
    .locals 6
    .param p0, "data"    # [J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 418
    if-nez p0, :cond_0

    #@3
    .line 420
    return v4

    #@4
    .line 423
    :cond_0
    array-length v3, p0

    #@5
    .line 424
    .local v3, "i":I
    add-int/lit8 v2, v3, 0x1

    #@7
    .line 426
    .local v2, "hc":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    #@9
    if-ltz v3, :cond_1

    #@b
    .line 428
    aget-wide v0, p0, v3

    #@d
    .line 429
    .local v0, "di":J
    mul-int/lit16 v2, v2, 0x101

    #@f
    .line 430
    long-to-int v4, v0

    #@10
    xor-int/2addr v2, v4

    #@11
    .line 431
    mul-int/lit16 v2, v2, 0x101

    #@13
    .line 432
    const/16 v4, 0x20

    #@15
    ushr-long v4, v0, v4

    #@17
    long-to-int v4, v4

    #@18
    xor-int/2addr v2, v4

    #@19
    goto :goto_0

    #@1a
    .line 435
    .end local v0    # "di":J
    :cond_1
    return v2
.end method

.method public static hashCode([JII)I
    .locals 6
    .param p0, "data"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 440
    if-nez p0, :cond_0

    #@3
    .line 442
    return v4

    #@4
    .line 445
    :cond_0
    move v3, p2

    #@5
    .line 446
    .local v3, "i":I
    add-int/lit8 v2, p2, 0x1

    #@7
    .line 448
    .local v2, "hc":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    #@9
    if-ltz v3, :cond_1

    #@b
    .line 450
    add-int v4, p1, v3

    #@d
    aget-wide v0, p0, v4

    #@f
    .line 451
    .local v0, "di":J
    mul-int/lit16 v2, v2, 0x101

    #@11
    .line 452
    long-to-int v4, v0

    #@12
    xor-int/2addr v2, v4

    #@13
    .line 453
    mul-int/lit16 v2, v2, 0x101

    #@15
    .line 454
    const/16 v4, 0x20

    #@17
    ushr-long v4, v0, v4

    #@19
    long-to-int v4, v4

    #@1a
    xor-int/2addr v2, v4

    #@1b
    goto :goto_0

    #@1c
    .line 457
    .end local v0    # "di":J
    :cond_1
    return v2
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 3
    .param p0, "data"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 505
    if-nez p0, :cond_0

    #@3
    .line 507
    return v2

    #@4
    .line 510
    :cond_0
    array-length v1, p0

    #@5
    .line 511
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    #@7
    .line 513
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@9
    if-ltz v1, :cond_1

    #@b
    .line 515
    mul-int/lit16 v0, v0, 0x101

    #@d
    .line 516
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
    .line 519
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
    .line 486
    if-nez p0, :cond_0

    #@3
    .line 488
    return v2

    #@4
    .line 491
    :cond_0
    array-length v1, p0

    #@5
    .line 492
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    #@7
    .line 494
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@9
    if-ltz v1, :cond_1

    #@b
    .line 496
    mul-int/lit16 v0, v0, 0x101

    #@d
    .line 497
    aget-short v2, p0, v1

    #@f
    and-int/lit16 v2, v2, 0xff

    #@11
    xor-int/2addr v0, v2

    #@12
    goto :goto_0

    #@13
    .line 500
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
    .line 474
    const/4 v0, 0x0

    #@1
    .line 476
    .local v0, "hc":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 478
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
    .line 476
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 481
    :cond_0
    return v0
.end method

.method public static hashCode([[[S)I
    .locals 4
    .param p0, "shorts"    # [[[S

    #@0
    .prologue
    .line 462
    const/4 v0, 0x0

    #@1
    .line 464
    .local v0, "hc":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 466
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
    .line 464
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 469
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
    .line 976
    if-nez p0, :cond_0

    #@4
    .line 978
    new-array v2, v4, [B

    #@6
    aput-byte p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 981
    :cond_0
    array-length v0, p0

    #@a
    .line 982
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [B

    #@e
    .line 983
    .local v1, "result":[B
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 984
    aput-byte p1, v1, v3

    #@13
    .line 985
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
    .line 1004
    if-nez p0, :cond_0

    #@4
    .line 1006
    new-array v2, v4, [I

    #@6
    aput p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 1009
    :cond_0
    array-length v0, p0

    #@a
    .line 1010
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [I

    #@e
    .line 1011
    .local v1, "result":[I
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@11
    .line 1012
    aput p1, v1, v3

    #@13
    .line 1013
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
    .line 990
    if-nez p0, :cond_0

    #@4
    .line 992
    new-array v2, v4, [S

    #@6
    aput-short p1, v2, v3

    #@8
    return-object v2

    #@9
    .line 995
    :cond_0
    array-length v0, p0

    #@a
    .line 996
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    #@c
    new-array v1, v2, [S

    #@e
    .line 997
    .local v1, "result":[S
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@11
    .line 998
    aput-short p1, v1, v3

    #@13
    .line 999
    return-object v1
.end method

.method public static reverse([B)[B
    .locals 5
    .param p0, "a"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1018
    if-nez p0, :cond_0

    #@3
    .line 1020
    return-object v4

    #@4
    .line 1023
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "p1":I
    array-length v2, p0

    #@6
    .line 1024
    .local v2, "p2":I
    new-array v3, v2, [B

    #@8
    .local v3, "result":[B
    move v1, v0

    #@9
    .line 1026
    .end local v0    # "p1":I
    .local v1, "p1":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    #@b
    if-ltz v2, :cond_1

    #@d
    .line 1028
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
    .line 1031
    :cond_1
    return-object v3
.end method

.method public static reverse([I)[I
    .locals 5
    .param p0, "a"    # [I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1036
    if-nez p0, :cond_0

    #@3
    .line 1038
    return-object v4

    #@4
    .line 1041
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "p1":I
    array-length v2, p0

    #@6
    .line 1042
    .local v2, "p2":I
    new-array v3, v2, [I

    #@8
    .local v3, "result":[I
    move v1, v0

    #@9
    .line 1044
    .end local v0    # "p1":I
    .local v1, "p1":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    #@b
    if-ltz v2, :cond_1

    #@d
    .line 1046
    add-int/lit8 v0, v1, 0x1

    #@f
    .end local v1    # "p1":I
    .restart local v0    # "p1":I
    aget v4, p0, v1

    #@11
    aput v4, v3, v2

    #@13
    move v1, v0

    #@14
    .end local v0    # "p1":I
    .restart local v1    # "p1":I
    goto :goto_0

    #@15
    .line 1049
    :cond_1
    return-object v3
.end method

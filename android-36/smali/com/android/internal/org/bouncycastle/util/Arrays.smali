.class public final Lcom/android/internal/org/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/util/Arrays$Iterator;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static blacklist append([BB)[B
    .registers 5
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .line 815
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 817
    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte p1, v1, v0

    return-object v1

    .line 820
    :cond_9
    array-length v1, p0

    .line 821
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [B

    .line 822
    .local v2, "result":[B
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    aput-byte p1, v2, v1

    .line 824
    return-object v2
.end method

.method public static blacklist append([II)[I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "b"    # I

    .line 843
    if-nez p0, :cond_7

    .line 845
    filled-new-array {p1}, [I

    move-result-object v0

    return-object v0

    .line 848
    :cond_7
    array-length v0, p0

    .line 849
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 850
    .local v1, "result":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    aput p1, v1, v0

    .line 852
    return-object v1
.end method

.method public static blacklist append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 857
    if-nez p0, :cond_7

    .line 859
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 862
    :cond_7
    array-length v0, p0

    .line 863
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 864
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    aput-object p1, v1, v0

    .line 866
    return-object v1
.end method

.method public static blacklist append([SS)[S
    .registers 5
    .param p0, "a"    # [S
    .param p1, "b"    # S

    .line 829
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 831
    const/4 v1, 0x1

    new-array v1, v1, [S

    aput-short p1, v1, v0

    return-object v1

    .line 834
    :cond_9
    array-length v1, p0

    .line 835
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [S

    .line 836
    .local v2, "result":[S
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    aput-short p1, v2, v1

    .line 838
    return-object v2
.end method

.method public static blacklist areAllZeroes([BII)Z
    .registers 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "bits":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_c

    .line 23
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    or-int/2addr v0, v2

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    .end local v1    # "i":I
    :cond_c
    if-nez v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static blacklist areEqual([BII[BII)Z
    .registers 12
    .param p0, "a"    # [B
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [B
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 40
    sub-int v0, p2, p1

    .line 41
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 43
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 45
    return v2

    .line 48
    :cond_8
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_19

    .line 50
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    add-int v5, p4, v3

    aget-byte v5, p3, v5

    if-eq v4, v5, :cond_16

    .line 52
    return v2

    .line 48
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 56
    .end local v3    # "i":I
    :cond_19
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist areEqual([B[B)Z
    .registers 3
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 35
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([C[C)Z
    .registers 3
    .param p0, "a"    # [C
    .param p1, "b"    # [C

    .line 61
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([I[I)Z
    .registers 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 66
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([J[J)Z
    .registers 3
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 71
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;

    .line 76
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([S[S)Z
    .registers 3
    .param p0, "a"    # [S
    .param p1, "b"    # [S

    .line 81
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([Z[Z)Z
    .registers 3
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z

    .line 30
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist clear([B)V
    .registers 2
    .param p0, "data"    # [B

    .line 1201
    if-eqz p0, :cond_6

    .line 1203
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 1205
    :cond_6
    return-void
.end method

.method public static blacklist clear([I)V
    .registers 2
    .param p0, "data"    # [I

    .line 1209
    if-eqz p0, :cond_6

    .line 1211
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1213
    :cond_6
    return-void
.end method

.method public static blacklist clone([B)[B
    .registers 2
    .param p0, "data"    # [B

    .line 595
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([B[B)[B
    .registers 4
    .param p0, "data"    # [B
    .param p1, "existing"    # [B

    .line 625
    if-nez p0, :cond_4

    .line 627
    const/4 v0, 0x0

    return-object v0

    .line 629
    :cond_4
    if-eqz p1, :cond_11

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_b

    goto :goto_11

    .line 633
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    return-object p1

    .line 631
    :cond_11
    :goto_11
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist clone([C)[C
    .registers 2
    .param p0, "data"    # [C

    .line 600
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([I)[I
    .registers 2
    .param p0, "data"    # [I

    .line 605
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([J)[J
    .registers 2
    .param p0, "data"    # [J

    .line 610
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([J[J)[J
    .registers 4
    .param p0, "data"    # [J
    .param p1, "existing"    # [J

    .line 639
    if-nez p0, :cond_4

    .line 641
    const/4 v0, 0x0

    return-object v0

    .line 643
    :cond_4
    if-eqz p1, :cond_11

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_b

    goto :goto_11

    .line 647
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 648
    return-object p1

    .line 645
    :cond_11
    :goto_11
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    return-object v0
.end method

.method public static blacklist clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 2
    .param p0, "data"    # [Ljava/math/BigInteger;

    .line 620
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [Ljava/math/BigInteger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/math/BigInteger;

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([S)[S
    .registers 2
    .param p0, "data"    # [S

    .line 615
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([Z)[Z
    .registers 2
    .param p0, "data"    # [Z

    .line 590
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([[B)[[B
    .registers 4
    .param p0, "data"    # [[B

    .line 653
    if-nez p0, :cond_4

    .line 655
    const/4 v0, 0x0

    return-object v0

    .line 658
    :cond_4
    array-length v0, p0

    new-array v0, v0, [[B

    .line 660
    .local v0, "copy":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-eq v1, v2, :cond_16

    .line 662
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 665
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method public static blacklist clone([[[B)[[[B
    .registers 4
    .param p0, "data"    # [[[B

    .line 670
    if-nez p0, :cond_4

    .line 672
    const/4 v0, 0x0

    return-object v0

    .line 675
    :cond_4
    array-length v0, p0

    new-array v0, v0, [[[B

    .line 677
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-eq v1, v2, :cond_16

    .line 679
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 677
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 682
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method public static blacklist compareUnsigned([B[B)I
    .registers 9
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 197
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 199
    return v0

    .line 201
    :cond_4
    const/4 v1, -0x1

    if-nez p0, :cond_8

    .line 203
    return v1

    .line 205
    :cond_8
    const/4 v2, 0x1

    if-nez p1, :cond_c

    .line 207
    return v2

    .line 209
    :cond_c
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 210
    .local v3, "minLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_26

    .line 212
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .local v5, "aVal":I
    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    .line 213
    .local v6, "bVal":I
    if-ge v5, v6, :cond_20

    .line 215
    return v1

    .line 217
    :cond_20
    if-le v5, v6, :cond_23

    .line 219
    return v2

    .line 210
    .end local v5    # "aVal":I
    .end local v6    # "bVal":I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 222
    .end local v4    # "i":I
    :cond_26
    array-length v4, p0

    array-length v5, p1

    if-ge v4, v5, :cond_2b

    .line 224
    return v1

    .line 226
    :cond_2b
    array-length v1, p0

    array-length v4, p1

    if-le v1, v4, :cond_30

    .line 228
    return v2

    .line 230
    :cond_30
    return v0
.end method

.method public static blacklist concatenate([B[B)[B
    .registers 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 871
    if-nez p0, :cond_7

    .line 874
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 876
    :cond_7
    if-nez p1, :cond_e

    .line 879
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 882
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 883
    .local v0, "r":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 885
    return-object v0
.end method

.method public static blacklist concatenate([B[B[B)[B
    .registers 7
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B

    .line 909
    if-nez p0, :cond_7

    .line 911
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 913
    :cond_7
    if-nez p1, :cond_e

    .line 915
    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 917
    :cond_e
    if-nez p2, :cond_15

    .line 919
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 922
    :cond_15
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 923
    .local v0, "r":[B
    const/4 v1, 0x0

    .line 924
    .local v1, "pos":I
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    add-int/2addr v1, v2

    .line 925
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/2addr v1, v2

    .line 926
    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    return-object v0
.end method

.method public static blacklist concatenate([B[B[B[B)[B
    .registers 8
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B
    .param p3, "d"    # [B

    .line 932
    if-nez p0, :cond_7

    .line 934
    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 936
    :cond_7
    if-nez p1, :cond_e

    .line 938
    invoke-static {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 940
    :cond_e
    if-nez p2, :cond_15

    .line 942
    invoke-static {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 944
    :cond_15
    if-nez p3, :cond_1c

    .line 946
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 949
    :cond_1c
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 950
    .local v0, "r":[B
    const/4 v1, 0x0

    .line 951
    .local v1, "pos":I
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    add-int/2addr v1, v2

    .line 952
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/2addr v1, v2

    .line 953
    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p2

    add-int/2addr v1, v2

    .line 954
    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 955
    return-object v0
.end method

.method public static blacklist concatenate([[B)[B
    .registers 8
    .param p0, "arrays"    # [[B

    .line 960
    const/4 v0, 0x0

    .line 961
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_c

    .line 963
    aget-object v2, p0, v1

    array-length v2, v2

    add-int/2addr v0, v2

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 966
    .end local v1    # "i":I
    :cond_c
    new-array v1, v0, [B

    .line 968
    .local v1, "rv":[B
    const/4 v2, 0x0

    .line 969
    .local v2, "offSet":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, p0

    if-eq v3, v4, :cond_23

    .line 971
    aget-object v4, p0, v3

    aget-object v5, p0, v3

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 972
    aget-object v4, p0, v3

    array-length v4, v4

    add-int/2addr v2, v4

    .line 969
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 975
    .end local v3    # "i":I
    :cond_23
    return-object v1
.end method

.method public static blacklist concatenate([I[I)[I
    .registers 6
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 980
    if-nez p0, :cond_7

    .line 983
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 985
    :cond_7
    if-nez p1, :cond_e

    .line 988
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 991
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 992
    .local v0, "r":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 993
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 994
    return-object v0
.end method

.method public static blacklist concatenate([S[S)[S
    .registers 6
    .param p0, "a"    # [S
    .param p1, "b"    # [S

    .line 890
    if-nez p0, :cond_7

    .line 893
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 895
    :cond_7
    if-nez p1, :cond_e

    .line 898
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 901
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 902
    .local v0, "r":[S
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 904
    return-object v0
.end method

.method public static blacklist constantTimeAreEqual(I[BI[BI)Z
    .registers 9
    .param p0, "len"    # I
    .param p1, "a"    # [B
    .param p2, "aOff"    # I
    .param p3, "b"    # [B
    .param p4, "bOff"    # I

    .line 125
    if-eqz p1, :cond_45

    .line 129
    if-eqz p3, :cond_3d

    .line 133
    if-ltz p0, :cond_35

    .line 137
    array-length v0, p1

    sub-int/2addr v0, p0

    if-gt p2, v0, :cond_2d

    .line 141
    array-length v0, p3

    sub-int/2addr v0, p0

    if-gt p4, v0, :cond_25

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, p0, :cond_1f

    .line 149
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    add-int v3, p4, v1

    aget-byte v3, p3, v3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 151
    .end local v1    # "i":I
    :cond_1f
    if-nez v0, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1

    .line 143
    .end local v0    # "d":I
    :cond_25
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "\'bOff\' value invalid for specified length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "\'aOff\' value invalid for specified length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'len\' cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'b\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'a\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist constantTimeAreEqual([B[B)Z
    .registers 9
    .param p0, "expected"    # [B
    .param p1, "supplied"    # [B

    .line 97
    const/4 v0, 0x0

    if-eqz p0, :cond_32

    if-nez p1, :cond_6

    goto :goto_32

    .line 102
    :cond_6
    const/4 v1, 0x1

    if-ne p0, p1, :cond_a

    .line 104
    return v1

    .line 107
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_10

    array-length v2, p0

    goto :goto_11

    :cond_10
    array-length v2, p1

    .line 109
    .local v2, "len":I
    :goto_11
    array-length v3, p0

    array-length v4, p1

    xor-int/2addr v3, v4

    .line 111
    .local v3, "nonEqual":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-eq v4, v2, :cond_20

    .line 113
    aget-byte v5, p0, v4

    aget-byte v6, p1, v4

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 115
    .end local v4    # "i":I
    :cond_20
    move v4, v2

    .restart local v4    # "i":I
    :goto_21
    array-length v5, p1

    if-ge v4, v5, :cond_2e

    .line 117
    aget-byte v5, p1, v4

    aget-byte v6, p1, v4

    not-int v6, v6

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 120
    .end local v4    # "i":I
    :cond_2e
    if-nez v3, :cond_31

    move v0, v1

    :cond_31
    return v0

    .line 99
    .end local v2    # "len":I
    .end local v3    # "nonEqual":I
    :cond_32
    :goto_32
    return v0
.end method

.method public static blacklist constantTimeAreEqual([C[C)Z
    .registers 9
    .param p0, "expected"    # [C
    .param p1, "supplied"    # [C

    .line 167
    const/4 v0, 0x0

    if-eqz p0, :cond_33

    if-nez p1, :cond_6

    goto :goto_33

    .line 172
    :cond_6
    const/4 v1, 0x1

    if-ne p0, p1, :cond_a

    .line 174
    return v1

    .line 177
    :cond_a
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 179
    .local v2, "len":I
    array-length v3, p0

    array-length v4, p1

    xor-int/2addr v3, v4

    .line 182
    .local v3, "nonEqual":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-eq v4, v2, :cond_1f

    .line 184
    aget-char v5, p0, v4

    aget-char v6, p1, v4

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 187
    .end local v4    # "i":I
    :cond_1f
    move v4, v2

    .restart local v4    # "i":I
    :goto_20
    array-length v5, p1

    if-ge v4, v5, :cond_2f

    .line 189
    aget-char v5, p1, v4

    int-to-byte v5, v5

    aget-char v6, p1, v4

    not-int v6, v6

    int-to-byte v6, v6

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 192
    .end local v4    # "i":I
    :cond_2f
    if-nez v3, :cond_32

    move v0, v1

    :cond_32
    return v0

    .line 169
    .end local v2    # "len":I
    .end local v3    # "nonEqual":I
    :cond_33
    :goto_33
    return v0
.end method

.method public static blacklist contains([BB)Z
    .registers 4
    .param p0, "a"    # [B
    .param p1, "val"    # B

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 249
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 251
    const/4 v1, 0x1

    return v1

    .line 247
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([CC)Z
    .registers 4
    .param p0, "a"    # [C
    .param p1, "val"    # C

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 261
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 263
    const/4 v1, 0x1

    return v1

    .line 259
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([II)Z
    .registers 4
    .param p0, "a"    # [I
    .param p1, "val"    # I

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 273
    aget v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 275
    const/4 v1, 0x1

    return v1

    .line 271
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([JJ)Z
    .registers 6
    .param p0, "a"    # [J
    .param p1, "val"    # J

    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_f

    .line 285
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_c

    .line 287
    const/4 v1, 0x1

    return v1

    .line 283
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([SS)Z
    .registers 4
    .param p0, "a"    # [S
    .param p1, "val"    # S

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 297
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 299
    const/4 v1, 0x1

    return v1

    .line 295
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([ZZ)Z
    .registers 4
    .param p0, "a"    # [Z
    .param p1, "val"    # Z

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 237
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 239
    const/4 v1, 0x1

    return v1

    .line 235
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist copyOf([BI)[B
    .registers 5
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    .line 694
    new-array v0, p1, [B

    .line 695
    .local v0, "copy":[B
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    return-object v0
.end method

.method public static blacklist copyOf([CI)[C
    .registers 5
    .param p0, "original"    # [C
    .param p1, "newLength"    # I

    .line 701
    new-array v0, p1, [C

    .line 702
    .local v0, "copy":[C
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    return-object v0
.end method

.method public static blacklist copyOf([II)[I
    .registers 5
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    .line 708
    new-array v0, p1, [I

    .line 709
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    return-object v0
.end method

.method public static blacklist copyOf([JI)[J
    .registers 5
    .param p0, "original"    # [J
    .param p1, "newLength"    # I

    .line 715
    new-array v0, p1, [J

    .line 716
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 717
    return-object v0
.end method

.method public static blacklist copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .registers 5
    .param p0, "original"    # [Ljava/math/BigInteger;
    .param p1, "newLength"    # I

    .line 729
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 730
    .local v0, "copy":[Ljava/math/BigInteger;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 731
    return-object v0
.end method

.method public static blacklist copyOf([SI)[S
    .registers 5
    .param p0, "original"    # [S
    .param p1, "newLength"    # I

    .line 722
    new-array v0, p1, [S

    .line 723
    .local v0, "copy":[S
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    return-object v0
.end method

.method public static blacklist copyOf([ZI)[Z
    .registers 5
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    .line 687
    new-array v0, p1, [Z

    .line 688
    .local v0, "copy":[Z
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 689
    return-object v0
.end method

.method public static blacklist copyOfRange([BII)[B
    .registers 7
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 757
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 758
    .local v0, "newLength":I
    new-array v1, v0, [B

    .line 759
    .local v1, "copy":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    return-object v1
.end method

.method public static blacklist copyOfRange([CII)[C
    .registers 7
    .param p0, "original"    # [C
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 765
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 766
    .local v0, "newLength":I
    new-array v1, v0, [C

    .line 767
    .local v1, "copy":[C
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 768
    return-object v1
.end method

.method public static blacklist copyOfRange([III)[I
    .registers 7
    .param p0, "original"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 773
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 774
    .local v0, "newLength":I
    new-array v1, v0, [I

    .line 775
    .local v1, "copy":[I
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    return-object v1
.end method

.method public static blacklist copyOfRange([JII)[J
    .registers 7
    .param p0, "original"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 781
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 782
    .local v0, "newLength":I
    new-array v1, v0, [J

    .line 783
    .local v1, "copy":[J
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    return-object v1
.end method

.method public static blacklist copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .registers 7
    .param p0, "original"    # [Ljava/math/BigInteger;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 797
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 798
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/math/BigInteger;

    .line 799
    .local v1, "copy":[Ljava/math/BigInteger;
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    return-object v1
.end method

.method public static blacklist copyOfRange([SII)[S
    .registers 7
    .param p0, "original"    # [S
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 789
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 790
    .local v0, "newLength":I
    new-array v1, v0, [S

    .line 791
    .local v1, "copy":[S
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    return-object v1
.end method

.method public static blacklist copyOfRange([ZII)[Z
    .registers 7
    .param p0, "original"    # [Z
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 736
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 737
    .local v0, "newLength":I
    new-array v1, v0, [Z

    .line 738
    .local v1, "copy":[Z
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    return-object v1
.end method

.method public static blacklist fill([BB)V
    .registers 2
    .param p0, "a"    # [B
    .param p1, "val"    # B

    .line 317
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 318
    return-void
.end method

.method public static blacklist fill([BIIB)V
    .registers 4
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # B

    .line 322
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 323
    return-void
.end method

.method public static blacklist fill([CC)V
    .registers 2
    .param p0, "a"    # [C
    .param p1, "val"    # C

    .line 327
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([CC)V

    .line 328
    return-void
.end method

.method public static blacklist fill([CIIC)V
    .registers 4
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # C

    .line 332
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 333
    return-void
.end method

.method public static blacklist fill([II)V
    .registers 2
    .param p0, "a"    # [I
    .param p1, "val"    # I

    .line 337
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 338
    return-void
.end method

.method public static blacklist fill([IIII)V
    .registers 4
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # I

    .line 342
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 343
    return-void
.end method

.method public static blacklist fill([JIIJ)V
    .registers 5
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # J

    .line 352
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 353
    return-void
.end method

.method public static blacklist fill([JJ)V
    .registers 3
    .param p0, "a"    # [J
    .param p1, "val"    # J

    .line 347
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 348
    return-void
.end method

.method public static blacklist fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .line 362
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 363
    return-void
.end method

.method public static blacklist fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    .line 357
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method public static blacklist fill([SIIS)V
    .registers 4
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # S

    .line 372
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([SIIS)V

    .line 373
    return-void
.end method

.method public static blacklist fill([SS)V
    .registers 2
    .param p0, "a"    # [S
    .param p1, "val"    # S

    .line 367
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([SS)V

    .line 368
    return-void
.end method

.method public static blacklist fill([ZIIZ)V
    .registers 4
    .param p0, "a"    # [Z
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Z

    .line 312
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 313
    return-void
.end method

.method public static blacklist fill([ZZ)V
    .registers 2
    .param p0, "a"    # [Z
    .param p1, "val"    # Z

    .line 307
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 308
    return-void
.end method

.method private static blacklist getLength(II)I
    .registers 6
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 805
    sub-int v0, p1, p0

    .line 806
    .local v0, "newLength":I
    if-ltz v0, :cond_5

    .line 810
    return v0

    .line 808
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist hashCode([B)I
    .registers 4
    .param p0, "data"    # [B

    .line 377
    if-nez p0, :cond_4

    .line 379
    const/4 v0, 0x0

    return v0

    .line 382
    :cond_4
    array-length v0, p0

    .line 383
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 385
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 387
    mul-int/lit16 v1, v1, 0x101

    .line 388
    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    .line 391
    :cond_11
    return v1
.end method

.method public static blacklist hashCode([BII)I
    .registers 6
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 396
    if-nez p0, :cond_4

    .line 398
    const/4 v0, 0x0

    return v0

    .line 401
    :cond_4
    move v0, p2

    .line 402
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 404
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 406
    mul-int/lit16 v1, v1, 0x101

    .line 407
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    xor-int/2addr v1, v2

    goto :goto_7

    .line 410
    :cond_13
    return v1
.end method

.method public static blacklist hashCode([C)I
    .registers 4
    .param p0, "data"    # [C

    .line 415
    if-nez p0, :cond_4

    .line 417
    const/4 v0, 0x0

    return v0

    .line 420
    :cond_4
    array-length v0, p0

    .line 421
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 423
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 425
    mul-int/lit16 v1, v1, 0x101

    .line 426
    aget-char v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    .line 429
    :cond_11
    return v1
.end method

.method public static blacklist hashCode([I)I
    .registers 4
    .param p0, "data"    # [I

    .line 446
    if-nez p0, :cond_4

    .line 448
    const/4 v0, 0x0

    return v0

    .line 451
    :cond_4
    array-length v0, p0

    .line 452
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 454
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 456
    mul-int/lit16 v1, v1, 0x101

    .line 457
    aget v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    .line 460
    :cond_11
    return v1
.end method

.method public static blacklist hashCode([III)I
    .registers 6
    .param p0, "data"    # [I
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 465
    if-nez p0, :cond_4

    .line 467
    const/4 v0, 0x0

    return v0

    .line 470
    :cond_4
    move v0, p2

    .line 471
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 473
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 475
    mul-int/lit16 v1, v1, 0x101

    .line 476
    add-int v2, p1, v0

    aget v2, p0, v2

    xor-int/2addr v1, v2

    goto :goto_7

    .line 479
    :cond_13
    return v1
.end method

.method public static blacklist hashCode([J)I
    .registers 7
    .param p0, "data"    # [J

    .line 484
    if-nez p0, :cond_4

    .line 486
    const/4 v0, 0x0

    return v0

    .line 489
    :cond_4
    array-length v0, p0

    .line 490
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 492
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1a

    .line 494
    aget-wide v2, p0, v0

    .line 495
    .local v2, "di":J
    mul-int/lit16 v1, v1, 0x101

    .line 496
    long-to-int v4, v2

    xor-int/2addr v1, v4

    .line 497
    mul-int/lit16 v1, v1, 0x101

    .line 498
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v4, v4

    xor-int/2addr v1, v4

    .line 499
    .end local v2    # "di":J
    goto :goto_7

    .line 501
    :cond_1a
    return v1
.end method

.method public static blacklist hashCode([JII)I
    .registers 9
    .param p0, "data"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 506
    if-nez p0, :cond_4

    .line 508
    const/4 v0, 0x0

    return v0

    .line 511
    :cond_4
    move v0, p2

    .line 512
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 514
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1c

    .line 516
    add-int v2, p1, v0

    aget-wide v2, p0, v2

    .line 517
    .local v2, "di":J
    mul-int/lit16 v1, v1, 0x101

    .line 518
    long-to-int v4, v2

    xor-int/2addr v1, v4

    .line 519
    mul-int/lit16 v1, v1, 0x101

    .line 520
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v4, v4

    xor-int/2addr v1, v4

    .line 521
    .end local v2    # "di":J
    goto :goto_7

    .line 523
    :cond_1c
    return v1
.end method

.method public static blacklist hashCode([Ljava/lang/Object;)I
    .registers 4
    .param p0, "data"    # [Ljava/lang/Object;

    .line 571
    if-nez p0, :cond_4

    .line 573
    const/4 v0, 0x0

    return v0

    .line 576
    :cond_4
    array-length v0, p0

    .line 577
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 579
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 581
    mul-int/lit16 v1, v1, 0x101

    .line 582
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_7

    .line 585
    :cond_15
    return v1
.end method

.method public static blacklist hashCode([S)I
    .registers 4
    .param p0, "data"    # [S

    .line 552
    if-nez p0, :cond_4

    .line 554
    const/4 v0, 0x0

    return v0

    .line 557
    :cond_4
    array-length v0, p0

    .line 558
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 560
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 562
    mul-int/lit16 v1, v1, 0x101

    .line 563
    aget-short v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    goto :goto_7

    .line 566
    :cond_13
    return v1
.end method

.method public static blacklist hashCode([[I)I
    .registers 5
    .param p0, "ints"    # [[I

    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 438
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v0, v2, v3

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 441
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static blacklist hashCode([[S)I
    .registers 5
    .param p0, "shorts"    # [[S

    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 544
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v3

    add-int v0, v2, v3

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 547
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static blacklist hashCode([[[S)I
    .registers 5
    .param p0, "shorts"    # [[[S

    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 532
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v3

    add-int v0, v2, v3

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 535
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static blacklist isNullOrContainsNull([Ljava/lang/Object;)Z
    .registers 5
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1217
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 1219
    return v0

    .line 1221
    :cond_4
    array-length v1, p0

    .line 1222
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_10

    .line 1224
    aget-object v3, p0, v2

    if-nez v3, :cond_d

    .line 1226
    return v0

    .line 1222
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1229
    .end local v2    # "i":I
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isNullOrEmpty([B)Z
    .registers 3
    .param p0, "array"    # [B

    .line 1234
    const/4 v0, 0x1

    if-eqz p0, :cond_8

    array-length v1, p0

    if-ge v1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static blacklist isNullOrEmpty([I)Z
    .registers 3
    .param p0, "array"    # [I

    .line 1239
    const/4 v0, 0x1

    if-eqz p0, :cond_8

    array-length v1, p0

    if-ge v1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static blacklist isNullOrEmpty([Ljava/lang/Object;)Z
    .registers 3
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1244
    const/4 v0, 0x1

    if-eqz p0, :cond_8

    array-length v1, p0

    if-ge v1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static blacklist prepend([BB)[B
    .registers 6
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .line 999
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 1001
    new-array v1, v1, [B

    aput-byte p1, v1, v0

    return-object v1

    .line 1004
    :cond_9
    array-length v2, p0

    .line 1005
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    .line 1006
    .local v3, "result":[B
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    aput-byte p1, v3, v0

    .line 1008
    return-object v3
.end method

.method public static blacklist prepend([II)[I
    .registers 6
    .param p0, "a"    # [I
    .param p1, "b"    # I

    .line 1027
    if-nez p0, :cond_7

    .line 1029
    filled-new-array {p1}, [I

    move-result-object v0

    return-object v0

    .line 1032
    :cond_7
    array-length v0, p0

    .line 1033
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 1034
    .local v1, "result":[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1035
    aput p1, v1, v2

    .line 1036
    return-object v1
.end method

.method public static blacklist prepend([SS)[S
    .registers 6
    .param p0, "a"    # [S
    .param p1, "b"    # S

    .line 1013
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 1015
    new-array v1, v1, [S

    aput-short p1, v1, v0

    return-object v1

    .line 1018
    :cond_9
    array-length v2, p0

    .line 1019
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [S

    .line 1020
    .local v3, "result":[S
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1021
    aput-short p1, v3, v0

    .line 1022
    return-object v3
.end method

.method public static blacklist reverse([B[B)V
    .registers 5
    .param p0, "input"    # [B
    .param p1, "output"    # [B

    .line 1077
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1078
    .local v0, "last":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-gt v1, v0, :cond_f

    .line 1080
    sub-int v2, v0, v1

    aget-byte v2, p0, v2

    aput-byte v2, p1, v1

    .line 1078
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1082
    .end local v1    # "i":I
    :cond_f
    return-void
.end method

.method public static blacklist reverse([B)[B
    .registers 5
    .param p0, "a"    # [B

    .line 1041
    if-nez p0, :cond_4

    .line 1043
    const/4 v0, 0x0

    return-object v0

    .line 1046
    :cond_4
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    .line 1047
    .local v1, "p2":I
    new-array v2, v1, [B

    .line 1049
    .local v2, "result":[B
    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_14

    .line 1051
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "p1":I
    .local v3, "p1":I
    aget-byte v0, p0, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_8

    .line 1054
    .end local v3    # "p1":I
    .restart local v0    # "p1":I
    :cond_14
    return-object v2
.end method

.method public static blacklist reverse([I)[I
    .registers 5
    .param p0, "a"    # [I

    .line 1059
    if-nez p0, :cond_4

    .line 1061
    const/4 v0, 0x0

    return-object v0

    .line 1064
    :cond_4
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    .line 1065
    .local v1, "p2":I
    new-array v2, v1, [I

    .line 1067
    .local v2, "result":[I
    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_14

    .line 1069
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "p1":I
    .local v3, "p1":I
    aget v0, p0, v0

    aput v0, v2, v1

    move v0, v3

    goto :goto_8

    .line 1072
    .end local v3    # "p1":I
    .restart local v0    # "p1":I
    :cond_14
    return-object v2
.end method

.method public static blacklist reverseInPlace([BII)V
    .registers 8
    .param p0, "a"    # [B
    .param p1, "aOff"    # I
    .param p2, "aLen"    # I

    .line 1104
    move v0, p1

    .local v0, "p1":I
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    .line 1105
    .local v1, "p2":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1107
    aget-byte v2, p0, v0

    .local v2, "t1":B
    aget-byte v3, p0, v1

    .line 1108
    .local v3, "t2":B
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "p1":I
    .local v4, "p1":I
    aput-byte v3, p0, v0

    .line 1109
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "p2":I
    .local v0, "p2":I
    aput-byte v2, p0, v1

    .line 1110
    .end local v2    # "t1":B
    .end local v3    # "t2":B
    move v1, v0

    move v0, v4

    goto :goto_5

    .line 1111
    .end local v4    # "p1":I
    .local v0, "p1":I
    .restart local v1    # "p2":I
    :cond_16
    return-void
.end method

.method public static blacklist reverseInPlace([B)[B
    .registers 6
    .param p0, "a"    # [B

    .line 1086
    if-nez p0, :cond_4

    .line 1088
    const/4 v0, 0x0

    return-object v0

    .line 1091
    :cond_4
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1092
    .local v1, "p2":I
    :goto_8
    if-ge v0, v1, :cond_19

    .line 1094
    aget-byte v2, p0, v0

    .local v2, "t1":B
    aget-byte v3, p0, v1

    .line 1095
    .local v3, "t2":B
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "p1":I
    .local v4, "p1":I
    aput-byte v3, p0, v0

    .line 1096
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "p2":I
    .local v0, "p2":I
    aput-byte v2, p0, v1

    .line 1097
    .end local v2    # "t1":B
    .end local v3    # "t2":B
    move v1, v0

    move v0, v4

    goto :goto_8

    .line 1099
    .end local v4    # "p1":I
    .local v0, "p1":I
    .restart local v1    # "p2":I
    :cond_19
    return-object p0
.end method

.method public static blacklist reverseInPlace([I)[I
    .registers 6
    .param p0, "a"    # [I

    .line 1133
    if-nez p0, :cond_4

    .line 1135
    const/4 v0, 0x0

    return-object v0

    .line 1138
    :cond_4
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1139
    .local v1, "p2":I
    :goto_8
    if-ge v0, v1, :cond_19

    .line 1141
    aget v2, p0, v0

    .local v2, "t1":I
    aget v3, p0, v1

    .line 1142
    .local v3, "t2":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "p1":I
    .local v4, "p1":I
    aput v3, p0, v0

    .line 1143
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "p2":I
    .local v0, "p2":I
    aput v2, p0, v1

    .line 1144
    .end local v2    # "t1":I
    .end local v3    # "t2":I
    move v1, v0

    move v0, v4

    goto :goto_8

    .line 1146
    .end local v4    # "p1":I
    .local v0, "p1":I
    .restart local v1    # "p2":I
    :cond_19
    return-object p0
.end method

.method public static blacklist reverseInPlace([S)[S
    .registers 6
    .param p0, "a"    # [S

    .line 1115
    if-nez p0, :cond_4

    .line 1117
    const/4 v0, 0x0

    return-object v0

    .line 1120
    :cond_4
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1121
    .local v1, "p2":I
    :goto_8
    if-ge v0, v1, :cond_19

    .line 1123
    aget-short v2, p0, v0

    .local v2, "t1":S
    aget-short v3, p0, v1

    .line 1124
    .local v3, "t2":S
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "p1":I
    .local v4, "p1":I
    aput-short v3, p0, v0

    .line 1125
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "p2":I
    .local v0, "p2":I
    aput-short v2, p0, v1

    .line 1126
    .end local v2    # "t1":S
    .end local v3    # "t2":S
    move v1, v0

    move v0, v4

    goto :goto_8

    .line 1128
    .end local v4    # "p1":I
    .local v0, "p1":I
    .restart local v1    # "p2":I
    :cond_19
    return-object p0
.end method

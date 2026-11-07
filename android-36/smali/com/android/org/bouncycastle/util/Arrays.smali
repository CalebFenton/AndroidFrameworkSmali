.class public final Lcom/android/org/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method public static blacklist append([BB)[B
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 817
    new-array p0, v1, [B

    aput-byte p1, p0, v0

    return-object p0

    .line 820
    :cond_9
    array-length v2, p0

    add-int/2addr v1, v2

    .line 821
    new-array v1, v1, [B

    .line 822
    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    aput-byte p1, v1, v2

    return-object v1
.end method

.method public static blacklist append([II)[I
    .registers 5

    if-nez p0, :cond_7

    .line 845
    filled-new-array {p1}, [I

    move-result-object p0

    return-object p0

    .line 848
    :cond_7
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    .line 849
    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 850
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    aput p1, v1, v0

    return-object v1
.end method

.method public static blacklist append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_7

    .line 859
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 862
    :cond_7
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    .line 863
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 864
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    aput-object p1, v1, v0

    return-object v1
.end method

.method public static blacklist append([SS)[S
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 831
    new-array p0, v1, [S

    aput-short p1, p0, v0

    return-object p0

    .line 834
    :cond_9
    array-length v2, p0

    add-int/2addr v1, v2

    .line 835
    new-array v1, v1, [S

    .line 836
    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    aput-short p1, v1, v2

    return-object v1
.end method

.method public static blacklist areAllZeroes([BII)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    if-ge v1, p2, :cond_d

    add-int v3, p1, v1

    .line 23
    aget-byte v3, p0, v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    if-nez v2, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v0
.end method

.method public static blacklist areEqual([BII[BII)Z
    .registers 9

    sub-int/2addr p2, p1

    sub-int/2addr p5, p4

    const/4 v0, 0x0

    if-eq p2, p5, :cond_6

    return v0

    :cond_6
    move p5, v0

    :goto_7
    if-ge p5, p2, :cond_17

    add-int v1, p1, p5

    .line 50
    aget-byte v1, p0, v1

    add-int v2, p4, p5

    aget-byte v2, p3, v2

    if-eq v1, v2, :cond_14

    return v0

    :cond_14
    add-int/lit8 p5, p5, 0x1

    goto :goto_7

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist areEqual([B[B)Z
    .registers 2

    .line 35
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static blacklist areEqual([C[C)Z
    .registers 2

    .line 61
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0
.end method

.method public static blacklist areEqual([I[I)Z
    .registers 2

    .line 66
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0
.end method

.method public static blacklist areEqual([J[J)Z
    .registers 2

    .line 71
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0
.end method

.method public static blacklist areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 2

    .line 76
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist areEqual([S[S)Z
    .registers 2

    .line 81
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p0

    return p0
.end method

.method public static blacklist areEqual([Z[Z)Z
    .registers 2

    .line 30
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0
.end method

.method public static blacklist clear([B)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    .line 1203
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_6
    return-void
.end method

.method public static blacklist clear([I)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    .line 1211
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_6
    return-void
.end method

.method public static blacklist clone([B)[B
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 595
    :cond_4
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static blacklist clone([B[B)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_11

    .line 629
    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_b

    goto :goto_11

    .line 633
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 631
    :cond_11
    :goto_11
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist clone([C)[C
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 600
    :cond_4
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public static blacklist clone([I)[I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 605
    :cond_4
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static blacklist clone([J)[J
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 610
    :cond_4
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public static blacklist clone([J[J)[J
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_11

    .line 643
    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_b

    goto :goto_11

    .line 647
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 645
    :cond_11
    :goto_11
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object p0

    return-object p0
.end method

.method public static blacklist clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 620
    :cond_4
    invoke-virtual {p0}, [Ljava/math/BigInteger;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/math/BigInteger;

    return-object p0
.end method

.method public static blacklist clone([S)[S
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 615
    :cond_4
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    return-object p0
.end method

.method public static blacklist clone([Z)[Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 590
    :cond_4
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

.method public static blacklist clone([[B)[[B
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 658
    :cond_4
    array-length v0, p0

    new-array v1, v0, [[B

    const/4 v2, 0x0

    :goto_8
    if-eq v2, v0, :cond_15

    .line 662
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    return-object v1
.end method

.method public static blacklist clone([[[B)[[[B
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 675
    :cond_4
    array-length v0, p0

    new-array v1, v0, [[[B

    const/4 v2, 0x0

    :goto_8
    if-eq v2, v0, :cond_15

    .line 679
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    return-object v1
.end method

.method public static blacklist compareUnsigned([B[B)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, -0x1

    if-nez p0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    if-nez p1, :cond_c

    return v2

    .line 209
    :cond_c
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v0

    :goto_13
    if-ge v4, v3, :cond_26

    .line 212
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    if-ge v5, v6, :cond_20

    return v1

    :cond_20
    if-le v5, v6, :cond_23

    return v2

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 222
    :cond_26
    array-length v3, p0

    array-length v4, p1

    if-ge v3, v4, :cond_2b

    return v1

    .line 226
    :cond_2b
    array-length p0, p0

    array-length p1, p1

    if-le p0, p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public static blacklist concatenate([B[B)[B
    .registers 5

    if-nez p0, :cond_7

    .line 874
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    .line 879
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0

    .line 882
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 883
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist concatenate([B[B[B)[B
    .registers 6

    if-nez p0, :cond_7

    .line 911
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    .line 915
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0

    :cond_e
    if-nez p2, :cond_15

    .line 919
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0

    .line 922
    :cond_15
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 924
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    .line 925
    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p0, p1

    .line 926
    array-length p1, p2

    invoke-static {p2, v2, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist concatenate([B[B[B[B)[B
    .registers 7

    if-nez p0, :cond_7

    .line 934
    invoke-static {p1, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    .line 938
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_e
    if-nez p2, :cond_15

    .line 942
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_15
    if-nez p3, :cond_1c

    .line 946
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p0

    return-object p0

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

    .line 951
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    .line 952
    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p0, p1

    .line 953
    array-length p1, p2

    invoke-static {p2, v2, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    add-int/2addr p0, p1

    .line 954
    array-length p1, p3

    invoke-static {p3, v2, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist concatenate([[B)[B
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 961
    :goto_3
    array-length v3, p0

    if-eq v1, v3, :cond_d

    .line 963
    aget-object v3, p0, v1

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 966
    :cond_d
    new-array v1, v2, [B

    move v2, v0

    move v3, v2

    .line 969
    :goto_11
    array-length v4, p0

    if-eq v2, v4, :cond_21

    .line 971
    aget-object v4, p0, v2

    array-length v5, v4

    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 972
    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_21
    return-object v1
.end method

.method public static blacklist concatenate([I[I)[I
    .registers 5

    if-nez p0, :cond_7

    .line 983
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    .line 988
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p0

    return-object p0

    .line 991
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 992
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 993
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist concatenate([S[S)[S
    .registers 5

    if-nez p0, :cond_7

    .line 893
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    .line 898
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object p0

    return-object p0

    .line 901
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 902
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist constantTimeAreEqual(I[BI[BI)Z
    .registers 10

    if-eqz p1, :cond_45

    if-eqz p3, :cond_3d

    if-ltz p0, :cond_35

    .line 137
    array-length v0, p1

    sub-int/2addr v0, p0

    if-gt p2, v0, :cond_2d

    .line 141
    array-length v0, p3

    sub-int/2addr v0, p0

    if-gt p4, v0, :cond_25

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_11
    if-ge v1, p0, :cond_20

    add-int v3, p2, v1

    .line 149
    aget-byte v3, p1, v3

    add-int v4, p4, v1

    aget-byte v4, p3, v4

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    if-nez v2, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    return v0

    .line 143
    :cond_25
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "\'bOff\' value invalid for specified length"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_2d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "\'aOff\' value invalid for specified length"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'len\' cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_3d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'b\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_45
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'a\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist constantTimeAreEqual([B[B)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-nez p1, :cond_6

    goto :goto_2e

    :cond_6
    const/4 v1, 0x1

    if-ne p0, p1, :cond_a

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
    :goto_11
    array-length v3, p0

    array-length v4, p1

    xor-int/2addr v3, v4

    move v4, v0

    :goto_15
    if-eq v4, v2, :cond_20

    .line 113
    aget-byte v5, p0, v4

    aget-byte v6, p1, v4

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 115
    :cond_20
    :goto_20
    array-length p0, p1

    if-ge v2, p0, :cond_2b

    .line 117
    aget-byte p0, p1, v2

    not-int v4, p0

    xor-int/2addr p0, v4

    or-int/2addr v3, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2b
    if-nez v3, :cond_2e

    return v1

    :cond_2e
    :goto_2e
    return v0
.end method

.method public static blacklist constantTimeAreEqual([C[C)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    if-nez p1, :cond_6

    goto :goto_2f

    :cond_6
    const/4 v1, 0x1

    if-ne p0, p1, :cond_a

    return v1

    .line 177
    :cond_a
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 179
    array-length v3, p0

    array-length v4, p1

    xor-int/2addr v3, v4

    move v4, v0

    :goto_14
    if-eq v4, v2, :cond_1f

    .line 184
    aget-char v5, p0, v4

    aget-char v6, p1, v4

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 187
    :cond_1f
    :goto_1f
    array-length p0, p1

    if-ge v2, p0, :cond_2c

    .line 189
    aget-char p0, p1, v2

    int-to-byte v4, p0

    not-int p0, p0

    int-to-byte p0, p0

    xor-int/2addr p0, v4

    or-int/2addr v3, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2c
    if-nez v3, :cond_2f

    return v1

    :cond_2f
    :goto_2f
    return v0
.end method

.method public static blacklist contains([BB)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 247
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    .line 249
    aget-byte v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static blacklist contains([CC)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 259
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    .line 261
    aget-char v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static blacklist contains([II)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 271
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    .line 273
    aget v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static blacklist contains([JJ)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 283
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 285
    aget-wide v2, p0, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method public static blacklist contains([SS)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 295
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    .line 297
    aget-short v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static blacklist contains([ZZ)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 235
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    .line 237
    aget-boolean v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static blacklist copyOf([BI)[B
    .registers 4

    .line 694
    new-array v0, p1, [B

    .line 695
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([CI)[C
    .registers 4

    .line 701
    new-array v0, p1, [C

    .line 702
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([II)[I
    .registers 4

    .line 708
    new-array v0, p1, [I

    .line 709
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([JI)[J
    .registers 4

    .line 715
    new-array v0, p1, [J

    .line 716
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .registers 4

    .line 729
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 730
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([SI)[S
    .registers 4

    .line 722
    new-array v0, p1, [S

    .line 723
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOf([ZI)[Z
    .registers 4

    .line 687
    new-array v0, p1, [Z

    .line 688
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOfRange([BII)[B
    .registers 5

    .line 757
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    .line 758
    new-array v0, p2, [B

    .line 759
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOfRange([CII)[C
    .registers 5

    .line 765
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    .line 766
    new-array v0, p2, [C

    .line 767
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOfRange([III)[I
    .registers 5

    .line 773
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    .line 774
    new-array v0, p2, [I

    .line 775
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOfRange([JII)[J
    .registers 5

    .line 781
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    .line 782
    new-array v0, p2, [J

    .line 783
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .registers 5

    .line 797
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    .line 798
    new-array v0, p2, [Ljava/math/BigInteger;

    .line 799
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOfRange([SII)[S
    .registers 5

    .line 789
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    .line 790
    new-array v0, p2, [S

    .line 791
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copyOfRange([ZII)[Z
    .registers 5

    .line 736
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    .line 737
    new-array v0, p2, [Z

    .line 738
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist fill([BB)V
    .registers 2

    .line 317
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public static blacklist fill([BIIB)V
    .registers 4

    .line 322
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public static blacklist fill([CC)V
    .registers 2

    .line 327
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([CC)V

    return-void
.end method

.method public static blacklist fill([CIIC)V
    .registers 4

    .line 332
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([CIIC)V

    return-void
.end method

.method public static blacklist fill([II)V
    .registers 2

    .line 337
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public static blacklist fill([IIII)V
    .registers 4

    .line 342
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method public static blacklist fill([JIIJ)V
    .registers 5

    .line 352
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public static blacklist fill([JJ)V
    .registers 3

    .line 347
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public static blacklist fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 4

    .line 362
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public static blacklist fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2

    .line 357
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist fill([SIIS)V
    .registers 4

    .line 372
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([SIIS)V

    return-void
.end method

.method public static blacklist fill([SS)V
    .registers 2

    .line 367
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([SS)V

    return-void
.end method

.method public static blacklist fill([ZIIZ)V
    .registers 4

    .line 312
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void
.end method

.method public static blacklist fill([ZZ)V
    .registers 2

    .line 307
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method private static blacklist getLength(II)I
    .registers 4

    sub-int v0, p1, p0

    if-ltz v0, :cond_5

    return v0

    .line 808
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " > "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist hashCode([B)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 382
    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    mul-int/lit16 v1, v1, 0x101

    .line 388
    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_11
    return v1
.end method

.method public static blacklist hashCode([BII)I
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p2, 0x1

    :goto_6
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_12

    mul-int/lit16 v0, v0, 0x101

    add-int v1, p1, p2

    .line 407
    aget-byte v1, p0, v1

    xor-int/2addr v0, v1

    goto :goto_6

    :cond_12
    return v0
.end method

.method public static blacklist hashCode([C)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 420
    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    mul-int/lit16 v1, v1, 0x101

    .line 426
    aget-char v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_11
    return v1
.end method

.method public static blacklist hashCode([I)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 451
    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    mul-int/lit16 v1, v1, 0x101

    .line 457
    aget v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_11
    return v1
.end method

.method public static blacklist hashCode([III)I
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p2, 0x1

    :goto_6
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_12

    mul-int/lit16 v0, v0, 0x101

    add-int v1, p1, p2

    .line 476
    aget v1, p0, v1

    xor-int/2addr v0, v1

    goto :goto_6

    :cond_12
    return v0
.end method

.method public static blacklist hashCode([J)I
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 489
    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    .line 494
    aget-wide v2, p0, v0

    mul-int/lit16 v1, v1, 0x101

    long-to-int v4, v2

    xor-int/2addr v1, v4

    mul-int/lit16 v1, v1, 0x101

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_19
    return v1
.end method

.method public static blacklist hashCode([JII)I
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p2, 0x1

    :goto_6
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1a

    add-int v1, p1, p2

    .line 516
    aget-wide v1, p0, v1

    mul-int/lit16 v0, v0, 0x101

    long-to-int v3, v1

    xor-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x101

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    goto :goto_6

    :cond_1a
    return v0
.end method

.method public static blacklist hashCode([Ljava/lang/Object;)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 576
    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    mul-int/lit16 v1, v1, 0x101

    .line 582
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_15
    return v1
.end method

.method public static blacklist hashCode([S)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 557
    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    mul-int/lit16 v1, v1, 0x101

    .line 563
    aget-short v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_13
    return v1
.end method

.method public static blacklist hashCode([[I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 436
    :goto_2
    array-length v2, p0

    if-eq v0, v2, :cond_11

    mul-int/lit16 v1, v1, 0x101

    .line 438
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return v1
.end method

.method public static blacklist hashCode([[S)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 542
    :goto_2
    array-length v2, p0

    if-eq v0, v2, :cond_11

    mul-int/lit16 v1, v1, 0x101

    .line 544
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return v1
.end method

.method public static blacklist hashCode([[[S)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 530
    :goto_2
    array-length v2, p0

    if-eq v0, v2, :cond_11

    mul-int/lit16 v1, v1, 0x101

    .line 532
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return v1
.end method

.method public static blacklist isNullOrContainsNull([Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 1221
    :cond_4
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_11

    .line 1224
    aget-object v4, p0, v3

    if-nez v4, :cond_e

    return v0

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    return v2
.end method

.method public static blacklist isNullOrEmpty([B)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    .line 1234
    array-length p0, p0

    if-ge p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    return v0
.end method

.method public static blacklist isNullOrEmpty([I)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    .line 1239
    array-length p0, p0

    if-ge p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    return v0
.end method

.method public static blacklist isNullOrEmpty([Ljava/lang/Object;)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    .line 1244
    array-length p0, p0

    if-ge p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    return v0
.end method

.method public static blacklist prepend([BB)[B
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 1001
    new-array p0, v1, [B

    aput-byte p1, p0, v0

    return-object p0

    .line 1004
    :cond_9
    array-length v2, p0

    add-int/lit8 v3, v2, 0x1

    .line 1005
    new-array v3, v3, [B

    .line 1006
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    aput-byte p1, v3, v0

    return-object v3
.end method

.method public static blacklist prepend([II)[I
    .registers 6

    if-nez p0, :cond_7

    .line 1029
    filled-new-array {p1}, [I

    move-result-object p0

    return-object p0

    .line 1032
    :cond_7
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    .line 1033
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1034
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1035
    aput p1, v1, v2

    return-object v1
.end method

.method public static blacklist prepend([SS)[S
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 1015
    new-array p0, v1, [S

    aput-short p1, p0, v0

    return-object p0

    .line 1018
    :cond_9
    array-length v2, p0

    add-int/lit8 v3, v2, 0x1

    .line 1019
    new-array v3, v3, [S

    .line 1020
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1021
    aput-short p1, v3, v0

    return-object v3
.end method

.method public static blacklist reverse([B[B)V
    .registers 5

    .line 1077
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_4
    if-gt v1, v0, :cond_f

    sub-int v2, v0, v1

    .line 1080
    aget-byte v2, p0, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-void
.end method

.method public static blacklist reverse([B)[B
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1046
    :cond_4
    array-length v0, p0

    .line 1047
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    add-int/lit8 v3, v2, 0x1

    .line 1051
    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    move v2, v3

    goto :goto_8

    :cond_14
    return-object v1
.end method

.method public static blacklist reverse([I)[I
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1064
    :cond_4
    array-length v0, p0

    .line 1065
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    add-int/lit8 v3, v2, 0x1

    .line 1069
    aget v2, p0, v2

    aput v2, v1, v0

    move v2, v3

    goto :goto_8

    :cond_14
    return-object v1
.end method

.method public static blacklist reverseInPlace([BII)V
    .registers 6

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_3
    if-ge p1, p2, :cond_14

    .line 1107
    aget-byte v0, p0, p1

    aget-byte v1, p0, p2

    add-int/lit8 v2, p1, 0x1

    .line 1108
    aput-byte v1, p0, p1

    add-int/lit8 p1, p2, -0x1

    .line 1109
    aput-byte v0, p0, p2

    move p2, p1

    move p1, v2

    goto :goto_3

    :cond_14
    return-void
.end method

.method public static blacklist reverseInPlace([B)[B
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1091
    :cond_4
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_19

    .line 1094
    aget-byte v2, p0, v1

    aget-byte v3, p0, v0

    add-int/lit8 v4, v1, 0x1

    .line 1095
    aput-byte v3, p0, v1

    add-int/lit8 v1, v0, -0x1

    .line 1096
    aput-byte v2, p0, v0

    move v0, v1

    move v1, v4

    goto :goto_8

    :cond_19
    return-object p0
.end method

.method public static blacklist reverseInPlace([I)[I
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1138
    :cond_4
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_19

    .line 1141
    aget v2, p0, v1

    aget v3, p0, v0

    add-int/lit8 v4, v1, 0x1

    .line 1142
    aput v3, p0, v1

    add-int/lit8 v1, v0, -0x1

    .line 1143
    aput v2, p0, v0

    move v0, v1

    move v1, v4

    goto :goto_8

    :cond_19
    return-object p0
.end method

.method public static blacklist reverseInPlace([S)[S
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1120
    :cond_4
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_19

    .line 1123
    aget-short v2, p0, v1

    aget-short v3, p0, v0

    add-int/lit8 v4, v1, 0x1

    .line 1124
    aput-short v3, p0, v1

    add-int/lit8 v1, v0, -0x1

    .line 1125
    aput-short v2, p0, v0

    move v0, v1

    move v1, v4

    goto :goto_8

    :cond_19
    return-object p0
.end method

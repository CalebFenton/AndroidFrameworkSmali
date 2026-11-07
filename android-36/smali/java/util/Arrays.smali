.class public final Ljava/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Arrays$NaturalOrder;,
        Ljava/util/Arrays$ArrayList;,
        Ljava/util/Arrays$ArrayItr;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist DO_NOT_CLONE_IN_ARRAYS_AS_LIST:J = 0xc18df2dL

.field private static final greylist-max-o INSERTIONSORT_THRESHOLD:I = 0x7

.field public static final greylist-max-o MIN_ARRAY_SORT_GRAN:I = 0x2000


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 84
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs whitelist test-api asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 4524
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/Arrays$ArrayList;

    invoke-direct {v0, p0}, Ljava/util/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api binarySearch([BB)I
    .registers 4
    .param p0, "a"    # [B
    .param p1, "key"    # B

    .line 1951
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch0([BIIB)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([BIIB)I
    .registers 5
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # B

    .line 1988
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1989
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([BIIB)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([CC)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "key"    # C

    .line 1870
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch0([CIIC)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([CIIC)I
    .registers 5
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # C

    .line 1907
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1908
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([CIIC)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([DD)I
    .registers 5
    .param p0, "a"    # [D
    .param p1, "key"    # D

    .line 2033
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch0([DIID)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([DIID)I
    .registers 6
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # D

    .line 2071
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2072
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([DIID)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([FF)I
    .registers 4
    .param p0, "a"    # [F
    .param p1, "key"    # F

    .line 2124
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch0([FIIF)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([FIIF)I
    .registers 5
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # F

    .line 2162
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2163
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([FIIF)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([II)I
    .registers 4
    .param p0, "a"    # [I
    .param p1, "key"    # I

    .line 1708
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch0([IIII)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([IIII)I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # I

    .line 1745
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1746
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([IIII)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([JIIJ)I
    .registers 6
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # J

    .line 1664
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1665
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([JIIJ)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([JJ)I
    .registers 5
    .param p0, "a"    # [J
    .param p1, "key"    # J

    .line 1627
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch0([JIIJ)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .registers 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # Ljava/lang/Object;

    .line 2268
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2269
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 2373
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "key":Ljava/lang/Object;, "TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2374
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/Object;

    .line 2223
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 2326
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([SIIS)I
    .registers 5
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # S

    .line 1826
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1827
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([SIIS)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch([SS)I
    .registers 4
    .param p0, "a"    # [S
    .param p1, "key"    # S

    .line 1789
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch0([SIIS)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o binarySearch0([BIIB)I
    .registers 8
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # B

    .line 1995
    move v0, p1

    .line 1996
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 1998
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_16

    .line 1999
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2000
    .local v2, "mid":I
    aget-byte v3, p0, v2

    .line 2002
    .local v3, "midVal":B
    if-ge v3, p3, :cond_10

    .line 2003
    add-int/lit8 v0, v2, 0x1

    goto :goto_14

    .line 2004
    :cond_10
    if-le v3, p3, :cond_15

    .line 2005
    add-int/lit8 v1, v2, -0x1

    .line 2008
    .end local v2    # "mid":I
    .end local v3    # "midVal":B
    :goto_14
    goto :goto_3

    .line 2007
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":B
    :cond_15
    return v2

    .line 2009
    .end local v2    # "mid":I
    .end local v3    # "midVal":B
    :cond_16
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([CIIC)I
    .registers 8
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # C

    .line 1914
    move v0, p1

    .line 1915
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 1917
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_16

    .line 1918
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1919
    .local v2, "mid":I
    aget-char v3, p0, v2

    .line 1921
    .local v3, "midVal":C
    if-ge v3, p3, :cond_10

    .line 1922
    add-int/lit8 v0, v2, 0x1

    goto :goto_14

    .line 1923
    :cond_10
    if-le v3, p3, :cond_15

    .line 1924
    add-int/lit8 v1, v2, -0x1

    .line 1927
    .end local v2    # "mid":I
    .end local v3    # "midVal":C
    :goto_14
    goto :goto_3

    .line 1926
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":C
    :cond_15
    return v2

    .line 1928
    .end local v2    # "mid":I
    .end local v3    # "midVal":C
    :cond_16
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([DIID)I
    .registers 15
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # D

    .line 2078
    move v0, p1

    .line 2079
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 2081
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_30

    .line 2082
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2083
    .local v2, "mid":I
    aget-wide v3, p0, v2

    .line 2085
    .local v3, "midVal":D
    cmpg-double v5, v3, p3

    if-gez v5, :cond_12

    .line 2086
    add-int/lit8 v0, v2, 0x1

    goto :goto_2f

    .line 2087
    :cond_12
    cmpl-double v5, v3, p3

    if-lez v5, :cond_19

    .line 2088
    add-int/lit8 v1, v2, -0x1

    goto :goto_2f

    .line 2090
    :cond_19
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 2091
    .local v5, "midBits":J
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    .line 2092
    .local v7, "keyBits":J
    cmp-long v9, v5, v7

    if-nez v9, :cond_26

    .line 2093
    return v2

    .line 2094
    :cond_26
    cmp-long v9, v5, v7

    if-gez v9, :cond_2d

    .line 2095
    add-int/lit8 v0, v2, 0x1

    goto :goto_2f

    .line 2097
    :cond_2d
    add-int/lit8 v1, v2, -0x1

    .line 2099
    .end local v2    # "mid":I
    .end local v3    # "midVal":D
    .end local v5    # "midBits":J
    .end local v7    # "keyBits":J
    :goto_2f
    goto :goto_3

    .line 2100
    :cond_30
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([FIIF)I
    .registers 10
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # F

    .line 2169
    move v0, p1

    .line 2170
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 2172
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_2c

    .line 2173
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2174
    .local v2, "mid":I
    aget v3, p0, v2

    .line 2176
    .local v3, "midVal":F
    cmpg-float v4, v3, p3

    if-gez v4, :cond_12

    .line 2177
    add-int/lit8 v0, v2, 0x1

    goto :goto_2b

    .line 2178
    :cond_12
    cmpl-float v4, v3, p3

    if-lez v4, :cond_19

    .line 2179
    add-int/lit8 v1, v2, -0x1

    goto :goto_2b

    .line 2181
    :cond_19
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 2182
    .local v4, "midBits":I
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .line 2183
    .local v5, "keyBits":I
    if-ne v4, v5, :cond_24

    .line 2184
    return v2

    .line 2185
    :cond_24
    if-ge v4, v5, :cond_29

    .line 2186
    add-int/lit8 v0, v2, 0x1

    goto :goto_2b

    .line 2188
    :cond_29
    add-int/lit8 v1, v2, -0x1

    .line 2190
    .end local v2    # "mid":I
    .end local v3    # "midVal":F
    .end local v4    # "midBits":I
    .end local v5    # "keyBits":I
    :goto_2b
    goto :goto_3

    .line 2191
    :cond_2c
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([IIII)I
    .registers 8
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # I

    .line 1752
    move v0, p1

    .line 1753
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 1755
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_16

    .line 1756
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1757
    .local v2, "mid":I
    aget v3, p0, v2

    .line 1759
    .local v3, "midVal":I
    if-ge v3, p3, :cond_10

    .line 1760
    add-int/lit8 v0, v2, 0x1

    goto :goto_14

    .line 1761
    :cond_10
    if-le v3, p3, :cond_15

    .line 1762
    add-int/lit8 v1, v2, -0x1

    .line 1765
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :goto_14
    goto :goto_3

    .line 1764
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":I
    :cond_15
    return v2

    .line 1766
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_16
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([JIIJ)I
    .registers 11
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # J

    .line 1671
    move v0, p1

    .line 1672
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 1674
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_1a

    .line 1675
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1676
    .local v2, "mid":I
    aget-wide v3, p0, v2

    .line 1678
    .local v3, "midVal":J
    cmp-long v5, v3, p3

    if-gez v5, :cond_12

    .line 1679
    add-int/lit8 v0, v2, 0x1

    goto :goto_18

    .line 1680
    :cond_12
    cmp-long v5, v3, p3

    if-lez v5, :cond_19

    .line 1681
    add-int/lit8 v1, v2, -0x1

    .line 1684
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :goto_18
    goto :goto_3

    .line 1683
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":J
    :cond_19
    return v2

    .line 1685
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :cond_1a
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I
    .registers 9
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # Ljava/lang/Object;

    .line 2275
    move v0, p1

    .line 2276
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 2278
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_1c

    .line 2279
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2281
    .local v2, "mid":I
    aget-object v3, p0, v2

    check-cast v3, Ljava/lang/Comparable;

    .line 2283
    .local v3, "midVal":Ljava/lang/Comparable;
    invoke-interface {v3, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 2285
    .local v4, "cmp":I
    if-gez v4, :cond_16

    .line 2286
    add-int/lit8 v0, v2, 0x1

    goto :goto_1a

    .line 2287
    :cond_16
    if-lez v4, :cond_1b

    .line 2288
    add-int/lit8 v1, v2, -0x1

    .line 2291
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Comparable;
    .end local v4    # "cmp":I
    :goto_1a
    goto :goto_3

    .line 2290
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":Ljava/lang/Comparable;
    .restart local v4    # "cmp":I
    :cond_1b
    return v2

    .line 2292
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Comparable;
    .end local v4    # "cmp":I
    :cond_1c
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .registers 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 2380
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "key":Ljava/lang/Object;, "TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p4, :cond_7

    .line 2381
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0

    .line 2383
    :cond_7
    move v0, p1

    .line 2384
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 2386
    .local v1, "high":I
    :goto_a
    if-gt v0, v1, :cond_21

    .line 2387
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2388
    .local v2, "mid":I
    aget-object v3, p0, v2

    .line 2389
    .local v3, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p4, v3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 2390
    .local v4, "cmp":I
    if-gez v4, :cond_1b

    .line 2391
    add-int/lit8 v0, v2, 0x1

    goto :goto_1f

    .line 2392
    :cond_1b
    if-lez v4, :cond_20

    .line 2393
    add-int/lit8 v1, v2, -0x1

    .line 2396
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v4    # "cmp":I
    :goto_1f
    goto :goto_a

    .line 2395
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .restart local v4    # "cmp":I
    :cond_20
    return v2

    .line 2397
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v4    # "cmp":I
    :cond_21
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([SIIS)I
    .registers 8
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # S

    .line 1833
    move v0, p1

    .line 1834
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 1836
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_16

    .line 1837
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1838
    .local v2, "mid":I
    aget-short v3, p0, v2

    .line 1840
    .local v3, "midVal":S
    if-ge v3, p3, :cond_10

    .line 1841
    add-int/lit8 v0, v2, 0x1

    goto :goto_14

    .line 1842
    :cond_10
    if-le v3, p3, :cond_15

    .line 1843
    add-int/lit8 v1, v2, -0x1

    .line 1846
    .end local v2    # "mid":I
    .end local v3    # "midVal":S
    :goto_14
    goto :goto_3

    .line 1845
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":S
    :cond_15
    return v2

    .line 1847
    .end local v2    # "mid":I
    .end local v3    # "midVal":S
    :cond_16
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static blacklist checkLength(II)V
    .registers 5
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 4085
    if-lt p1, p0, :cond_3

    .line 4088
    return-void

    .line 4086
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api compare([BII[BII)I
    .registers 11
    .param p0, "a"    # [B
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [B
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 6232
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6233
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6235
    sub-int v0, p2, p1

    .line 6236
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 6237
    .local v1, "bLength":I
    nop

    .line 6239
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6237
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([BI[BII)I

    move-result v2

    .line 6240
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 6241
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    add-int v4, p4, v2

    aget-byte v4, p3, v4

    invoke-static {v3, v4}, Ljava/lang/Byte;->compare(BB)I

    move-result v3

    return v3

    .line 6244
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compare([B[B)I
    .registers 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 6156
    if-ne p0, p1, :cond_4

    .line 6157
    const/4 v0, 0x0

    return v0

    .line 6158
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 6161
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 6162
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6161
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([B[BI)I

    move-result v0

    .line 6163
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 6164
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Byte;->compare(BB)I

    move-result v1

    return v1

    .line 6167
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 6159
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api compare([CII[CII)I
    .registers 11
    .param p0, "a"    # [C
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [C
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 6741
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6742
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6744
    sub-int v0, p2, p1

    .line 6745
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 6746
    .local v1, "bLength":I
    nop

    .line 6748
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6746
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([CI[CII)I

    move-result v2

    .line 6749
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 6750
    add-int v3, p1, v2

    aget-char v3, p0, v3

    add-int v4, p4, v2

    aget-char v4, p3, v4

    invoke-static {v3, v4}, Ljava/lang/Character;->compare(CC)I

    move-result v3

    return v3

    .line 6753
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compare([C[C)I
    .registers 5
    .param p0, "a"    # [C
    .param p1, "b"    # [C

    .line 6665
    if-ne p0, p1, :cond_4

    .line 6666
    const/4 v0, 0x0

    return v0

    .line 6667
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 6670
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 6671
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6670
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([C[CI)I

    move-result v0

    .line 6672
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 6673
    aget-char v1, p0, v0

    aget-char v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Character;->compare(CC)I

    move-result v1

    return v1

    .line 6676
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 6668
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api compare([DII[DII)I
    .registers 13
    .param p0, "a"    # [D
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [D
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 7519
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7520
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7522
    sub-int v0, p2, p1

    .line 7523
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 7524
    .local v1, "bLength":I
    nop

    .line 7526
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7524
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([DI[DII)I

    move-result v2

    .line 7527
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 7528
    add-int v3, p1, v2

    aget-wide v3, p0, v3

    add-int v5, p4, v2

    aget-wide v5, p3, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    return v3

    .line 7531
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compare([D[D)I
    .registers 7
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 7443
    if-ne p0, p1, :cond_4

    .line 7444
    const/4 v0, 0x0

    return v0

    .line 7445
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 7448
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 7449
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7448
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([D[DI)I

    move-result v0

    .line 7450
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 7451
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    return v1

    .line 7454
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 7446
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api compare([FII[FII)I
    .registers 11
    .param p0, "a"    # [F
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [F
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 7384
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7385
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7387
    sub-int v0, p2, p1

    .line 7388
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 7389
    .local v1, "bLength":I
    nop

    .line 7391
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7389
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([FI[FII)I

    move-result v2

    .line 7392
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 7393
    add-int v3, p1, v2

    aget v3, p0, v3

    add-int v4, p4, v2

    aget v4, p3, v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    return v3

    .line 7396
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compare([F[F)I
    .registers 5
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .line 7308
    if-ne p0, p1, :cond_4

    .line 7309
    const/4 v0, 0x0

    return v0

    .line 7310
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 7313
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 7314
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7313
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([F[FI)I

    move-result v0

    .line 7315
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 7316
    aget v1, p0, v0

    aget v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    return v1

    .line 7319
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 7311
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api compare([III[III)I
    .registers 11
    .param p0, "a"    # [I
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 6876
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6877
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6879
    sub-int v0, p2, p1

    .line 6880
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 6881
    .local v1, "bLength":I
    nop

    .line 6883
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6881
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([II[III)I

    move-result v2

    .line 6884
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 6885
    add-int v3, p1, v2

    aget v3, p0, v3

    add-int v4, p4, v2

    aget v4, p3, v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v3

    return v3

    .line 6888
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compare([I[I)I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 6800
    if-ne p0, p1, :cond_4

    .line 6801
    const/4 v0, 0x0

    return v0

    .line 6802
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 6805
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 6806
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6805
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([I[II)I

    move-result v0

    .line 6807
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 6808
    aget v1, p0, v0

    aget v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    return v1

    .line 6811
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 6803
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api compare([JII[JII)I
    .registers 13
    .param p0, "a"    # [J
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [J
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 7130
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7131
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7133
    sub-int v0, p2, p1

    .line 7134
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 7135
    .local v1, "bLength":I
    nop

    .line 7137
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7135
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([JI[JII)I

    move-result v2

    .line 7138
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 7139
    add-int v3, p1, v2

    aget-wide v3, p0, v3

    add-int v5, p4, v2

    aget-wide v5, p3, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    move-result v3

    return v3

    .line 7142
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compare([J[J)I
    .registers 7
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 7054
    if-ne p0, p1, :cond_4

    .line 7055
    const/4 v0, 0x0

    return v0

    .line 7056
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 7059
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 7060
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7059
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([J[JI)I

    move-result v0

    .line 7061
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 7062
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    return v1

    .line 7065
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 7057
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api compare([Ljava/lang/Comparable;II[Ljava/lang/Comparable;II)I
    .registers 13
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;II[TT;II)I"
        }
    .end annotation

    .line 7680
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    .local p3, "b":[Ljava/lang/Comparable;, "[TT;"
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7681
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7683
    sub-int v0, p2, p1

    .line 7684
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 7685
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7686
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_34

    .line 7687
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    .line 7688
    .local p1, "oa":Ljava/lang/Comparable;, "TT;"
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    .line 7689
    .local p4, "ob":Ljava/lang/Comparable;, "TT;"
    if-eq p1, p4, :cond_2f

    .line 7690
    if-eqz p1, :cond_29

    if-nez p4, :cond_22

    goto :goto_29

    .line 7692
    :cond_22
    invoke-interface {p1, p4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    .line 7693
    .local v6, "v":I
    if-eqz v6, :cond_2f

    .line 7694
    return v6

    .line 7691
    .end local v6    # "v":I
    :cond_29
    :goto_29
    if-nez p1, :cond_2d

    const/4 v6, -0x1

    goto :goto_2e

    :cond_2d
    const/4 v6, 0x1

    :goto_2e
    return v6

    .line 7686
    .end local p1    # "oa":Ljava/lang/Comparable;, "TT;"
    .end local p4    # "ob":Ljava/lang/Comparable;, "TT;"
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_11

    .line 7699
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .local p1, "aFromIndex":I
    .local p4, "bFromIndex":I
    :cond_34
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compare([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;[TT;)I"
        }
    .end annotation

    .line 7588
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    .local p1, "b":[Ljava/lang/Comparable;, "[TT;"
    if-ne p0, p1, :cond_4

    .line 7589
    const/4 v0, 0x0

    return v0

    .line 7591
    :cond_4
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p0, :cond_32

    if-nez p1, :cond_b

    goto :goto_32

    .line 7594
    :cond_b
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7595
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_2e

    .line 7596
    aget-object v4, p0, v3

    .line 7597
    .local v4, "oa":Ljava/lang/Comparable;, "TT;"
    aget-object v5, p1, v3

    .line 7598
    .local v5, "ob":Ljava/lang/Comparable;, "TT;"
    if-eq v4, v5, :cond_2b

    .line 7600
    if-eqz v4, :cond_26

    if-nez v5, :cond_1f

    goto :goto_26

    .line 7602
    :cond_1f
    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    .line 7603
    .local v6, "v":I
    if-eqz v6, :cond_2b

    .line 7604
    return v6

    .line 7601
    .end local v6    # "v":I
    :cond_26
    :goto_26
    if-nez v4, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    .line 7595
    .end local v4    # "oa":Ljava/lang/Comparable;, "TT;"
    .end local v5    # "ob":Ljava/lang/Comparable;, "TT;"
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 7609
    .end local v3    # "i":I
    :cond_2e
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    return v0

    .line 7592
    .end local v2    # "length":I
    :cond_32
    :goto_32
    if-nez p0, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    return v0
.end method

.method public static whitelist test-api compare([Ljava/lang/Object;II[Ljava/lang/Object;IILjava/util/Comparator;)I
    .registers 14
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II[TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 7821
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "b":[Ljava/lang/Object;, "[TT;"
    .local p6, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7822
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7823
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7825
    sub-int v0, p2, p1

    .line 7826
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 7827
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7828
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_2c

    .line 7829
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    .line 7830
    .local p1, "oa":Ljava/lang/Object;, "TT;"
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    .line 7831
    .local p4, "ob":Ljava/lang/Object;, "TT;"
    if-eq p1, p4, :cond_27

    .line 7833
    invoke-interface {p6, p1, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 7834
    .local v6, "v":I
    if-eqz v6, :cond_27

    .line 7835
    return v6

    .line 7828
    .end local v6    # "v":I
    .end local p1    # "oa":Ljava/lang/Object;, "TT;"
    .end local p4    # "ob":Ljava/lang/Object;, "TT;"
    :cond_27
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_14

    .line 7840
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .local p1, "aFromIndex":I
    .local p4, "bFromIndex":I
    :cond_2c
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compare([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 7743
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7744
    if-ne p0, p1, :cond_7

    .line 7745
    const/4 v0, 0x0

    return v0

    .line 7746
    :cond_7
    if-eqz p0, :cond_29

    if-nez p1, :cond_c

    goto :goto_29

    .line 7749
    :cond_c
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7750
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_25

    .line 7751
    aget-object v2, p0, v1

    .line 7752
    .local v2, "oa":Ljava/lang/Object;, "TT;"
    aget-object v3, p1, v1

    .line 7753
    .local v3, "ob":Ljava/lang/Object;, "TT;"
    if-eq v2, v3, :cond_22

    .line 7755
    invoke-interface {p2, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 7756
    .local v4, "v":I
    if-eqz v4, :cond_22

    .line 7757
    return v4

    .line 7750
    .end local v2    # "oa":Ljava/lang/Object;, "TT;"
    .end local v3    # "ob":Ljava/lang/Object;, "TT;"
    .end local v4    # "v":I
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 7762
    .end local v1    # "i":I
    :cond_25
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 7747
    .end local v0    # "length":I
    :cond_29
    :goto_29
    if-nez p0, :cond_2d

    const/4 v0, -0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x1

    :goto_2e
    return v0
.end method

.method public static whitelist test-api compare([SII[SII)I
    .registers 11
    .param p0, "a"    # [S
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [S
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 6487
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6488
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6490
    sub-int v0, p2, p1

    .line 6491
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 6492
    .local v1, "bLength":I
    nop

    .line 6494
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6492
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([SI[SII)I

    move-result v2

    .line 6495
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 6496
    add-int v3, p1, v2

    aget-short v3, p0, v3

    add-int v4, p4, v2

    aget-short v4, p3, v4

    invoke-static {v3, v4}, Ljava/lang/Short;->compare(SS)I

    move-result v3

    return v3

    .line 6499
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compare([S[S)I
    .registers 5
    .param p0, "a"    # [S
    .param p1, "b"    # [S

    .line 6411
    if-ne p0, p1, :cond_4

    .line 6412
    const/4 v0, 0x0

    return v0

    .line 6413
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 6416
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 6417
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6416
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([S[SI)I

    move-result v0

    .line 6418
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 6419
    aget-short v1, p0, v0

    aget-short v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Short;->compare(SS)I

    move-result v1

    return v1

    .line 6422
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 6414
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api compare([ZII[ZII)I
    .registers 11
    .param p0, "a"    # [Z
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [Z
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 6097
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6098
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6100
    sub-int v0, p2, p1

    .line 6101
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 6102
    .local v1, "bLength":I
    nop

    .line 6104
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6102
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([ZI[ZII)I

    move-result v2

    .line 6105
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 6106
    add-int v3, p1, v2

    aget-boolean v3, p0, v3

    add-int v4, p4, v2

    aget-boolean v4, p3, v4

    invoke-static {v3, v4}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v3

    return v3

    .line 6109
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compare([Z[Z)I
    .registers 5
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z

    .line 6020
    if-ne p0, p1, :cond_4

    .line 6021
    const/4 v0, 0x0

    return v0

    .line 6022
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 6025
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 6026
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6025
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([Z[ZI)I

    move-result v0

    .line 6027
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 6028
    aget-boolean v1, p0, v0

    aget-boolean v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v1

    return v1

    .line 6031
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 6023
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api compareUnsigned([BII[BII)I
    .registers 11
    .param p0, "a"    # [B
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [B
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 6352
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6353
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6355
    sub-int v0, p2, p1

    .line 6356
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 6357
    .local v1, "bLength":I
    nop

    .line 6359
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6357
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([BI[BII)I

    move-result v2

    .line 6360
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 6361
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    add-int v4, p4, v2

    aget-byte v4, p3, v4

    invoke-static {v3, v4}, Ljava/lang/Byte;->compareUnsigned(BB)I

    move-result v3

    return v3

    .line 6364
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compareUnsigned([B[B)I
    .registers 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 6284
    if-ne p0, p1, :cond_4

    .line 6285
    const/4 v0, 0x0

    return v0

    .line 6286
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 6289
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 6290
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6289
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([B[BI)I

    move-result v0

    .line 6291
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 6292
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Byte;->compareUnsigned(BB)I

    move-result v1

    return v1

    .line 6295
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 6287
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api compareUnsigned([III[III)I
    .registers 11
    .param p0, "a"    # [I
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 6995
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6996
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6998
    sub-int v0, p2, p1

    .line 6999
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 7000
    .local v1, "bLength":I
    nop

    .line 7002
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7000
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([II[III)I

    move-result v2

    .line 7003
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 7004
    add-int v3, p1, v2

    aget v3, p0, v3

    add-int v4, p4, v2

    aget v4, p3, v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v3

    return v3

    .line 7007
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compareUnsigned([I[I)I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 6928
    if-ne p0, p1, :cond_4

    .line 6929
    const/4 v0, 0x0

    return v0

    .line 6930
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 6933
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 6934
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6933
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([I[II)I

    move-result v0

    .line 6935
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 6936
    aget v1, p0, v0

    aget v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v1

    return v1

    .line 6939
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 6931
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api compareUnsigned([JII[JII)I
    .registers 13
    .param p0, "a"    # [J
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [J
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 7249
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7250
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7252
    sub-int v0, p2, p1

    .line 7253
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 7254
    .local v1, "bLength":I
    nop

    .line 7256
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7254
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([JI[JII)I

    move-result v2

    .line 7257
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 7258
    add-int v3, p1, v2

    aget-wide v3, p0, v3

    add-int v5, p4, v2

    aget-wide v5, p3, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v3

    return v3

    .line 7261
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compareUnsigned([J[J)I
    .registers 7
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 7182
    if-ne p0, p1, :cond_4

    .line 7183
    const/4 v0, 0x0

    return v0

    .line 7184
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 7187
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 7188
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7187
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([J[JI)I

    move-result v0

    .line 7189
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 7190
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v1

    return v1

    .line 7193
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 7185
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api compareUnsigned([SII[SII)I
    .registers 11
    .param p0, "a"    # [S
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [S
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 6606
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6607
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 6609
    sub-int v0, p2, p1

    .line 6610
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 6611
    .local v1, "bLength":I
    nop

    .line 6613
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6611
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([SI[SII)I

    move-result v2

    .line 6614
    .local v2, "i":I
    if-ltz v2, :cond_24

    .line 6615
    add-int v3, p1, v2

    aget-short v3, p0, v3

    add-int v4, p4, v2

    aget-short v4, p3, v4

    invoke-static {v3, v4}, Ljava/lang/Short;->compareUnsigned(SS)I

    move-result v3

    return v3

    .line 6618
    :cond_24
    sub-int v3, v0, v1

    return v3
.end method

.method public static whitelist test-api compareUnsigned([S[S)I
    .registers 5
    .param p0, "a"    # [S
    .param p1, "b"    # [S

    .line 6539
    if-ne p0, p1, :cond_4

    .line 6540
    const/4 v0, 0x0

    return v0

    .line 6541
    :cond_4
    if-eqz p0, :cond_22

    if-nez p1, :cond_9

    goto :goto_22

    .line 6544
    :cond_9
    array-length v0, p0

    array-length v1, p1

    .line 6545
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6544
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([S[SI)I

    move-result v0

    .line 6546
    .local v0, "i":I
    if-ltz v0, :cond_1e

    .line 6547
    aget-short v1, p0, v0

    aget-short v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Short;->compareUnsigned(SS)I

    move-result v1

    return v1

    .line 6550
    :cond_1e
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    .line 6542
    .end local v0    # "i":I
    :cond_22
    :goto_22
    if-nez p0, :cond_26

    const/4 v0, -0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static whitelist test-api copyOf([BI)[B
    .registers 5
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    .line 3785
    new-array v0, p1, [B

    .line 3786
    .local v0, "copy":[B
    array-length v1, p0

    .line 3787
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3786
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3788
    return-object v0
.end method

.method public static whitelist test-api copyOf([CI)[C
    .registers 5
    .param p0, "original"    # [C
    .param p1, "newLength"    # I

    .line 3906
    new-array v0, p1, [C

    .line 3907
    .local v0, "copy":[C
    array-length v1, p0

    .line 3908
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3907
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3909
    return-object v0
.end method

.method public static whitelist test-api copyOf([DI)[D
    .registers 5
    .param p0, "original"    # [D
    .param p1, "newLength"    # I

    .line 3966
    new-array v0, p1, [D

    .line 3967
    .local v0, "copy":[D
    array-length v1, p0

    .line 3968
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3967
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3969
    return-object v0
.end method

.method public static whitelist test-api copyOf([FI)[F
    .registers 5
    .param p0, "original"    # [F
    .param p1, "newLength"    # I

    .line 3936
    new-array v0, p1, [F

    .line 3937
    .local v0, "copy":[F
    array-length v1, p0

    .line 3938
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3937
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3939
    return-object v0
.end method

.method public static whitelist test-api copyOf([II)[I
    .registers 5
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    .line 3845
    new-array v0, p1, [I

    .line 3846
    .local v0, "copy":[I
    array-length v1, p0

    .line 3847
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3846
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3848
    return-object v0
.end method

.method public static whitelist test-api copyOf([JI)[J
    .registers 5
    .param p0, "original"    # [J
    .param p1, "newLength"    # I

    .line 3876
    new-array v0, p1, [J

    .line 3877
    .local v0, "copy":[J
    array-length v1, p0

    .line 3878
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3877
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3879
    return-object v0
.end method

.method public static whitelist test-api copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 3723
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class<",
            "+[TT;>;)[TT;"
        }
    .end annotation

    .line 3753
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p2, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    const-class v0, [Ljava/lang/Object;

    if-ne p2, v0, :cond_7

    .line 3754
    new-array v0, p1, [Ljava/lang/Object;

    goto :goto_11

    .line 3755
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_11
    nop

    .line 3756
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    .line 3757
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3756
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3758
    return-object v0
.end method

.method public static whitelist test-api copyOf([SI)[S
    .registers 5
    .param p0, "original"    # [S
    .param p1, "newLength"    # I

    .line 3815
    new-array v0, p1, [S

    .line 3816
    .local v0, "copy":[S
    array-length v1, p0

    .line 3817
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3816
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3818
    return-object v0
.end method

.method public static whitelist test-api copyOf([ZI)[Z
    .registers 5
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    .line 3996
    new-array v0, p1, [Z

    .line 3997
    .local v0, "copy":[Z
    array-length v1, p0

    .line 3998
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3997
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3999
    return-object v0
.end method

.method public static whitelist test-api copyOfRange([BII)[B
    .registers 4
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4125
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRangeByte([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api copyOfRange([CII)[C
    .registers 4
    .param p0, "original"    # [C
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4317
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRangeChar([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api copyOfRange([DII)[D
    .registers 4
    .param p0, "original"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4415
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRangeDouble([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api copyOfRange([FII)[F
    .registers 4
    .param p0, "original"    # [F
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4366
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRangeFloat([FII)[F

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api copyOfRange([III)[I
    .registers 4
    .param p0, "original"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4221
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRangeInt([III)[I

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api copyOfRange([JII)[J
    .registers 4
    .param p0, "original"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4269
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRangeLong([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 4033
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 8
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class<",
            "+[TT;>;)[TT;"
        }
    .end annotation

    .line 4071
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p3, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    sub-int v0, p2, p1

    .line 4072
    .local v0, "newLength":I
    if-ltz v0, :cond_21

    .line 4075
    const-class v1, [Ljava/lang/Object;

    if-ne p3, v1, :cond_b

    .line 4076
    new-array v1, v0, [Ljava/lang/Object;

    goto :goto_15

    .line 4077
    :cond_b
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    :goto_15
    nop

    .line 4078
    .local v1, "copy":[Ljava/lang/Object;, "[TT;"
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 4079
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4078
    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4080
    return-object v1

    .line 4073
    .end local v1    # "copy":[Ljava/lang/Object;, "[TT;"
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api copyOfRange([SII)[S
    .registers 4
    .param p0, "original"    # [S
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4173
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRangeShort([SII)[S

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api copyOfRange([ZII)[Z
    .registers 4
    .param p0, "original"    # [Z
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4464
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRangeBoolean([ZII)[Z

    move-result-object v0

    return-object v0
.end method

.method private static blacklist copyOfRangeBoolean([ZII)[Z
    .registers 7
    .param p0, "original"    # [Z
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4470
    invoke-static {p1, p2}, Ljava/util/Arrays;->checkLength(II)V

    .line 4471
    sub-int v0, p2, p1

    .line 4472
    .local v0, "newLength":I
    new-array v1, v0, [Z

    .line 4473
    .local v1, "copy":[Z
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 4474
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4473
    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4475
    return-object v1
.end method

.method private static blacklist copyOfRangeByte([BII)[B
    .registers 7
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4130
    invoke-static {p1, p2}, Ljava/util/Arrays;->checkLength(II)V

    .line 4131
    sub-int v0, p2, p1

    .line 4132
    .local v0, "newLength":I
    new-array v1, v0, [B

    .line 4133
    .local v1, "copy":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 4134
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4133
    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4135
    return-object v1
.end method

.method private static blacklist copyOfRangeChar([CII)[C
    .registers 7
    .param p0, "original"    # [C
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4323
    invoke-static {p1, p2}, Ljava/util/Arrays;->checkLength(II)V

    .line 4324
    sub-int v0, p2, p1

    .line 4325
    .local v0, "newLength":I
    new-array v1, v0, [C

    .line 4326
    .local v1, "copy":[C
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 4327
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4326
    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4328
    return-object v1
.end method

.method private static blacklist copyOfRangeDouble([DII)[D
    .registers 7
    .param p0, "original"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4421
    invoke-static {p1, p2}, Ljava/util/Arrays;->checkLength(II)V

    .line 4422
    sub-int v0, p2, p1

    .line 4423
    .local v0, "newLength":I
    new-array v1, v0, [D

    .line 4424
    .local v1, "copy":[D
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 4425
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4424
    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4426
    return-object v1
.end method

.method private static blacklist copyOfRangeFloat([FII)[F
    .registers 7
    .param p0, "original"    # [F
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4372
    invoke-static {p1, p2}, Ljava/util/Arrays;->checkLength(II)V

    .line 4373
    sub-int v0, p2, p1

    .line 4374
    .local v0, "newLength":I
    new-array v1, v0, [F

    .line 4375
    .local v1, "copy":[F
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 4376
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4375
    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4377
    return-object v1
.end method

.method private static blacklist copyOfRangeInt([III)[I
    .registers 7
    .param p0, "original"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4226
    invoke-static {p1, p2}, Ljava/util/Arrays;->checkLength(II)V

    .line 4227
    sub-int v0, p2, p1

    .line 4228
    .local v0, "newLength":I
    new-array v1, v0, [I

    .line 4229
    .local v1, "copy":[I
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 4230
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4229
    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4231
    return-object v1
.end method

.method private static blacklist copyOfRangeLong([JII)[J
    .registers 7
    .param p0, "original"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4274
    invoke-static {p1, p2}, Ljava/util/Arrays;->checkLength(II)V

    .line 4275
    sub-int v0, p2, p1

    .line 4276
    .local v0, "newLength":I
    new-array v1, v0, [J

    .line 4277
    .local v1, "copy":[J
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 4278
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4277
    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4279
    return-object v1
.end method

.method private static blacklist copyOfRangeShort([SII)[S
    .registers 7
    .param p0, "original"    # [S
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4178
    invoke-static {p1, p2}, Ljava/util/Arrays;->checkLength(II)V

    .line 4179
    sub-int v0, p2, p1

    .line 4180
    .local v0, "newLength":I
    new-array v1, v0, [S

    .line 4181
    .local v1, "copy":[S
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 4182
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4181
    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4183
    return-object v1
.end method

.method public static whitelist test-api deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .param p0, "a1"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    .line 5040
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 5041
    return v0

    .line 5042
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_27

    if-nez p1, :cond_a

    goto :goto_27

    .line 5044
    :cond_a
    array-length v2, p0

    .line 5045
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 5046
    return v1

    .line 5048
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_26

    .line 5049
    aget-object v4, p0, v3

    .line 5050
    .local v4, "e1":Ljava/lang/Object;
    aget-object v5, p1, v3

    .line 5052
    .local v5, "e2":Ljava/lang/Object;
    if-ne v4, v5, :cond_19

    .line 5053
    goto :goto_23

    .line 5054
    :cond_19
    if-nez v4, :cond_1c

    .line 5055
    return v1

    .line 5058
    :cond_1c
    invoke-static {v4, v5}, Ljava/util/Arrays;->deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 5060
    .local v6, "eq":Z
    if-nez v6, :cond_23

    .line 5061
    return v1

    .line 5048
    .end local v4    # "e1":Ljava/lang/Object;
    .end local v5    # "e2":Ljava/lang/Object;
    .end local v6    # "eq":Z
    :cond_23
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 5063
    .end local v3    # "i":I
    :cond_26
    return v0

    .line 5043
    .end local v2    # "length":I
    :cond_27
    :goto_27
    return v1
.end method

.method static greylist-max-o deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    .line 5067
    nop

    .line 5069
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 5070
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .local v0, "eq":Z
    goto/16 :goto_b3

    .line 5071
    .end local v0    # "eq":Z
    :cond_15
    instance-of v0, p0, [B

    if-eqz v0, :cond_29

    instance-of v0, p1, [B

    if-eqz v0, :cond_29

    .line 5072
    move-object v0, p0

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto/16 :goto_b3

    .line 5073
    .end local v0    # "eq":Z
    :cond_29
    instance-of v0, p0, [S

    if-eqz v0, :cond_3d

    instance-of v0, p1, [S

    if-eqz v0, :cond_3d

    .line 5074
    move-object v0, p0

    check-cast v0, [S

    move-object v1, p1

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto/16 :goto_b3

    .line 5075
    .end local v0    # "eq":Z
    :cond_3d
    instance-of v0, p0, [I

    if-eqz v0, :cond_50

    instance-of v0, p1, [I

    if-eqz v0, :cond_50

    .line 5076
    move-object v0, p0

    check-cast v0, [I

    move-object v1, p1

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 5077
    .end local v0    # "eq":Z
    :cond_50
    instance-of v0, p0, [J

    if-eqz v0, :cond_63

    instance-of v0, p1, [J

    if-eqz v0, :cond_63

    .line 5078
    move-object v0, p0

    check-cast v0, [J

    move-object v1, p1

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 5079
    .end local v0    # "eq":Z
    :cond_63
    instance-of v0, p0, [C

    if-eqz v0, :cond_76

    instance-of v0, p1, [C

    if-eqz v0, :cond_76

    .line 5080
    move-object v0, p0

    check-cast v0, [C

    move-object v1, p1

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 5081
    .end local v0    # "eq":Z
    :cond_76
    instance-of v0, p0, [F

    if-eqz v0, :cond_89

    instance-of v0, p1, [F

    if-eqz v0, :cond_89

    .line 5082
    move-object v0, p0

    check-cast v0, [F

    move-object v1, p1

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 5083
    .end local v0    # "eq":Z
    :cond_89
    instance-of v0, p0, [D

    if-eqz v0, :cond_9c

    instance-of v0, p1, [D

    if-eqz v0, :cond_9c

    .line 5084
    move-object v0, p0

    check-cast v0, [D

    move-object v1, p1

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 5085
    .end local v0    # "eq":Z
    :cond_9c
    instance-of v0, p0, [Z

    if-eqz v0, :cond_af

    instance-of v0, p1, [Z

    if-eqz v0, :cond_af

    .line 5086
    move-object v0, p0

    check-cast v0, [Z

    move-object v1, p1

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 5088
    .end local v0    # "eq":Z
    :cond_af
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5089
    .restart local v0    # "eq":Z
    :goto_b3
    return v0
.end method

.method public static whitelist test-api deepHashCode([Ljava/lang/Object;)I
    .registers 7
    .param p0, "a"    # [Ljava/lang/Object;

    .line 4967
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4968
    return v0

    .line 4970
    :cond_4
    const/4 v1, 0x1

    .line 4972
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_35

    aget-object v3, p0, v0

    .line 4975
    .local v3, "element":Ljava/lang/Object;
    if-nez v3, :cond_e

    .line 4976
    const/4 v4, 0x0

    .local v4, "elementHash":I
    goto :goto_2e

    .line 4977
    .end local v4    # "elementHash":I
    :cond_e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v4

    .local v5, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_1e

    .line 4978
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .restart local v4    # "elementHash":I
    goto :goto_2e

    .line 4979
    .end local v4    # "elementHash":I
    :cond_1e
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_2a

    .line 4980
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v4

    .restart local v4    # "elementHash":I
    goto :goto_2e

    .line 4982
    .end local v4    # "elementHash":I
    :cond_2a
    invoke-static {v3, v5}, Ljava/util/Arrays;->primitiveArrayHashCode(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v4

    .line 4984
    .end local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "elementHash":I
    :goto_2e
    mul-int/lit8 v5, v1, 0x1f

    add-int v1, v5, v4

    .line 4972
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "elementHash":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4987
    :cond_35
    return v1
.end method

.method public static whitelist test-api deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "a"    # [Ljava/lang/Object;

    .line 5401
    if-nez p0, :cond_5

    .line 5402
    const-string v0, "null"

    return-object v0

    .line 5404
    :cond_5
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x14

    .line 5405
    .local v0, "bufLen":I
    array-length v1, p0

    if-eqz v1, :cond_10

    if-gtz v0, :cond_10

    .line 5406
    const v0, 0x7fffffff

    .line 5407
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5408
    .local v1, "buf":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 5409
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .registers 9
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5414
    .local p2, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<[Ljava/lang/Object;>;"
    const-string v0, "null"

    if-nez p0, :cond_8

    .line 5415
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5416
    return-void

    .line 5418
    :cond_8
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 5419
    .local v1, "iMax":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 5420
    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5421
    return-void

    .line 5424
    :cond_14
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5425
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5426
    const/4 v2, 0x0

    .line 5428
    .local v2, "i":I
    :goto_1d
    aget-object v3, p0, v2

    .line 5429
    .local v3, "element":Ljava/lang/Object;
    if-nez v3, :cond_26

    .line 5430
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c4

    .line 5432
    :cond_26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 5434
    .local v4, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 5435
    const-class v5, [B

    if-ne v4, v5, :cond_40

    .line 5436
    move-object v5, v3

    check-cast v5, [B

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c4

    .line 5437
    :cond_40
    const-class v5, [S

    if-ne v4, v5, :cond_50

    .line 5438
    move-object v5, v3

    check-cast v5, [S

    invoke-static {v5}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c4

    .line 5439
    :cond_50
    const-class v5, [I

    if-ne v4, v5, :cond_5f

    .line 5440
    move-object v5, v3

    check-cast v5, [I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 5441
    :cond_5f
    const-class v5, [J

    if-ne v4, v5, :cond_6e

    .line 5442
    move-object v5, v3

    check-cast v5, [J

    invoke-static {v5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 5443
    :cond_6e
    const-class v5, [C

    if-ne v4, v5, :cond_7d

    .line 5444
    move-object v5, v3

    check-cast v5, [C

    invoke-static {v5}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 5445
    :cond_7d
    const-class v5, [F

    if-ne v4, v5, :cond_8c

    .line 5446
    move-object v5, v3

    check-cast v5, [F

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 5447
    :cond_8c
    const-class v5, [D

    if-ne v4, v5, :cond_9b

    .line 5448
    move-object v5, v3

    check-cast v5, [D

    invoke-static {v5}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 5449
    :cond_9b
    const-class v5, [Z

    if-ne v4, v5, :cond_aa

    .line 5450
    move-object v5, v3

    check-cast v5, [Z

    invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 5452
    :cond_aa
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 5453
    const-string v5, "[...]"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 5455
    :cond_b6
    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    goto :goto_c4

    .line 5458
    :cond_bd
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5461
    .end local v4    # "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_c4
    if-ne v2, v1, :cond_d0

    .line 5462
    nop

    .line 5465
    .end local v2    # "i":I
    .end local v3    # "element":Ljava/lang/Object;
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5466
    invoke-interface {p2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5467
    return-void

    .line 5463
    .restart local v2    # "i":I
    .restart local v3    # "element":Ljava/lang/Object;
    :cond_d0
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5426
    .end local v3    # "element":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d
.end method

.method public static whitelist test-api equals([BII[BII)Z
    .registers 12
    .param p0, "a"    # [B
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [B
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2858
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2859
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2861
    sub-int v0, p2, p1

    .line 2862
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2863
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 2864
    return v2

    .line 2874
    :cond_10
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_11
    if-ge v3, v0, :cond_23

    .line 2875
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-byte p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-byte p4, p3, p4

    if-eq p1, p4, :cond_1e

    .line 2876
    return v2

    .line 2874
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_11

    .line 2879
    .end local v3    # "idx":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_23
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist test-api equals([B[B)Z
    .registers 8
    .param p0, "a"    # [B
    .param p1, "a2"    # [B

    .line 2801
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2802
    return v0

    .line 2803
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_a

    goto :goto_1d

    .line 2806
    :cond_a
    array-length v2, p0

    .line 2807
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2808
    return v1

    .line 2814
    :cond_f
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_10
    if-ge v3, v2, :cond_1c

    .line 2815
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_19

    .line 2816
    return v1

    .line 2814
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2819
    .end local v3    # "idx":I
    :cond_1c
    return v0

    .line 2804
    .end local v2    # "length":I
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static whitelist test-api equals([CII[CII)Z
    .registers 12
    .param p0, "a"    # [C
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [C
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2761
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2762
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2764
    sub-int v0, p2, p1

    .line 2765
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2766
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 2767
    return v2

    .line 2777
    :cond_10
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_11
    if-ge v3, v0, :cond_23

    .line 2778
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-char p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-char p4, p3, p4

    if-eq p1, p4, :cond_1e

    .line 2779
    return v2

    .line 2777
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_11

    .line 2782
    .end local v3    # "idx":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_23
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist test-api equals([C[C)Z
    .registers 8
    .param p0, "a"    # [C
    .param p1, "a2"    # [C

    .line 2704
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2705
    return v0

    .line 2706
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_a

    goto :goto_1d

    .line 2709
    :cond_a
    array-length v2, p0

    .line 2710
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2711
    return v1

    .line 2717
    :cond_f
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_10
    if-ge v3, v2, :cond_1c

    .line 2718
    aget-char v4, p0, v3

    aget-char v5, p1, v3

    if-eq v4, v5, :cond_19

    .line 2719
    return v1

    .line 2717
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2722
    .end local v3    # "idx":I
    :cond_1c
    return v0

    .line 2707
    .end local v2    # "length":I
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static whitelist test-api equals([DII[DII)Z
    .registers 15
    .param p0, "a"    # [D
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [D
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 3063
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3064
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3066
    sub-int v0, p2, p1

    .line 3067
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 3068
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 3069
    return v2

    .line 3078
    :cond_10
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_11
    if-ge v3, v0, :cond_2d

    .line 3079
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-wide v5, p0, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    add-int/lit8 p1, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local p1, "bFromIndex":I
    aget-wide v7, p3, p4

    .line 3080
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long p4, v5, v7

    if-eqz p4, :cond_28

    .line 3081
    return v2

    .line 3078
    :cond_28
    add-int/lit8 v3, v3, 0x1

    move p4, p1

    move p1, v4

    goto :goto_11

    .line 3084
    .end local v3    # "idx":I
    .end local v4    # "aFromIndex":I
    .local p1, "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_2d
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist test-api equals([D[D)Z
    .registers 10
    .param p0, "a"    # [D
    .param p1, "a2"    # [D

    .line 3000
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 3001
    return v0

    .line 3002
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_27

    if-nez p1, :cond_a

    goto :goto_27

    .line 3005
    :cond_a
    array-length v2, p0

    .line 3006
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 3007
    return v1

    .line 3013
    :cond_f
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_10
    if-ge v3, v2, :cond_26

    .line 3014
    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    aget-wide v6, p1, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_23

    .line 3015
    return v1

    .line 3013
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3018
    .end local v3    # "idx":I
    :cond_26
    return v0

    .line 3003
    .end local v2    # "length":I
    :cond_27
    :goto_27
    return v1
.end method

.method public static whitelist test-api equals([FII[FII)Z
    .registers 12
    .param p0, "a"    # [F
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [F
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 3170
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3171
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3173
    sub-int v0, p2, p1

    .line 3174
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 3175
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 3176
    return v2

    .line 3185
    :cond_10
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_11
    if-ge v3, v0, :cond_2b

    .line 3186
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget p1, p0, p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget p4, p3, p4

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    if-eq p1, p4, :cond_26

    .line 3187
    return v2

    .line 3185
    :cond_26
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_11

    .line 3190
    .end local v3    # "idx":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_2b
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist test-api equals([F[F)Z
    .registers 8
    .param p0, "a"    # [F
    .param p1, "a2"    # [F

    .line 3108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 3109
    return v0

    .line 3110
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_25

    if-nez p1, :cond_a

    goto :goto_25

    .line 3113
    :cond_a
    array-length v2, p0

    .line 3114
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 3115
    return v1

    .line 3120
    :cond_f
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_10
    if-ge v3, v2, :cond_24

    .line 3121
    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    aget v5, p1, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_21

    .line 3122
    return v1

    .line 3120
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3125
    .end local v3    # "idx":I
    :cond_24
    return v0

    .line 3111
    .end local v2    # "length":I
    :cond_25
    :goto_25
    return v1
.end method

.method public static whitelist test-api equals([III[III)Z
    .registers 12
    .param p0, "a"    # [I
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2568
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2569
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2571
    sub-int v0, p2, p1

    .line 2572
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2573
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 2574
    return v2

    .line 2584
    :cond_10
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_11
    if-ge v3, v0, :cond_23

    .line 2585
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget p4, p3, p4

    if-eq p1, p4, :cond_1e

    .line 2586
    return v2

    .line 2584
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_11

    .line 2589
    .end local v3    # "idx":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_23
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist test-api equals([I[I)Z
    .registers 8
    .param p0, "a"    # [I
    .param p1, "a2"    # [I

    .line 2511
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2512
    return v0

    .line 2513
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_a

    goto :goto_1d

    .line 2516
    :cond_a
    array-length v2, p0

    .line 2517
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2518
    return v1

    .line 2524
    :cond_f
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_10
    if-ge v3, v2, :cond_1c

    .line 2525
    aget v4, p0, v3

    aget v5, p1, v3

    if-eq v4, v5, :cond_19

    .line 2526
    return v1

    .line 2524
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2529
    .end local v3    # "idx":I
    :cond_1c
    return v0

    .line 2514
    .end local v2    # "length":I
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static whitelist test-api equals([JII[JII)Z
    .registers 15
    .param p0, "a"    # [J
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [J
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2472
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2473
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2475
    sub-int v0, p2, p1

    .line 2476
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2477
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 2478
    return v2

    .line 2488
    :cond_10
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_11
    if-ge v3, v0, :cond_25

    .line 2489
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-wide v5, p0, p1

    add-int/lit8 p1, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local p1, "bFromIndex":I
    aget-wide v7, p3, p4

    cmp-long p4, v5, v7

    if-eqz p4, :cond_20

    .line 2490
    return v2

    .line 2488
    :cond_20
    add-int/lit8 v3, v3, 0x1

    move p4, p1

    move p1, v4

    goto :goto_11

    .line 2493
    .end local v3    # "idx":I
    .end local v4    # "aFromIndex":I
    .local p1, "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_25
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist test-api equals([J[J)Z
    .registers 10
    .param p0, "a"    # [J
    .param p1, "a2"    # [J

    .line 2415
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2416
    return v0

    .line 2417
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1f

    if-nez p1, :cond_a

    goto :goto_1f

    .line 2420
    :cond_a
    array-length v2, p0

    .line 2421
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2422
    return v1

    .line 2428
    :cond_f
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_10
    if-ge v3, v2, :cond_1e

    .line 2429
    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1b

    .line 2430
    return v1

    .line 2428
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2433
    .end local v3    # "idx":I
    :cond_1e
    return v0

    .line 2418
    .end local v2    # "length":I
    :cond_1f
    :goto_1f
    return v1
.end method

.method public static whitelist test-api equals([Ljava/lang/Object;II[Ljava/lang/Object;II)Z
    .registers 12
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [Ljava/lang/Object;
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 3265
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3266
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3268
    sub-int v0, p2, p1

    .line 3269
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 3270
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 3271
    return v2

    .line 3273
    :cond_10
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_27

    .line 3274
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    invoke-static {p1, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 3275
    return v2

    .line 3273
    :cond_22
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_11

    .line 3278
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_27
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist test-api equals([Ljava/lang/Object;II[Ljava/lang/Object;IILjava/util/Comparator;)Z
    .registers 13
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II[TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 3361
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "b":[Ljava/lang/Object;, "[TT;"
    .local p6, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3362
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3363
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3365
    sub-int v0, p2, p1

    .line 3366
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 3367
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    .line 3368
    return v2

    .line 3370
    :cond_13
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v0, :cond_2a

    .line 3371
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    invoke-interface {p6, p1, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_25

    .line 3372
    return v2

    .line 3370
    :cond_25
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_14

    .line 3375
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_2a
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist test-api equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 8
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    .line 3211
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 3212
    return v0

    .line 3213
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_21

    if-nez p1, :cond_a

    goto :goto_21

    .line 3216
    :cond_a
    array-length v2, p0

    .line 3217
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 3218
    return v1

    .line 3220
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_20

    .line 3221
    aget-object v4, p0, v3

    aget-object v5, p1, v3

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 3222
    return v1

    .line 3220
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3225
    .end local v3    # "i":I
    :cond_20
    return v0

    .line 3214
    .end local v2    # "length":I
    :cond_21
    :goto_21
    return v1
.end method

.method public static whitelist test-api equals([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 3303
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "a2":[Ljava/lang/Object;, "[TT;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3304
    const/4 v0, 0x1

    if-ne p0, p1, :cond_7

    .line 3305
    return v0

    .line 3306
    :cond_7
    const/4 v1, 0x0

    if-eqz p0, :cond_24

    if-nez p1, :cond_d

    goto :goto_24

    .line 3309
    :cond_d
    array-length v2, p0

    .line 3310
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_12

    .line 3311
    return v1

    .line 3313
    :cond_12
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_23

    .line 3314
    aget-object v4, p0, v3

    aget-object v5, p1, v3

    invoke-interface {p2, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_20

    .line 3315
    return v1

    .line 3313
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3318
    .end local v3    # "i":I
    :cond_23
    return v0

    .line 3307
    .end local v2    # "length":I
    :cond_24
    :goto_24
    return v1
.end method

.method public static whitelist test-api equals([SII[SII)Z
    .registers 12
    .param p0, "a"    # [S
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [S
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2664
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2665
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2667
    sub-int v0, p2, p1

    .line 2668
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2669
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 2670
    return v2

    .line 2680
    :cond_10
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_11
    if-ge v3, v0, :cond_23

    .line 2681
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-short p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-short p4, p3, p4

    if-eq p1, p4, :cond_1e

    .line 2682
    return v2

    .line 2680
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_11

    .line 2685
    .end local v3    # "idx":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_23
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist test-api equals([S[S)Z
    .registers 8
    .param p0, "a"    # [S
    .param p1, "a2"    # [S

    .line 2607
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2608
    return v0

    .line 2609
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_a

    goto :goto_1d

    .line 2612
    :cond_a
    array-length v2, p0

    .line 2613
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2614
    return v1

    .line 2620
    :cond_f
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_10
    if-ge v3, v2, :cond_1c

    .line 2621
    aget-short v4, p0, v3

    aget-short v5, p1, v3

    if-eq v4, v5, :cond_19

    .line 2622
    return v1

    .line 2620
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2625
    .end local v3    # "idx":I
    :cond_1c
    return v0

    .line 2610
    .end local v2    # "length":I
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static whitelist test-api equals([ZII[ZII)Z
    .registers 12
    .param p0, "a"    # [Z
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [Z
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 2954
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2955
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2957
    sub-int v0, p2, p1

    .line 2958
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 2959
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 2960
    return v2

    .line 2970
    :cond_10
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_11
    if-ge v3, v0, :cond_23

    .line 2971
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-boolean p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-boolean p4, p3, p4

    if-eq p1, p4, :cond_1e

    .line 2972
    return v2

    .line 2970
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_11

    .line 2976
    .end local v3    # "idx":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_23
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist test-api equals([Z[Z)Z
    .registers 8
    .param p0, "a"    # [Z
    .param p1, "a2"    # [Z

    .line 2897
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2898
    return v0

    .line 2899
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_a

    goto :goto_1d

    .line 2902
    :cond_a
    array-length v2, p0

    .line 2903
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2904
    return v1

    .line 2910
    :cond_f
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_10
    if-ge v3, v2, :cond_1c

    .line 2911
    aget-boolean v4, p0, v3

    aget-boolean v5, p1, v3

    if-eq v4, v5, :cond_19

    .line 2912
    return v1

    .line 2910
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2915
    .end local v3    # "idx":I
    :cond_1c
    return v0

    .line 2900
    .end local v2    # "length":I
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static whitelist test-api fill([BB)V
    .registers 4
    .param p0, "a"    # [B
    .param p1, "val"    # B

    .line 3528
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3529
    aput-byte p1, p0, v0

    .line 3528
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3530
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist test-api fill([BIIB)V
    .registers 5
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # B

    .line 3550
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3551
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3552
    aput-byte p3, p0, v0

    .line 3551
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3553
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist test-api fill([CC)V
    .registers 4
    .param p0, "a"    # [C
    .param p1, "val"    # C

    .line 3493
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3494
    aput-char p1, p0, v0

    .line 3493
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3495
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist test-api fill([CIIC)V
    .registers 5
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # C

    .line 3515
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3516
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3517
    aput-char p3, p0, v0

    .line 3516
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3518
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist test-api fill([DD)V
    .registers 5
    .param p0, "a"    # [D
    .param p1, "val"    # D

    .line 3599
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3600
    aput-wide p1, p0, v0

    .line 3599
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3601
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist test-api fill([DIID)V
    .registers 6
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # D

    .line 3621
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3622
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3623
    aput-wide p3, p0, v0

    .line 3622
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3624
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist test-api fill([FF)V
    .registers 4
    .param p0, "a"    # [F
    .param p1, "val"    # F

    .line 3634
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3635
    aput p1, p0, v0

    .line 3634
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3636
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist test-api fill([FIIF)V
    .registers 5
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # F

    .line 3656
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3657
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3658
    aput p3, p0, v0

    .line 3657
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3659
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist test-api fill([II)V
    .registers 4
    .param p0, "a"    # [I
    .param p1, "val"    # I

    .line 3423
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3424
    aput p1, p0, v0

    .line 3423
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3425
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist test-api fill([IIII)V
    .registers 5
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # I

    .line 3445
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3446
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3447
    aput p3, p0, v0

    .line 3446
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3448
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist test-api fill([JIIJ)V
    .registers 6
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # J

    .line 3410
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3411
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3412
    aput-wide p3, p0, v0

    .line 3411
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3413
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist test-api fill([JJ)V
    .registers 5
    .param p0, "a"    # [J
    .param p1, "val"    # J

    .line 3388
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3389
    aput-wide p1, p0, v0

    .line 3388
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3390
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist test-api fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .line 3695
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3696
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3697
    aput-object p3, p0, v0

    .line 3696
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3698
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist test-api fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    .line 3671
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3672
    aput-object p1, p0, v0

    .line 3671
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3673
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist test-api fill([SIIS)V
    .registers 5
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # S

    .line 3480
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3481
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3482
    aput-short p3, p0, v0

    .line 3481
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3483
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist test-api fill([SS)V
    .registers 4
    .param p0, "a"    # [S
    .param p1, "val"    # S

    .line 3458
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3459
    aput-short p1, p0, v0

    .line 3458
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3460
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist test-api fill([ZIIZ)V
    .registers 5
    .param p0, "a"    # [Z
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Z

    .line 3586
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3587
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3588
    aput-boolean p3, p0, v0

    .line 3587
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3589
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist test-api fill([ZZ)V
    .registers 4
    .param p0, "a"    # [Z
    .param p1, "val"    # Z

    .line 3563
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3564
    aput-boolean p1, p0, v0

    .line 3563
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3565
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist test-api hashCode([B)I
    .registers 5
    .param p0, "a"    # [B

    .line 4812
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4813
    return v0

    .line 4815
    :cond_4
    array-length v1, p0

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_18

    .line 4818
    array-length v1, p0

    const/16 v3, 0x8

    invoke-static {p0, v0, v1, v2, v3}, Ljdk/internal/util/ArraysSupport;->vectorizedHashCode(Ljava/lang/Object;IIII)I

    move-result v2

    goto :goto_17

    .line 4817
    :pswitch_11
    aget-byte v0, p0, v0

    add-int/lit8 v2, v0, 0x1f

    goto :goto_17

    .line 4816
    :pswitch_16
    nop

    .line 4815
    :goto_17
    return v2

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method public static whitelist test-api hashCode([C)I
    .registers 5
    .param p0, "a"    # [C

    .line 4785
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4786
    return v0

    .line 4788
    :cond_4
    array-length v1, p0

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_18

    .line 4791
    array-length v1, p0

    const/4 v3, 0x5

    invoke-static {p0, v0, v1, v2, v3}, Ljdk/internal/util/ArraysSupport;->vectorizedHashCode(Ljava/lang/Object;IIII)I

    move-result v2

    goto :goto_16

    .line 4790
    :pswitch_10
    aget-char v0, p0, v0

    add-int/lit8 v2, v0, 0x1f

    goto :goto_16

    .line 4789
    :pswitch_15
    nop

    .line 4788
    :goto_16
    return v2

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

.method public static whitelist test-api hashCode([D)I
    .registers 11
    .param p0, "a"    # [D

    .line 4893
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4894
    return v0

    .line 4896
    :cond_4
    const/4 v1, 0x1

    .line 4897
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_1b

    aget-wide v3, p0, v0

    .line 4898
    .local v3, "element":D
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 4899
    .local v5, "bits":J
    mul-int/lit8 v7, v1, 0x1f

    const/16 v8, 0x20

    ushr-long v8, v5, v8

    xor-long/2addr v8, v5

    long-to-int v8, v8

    add-int v1, v7, v8

    .line 4897
    .end local v3    # "element":D
    .end local v5    # "bits":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4901
    :cond_1b
    return v1
.end method

.method public static whitelist test-api hashCode([F)I
    .registers 7
    .param p0, "a"    # [F

    .line 4866
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4867
    return v0

    .line 4869
    :cond_4
    const/4 v1, 0x1

    .line 4870
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_15

    aget v3, p0, v0

    .line 4871
    .local v3, "element":F
    mul-int/lit8 v4, v1, 0x1f

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int v1, v4, v5

    .line 4870
    .end local v3    # "element":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4873
    :cond_15
    return v1
.end method

.method public static whitelist test-api hashCode([I)I
    .registers 5
    .param p0, "a"    # [I

    .line 4731
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4732
    return v0

    .line 4734
    :cond_4
    array-length v1, p0

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_18

    .line 4737
    array-length v1, p0

    const/16 v3, 0xa

    invoke-static {p0, v0, v1, v2, v3}, Ljdk/internal/util/ArraysSupport;->vectorizedHashCode(Ljava/lang/Object;IIII)I

    move-result v2

    goto :goto_17

    .line 4736
    :pswitch_11
    aget v0, p0, v0

    add-int/lit8 v2, v0, 0x1f

    goto :goto_17

    .line 4735
    :pswitch_16
    nop

    .line 4734
    :goto_17
    return v2

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method public static whitelist test-api hashCode([J)I
    .registers 8
    .param p0, "a"    # [J

    .line 4703
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4704
    return v0

    .line 4706
    :cond_4
    const/4 v1, 0x1

    .line 4707
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_17

    aget-wide v3, p0, v0

    .line 4708
    .local v3, "element":J
    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v5, v3

    long-to-int v5, v5

    .line 4709
    .local v5, "elementHash":I
    mul-int/lit8 v6, v1, 0x1f

    add-int v1, v6, v5

    .line 4707
    .end local v3    # "element":J
    .end local v5    # "elementHash":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4711
    :cond_17
    return v1
.end method

.method public static whitelist test-api hashCode([Ljava/lang/Object;)I
    .registers 8
    .param p0, "a"    # [Ljava/lang/Object;

    .line 4926
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4927
    return v0

    .line 4929
    :cond_4
    const/4 v1, 0x1

    .line 4931
    .local v1, "result":I
    array-length v2, p0

    move v3, v0

    :goto_7
    if-ge v3, v2, :cond_1a

    aget-object v4, p0, v3

    .line 4932
    .local v4, "element":Ljava/lang/Object;
    mul-int/lit8 v5, v1, 0x1f

    if-nez v4, :cond_11

    move v6, v0

    goto :goto_15

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_15
    add-int v1, v5, v6

    .line 4931
    .end local v4    # "element":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4934
    :cond_1a
    return v1
.end method

.method public static whitelist test-api hashCode([S)I
    .registers 5
    .param p0, "a"    # [S

    .line 4758
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4759
    return v0

    .line 4761
    :cond_4
    array-length v1, p0

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_18

    .line 4764
    array-length v1, p0

    const/16 v3, 0x9

    invoke-static {p0, v0, v1, v2, v3}, Ljdk/internal/util/ArraysSupport;->vectorizedHashCode(Ljava/lang/Object;IIII)I

    move-result v2

    goto :goto_17

    .line 4763
    :pswitch_11
    aget-short v0, p0, v0

    add-int/lit8 v2, v0, 0x1f

    goto :goto_17

    .line 4762
    :pswitch_16
    nop

    .line 4761
    :goto_17
    return v2

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method public static whitelist test-api hashCode([Z)I
    .registers 7
    .param p0, "a"    # [Z

    .line 4839
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4840
    return v0

    .line 4842
    :cond_4
    const/4 v1, 0x1

    .line 4843
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_18

    aget-boolean v3, p0, v0

    .line 4844
    .local v3, "element":Z
    mul-int/lit8 v4, v1, 0x1f

    if-eqz v3, :cond_11

    const/16 v5, 0x4cf

    goto :goto_13

    :cond_11
    const/16 v5, 0x4d5

    :goto_13
    add-int v1, v4, v5

    .line 4843
    .end local v3    # "element":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4846
    :cond_18
    return v1
.end method

.method static synthetic blacklist lambda$parallelSetAll$0([Ljava/lang/Object;Ljava/util/function/IntFunction;I)V
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "generator"    # Ljava/util/function/IntFunction;
    .param p2, "i"    # I

    .line 5524
    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p0, p2

    return-void
.end method

.method static synthetic blacklist lambda$parallelSetAll$1([ILjava/util/function/IntUnaryOperator;I)V
    .registers 4
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "i"    # I

    .line 5579
    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    aput v0, p0, p2

    return-void
.end method

.method static synthetic blacklist lambda$parallelSetAll$2([JLjava/util/function/IntToLongFunction;I)V
    .registers 5
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;
    .param p2, "i"    # I

    .line 5634
    invoke-interface {p1, p2}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method static synthetic blacklist lambda$parallelSetAll$3([DLjava/util/function/IntToDoubleFunction;I)V
    .registers 5
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;
    .param p2, "i"    # I

    .line 5689
    invoke-interface {p1, p2}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method private static greylist-max-o mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .registers 14
    .param p0, "src"    # [Ljava/lang/Object;
    .param p1, "dest"    # [Ljava/lang/Object;
    .param p2, "low"    # I
    .param p3, "high"    # I
    .param p4, "off"    # I

    .line 1172
    sub-int v0, p3, p2

    .line 1175
    .local v0, "length":I
    const/4 v1, 0x7

    if-ge v0, v1, :cond_25

    .line 1176
    move v1, p2

    .local v1, "i":I
    :goto_6
    if-ge v1, p3, :cond_24

    .line 1177
    move v2, v1

    .local v2, "j":I
    :goto_9
    if-le v2, p2, :cond_21

    add-int/lit8 v3, v2, -0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, p1, v2

    .line 1178
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_21

    .line 1179
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->swap([Ljava/lang/Object;II)V

    .line 1178
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1176
    .end local v2    # "j":I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1180
    .end local v1    # "i":I
    :cond_24
    return-void

    .line 1184
    :cond_25
    move v1, p2

    .line 1185
    .local v1, "destLow":I
    move v2, p3

    .line 1186
    .local v2, "destHigh":I
    add-int/2addr p2, p4

    .line 1187
    add-int/2addr p3, p4

    .line 1188
    add-int v3, p2, p3

    ushr-int/lit8 v3, v3, 0x1

    .line 1189
    .local v3, "mid":I
    neg-int v4, p4

    invoke-static {p1, p0, p2, v3, v4}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1190
    neg-int v4, p4

    invoke-static {p1, p0, v3, p3, v4}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1194
    add-int/lit8 v4, v3, -0x1

    aget-object v4, p0, v4

    check-cast v4, Ljava/lang/Comparable;

    aget-object v5, p0, v3

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_47

    .line 1195
    invoke-static {p0, p2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1196
    return-void

    .line 1200
    :cond_47
    move v4, v1

    .local v4, "i":I
    move v5, p2

    .local v5, "p":I
    move v6, v3

    .local v6, "q":I
    :goto_4a
    if-ge v4, v2, :cond_6f

    .line 1201
    if-ge v6, p3, :cond_65

    if-ge v5, v3, :cond_5d

    aget-object v7, p0, v5

    check-cast v7, Ljava/lang/Comparable;

    aget-object v8, p0, v6

    invoke-interface {v7, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-gtz v7, :cond_5d

    goto :goto_65

    .line 1204
    :cond_5d
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "q":I
    .local v7, "q":I
    aget-object v6, p0, v6

    aput-object v6, p1, v4

    move v6, v7

    goto :goto_6c

    .line 1202
    .end local v7    # "q":I
    .restart local v6    # "q":I
    :cond_65
    :goto_65
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "p":I
    .local v7, "p":I
    aget-object v5, p0, v5

    aput-object v5, p1, v4

    move v5, v7

    .line 1200
    .end local v7    # "p":I
    .restart local v5    # "p":I
    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 1206
    .end local v4    # "i":I
    .end local v5    # "p":I
    .end local v6    # "q":I
    :cond_6f
    return-void
.end method

.method public static whitelist test-api mismatch([BII[BII)I
    .registers 11
    .param p0, "a"    # [B
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [B
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 8088
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8089
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8091
    sub-int v0, p2, p1

    .line 8092
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 8093
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8094
    .local v2, "length":I
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([BI[BII)I

    move-result v3

    .line 8097
    .local v3, "i":I
    if-gez v3, :cond_1a

    if-eq v0, v1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    return v4
.end method

.method public static whitelist test-api mismatch([B[B)I
    .registers 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 8017
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8018
    .local v0, "length":I
    if-ne p0, p1, :cond_a

    .line 8019
    const/4 v1, -0x1

    return v1

    .line 8021
    :cond_a
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([B[BI)I

    move-result v1

    .line 8022
    .local v1, "i":I
    if-gez v1, :cond_16

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_16

    move v2, v0

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    return v2
.end method

.method public static whitelist test-api mismatch([CII[CII)I
    .registers 11
    .param p0, "a"    # [C
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [C
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 8215
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8216
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8218
    sub-int v0, p2, p1

    .line 8219
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 8220
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8221
    .local v2, "length":I
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([CI[CII)I

    move-result v3

    .line 8224
    .local v3, "i":I
    if-gez v3, :cond_1a

    if-eq v0, v1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    return v4
.end method

.method public static whitelist test-api mismatch([C[C)I
    .registers 6
    .param p0, "a"    # [C
    .param p1, "b"    # [C

    .line 8144
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8145
    .local v0, "length":I
    if-ne p0, p1, :cond_a

    .line 8146
    const/4 v1, -0x1

    return v1

    .line 8148
    :cond_a
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([C[CI)I

    move-result v1

    .line 8149
    .local v1, "i":I
    if-gez v1, :cond_16

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_16

    move v2, v0

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    return v2
.end method

.method public static whitelist test-api mismatch([DII[DII)I
    .registers 11
    .param p0, "a"    # [D
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [D
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 8850
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8851
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8853
    sub-int v0, p2, p1

    .line 8854
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 8855
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8856
    .local v2, "length":I
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([DI[DII)I

    move-result v3

    .line 8859
    .local v3, "i":I
    if-gez v3, :cond_1a

    if-eq v0, v1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    return v4
.end method

.method public static whitelist test-api mismatch([D[D)I
    .registers 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 8779
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8780
    .local v0, "length":I
    if-ne p0, p1, :cond_a

    .line 8781
    const/4 v1, -0x1

    return v1

    .line 8783
    :cond_a
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([D[DI)I

    move-result v1

    .line 8784
    .local v1, "i":I
    if-gez v1, :cond_16

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_16

    move v2, v0

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    return v2
.end method

.method public static whitelist test-api mismatch([FII[FII)I
    .registers 11
    .param p0, "a"    # [F
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [F
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 8723
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8724
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8726
    sub-int v0, p2, p1

    .line 8727
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 8728
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8729
    .local v2, "length":I
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([FI[FII)I

    move-result v3

    .line 8732
    .local v3, "i":I
    if-gez v3, :cond_1a

    if-eq v0, v1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    return v4
.end method

.method public static whitelist test-api mismatch([F[F)I
    .registers 6
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .line 8652
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8653
    .local v0, "length":I
    if-ne p0, p1, :cond_a

    .line 8654
    const/4 v1, -0x1

    return v1

    .line 8656
    :cond_a
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([F[FI)I

    move-result v1

    .line 8657
    .local v1, "i":I
    if-gez v1, :cond_16

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_16

    move v2, v0

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    return v2
.end method

.method public static whitelist test-api mismatch([III[III)I
    .registers 11
    .param p0, "a"    # [I
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 8469
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8470
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8472
    sub-int v0, p2, p1

    .line 8473
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 8474
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8475
    .local v2, "length":I
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([II[III)I

    move-result v3

    .line 8478
    .local v3, "i":I
    if-gez v3, :cond_1a

    if-eq v0, v1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    return v4
.end method

.method public static whitelist test-api mismatch([I[I)I
    .registers 6
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 8398
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8399
    .local v0, "length":I
    if-ne p0, p1, :cond_a

    .line 8400
    const/4 v1, -0x1

    return v1

    .line 8402
    :cond_a
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([I[II)I

    move-result v1

    .line 8403
    .local v1, "i":I
    if-gez v1, :cond_16

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_16

    move v2, v0

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    return v2
.end method

.method public static whitelist test-api mismatch([JII[JII)I
    .registers 11
    .param p0, "a"    # [J
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [J
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 8596
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8597
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8599
    sub-int v0, p2, p1

    .line 8600
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 8601
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8602
    .local v2, "length":I
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([JI[JII)I

    move-result v3

    .line 8605
    .local v3, "i":I
    if-gez v3, :cond_1a

    if-eq v0, v1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    return v4
.end method

.method public static whitelist test-api mismatch([J[J)I
    .registers 6
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 8525
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8526
    .local v0, "length":I
    if-ne p0, p1, :cond_a

    .line 8527
    const/4 v1, -0x1

    return v1

    .line 8529
    :cond_a
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([J[JI)I

    move-result v1

    .line 8530
    .local v1, "i":I
    if-gez v1, :cond_16

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_16

    move v2, v0

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    return v2
.end method

.method public static whitelist test-api mismatch([Ljava/lang/Object;II[Ljava/lang/Object;II)I
    .registers 12
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [Ljava/lang/Object;
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 8982
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8983
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8985
    sub-int v0, p2, p1

    .line 8986
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 8987
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8988
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_27

    .line 8989
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    invoke-static {p1, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 8990
    return v3

    .line 8988
    :cond_22
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_11

    .line 8993
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .restart local p1    # "aFromIndex":I
    .restart local p4    # "bFromIndex":I
    :cond_27
    if-eq v0, v1, :cond_2b

    move v3, v2

    goto :goto_2c

    :cond_2b
    const/4 v3, -0x1

    :goto_2c
    return v3
.end method

.method public static whitelist test-api mismatch([Ljava/lang/Object;II[Ljava/lang/Object;IILjava/util/Comparator;)I
    .registers 14
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II[TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 9132
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "b":[Ljava/lang/Object;, "[TT;"
    .local p6, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9133
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 9134
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 9136
    sub-int v0, p2, p1

    .line 9137
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 9138
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9139
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_2c

    .line 9140
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "aFromIndex":I
    .local v4, "aFromIndex":I
    aget-object p1, p0, p1

    .line 9141
    .local p1, "oa":Ljava/lang/Object;, "TT;"
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "bFromIndex":I
    .local v5, "bFromIndex":I
    aget-object p4, p3, p4

    .line 9142
    .local p4, "ob":Ljava/lang/Object;, "TT;"
    if-eq p1, p4, :cond_27

    .line 9144
    invoke-interface {p6, p1, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 9145
    .local v6, "v":I
    if-eqz v6, :cond_27

    .line 9146
    return v3

    .line 9139
    .end local v6    # "v":I
    .end local p1    # "oa":Ljava/lang/Object;, "TT;"
    .end local p4    # "ob":Ljava/lang/Object;, "TT;"
    :cond_27
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    move p4, v5

    goto :goto_14

    .line 9151
    .end local v3    # "i":I
    .end local v4    # "aFromIndex":I
    .end local v5    # "bFromIndex":I
    .local p1, "aFromIndex":I
    .local p4, "bFromIndex":I
    :cond_2c
    if-eq v0, v1, :cond_30

    move v3, v2

    goto :goto_31

    :cond_30
    const/4 v3, -0x1

    :goto_31
    return v3
.end method

.method public static whitelist test-api mismatch([Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;

    .line 8906
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8907
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne p0, p1, :cond_a

    .line 8908
    return v1

    .line 8910
    :cond_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_1b

    .line 8911
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 8912
    return v2

    .line 8910
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 8915
    .end local v2    # "i":I
    :cond_1b
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_20

    move v1, v0

    :cond_20
    return v1
.end method

.method public static whitelist test-api mismatch([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 9044
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9045
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9046
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne p0, p1, :cond_d

    .line 9047
    return v1

    .line 9049
    :cond_d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_20

    .line 9050
    aget-object v3, p0, v2

    .line 9051
    .local v3, "oa":Ljava/lang/Object;, "TT;"
    aget-object v4, p1, v2

    .line 9052
    .local v4, "ob":Ljava/lang/Object;, "TT;"
    if-eq v3, v4, :cond_1d

    .line 9054
    invoke-interface {p2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 9055
    .local v5, "v":I
    if-eqz v5, :cond_1d

    .line 9056
    return v2

    .line 9049
    .end local v3    # "oa":Ljava/lang/Object;, "TT;"
    .end local v4    # "ob":Ljava/lang/Object;, "TT;"
    .end local v5    # "v":I
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 9061
    .end local v2    # "i":I
    :cond_20
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_25

    move v1, v0

    :cond_25
    return v1
.end method

.method public static whitelist test-api mismatch([SII[SII)I
    .registers 11
    .param p0, "a"    # [S
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [S
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 8342
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8343
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 8345
    sub-int v0, p2, p1

    .line 8346
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 8347
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8348
    .local v2, "length":I
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([SI[SII)I

    move-result v3

    .line 8351
    .local v3, "i":I
    if-gez v3, :cond_1a

    if-eq v0, v1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    return v4
.end method

.method public static whitelist test-api mismatch([S[S)I
    .registers 6
    .param p0, "a"    # [S
    .param p1, "b"    # [S

    .line 8271
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8272
    .local v0, "length":I
    if-ne p0, p1, :cond_a

    .line 8273
    const/4 v1, -0x1

    return v1

    .line 8275
    :cond_a
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([S[SI)I

    move-result v1

    .line 8276
    .local v1, "i":I
    if-gez v1, :cond_16

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_16

    move v2, v0

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    return v2
.end method

.method public static whitelist test-api mismatch([ZII[ZII)I
    .registers 11
    .param p0, "a"    # [Z
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [Z
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 7961
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7962
    array-length v0, p3

    invoke-static {v0, p4, p5}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 7964
    sub-int v0, p2, p1

    .line 7965
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 7966
    .local v1, "bLength":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7967
    .local v2, "length":I
    invoke-static {p0, p1, p3, p4, v2}, Ljdk/internal/util/ArraysSupport;->mismatch([ZI[ZII)I

    move-result v3

    .line 7970
    .local v3, "i":I
    if-gez v3, :cond_1a

    if-eq v0, v1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    return v4
.end method

.method public static whitelist test-api mismatch([Z[Z)I
    .registers 6
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z

    .line 7890
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7891
    .local v0, "length":I
    if-ne p0, p1, :cond_a

    .line 7892
    const/4 v1, -0x1

    return v1

    .line 7894
    :cond_a
    invoke-static {p0, p1, v0}, Ljdk/internal/util/ArraysSupport;->mismatch([Z[ZI)I

    move-result v1

    .line 7895
    .local v1, "i":I
    if-gez v1, :cond_16

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_16

    move v2, v0

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    return v2
.end method

.method public static whitelist test-api parallelPrefix([DIILjava/util/function/DoubleBinaryOperator;)V
    .registers 11
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .line 1553
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1555
    if-ge p1, p2, :cond_17

    .line 1556
    new-instance v1, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    const/4 v2, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v3, p3

    .end local p0    # "array":[D
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .end local p3    # "op":Ljava/util/function/DoubleBinaryOperator;
    .local v3, "op":Ljava/util/function/DoubleBinaryOperator;
    .local v4, "array":[D
    .local v5, "fromIndex":I
    .local v6, "toIndex":I
    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V

    .line 1557
    invoke-virtual {v1}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    goto :goto_1b

    .line 1555
    .end local v3    # "op":Ljava/util/function/DoubleBinaryOperator;
    .end local v4    # "array":[D
    .end local v5    # "fromIndex":I
    .end local v6    # "toIndex":I
    .restart local p0    # "array":[D
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    .restart local p3    # "op":Ljava/util/function/DoubleBinaryOperator;
    :cond_17
    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v3, p3

    .line 1558
    .end local p0    # "array":[D
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .end local p3    # "op":Ljava/util/function/DoubleBinaryOperator;
    .restart local v3    # "op":Ljava/util/function/DoubleBinaryOperator;
    .restart local v4    # "array":[D
    .restart local v5    # "fromIndex":I
    .restart local v6    # "toIndex":I
    :goto_1b
    return-void
.end method

.method public static whitelist test-api parallelPrefix([DLjava/util/function/DoubleBinaryOperator;)V
    .registers 9
    .param p0, "array"    # [D
    .param p1, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .line 1530
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    array-length v0, p0

    if-lez v0, :cond_14

    .line 1532
    new-instance v1, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    const/4 v5, 0x0

    array-length v6, p0

    const/4 v2, 0x0

    move-object v4, p0

    move-object v3, p1

    .end local p0    # "array":[D
    .end local p1    # "op":Ljava/util/function/DoubleBinaryOperator;
    .local v3, "op":Ljava/util/function/DoubleBinaryOperator;
    .local v4, "array":[D
    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V

    .line 1533
    invoke-virtual {v1}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    goto :goto_16

    .line 1531
    .end local v3    # "op":Ljava/util/function/DoubleBinaryOperator;
    .end local v4    # "array":[D
    .restart local p0    # "array":[D
    .restart local p1    # "op":Ljava/util/function/DoubleBinaryOperator;
    :cond_14
    move-object v4, p0

    move-object v3, p1

    .line 1534
    .end local p0    # "array":[D
    .end local p1    # "op":Ljava/util/function/DoubleBinaryOperator;
    .restart local v3    # "op":Ljava/util/function/DoubleBinaryOperator;
    .restart local v4    # "array":[D
    :goto_16
    return-void
.end method

.method public static whitelist test-api parallelPrefix([IIILjava/util/function/IntBinaryOperator;)V
    .registers 11
    .param p0, "array"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/IntBinaryOperator;

    .line 1598
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1600
    if-ge p1, p2, :cond_17

    .line 1601
    new-instance v1, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    const/4 v2, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v3, p3

    .end local p0    # "array":[I
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .end local p3    # "op":Ljava/util/function/IntBinaryOperator;
    .local v3, "op":Ljava/util/function/IntBinaryOperator;
    .local v4, "array":[I
    .local v5, "fromIndex":I
    .local v6, "toIndex":I
    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V

    .line 1602
    invoke-virtual {v1}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    goto :goto_1b

    .line 1600
    .end local v3    # "op":Ljava/util/function/IntBinaryOperator;
    .end local v4    # "array":[I
    .end local v5    # "fromIndex":I
    .end local v6    # "toIndex":I
    .restart local p0    # "array":[I
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    .restart local p3    # "op":Ljava/util/function/IntBinaryOperator;
    :cond_17
    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v3, p3

    .line 1603
    .end local p0    # "array":[I
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .end local p3    # "op":Ljava/util/function/IntBinaryOperator;
    .restart local v3    # "op":Ljava/util/function/IntBinaryOperator;
    .restart local v4    # "array":[I
    .restart local v5    # "fromIndex":I
    .restart local v6    # "toIndex":I
    :goto_1b
    return-void
.end method

.method public static whitelist test-api parallelPrefix([ILjava/util/function/IntBinaryOperator;)V
    .registers 9
    .param p0, "array"    # [I
    .param p1, "op"    # Ljava/util/function/IntBinaryOperator;

    .line 1575
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    array-length v0, p0

    if-lez v0, :cond_14

    .line 1577
    new-instance v1, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    const/4 v5, 0x0

    array-length v6, p0

    const/4 v2, 0x0

    move-object v4, p0

    move-object v3, p1

    .end local p0    # "array":[I
    .end local p1    # "op":Ljava/util/function/IntBinaryOperator;
    .local v3, "op":Ljava/util/function/IntBinaryOperator;
    .local v4, "array":[I
    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V

    .line 1578
    invoke-virtual {v1}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    goto :goto_16

    .line 1576
    .end local v3    # "op":Ljava/util/function/IntBinaryOperator;
    .end local v4    # "array":[I
    .restart local p0    # "array":[I
    .restart local p1    # "op":Ljava/util/function/IntBinaryOperator;
    :cond_14
    move-object v4, p0

    move-object v3, p1

    .line 1579
    .end local p0    # "array":[I
    .end local p1    # "op":Ljava/util/function/IntBinaryOperator;
    .restart local v3    # "op":Ljava/util/function/IntBinaryOperator;
    .restart local v4    # "array":[I
    :goto_16
    return-void
.end method

.method public static whitelist test-api parallelPrefix([JIILjava/util/function/LongBinaryOperator;)V
    .registers 11
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/LongBinaryOperator;

    .line 1505
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1507
    if-ge p1, p2, :cond_17

    .line 1508
    new-instance v1, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    const/4 v2, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v3, p3

    .end local p0    # "array":[J
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .end local p3    # "op":Ljava/util/function/LongBinaryOperator;
    .local v3, "op":Ljava/util/function/LongBinaryOperator;
    .local v4, "array":[J
    .local v5, "fromIndex":I
    .local v6, "toIndex":I
    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V

    .line 1509
    invoke-virtual {v1}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    goto :goto_1b

    .line 1507
    .end local v3    # "op":Ljava/util/function/LongBinaryOperator;
    .end local v4    # "array":[J
    .end local v5    # "fromIndex":I
    .end local v6    # "toIndex":I
    .restart local p0    # "array":[J
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    .restart local p3    # "op":Ljava/util/function/LongBinaryOperator;
    :cond_17
    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v3, p3

    .line 1510
    .end local p0    # "array":[J
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .end local p3    # "op":Ljava/util/function/LongBinaryOperator;
    .restart local v3    # "op":Ljava/util/function/LongBinaryOperator;
    .restart local v4    # "array":[J
    .restart local v5    # "fromIndex":I
    .restart local v6    # "toIndex":I
    :goto_1b
    return-void
.end method

.method public static whitelist test-api parallelPrefix([JLjava/util/function/LongBinaryOperator;)V
    .registers 9
    .param p0, "array"    # [J
    .param p1, "op"    # Ljava/util/function/LongBinaryOperator;

    .line 1482
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    array-length v0, p0

    if-lez v0, :cond_14

    .line 1484
    new-instance v1, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    const/4 v5, 0x0

    array-length v6, p0

    const/4 v2, 0x0

    move-object v4, p0

    move-object v3, p1

    .end local p0    # "array":[J
    .end local p1    # "op":Ljava/util/function/LongBinaryOperator;
    .local v3, "op":Ljava/util/function/LongBinaryOperator;
    .local v4, "array":[J
    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V

    .line 1485
    invoke-virtual {v1}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    goto :goto_16

    .line 1483
    .end local v3    # "op":Ljava/util/function/LongBinaryOperator;
    .end local v4    # "array":[J
    .restart local p0    # "array":[J
    .restart local p1    # "op":Ljava/util/function/LongBinaryOperator;
    :cond_14
    move-object v4, p0

    move-object v3, p1

    .line 1486
    .end local p0    # "array":[J
    .end local p1    # "op":Ljava/util/function/LongBinaryOperator;
    .restart local v3    # "op":Ljava/util/function/LongBinaryOperator;
    .restart local v4    # "array":[J
    :goto_16
    return-void
.end method

.method public static whitelist test-api parallelPrefix([Ljava/lang/Object;IILjava/util/function/BinaryOperator;)V
    .registers 11
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1460
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1462
    if-ge p1, p2, :cond_17

    .line 1463
    new-instance v1, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    const/4 v2, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v3, p3

    .end local p0    # "array":[Ljava/lang/Object;, "[TT;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .end local p3    # "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local v3, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local v4, "array":[Ljava/lang/Object;, "[TT;"
    .local v5, "fromIndex":I
    .local v6, "toIndex":I
    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    .line 1464
    invoke-virtual {v1}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    goto :goto_1b

    .line 1462
    .end local v3    # "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .end local v4    # "array":[Ljava/lang/Object;, "[TT;"
    .end local v5    # "fromIndex":I
    .end local v6    # "toIndex":I
    .restart local p0    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    .restart local p3    # "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    :cond_17
    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v3, p3

    .line 1465
    .end local p0    # "array":[Ljava/lang/Object;, "[TT;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .end local p3    # "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .restart local v3    # "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .restart local v4    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local v5    # "fromIndex":I
    .restart local v6    # "toIndex":I
    :goto_1b
    return-void
.end method

.method public static whitelist test-api parallelPrefix([Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1436
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    array-length v0, p0

    if-lez v0, :cond_14

    .line 1438
    new-instance v1, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    const/4 v5, 0x0

    array-length v6, p0

    const/4 v2, 0x0

    move-object v4, p0

    move-object v3, p1

    .end local p0    # "array":[Ljava/lang/Object;, "[TT;"
    .end local p1    # "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local v3, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local v4, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    .line 1439
    invoke-virtual {v1}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    goto :goto_16

    .line 1437
    .end local v3    # "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .end local v4    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local p0    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local p1    # "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    :cond_14
    move-object v4, p0

    move-object v3, p1

    .line 1440
    .end local p0    # "array":[Ljava/lang/Object;, "[TT;"
    .end local p1    # "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .restart local v3    # "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .restart local v4    # "array":[Ljava/lang/Object;, "[TT;"
    :goto_16
    return-void
.end method

.method public static whitelist test-api parallelSetAll([DLjava/util/function/IntToDoubleFunction;)V
    .registers 4
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;

    .line 5688
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5689
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Arrays$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$$ExternalSyntheticLambda0;-><init>([DLjava/util/function/IntToDoubleFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 5690
    return-void
.end method

.method public static whitelist test-api parallelSetAll([ILjava/util/function/IntUnaryOperator;)V
    .registers 4
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;

    .line 5578
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5579
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Arrays$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$$ExternalSyntheticLambda3;-><init>([ILjava/util/function/IntUnaryOperator;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 5580
    return-void
.end method

.method public static whitelist test-api parallelSetAll([JLjava/util/function/IntToLongFunction;)V
    .registers 4
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;

    .line 5633
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5634
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Arrays$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$$ExternalSyntheticLambda2;-><init>([JLjava/util/function/IntToLongFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 5635
    return-void
.end method

.method public static whitelist test-api parallelSetAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 5523
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5524
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Arrays$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 5525
    return-void
.end method

.method public static whitelist test-api parallelSort([B)V
    .registers 3
    .param p0, "a"    # [B

    .line 408
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 409
    return-void
.end method

.method public static whitelist test-api parallelSort([BII)V
    .registers 4
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 433
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 434
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 435
    return-void
.end method

.method public static whitelist test-api parallelSort([C)V
    .registers 3
    .param p0, "a"    # [C

    .line 450
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sort([CII)V

    .line 451
    return-void
.end method

.method public static whitelist test-api parallelSort([CII)V
    .registers 4
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 475
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 476
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([CII)V

    .line 477
    return-void
.end method

.method public static whitelist test-api parallelSort([D)V
    .registers 4
    .param p0, "a"    # [D

    .line 684
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v0, v1, v2}, Ljava/util/DualPivotQuicksort;->sort([DIII)V

    .line 685
    return-void
.end method

.method public static whitelist test-api parallelSort([DII)V
    .registers 4
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 717
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 718
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([DIII)V

    .line 719
    return-void
.end method

.method public static whitelist test-api parallelSort([F)V
    .registers 4
    .param p0, "a"    # [F

    .line 626
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v0, v1, v2}, Ljava/util/DualPivotQuicksort;->sort([FIII)V

    .line 627
    return-void
.end method

.method public static whitelist test-api parallelSort([FII)V
    .registers 4
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 659
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 660
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([FIII)V

    .line 661
    return-void
.end method

.method public static whitelist test-api parallelSort([I)V
    .registers 4
    .param p0, "a"    # [I

    .line 534
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v0, v1, v2}, Ljava/util/DualPivotQuicksort;->sort([IIII)V

    .line 535
    return-void
.end method

.method public static whitelist test-api parallelSort([III)V
    .registers 4
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 559
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 560
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([IIII)V

    .line 561
    return-void
.end method

.method public static whitelist test-api parallelSort([J)V
    .registers 4
    .param p0, "a"    # [J

    .line 576
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v0, v1, v2}, Ljava/util/DualPivotQuicksort;->sort([JIII)V

    .line 577
    return-void
.end method

.method public static whitelist test-api parallelSort([JII)V
    .registers 4
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 601
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 602
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([JIII)V

    .line 603
    return-void
.end method

.method public static whitelist test-api parallelSort([Ljava/lang/Comparable;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)V"
        }
    .end annotation

    .line 809
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    array-length v2, p0

    .line 810
    .local v2, "n":I
    const/16 v0, 0x2000

    if-le v2, v0, :cond_3b

    .line 811
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v9, v1

    .local v9, "p":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move-object v0, p0

    goto :goto_3c

    .line 814
    :cond_f
    move v1, v0

    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    .line 816
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Comparable;

    .line 817
    shl-int/lit8 v4, v9, 0x2

    div-int v4, v2, v4

    move v10, v4

    .local v10, "g":I
    if-gt v4, v1, :cond_29

    .line 818
    move v7, v1

    goto :goto_2a

    :cond_29
    move v7, v10

    :goto_2a
    sget-object v8, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, v2

    move-object v2, p0

    .end local p0    # "a":[Ljava/lang/Comparable;, "[TT;"
    .local v2, "a":[Ljava/lang/Comparable;, "[TT;"
    .local v5, "n":I
    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    move-object p0, v0

    move-object v0, v2

    move v2, v5

    .end local v5    # "n":I
    .local v0, "a":[Ljava/lang/Comparable;, "[TT;"
    .local v2, "n":I
    invoke-virtual {p0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_45

    .line 810
    .end local v0    # "a":[Ljava/lang/Comparable;, "[TT;"
    .end local v9    # "p":I
    .end local v10    # "g":I
    .restart local p0    # "a":[Ljava/lang/Comparable;, "[TT;"
    :cond_3b
    move-object v0, p0

    .line 812
    .end local p0    # "a":[Ljava/lang/Comparable;, "[TT;"
    .restart local v0    # "a":[Ljava/lang/Comparable;, "[TT;"
    :goto_3c
    sget-object v3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 819
    :goto_45
    return-void
.end method

.method public static whitelist test-api parallelSort([Ljava/lang/Comparable;II)V
    .registers 14
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;II)V"
        }
    .end annotation

    .line 867
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    array-length v2, p0

    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 868
    sub-int v5, p2, p1

    .line 869
    .local v5, "n":I
    const/16 v2, 0x2000

    if-le v5, v2, :cond_3c

    .line 870
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    move v9, v3

    .local v9, "p":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    move v7, v5

    goto :goto_3d

    .line 873
    :cond_14
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    .line 875
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Comparable;

    .line 876
    shl-int/lit8 v4, v9, 0x2

    div-int v4, v5, v4

    move v10, v4

    .local v10, "g":I
    if-gt v4, v2, :cond_2d

    .line 877
    move v7, v2

    goto :goto_2e

    :cond_2d
    move v7, v10

    :goto_2e
    sget-object v8, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    move v7, v5

    .end local v5    # "n":I
    .local v7, "n":I
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_48

    .line 869
    .end local v7    # "n":I
    .end local v9    # "p":I
    .end local v10    # "g":I
    .restart local v5    # "n":I
    :cond_3c
    move v7, v5

    .line 871
    .end local v5    # "n":I
    .restart local v7    # "n":I
    :goto_3d
    sget-object v3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 878
    :goto_48
    return-void
.end method

.method public static whitelist test-api parallelSort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 15
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 975
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 976
    if-nez p3, :cond_a

    .line 977
    sget-object p3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    move-object v3, p3

    goto :goto_b

    .line 976
    :cond_a
    move-object v3, p3

    .line 978
    .end local p3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_b
    sub-int v5, p2, p1

    .line 979
    .local v5, "n":I
    const/16 p3, 0x2000

    if-le v5, p3, :cond_4a

    .line 980
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    move v9, v0

    .local v9, "p":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    move-object v0, p0

    move v1, p1

    move-object v8, v3

    move p0, v5

    goto :goto_4e

    .line 983
    :cond_1e
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    .line 985
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 986
    shl-int/lit8 v2, v9, 0x2

    div-int v2, v5, v2

    move v10, v2

    .local v10, "g":I
    if-gt v2, p3, :cond_37

    .line 987
    move v7, p3

    goto :goto_38

    :cond_37
    move v7, v10

    :goto_38
    move-object v8, v3

    move-object v3, v1

    .end local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v8, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    .end local p0    # "a":[Ljava/lang/Object;, "[TT;"
    .end local p1    # "fromIndex":I
    .local v2, "a":[Ljava/lang/Object;, "[TT;"
    .local v4, "fromIndex":I
    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    move-object p1, v0

    move-object v0, v2

    move v1, v4

    move p0, v5

    .end local v2    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v4    # "fromIndex":I
    .end local v5    # "n":I
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    .local v1, "fromIndex":I
    .local p0, "n":I
    invoke-virtual {p1}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    move v2, p2

    goto :goto_56

    .line 979
    .end local v0    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "fromIndex":I
    .end local v8    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .end local v9    # "p":I
    .end local v10    # "g":I
    .restart local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .restart local v5    # "n":I
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .restart local p1    # "fromIndex":I
    :cond_4a
    move-object v0, p0

    move v1, p1

    move-object v8, v3

    move p0, v5

    .line 981
    .end local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .end local v5    # "n":I
    .end local p1    # "fromIndex":I
    .restart local v0    # "a":[Ljava/lang/Object;, "[TT;"
    .restart local v1    # "fromIndex":I
    .restart local v8    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p0, "n":I
    :goto_4e
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v2, p2

    move-object v3, v8

    .end local v8    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .end local p2    # "toIndex":I
    .local v2, "toIndex":I
    .restart local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 988
    .end local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .restart local v8    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_56
    return-void
.end method

.method public static whitelist test-api parallelSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 915
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_6

    .line 916
    sget-object p1, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    move-object v3, p1

    goto :goto_7

    .line 915
    :cond_6
    move-object v3, p1

    .line 917
    .end local p1    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_7
    array-length v2, p0

    .line 918
    .local v2, "n":I
    const/16 p1, 0x2000

    if-le v2, p1, :cond_42

    .line 919
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    move v9, v0

    .local v9, "p":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    move-object v0, p0

    move-object v8, v3

    goto :goto_44

    .line 922
    :cond_17
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    .line 924
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 925
    shl-int/lit8 v4, v9, 0x2

    div-int v4, v2, v4

    move v10, v4

    .local v10, "g":I
    if-gt v4, p1, :cond_30

    .line 926
    move v7, p1

    goto :goto_31

    :cond_30
    move v7, v10

    :goto_31
    move-object v8, v3

    move-object v3, v1

    .end local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v8, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, v2

    move-object v2, p0

    .end local p0    # "a":[Ljava/lang/Object;, "[TT;"
    .local v2, "a":[Ljava/lang/Object;, "[TT;"
    .local v5, "n":I
    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    move-object p0, v0

    move-object v0, v2

    move v2, v5

    .end local v5    # "n":I
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    .local v2, "n":I
    invoke-virtual {p0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_4c

    .line 918
    .end local v0    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v8    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .end local v9    # "p":I
    .end local v10    # "g":I
    .restart local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .restart local p0    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_42
    move-object v0, p0

    move-object v8, v3

    .line 920
    .end local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .end local p0    # "a":[Ljava/lang/Object;, "[TT;"
    .restart local v0    # "a":[Ljava/lang/Object;, "[TT;"
    .restart local v8    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_44
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v3, v8

    .end local v8    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .restart local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 927
    .end local v3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .restart local v8    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_4c
    return-void
.end method

.method public static whitelist test-api parallelSort([S)V
    .registers 3
    .param p0, "a"    # [S

    .line 492
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sort([SII)V

    .line 493
    return-void
.end method

.method public static whitelist test-api parallelSort([SII)V
    .registers 4
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 517
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 518
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([SII)V

    .line 519
    return-void
.end method

.method private static blacklist primitiveArrayHashCode(Ljava/lang/Object;Ljava/lang/Class;)I
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 4992
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_c

    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_5b

    .line 4993
    :cond_c
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_18

    move-object v0, p0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_5b

    .line 4994
    :cond_18
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_24

    move-object v0, p0

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_5b

    .line 4995
    :cond_24
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_30

    move-object v0, p0

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    goto :goto_5b

    .line 4996
    :cond_30
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3c

    move-object v0, p0

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    goto :goto_5b

    .line 4997
    :cond_3c
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_48

    move-object v0, p0

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_5b

    .line 4998
    :cond_48
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_54

    move-object v0, p0

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_5b

    .line 5001
    :cond_54
    move-object v0, p0

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    .line 4991
    :goto_5b
    return v0
.end method

.method static greylist-max-o rangeCheck(III)V
    .registers 6
    .param p0, "arrayLength"    # I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 726
    if-gt p1, p2, :cond_13

    .line 730
    if-ltz p1, :cond_d

    .line 733
    if-gt p2, p0, :cond_7

    .line 736
    return-void

    .line 734
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 731
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 727
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api setAll([DLjava/util/function/IntToDoubleFunction;)V
    .registers 5
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;

    .line 5659
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 5661
    invoke-interface {p1, v0}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 5660
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5662
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static whitelist test-api setAll([ILjava/util/function/IntUnaryOperator;)V
    .registers 4
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;

    .line 5549
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 5551
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    aput v1, p0, v0

    .line 5550
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5552
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static whitelist test-api setAll([JLjava/util/function/IntToLongFunction;)V
    .registers 5
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;

    .line 5604
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5605
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 5606
    invoke-interface {p1, v0}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 5605
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5607
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static whitelist test-api setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 5493
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5494
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 5495
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    .line 5494
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5496
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static whitelist test-api sort([B)V
    .registers 3
    .param p0, "a"    # [B

    .line 260
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 261
    return-void
.end method

.method public static whitelist test-api sort([BII)V
    .registers 4
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 283
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 284
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 285
    return-void
.end method

.method public static whitelist test-api sort([C)V
    .registers 3
    .param p0, "a"    # [C

    .line 222
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sort([CII)V

    .line 223
    return-void
.end method

.method public static whitelist test-api sort([CII)V
    .registers 4
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 245
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 246
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([CII)V

    .line 247
    return-void
.end method

.method public static whitelist test-api sort([D)V
    .registers 3
    .param p0, "a"    # [D

    .line 360
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v0, v1}, Ljava/util/DualPivotQuicksort;->sort([DIII)V

    .line 361
    return-void
.end method

.method public static whitelist test-api sort([DII)V
    .registers 4
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 391
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 392
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([DIII)V

    .line 393
    return-void
.end method

.method public static whitelist test-api sort([F)V
    .registers 3
    .param p0, "a"    # [F

    .line 306
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v0, v1}, Ljava/util/DualPivotQuicksort;->sort([FIII)V

    .line 307
    return-void
.end method

.method public static whitelist test-api sort([FII)V
    .registers 4
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 337
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 338
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([FIII)V

    .line 339
    return-void
.end method

.method public static whitelist test-api sort([I)V
    .registers 3
    .param p0, "a"    # [I

    .line 108
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v0, v1}, Ljava/util/DualPivotQuicksort;->sort([IIII)V

    .line 109
    return-void
.end method

.method public static whitelist test-api sort([III)V
    .registers 4
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 131
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 132
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([IIII)V

    .line 133
    return-void
.end method

.method public static whitelist test-api sort([J)V
    .registers 3
    .param p0, "a"    # [J

    .line 146
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v0, v1}, Ljava/util/DualPivotQuicksort;->sort([JIII)V

    .line 147
    return-void
.end method

.method public static whitelist test-api sort([JII)V
    .registers 4
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 169
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 170
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([JIII)V

    .line 171
    return-void
.end method

.method public static whitelist test-api sort([Ljava/lang/Object;)V
    .registers 7
    .param p0, "a"    # [Ljava/lang/Object;

    .line 1062
    array-length v2, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .end local p0    # "a":[Ljava/lang/Object;
    .local v0, "a":[Ljava/lang/Object;
    invoke-static/range {v0 .. v5}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V

    .line 1063
    return-void
.end method

.method public static whitelist test-api sort([Ljava/lang/Object;II)V
    .registers 10
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 1128
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1136
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    .end local p0    # "a":[Ljava/lang/Object;
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .local v1, "a":[Ljava/lang/Object;
    .local v2, "fromIndex":I
    .local v3, "toIndex":I
    invoke-static/range {v1 .. v6}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V

    .line 1137
    return-void
.end method

.method public static whitelist test-api sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 12
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1341
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p3, :cond_a

    .line 1342
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    goto :goto_18

    .line 1344
    :cond_a
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1352
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .end local p0    # "a":[Ljava/lang/Object;, "[TT;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .end local p3    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    .local v2, "fromIndex":I
    .local v3, "toIndex":I
    .local v4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static/range {v1 .. v7}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1354
    :goto_18
    return-void
.end method

.method public static whitelist test-api sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1261
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_8

    .line 1262
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move-object v0, p0

    move-object v3, p1

    goto :goto_12

    .line 1271
    :cond_8
    array-length v2, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    .end local p0    # "a":[Ljava/lang/Object;, "[TT;"
    .end local p1    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    .local v3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1273
    :goto_12
    return-void
.end method

.method public static whitelist test-api sort([S)V
    .registers 3
    .param p0, "a"    # [S

    .line 184
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sort([SII)V

    .line 185
    return-void
.end method

.method public static whitelist test-api sort([SII)V
    .registers 4
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 207
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 208
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([SII)V

    .line 209
    return-void
.end method

.method public static whitelist test-api spliterator([D)Ljava/util/Spliterator$OfDouble;
    .registers 2
    .param p0, "array"    # [D

    .line 5824
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([DI)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api spliterator([DII)Ljava/util/Spliterator$OfDouble;
    .registers 4
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5847
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([DIII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api spliterator([I)Ljava/util/Spliterator$OfInt;
    .registers 2
    .param p0, "array"    # [I

    .line 5745
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([II)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api spliterator([III)Ljava/util/Spliterator$OfInt;
    .registers 4
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5768
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([IIII)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api spliterator([J)Ljava/util/Spliterator$OfLong;
    .registers 2
    .param p0, "array"    # [J

    .line 5784
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([JI)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api spliterator([JII)Ljava/util/Spliterator$OfLong;
    .registers 4
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5807
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([JIII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api spliterator([Ljava/lang/Object;)Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 5705
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;
    .registers 4
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 5729
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api stream([D)Ljava/util/stream/DoubleStream;
    .registers 3
    .param p0, "array"    # [D

    .line 5952
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->stream([DII)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api stream([DII)Ljava/util/stream/DoubleStream;
    .registers 5
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5970
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([DII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api stream([I)Ljava/util/stream/IntStream;
    .registers 3
    .param p0, "array"    # [I

    .line 5892
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->stream([III)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api stream([III)Ljava/util/stream/IntStream;
    .registers 5
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5910
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([III)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api stream([J)Ljava/util/stream/LongStream;
    .registers 3
    .param p0, "array"    # [J

    .line 5922
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->stream([JII)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api stream([JII)Ljava/util/stream/LongStream;
    .registers 5
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5940
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([JII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api stream([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 5861
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;II)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api stream([Ljava/lang/Object;II)Ljava/util/stream/Stream;
    .registers 5
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 5880
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o swap([Ljava/lang/Object;II)V
    .registers 5
    .param p0, "x"    # [Ljava/lang/Object;
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 1212
    aget-object v0, p0, p1

    .line 1213
    .local v0, "t":Ljava/lang/Object;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 1214
    aput-object v0, p0, p2

    .line 1215
    return-void
.end method

.method public static whitelist test-api toString([B)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [B

    .line 5226
    if-nez p0, :cond_5

    .line 5227
    const-string v0, "null"

    return-object v0

    .line 5228
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 5229
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 5230
    const-string v1, "[]"

    return-object v1

    .line 5232
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5233
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5234
    const/4 v2, 0x0

    .line 5235
    .local v2, "i":I
    :goto_19
    aget-byte v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5236
    if-ne v2, v0, :cond_2b

    .line 5237
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5238
    :cond_2b
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5234
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist test-api toString([C)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [C

    .line 5196
    if-nez p0, :cond_5

    .line 5197
    const-string v0, "null"

    return-object v0

    .line 5198
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 5199
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 5200
    const-string v1, "[]"

    return-object v1

    .line 5202
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5203
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5204
    const/4 v2, 0x0

    .line 5205
    .local v2, "i":I
    :goto_19
    aget-char v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5206
    if-ne v2, v0, :cond_2b

    .line 5207
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5208
    :cond_2b
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5204
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist test-api toString([D)Ljava/lang/String;
    .registers 6
    .param p0, "a"    # [D

    .line 5317
    if-nez p0, :cond_5

    .line 5318
    const-string v0, "null"

    return-object v0

    .line 5319
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 5320
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 5321
    const-string v1, "[]"

    return-object v1

    .line 5323
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5324
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5325
    const/4 v2, 0x0

    .line 5326
    .local v2, "i":I
    :goto_19
    aget-wide v3, p0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 5327
    if-ne v2, v0, :cond_2b

    .line 5328
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5329
    :cond_2b
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5325
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist test-api toString([F)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [F

    .line 5286
    if-nez p0, :cond_5

    .line 5287
    const-string v0, "null"

    return-object v0

    .line 5289
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 5290
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 5291
    const-string v1, "[]"

    return-object v1

    .line 5293
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5294
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5295
    const/4 v2, 0x0

    .line 5296
    .local v2, "i":I
    :goto_19
    aget v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5297
    if-ne v2, v0, :cond_2b

    .line 5298
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5299
    :cond_2b
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5295
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist test-api toString([I)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [I

    .line 5136
    if-nez p0, :cond_5

    .line 5137
    const-string v0, "null"

    return-object v0

    .line 5138
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 5139
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 5140
    const-string v1, "[]"

    return-object v1

    .line 5142
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5143
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5144
    const/4 v2, 0x0

    .line 5145
    .local v2, "i":I
    :goto_19
    aget v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5146
    if-ne v2, v0, :cond_2b

    .line 5147
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5148
    :cond_2b
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5144
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist test-api toString([J)Ljava/lang/String;
    .registers 6
    .param p0, "a"    # [J

    .line 5106
    if-nez p0, :cond_5

    .line 5107
    const-string v0, "null"

    return-object v0

    .line 5108
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 5109
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 5110
    const-string v1, "[]"

    return-object v1

    .line 5112
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5113
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5114
    const/4 v2, 0x0

    .line 5115
    .local v2, "i":I
    :goto_19
    aget-wide v3, p0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5116
    if-ne v2, v0, :cond_2b

    .line 5117
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5118
    :cond_2b
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5114
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist test-api toString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [Ljava/lang/Object;

    .line 5350
    if-nez p0, :cond_5

    .line 5351
    const-string v0, "null"

    return-object v0

    .line 5353
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 5354
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 5355
    const-string v1, "[]"

    return-object v1

    .line 5357
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5358
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5359
    const/4 v2, 0x0

    .line 5360
    .local v2, "i":I
    :goto_19
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5361
    if-ne v2, v0, :cond_2f

    .line 5362
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5363
    :cond_2f
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5359
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist test-api toString([S)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [S

    .line 5166
    if-nez p0, :cond_5

    .line 5167
    const-string v0, "null"

    return-object v0

    .line 5168
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 5169
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 5170
    const-string v1, "[]"

    return-object v1

    .line 5172
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5173
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5174
    const/4 v2, 0x0

    .line 5175
    .local v2, "i":I
    :goto_19
    aget-short v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5176
    if-ne v2, v0, :cond_2b

    .line 5177
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5178
    :cond_2b
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5174
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist test-api toString([Z)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [Z

    .line 5256
    if-nez p0, :cond_5

    .line 5257
    const-string v0, "null"

    return-object v0

    .line 5258
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 5259
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 5260
    const-string v1, "[]"

    return-object v1

    .line 5262
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5263
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5264
    const/4 v2, 0x0

    .line 5265
    .local v2, "i":I
    :goto_19
    aget-boolean v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5266
    if-ne v2, v0, :cond_2b

    .line 5267
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5268
    :cond_2b
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5264
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.class public Ljava/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Arrays$-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0;,
        Ljava/util/Arrays$-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0;,
        Ljava/util/Arrays$-void_parallelSetAll_java_lang_Object__array_java_util_function_IntFunction_generator_LambdaImpl0;,
        Ljava/util/Arrays$-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0;,
        Ljava/util/Arrays$ArrayList;,
        Ljava/util/Arrays$LegacyMergeSort;,
        Ljava/util/Arrays$NaturalOrder;
    }
.end annotation


# static fields
.field private static final INSERTIONSORT_THRESHOLD:I = 0x7

.field public static final MIN_ARRAY_SORT_GRAN:I = 0x2000


# direct methods
.method static synthetic -java_util_Arrays_lambda$1([Ljava/lang/Object;Ljava/util/function/IntFunction;I)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "generator"    # Ljava/util/function/IntFunction;
    .param p2, "i"    # I

    #@0
    .prologue
    .line 4731
    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    aput-object v0, p0, p2

    #@6
    .line 0
    return-void
.end method

.method static synthetic -java_util_Arrays_lambda$2([ILjava/util/function/IntUnaryOperator;I)V
    .locals 1
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "i"    # I

    #@0
    .prologue
    .line 4769
    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@3
    move-result v0

    #@4
    aput v0, p0, p2

    #@6
    .line 0
    return-void
.end method

.method static synthetic -java_util_Arrays_lambda$3([JLjava/util/function/IntToLongFunction;I)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;
    .param p2, "i"    # I

    #@0
    .prologue
    .line 4807
    invoke-interface {p1, p2}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    #@3
    move-result-wide v0

    #@4
    aput-wide v0, p0, p2

    #@6
    .line 0
    return-void
.end method

.method static synthetic -java_util_Arrays_lambda$4([DLjava/util/function/IntToDoubleFunction;I)V
    .locals 2
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;
    .param p2, "i"    # I

    #@0
    .prologue
    .line 4845
    invoke-interface {p1, p2}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    #@3
    move-result-wide v0

    #@4
    aput-wide v0, p0, p2

    #@6
    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .prologue
    .line 3813
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/Arrays$ArrayList;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static binarySearch([BB)I
    .locals 2
    .param p0, "a"    # [B
    .param p1, "key"    # B

    #@0
    .prologue
    .line 2136
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([BIIB)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([BIIB)I
    .locals 1
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # B

    #@0
    .prologue
    .line 2173
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 2174
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([BIIB)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static binarySearch([CC)I
    .locals 2
    .param p0, "a"    # [C
    .param p1, "key"    # C

    #@0
    .prologue
    .line 2055
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([CIIC)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([CIIC)I
    .locals 1
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # C

    #@0
    .prologue
    .line 2092
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 2093
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([CIIC)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static binarySearch([DD)I
    .locals 3
    .param p0, "a"    # [D
    .param p1, "key"    # D

    #@0
    .prologue
    .line 2218
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([DIID)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([DIID)I
    .locals 1
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # D

    #@0
    .prologue
    .line 2256
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 2257
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([DIID)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static binarySearch([FF)I
    .locals 2
    .param p0, "a"    # [F
    .param p1, "key"    # F

    #@0
    .prologue
    .line 2309
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([FIIF)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([FIIF)I
    .locals 1
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # F

    #@0
    .prologue
    .line 2347
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 2348
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([FIIF)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static binarySearch([II)I
    .locals 2
    .param p0, "a"    # [I
    .param p1, "key"    # I

    #@0
    .prologue
    .line 1893
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([IIII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([IIII)I
    .locals 1
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # I

    #@0
    .prologue
    .line 1930
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 1931
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([IIII)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static binarySearch([JIIJ)I
    .locals 1
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # J

    #@0
    .prologue
    .line 1849
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 1850
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([JIIJ)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static binarySearch([JJ)I
    .locals 3
    .param p0, "a"    # [J
    .param p1, "key"    # J

    #@0
    .prologue
    .line 1812
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([JIIJ)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2453
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 2454
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 2554
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "key":Ljava/lang/Object;, "TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 2555
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2408
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 2508
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static binarySearch([SIIS)I
    .locals 1
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # S

    #@0
    .prologue
    .line 2011
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 2012
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([SIIS)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static binarySearch([SS)I
    .locals 2
    .param p0, "a"    # [S
    .param p1, "key"    # S

    #@0
    .prologue
    .line 1974
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([SIIS)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static binarySearch0([BIIB)I
    .locals 5
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # B

    #@0
    .prologue
    .line 2180
    move v1, p1

    #@1
    .line 2181
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    #@3
    .line 2183
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@5
    .line 2184
    add-int v4, v1, v0

    #@7
    ushr-int/lit8 v2, v4, 0x1

    #@9
    .line 2185
    .local v2, "mid":I
    aget-byte v3, p0, v2

    #@b
    .line 2187
    .local v3, "midVal":B
    if-ge v3, p3, :cond_0

    #@d
    .line 2188
    add-int/lit8 v1, v2, 0x1

    #@f
    goto :goto_0

    #@10
    .line 2189
    :cond_0
    if-le v3, p3, :cond_1

    #@12
    .line 2190
    add-int/lit8 v0, v2, -0x1

    #@14
    goto :goto_0

    #@15
    .line 2192
    :cond_1
    return v2

    #@16
    .line 2194
    .end local v2    # "mid":I
    .end local v3    # "midVal":B
    :cond_2
    add-int/lit8 v4, v1, 0x1

    #@18
    neg-int v4, v4

    #@19
    return v4
.end method

.method private static binarySearch0([CIIC)I
    .locals 5
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # C

    #@0
    .prologue
    .line 2099
    move v1, p1

    #@1
    .line 2100
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    #@3
    .line 2102
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@5
    .line 2103
    add-int v4, v1, v0

    #@7
    ushr-int/lit8 v2, v4, 0x1

    #@9
    .line 2104
    .local v2, "mid":I
    aget-char v3, p0, v2

    #@b
    .line 2106
    .local v3, "midVal":C
    if-ge v3, p3, :cond_0

    #@d
    .line 2107
    add-int/lit8 v1, v2, 0x1

    #@f
    goto :goto_0

    #@10
    .line 2108
    :cond_0
    if-le v3, p3, :cond_1

    #@12
    .line 2109
    add-int/lit8 v0, v2, -0x1

    #@14
    goto :goto_0

    #@15
    .line 2111
    :cond_1
    return v2

    #@16
    .line 2113
    .end local v2    # "mid":I
    .end local v3    # "midVal":C
    :cond_2
    add-int/lit8 v4, v1, 0x1

    #@18
    neg-int v4, v4

    #@19
    return v4
.end method

.method private static binarySearch0([DIID)I
    .locals 11
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # D

    #@0
    .prologue
    .line 2263
    move v1, p1

    #@1
    .line 2264
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    #@3
    .line 2266
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_4

    #@5
    .line 2267
    add-int v5, v1, v0

    #@7
    ushr-int/lit8 v4, v5, 0x1

    #@9
    .line 2268
    .local v4, "mid":I
    aget-wide v8, p0, v4

    #@b
    .line 2270
    .local v8, "midVal":D
    cmpg-double v5, v8, p3

    #@d
    if-gez v5, :cond_0

    #@f
    .line 2271
    add-int/lit8 v1, v4, 0x1

    #@11
    goto :goto_0

    #@12
    .line 2272
    :cond_0
    cmpl-double v5, v8, p3

    #@14
    if-lez v5, :cond_1

    #@16
    .line 2273
    add-int/lit8 v0, v4, -0x1

    #@18
    goto :goto_0

    #@19
    .line 2275
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1c
    move-result-wide v6

    #@1d
    .line 2276
    .local v6, "midBits":J
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@20
    move-result-wide v2

    #@21
    .line 2277
    .local v2, "keyBits":J
    cmp-long v5, v6, v2

    #@23
    if-nez v5, :cond_2

    #@25
    .line 2278
    return v4

    #@26
    .line 2279
    :cond_2
    cmp-long v5, v6, v2

    #@28
    if-gez v5, :cond_3

    #@2a
    .line 2280
    add-int/lit8 v1, v4, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 2282
    :cond_3
    add-int/lit8 v0, v4, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 2285
    .end local v2    # "keyBits":J
    .end local v4    # "mid":I
    .end local v6    # "midBits":J
    .end local v8    # "midVal":D
    :cond_4
    add-int/lit8 v5, v1, 0x1

    #@32
    neg-int v5, v5

    #@33
    return v5
.end method

.method private static binarySearch0([FIIF)I
    .locals 7
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # F

    #@0
    .prologue
    .line 2354
    move v2, p1

    #@1
    .line 2355
    .local v2, "low":I
    add-int/lit8 v0, p2, -0x1

    #@3
    .line 2357
    .local v0, "high":I
    :goto_0
    if-gt v2, v0, :cond_4

    #@5
    .line 2358
    add-int v6, v2, v0

    #@7
    ushr-int/lit8 v3, v6, 0x1

    #@9
    .line 2359
    .local v3, "mid":I
    aget v5, p0, v3

    #@b
    .line 2361
    .local v5, "midVal":F
    cmpg-float v6, v5, p3

    #@d
    if-gez v6, :cond_0

    #@f
    .line 2362
    add-int/lit8 v2, v3, 0x1

    #@11
    goto :goto_0

    #@12
    .line 2363
    :cond_0
    cmpl-float v6, v5, p3

    #@14
    if-lez v6, :cond_1

    #@16
    .line 2364
    add-int/lit8 v0, v3, -0x1

    #@18
    goto :goto_0

    #@19
    .line 2366
    :cond_1
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1c
    move-result v4

    #@1d
    .line 2367
    .local v4, "midBits":I
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@20
    move-result v1

    #@21
    .line 2368
    .local v1, "keyBits":I
    if-ne v4, v1, :cond_2

    #@23
    .line 2369
    return v3

    #@24
    .line 2370
    :cond_2
    if-ge v4, v1, :cond_3

    #@26
    .line 2371
    add-int/lit8 v2, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 2373
    :cond_3
    add-int/lit8 v0, v3, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2376
    .end local v1    # "keyBits":I
    .end local v3    # "mid":I
    .end local v4    # "midBits":I
    .end local v5    # "midVal":F
    :cond_4
    add-int/lit8 v6, v2, 0x1

    #@2e
    neg-int v6, v6

    #@2f
    return v6
.end method

.method private static binarySearch0([IIII)I
    .locals 5
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # I

    #@0
    .prologue
    .line 1937
    move v1, p1

    #@1
    .line 1938
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    #@3
    .line 1940
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@5
    .line 1941
    add-int v4, v1, v0

    #@7
    ushr-int/lit8 v2, v4, 0x1

    #@9
    .line 1942
    .local v2, "mid":I
    aget v3, p0, v2

    #@b
    .line 1944
    .local v3, "midVal":I
    if-ge v3, p3, :cond_0

    #@d
    .line 1945
    add-int/lit8 v1, v2, 0x1

    #@f
    goto :goto_0

    #@10
    .line 1946
    :cond_0
    if-le v3, p3, :cond_1

    #@12
    .line 1947
    add-int/lit8 v0, v2, -0x1

    #@14
    goto :goto_0

    #@15
    .line 1949
    :cond_1
    return v2

    #@16
    .line 1951
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_2
    add-int/lit8 v4, v1, 0x1

    #@18
    neg-int v4, v4

    #@19
    return v4
.end method

.method private static binarySearch0([JIIJ)I
    .locals 7
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # J

    #@0
    .prologue
    .line 1856
    move v1, p1

    #@1
    .line 1857
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    #@3
    .line 1859
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@5
    .line 1860
    add-int v3, v1, v0

    #@7
    ushr-int/lit8 v2, v3, 0x1

    #@9
    .line 1861
    .local v2, "mid":I
    aget-wide v4, p0, v2

    #@b
    .line 1863
    .local v4, "midVal":J
    cmp-long v3, v4, p3

    #@d
    if-gez v3, :cond_0

    #@f
    .line 1864
    add-int/lit8 v1, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1865
    :cond_0
    cmp-long v3, v4, p3

    #@14
    if-lez v3, :cond_1

    #@16
    .line 1866
    add-int/lit8 v0, v2, -0x1

    #@18
    goto :goto_0

    #@19
    .line 1868
    :cond_1
    return v2

    #@1a
    .line 1870
    .end local v2    # "mid":I
    .end local v4    # "midVal":J
    :cond_2
    add-int/lit8 v3, v1, 0x1

    #@1c
    neg-int v3, v3

    #@1d
    return v3
.end method

.method private static binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I
    .locals 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2460
    move v2, p1

    #@1
    .line 2461
    .local v2, "low":I
    add-int/lit8 v1, p2, -0x1

    #@3
    .line 2463
    .local v1, "high":I
    :goto_0
    if-gt v2, v1, :cond_2

    #@5
    .line 2464
    add-int v5, v2, v1

    #@7
    ushr-int/lit8 v3, v5, 0x1

    #@9
    .line 2465
    .local v3, "mid":I
    aget-object v4, p0, v3

    #@b
    check-cast v4, Ljava/lang/Comparable;

    #@d
    .line 2466
    .local v4, "midVal":Ljava/lang/Comparable;
    invoke-interface {v4, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    .line 2468
    .local v0, "cmp":I
    if-gez v0, :cond_0

    #@13
    .line 2469
    add-int/lit8 v2, v3, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2470
    :cond_0
    if-lez v0, :cond_1

    #@18
    .line 2471
    add-int/lit8 v1, v3, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 2473
    :cond_1
    return v3

    #@1c
    .line 2475
    .end local v0    # "cmp":I
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Comparable;
    :cond_2
    add-int/lit8 v5, v2, 0x1

    #@1e
    neg-int v5, v5

    #@1f
    return v5
.end method

.method private static binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .locals 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 2561
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "key":Ljava/lang/Object;, "TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p4, :cond_0

    #@2
    .line 2562
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    #@5
    move-result v5

    #@6
    return v5

    #@7
    .line 2564
    :cond_0
    move v2, p1

    #@8
    .line 2565
    .local v2, "low":I
    add-int/lit8 v1, p2, -0x1

    #@a
    .line 2567
    .local v1, "high":I
    :goto_0
    if-gt v2, v1, :cond_3

    #@c
    .line 2568
    add-int v5, v2, v1

    #@e
    ushr-int/lit8 v3, v5, 0x1

    #@10
    .line 2569
    .local v3, "mid":I
    aget-object v4, p0, v3

    #@12
    .line 2570
    .local v4, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p4, v4, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    .line 2571
    .local v0, "cmp":I
    if-gez v0, :cond_1

    #@18
    .line 2572
    add-int/lit8 v2, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 2573
    :cond_1
    if-lez v0, :cond_2

    #@1d
    .line 2574
    add-int/lit8 v1, v3, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 2576
    :cond_2
    return v3

    #@21
    .line 2578
    .end local v0    # "cmp":I
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Object;, "TT;"
    :cond_3
    add-int/lit8 v5, v2, 0x1

    #@23
    neg-int v5, v5

    #@24
    return v5
.end method

.method private static binarySearch0([SIIS)I
    .locals 5
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # S

    #@0
    .prologue
    .line 2018
    move v1, p1

    #@1
    .line 2019
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    #@3
    .line 2021
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_2

    #@5
    .line 2022
    add-int v4, v1, v0

    #@7
    ushr-int/lit8 v2, v4, 0x1

    #@9
    .line 2023
    .local v2, "mid":I
    aget-short v3, p0, v2

    #@b
    .line 2025
    .local v3, "midVal":S
    if-ge v3, p3, :cond_0

    #@d
    .line 2026
    add-int/lit8 v1, v2, 0x1

    #@f
    goto :goto_0

    #@10
    .line 2027
    :cond_0
    if-le v3, p3, :cond_1

    #@12
    .line 2028
    add-int/lit8 v0, v2, -0x1

    #@14
    goto :goto_0

    #@15
    .line 2030
    :cond_1
    return v2

    #@16
    .line 2032
    .end local v2    # "mid":I
    .end local v3    # "midVal":S
    :cond_2
    add-int/lit8 v4, v1, 0x1

    #@18
    neg-int v4, v4

    #@19
    return v4
.end method

.method public static checkOffsetAndCount(III)V
    .locals 1
    .param p0, "arrayLength"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 4856
    or-int v0, p1, p2

    #@2
    if-ltz v0, :cond_0

    #@4
    if-le p1, p0, :cond_1

    #@6
    .line 4857
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(III)V

    #@b
    throw v0

    #@c
    .line 4856
    :cond_1
    sub-int v0, p0, p1

    #@e
    if-lt v0, p2, :cond_0

    #@10
    .line 4855
    return-void
.end method

.method public static copyOf([BI)[B
    .locals 3
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3256
    new-array v0, p1, [B

    #@3
    .line 3258
    .local v0, "copy":[B
    array-length v1, p0

    #@4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 3257
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 3259
    return-object v0
.end method

.method public static copyOf([CI)[C
    .locals 3
    .param p0, "original"    # [C
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3352
    new-array v0, p1, [C

    #@3
    .line 3354
    .local v0, "copy":[C
    array-length v1, p0

    #@4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 3353
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@b
    .line 3355
    return-object v0
.end method

.method public static copyOf([DI)[D
    .locals 3
    .param p0, "original"    # [D
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3400
    new-array v0, p1, [D

    #@3
    .line 3402
    .local v0, "copy":[D
    array-length v1, p0

    #@4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 3401
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@b
    .line 3403
    return-object v0
.end method

.method public static copyOf([FI)[F
    .locals 3
    .param p0, "original"    # [F
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3376
    new-array v0, p1, [F

    #@3
    .line 3378
    .local v0, "copy":[F
    array-length v1, p0

    #@4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 3377
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@b
    .line 3379
    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3304
    new-array v0, p1, [I

    #@3
    .line 3306
    .local v0, "copy":[I
    array-length v1, p0

    #@4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 3305
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@b
    .line 3307
    return-object v0
.end method

.method public static copyOf([JI)[J
    .locals 3
    .param p0, "original"    # [J
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3328
    new-array v0, p1, [J

    #@3
    .line 3330
    .local v0, "copy":[J
    array-length v1, p0

    #@4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 3329
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@b
    .line 3331
    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 3204
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p2, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    const/4 v2, 0x0

    #@1
    .line 3230
    const-class v1, [Ljava/lang/Object;

    #@3
    if-ne p2, v1, :cond_0

    #@5
    .line 3231
    new-array v0, p1, [Ljava/lang/Object;

    #@7
    .line 3234
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    :goto_0
    array-length v1, p0

    #@8
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v1

    #@c
    .line 3233
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    .line 3235
    return-object v0

    #@10
    .line 3232
    .end local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [Ljava/lang/Object;

    #@1a
    .restart local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    goto :goto_0
.end method

.method public static copyOf([SI)[S
    .locals 3
    .param p0, "original"    # [S
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3280
    new-array v0, p1, [S

    #@3
    .line 3282
    .local v0, "copy":[S
    array-length v1, p0

    #@4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 3281
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@b
    .line 3283
    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .locals 3
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3424
    new-array v0, p1, [Z

    #@3
    .line 3426
    .local v0, "copy":[Z
    array-length v1, p0

    #@4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 3425
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@b
    .line 3427
    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .locals 5
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3532
    sub-int v1, p2, p1

    #@3
    .line 3533
    .local v1, "newLength":I
    if-gez v1, :cond_0

    #@5
    .line 3534
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, " > "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 3535
    :cond_0
    new-array v0, v1, [B

    #@25
    .line 3537
    .local v0, "copy":[B
    array-length v2, p0

    #@26
    sub-int/2addr v2, p1

    #@27
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v2

    #@2b
    .line 3536
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2e
    .line 3538
    return-object v0
.end method

.method public static copyOfRange([CII)[C
    .locals 5
    .param p0, "original"    # [C
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3676
    sub-int v1, p2, p1

    #@3
    .line 3677
    .local v1, "newLength":I
    if-gez v1, :cond_0

    #@5
    .line 3678
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, " > "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 3679
    :cond_0
    new-array v0, v1, [C

    #@25
    .line 3681
    .local v0, "copy":[C
    array-length v2, p0

    #@26
    sub-int/2addr v2, p1

    #@27
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v2

    #@2b
    .line 3680
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@2e
    .line 3682
    return-object v0
.end method

.method public static copyOfRange([DII)[D
    .locals 5
    .param p0, "original"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3748
    sub-int v1, p2, p1

    #@3
    .line 3749
    .local v1, "newLength":I
    if-gez v1, :cond_0

    #@5
    .line 3750
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, " > "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 3751
    :cond_0
    new-array v0, v1, [D

    #@25
    .line 3753
    .local v0, "copy":[D
    array-length v2, p0

    #@26
    sub-int/2addr v2, p1

    #@27
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v2

    #@2b
    .line 3752
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@2e
    .line 3754
    return-object v0
.end method

.method public static copyOfRange([FII)[F
    .locals 5
    .param p0, "original"    # [F
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3712
    sub-int v1, p2, p1

    #@3
    .line 3713
    .local v1, "newLength":I
    if-gez v1, :cond_0

    #@5
    .line 3714
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, " > "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 3715
    :cond_0
    new-array v0, v1, [F

    #@25
    .line 3717
    .local v0, "copy":[F
    array-length v2, p0

    #@26
    sub-int/2addr v2, p1

    #@27
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v2

    #@2b
    .line 3716
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@2e
    .line 3718
    return-object v0
.end method

.method public static copyOfRange([III)[I
    .locals 5
    .param p0, "original"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3604
    sub-int v1, p2, p1

    #@3
    .line 3605
    .local v1, "newLength":I
    if-gez v1, :cond_0

    #@5
    .line 3606
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, " > "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 3607
    :cond_0
    new-array v0, v1, [I

    #@25
    .line 3609
    .local v0, "copy":[I
    array-length v2, p0

    #@26
    sub-int/2addr v2, p1

    #@27
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v2

    #@2b
    .line 3608
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@2e
    .line 3610
    return-object v0
.end method

.method public static copyOfRange([JII)[J
    .locals 5
    .param p0, "original"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3640
    sub-int v1, p2, p1

    #@3
    .line 3641
    .local v1, "newLength":I
    if-gez v1, :cond_0

    #@5
    .line 3642
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, " > "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 3643
    :cond_0
    new-array v0, v1, [J

    #@25
    .line 3645
    .local v0, "copy":[J
    array-length v2, p0

    #@26
    sub-int/2addr v2, p1

    #@27
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v2

    #@2b
    .line 3644
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@2e
    .line 3646
    return-object v0
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 3459
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p3, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    const/4 v3, 0x0

    #@1
    .line 3494
    sub-int v1, p2, p1

    #@3
    .line 3495
    .local v1, "newLength":I
    if-gez v1, :cond_0

    #@5
    .line 3496
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, " > "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 3497
    :cond_0
    const-class v2, [Ljava/lang/Object;

    #@25
    if-ne p3, v2, :cond_1

    #@27
    .line 3498
    new-array v0, v1, [Ljava/lang/Object;

    #@29
    .line 3501
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    :goto_0
    array-length v2, p0

    #@2a
    sub-int/2addr v2, p1

    #@2b
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@2e
    move-result v2

    #@2f
    .line 3500
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@32
    .line 3502
    return-object v0

    #@33
    .line 3499
    .end local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@36
    move-result-object v2

    #@37
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, [Ljava/lang/Object;

    #@3d
    .restart local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    goto :goto_0
.end method

.method public static copyOfRange([SII)[S
    .locals 5
    .param p0, "original"    # [S
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3568
    sub-int v1, p2, p1

    #@3
    .line 3569
    .local v1, "newLength":I
    if-gez v1, :cond_0

    #@5
    .line 3570
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, " > "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 3571
    :cond_0
    new-array v0, v1, [S

    #@25
    .line 3573
    .local v0, "copy":[S
    array-length v2, p0

    #@26
    sub-int/2addr v2, p1

    #@27
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v2

    #@2b
    .line 3572
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@2e
    .line 3574
    return-object v0
.end method

.method public static copyOfRange([ZII)[Z
    .locals 5
    .param p0, "original"    # [Z
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3784
    sub-int v1, p2, p1

    #@3
    .line 3785
    .local v1, "newLength":I
    if-gez v1, :cond_0

    #@5
    .line 3786
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, " > "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 3787
    :cond_0
    new-array v0, v1, [Z

    #@25
    .line 3789
    .local v0, "copy":[Z
    array-length v2, p0

    #@26
    sub-int/2addr v2, p1

    #@27
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v2

    #@2b
    .line 3788
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@2e
    .line 3790
    return-object v0
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 8
    .param p0, "a1"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 4262
    if-ne p0, p1, :cond_0

    #@4
    .line 4263
    return v7

    #@5
    .line 4264
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 4265
    :cond_1
    return v6

    #@a
    .line 4266
    :cond_2
    array-length v4, p0

    #@b
    .line 4267
    .local v4, "length":I
    array-length v5, p1

    #@c
    if-eq v5, v4, :cond_3

    #@e
    .line 4268
    return v6

    #@f
    .line 4270
    :cond_3
    const/4 v3, 0x0

    #@10
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_8

    #@12
    .line 4271
    aget-object v0, p0, v3

    #@14
    .line 4272
    .local v0, "e1":Ljava/lang/Object;
    aget-object v1, p1, v3

    #@16
    .line 4274
    .local v1, "e2":Ljava/lang/Object;
    if-ne v0, v1, :cond_5

    #@18
    .line 4270
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 4276
    :cond_5
    if-eqz v0, :cond_6

    #@1d
    if-nez v1, :cond_7

    #@1f
    .line 4277
    :cond_6
    return v6

    #@20
    .line 4280
    :cond_7
    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    .line 4282
    .local v2, "eq":Z
    if-nez v2, :cond_4

    #@26
    .line 4283
    return v6

    #@27
    .line 4285
    .end local v0    # "e1":Ljava/lang/Object;
    .end local v1    # "e2":Ljava/lang/Object;
    .end local v2    # "eq":Z
    :cond_8
    return v7
.end method

.method static deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 4290
    .local v0, "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    .line 4292
    .local v1, "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_0

    #@12
    .line 4293
    const/4 v2, 0x0

    #@13
    return v2

    #@14
    .line 4295
    :cond_0
    instance-of v2, p0, [Ljava/lang/Object;

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 4296
    check-cast p0, [Ljava/lang/Object;

    #@1a
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    #@1c
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    return v2

    #@21
    .line 4297
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_1
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@23
    if-ne v0, v2, :cond_2

    #@25
    .line 4298
    check-cast p0, [B

    #@27
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [B

    #@29
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    #@2c
    move-result v2

    #@2d
    return v2

    #@2e
    .line 4299
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_2
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@30
    if-ne v0, v2, :cond_3

    #@32
    .line 4300
    check-cast p0, [S

    #@34
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [S

    #@36
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    #@39
    move-result v2

    #@3a
    return v2

    #@3b
    .line 4301
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@3d
    if-ne v0, v2, :cond_4

    #@3f
    .line 4302
    check-cast p0, [I

    #@41
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [I

    #@43
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    #@46
    move-result v2

    #@47
    return v2

    #@48
    .line 4303
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_4
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@4a
    if-ne v0, v2, :cond_5

    #@4c
    .line 4304
    check-cast p0, [J

    #@4e
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [J

    #@50
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    #@53
    move-result v2

    #@54
    return v2

    #@55
    .line 4305
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_5
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@57
    if-ne v0, v2, :cond_6

    #@59
    .line 4306
    check-cast p0, [C

    #@5b
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [C

    #@5d
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    #@60
    move-result v2

    #@61
    return v2

    #@62
    .line 4307
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_6
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@64
    if-ne v0, v2, :cond_7

    #@66
    .line 4308
    check-cast p0, [F

    #@68
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [F

    #@6a
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    #@6d
    move-result v2

    #@6e
    return v2

    #@6f
    .line 4309
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_7
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@71
    if-ne v0, v2, :cond_8

    #@73
    .line 4310
    check-cast p0, [D

    #@75
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [D

    #@77
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    #@7a
    move-result v2

    #@7b
    return v2

    #@7c
    .line 4311
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_8
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@7e
    if-ne v0, v2, :cond_9

    #@80
    .line 4312
    check-cast p0, [Z

    #@82
    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [Z

    #@84
    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@87
    move-result v2

    #@88
    return v2

    #@89
    .line 4314
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v2

    #@8d
    return v2
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4188
    if-nez p0, :cond_0

    #@3
    .line 4189
    return v4

    #@4
    .line 4191
    :cond_0
    const/4 v3, 0x1

    #@5
    .line 4193
    .local v3, "result":I
    array-length v5, p0

    #@6
    :goto_0
    if-ge v4, v5, :cond_c

    #@8
    aget-object v1, p0, v4

    #@a
    .line 4194
    .local v1, "element":Ljava/lang/Object;
    const/4 v2, 0x0

    #@b
    .line 4195
    .local v2, "elementHash":I
    if-eqz v1, :cond_1

    #@d
    .line 4196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v6

    #@11
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@14
    move-result-object v0

    #@15
    .line 4197
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_2

    #@17
    .line 4198
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@1a
    move-result v2

    #@1b
    .line 4220
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "element":Ljava/lang/Object;
    :cond_1
    :goto_1
    mul-int/lit8 v6, v3, 0x1f

    #@1d
    add-int v3, v6, v2

    #@1f
    .line 4193
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 4199
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_2
    instance-of v6, v1, [Ljava/lang/Object;

    #@24
    if-eqz v6, :cond_3

    #@26
    .line 4200
    check-cast v1, [Ljava/lang/Object;

    #@28
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    #@2b
    move-result v2

    #@2c
    goto :goto_1

    #@2d
    .line 4201
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_3
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2f
    if-ne v0, v6, :cond_4

    #@31
    .line 4202
    check-cast v1, [B

    #@33
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    #@36
    move-result v2

    #@37
    goto :goto_1

    #@38
    .line 4203
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_4
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@3a
    if-ne v0, v6, :cond_5

    #@3c
    .line 4204
    check-cast v1, [S

    #@3e
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    #@41
    move-result v2

    #@42
    goto :goto_1

    #@43
    .line 4205
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_5
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@45
    if-ne v0, v6, :cond_6

    #@47
    .line 4206
    check-cast v1, [I

    #@49
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    #@4c
    move-result v2

    #@4d
    goto :goto_1

    #@4e
    .line 4207
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_6
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@50
    if-ne v0, v6, :cond_7

    #@52
    .line 4208
    check-cast v1, [J

    #@54
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    #@57
    move-result v2

    #@58
    goto :goto_1

    #@59
    .line 4209
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_7
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@5b
    if-ne v0, v6, :cond_8

    #@5d
    .line 4210
    check-cast v1, [C

    #@5f
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    #@62
    move-result v2

    #@63
    goto :goto_1

    #@64
    .line 4211
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_8
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@66
    if-ne v0, v6, :cond_9

    #@68
    .line 4212
    check-cast v1, [F

    #@6a
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    #@6d
    move-result v2

    #@6e
    goto :goto_1

    #@6f
    .line 4213
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_9
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@71
    if-ne v0, v6, :cond_a

    #@73
    .line 4214
    check-cast v1, [D

    #@75
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    #@78
    move-result v2

    #@79
    goto :goto_1

    #@7a
    .line 4215
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_a
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@7c
    if-ne v0, v6, :cond_b

    #@7e
    .line 4216
    check-cast v1, [Z

    #@80
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    #@83
    move-result v2

    #@84
    goto :goto_1

    #@85
    .line 4218
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@88
    move-result v2

    #@89
    goto :goto_1

    #@8a
    .line 4223
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "element":Ljava/lang/Object;
    .end local v2    # "elementHash":I
    :cond_c
    return v3
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 4626
    if-nez p0, :cond_0

    #@2
    .line 4627
    const-string/jumbo v2, "null"

    #@5
    return-object v2

    #@6
    .line 4629
    :cond_0
    array-length v2, p0

    #@7
    mul-int/lit8 v1, v2, 0x14

    #@9
    .line 4630
    .local v1, "bufLen":I
    array-length v2, p0

    #@a
    if-eqz v2, :cond_1

    #@c
    if-gtz v1, :cond_1

    #@e
    .line 4631
    const v1, 0x7fffffff

    #@11
    .line 4632
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 4633
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/HashSet;

    #@18
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@1b
    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    #@1e
    .line 4634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method

.method private static deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4639
    .local p2, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<[Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    #@2
    .line 4640
    const-string/jumbo v4, "null"

    #@5
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    .line 4641
    return-void

    #@9
    .line 4643
    :cond_0
    array-length v4, p0

    #@a
    add-int/lit8 v3, v4, -0x1

    #@c
    .line 4644
    .local v3, "iMax":I
    const/4 v4, -0x1

    #@d
    if-ne v3, v4, :cond_1

    #@f
    .line 4645
    const-string/jumbo v4, "[]"

    #@12
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 4646
    return-void

    #@16
    .line 4649
    :cond_1
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@19
    .line 4650
    const/16 v4, 0x5b

    #@1b
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 4651
    const/4 v2, 0x0

    #@1f
    .line 4653
    .local v2, "i":I
    :goto_0
    aget-object v1, p0, v2

    #@21
    .line 4654
    .local v1, "element":Ljava/lang/Object;
    if-nez v1, :cond_2

    #@23
    .line 4655
    const-string/jumbo v4, "null"

    #@26
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 4686
    .end local v1    # "element":Ljava/lang/Object;
    :goto_1
    if-ne v2, v3, :cond_d

    #@2b
    .line 4690
    const/16 v4, 0x5d

    #@2d
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 4691
    invoke-interface {p2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@33
    .line 4638
    return-void

    #@34
    .line 4657
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@37
    move-result-object v0

    #@38
    .line 4659
    .local v0, "eClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_c

    #@3e
    .line 4660
    const-class v4, [B

    #@40
    if-ne v0, v4, :cond_3

    #@42
    .line 4661
    check-cast v1, [B

    #@44
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_1

    #@4c
    .line 4662
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_3
    const-class v4, [S

    #@4e
    if-ne v0, v4, :cond_4

    #@50
    .line 4663
    check-cast v1, [S

    #@52
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    goto :goto_1

    #@5a
    .line 4664
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_4
    const-class v4, [I

    #@5c
    if-ne v0, v4, :cond_5

    #@5e
    .line 4665
    check-cast v1, [I

    #@60
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    goto :goto_1

    #@68
    .line 4666
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_5
    const-class v4, [J

    #@6a
    if-ne v0, v4, :cond_6

    #@6c
    .line 4667
    check-cast v1, [J

    #@6e
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    goto :goto_1

    #@76
    .line 4668
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_6
    const-class v4, [C

    #@78
    if-ne v0, v4, :cond_7

    #@7a
    .line 4669
    check-cast v1, [C

    #@7c
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    goto :goto_1

    #@84
    .line 4670
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_7
    const-class v4, [F

    #@86
    if-ne v0, v4, :cond_8

    #@88
    .line 4671
    check-cast v1, [F

    #@8a
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    goto :goto_1

    #@92
    .line 4672
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_8
    const-class v4, [D

    #@94
    if-ne v0, v4, :cond_9

    #@96
    .line 4673
    check-cast v1, [D

    #@98
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    goto :goto_1

    #@a0
    .line 4674
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_9
    const-class v4, [Z

    #@a2
    if-ne v0, v4, :cond_a

    #@a4
    .line 4675
    check-cast v1, [Z

    #@a6
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    goto/16 :goto_1

    #@af
    .line 4677
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_a
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@b2
    move-result v4

    #@b3
    if-eqz v4, :cond_b

    #@b5
    .line 4678
    const-string/jumbo v4, "[...]"

    #@b8
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    goto/16 :goto_1

    #@bd
    .line 4680
    :cond_b
    check-cast v1, [Ljava/lang/Object;

    #@bf
    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    #@c2
    goto/16 :goto_1

    #@c4
    .line 4683
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@c7
    move-result-object v4

    #@c8
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    goto/16 :goto_1

    #@cd
    .line 4688
    .end local v0    # "eClass":Ljava/lang/Class;
    .end local v1    # "element":Ljava/lang/Object;
    :cond_d
    const-string/jumbo v4, ", "

    #@d0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    .line 4651
    add-int/lit8 v2, v2, 0x1

    #@d5
    goto/16 :goto_0
.end method

.method public static equals([B[B)Z
    .locals 6
    .param p0, "a"    # [B
    .param p1, "a2"    # [B

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2712
    if-ne p0, p1, :cond_0

    #@4
    .line 2713
    return v5

    #@5
    .line 2714
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 2715
    :cond_1
    return v4

    #@a
    .line 2717
    :cond_2
    array-length v1, p0

    #@b
    .line 2718
    .local v1, "length":I
    array-length v2, p1

    #@c
    if-eq v2, v1, :cond_3

    #@e
    .line 2719
    return v4

    #@f
    .line 2721
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@12
    .line 2722
    aget-byte v2, p0, v0

    #@14
    aget-byte v3, p1, v0

    #@16
    if-eq v2, v3, :cond_4

    #@18
    .line 2723
    return v4

    #@19
    .line 2721
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2725
    :cond_5
    return v5
.end method

.method public static equals([C[C)Z
    .locals 6
    .param p0, "a"    # [C
    .param p1, "a2"    # [C

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2683
    if-ne p0, p1, :cond_0

    #@4
    .line 2684
    return v5

    #@5
    .line 2685
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 2686
    :cond_1
    return v4

    #@a
    .line 2688
    :cond_2
    array-length v1, p0

    #@b
    .line 2689
    .local v1, "length":I
    array-length v2, p1

    #@c
    if-eq v2, v1, :cond_3

    #@e
    .line 2690
    return v4

    #@f
    .line 2692
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@12
    .line 2693
    aget-char v2, p0, v0

    #@14
    aget-char v3, p1, v0

    #@16
    if-eq v2, v3, :cond_4

    #@18
    .line 2694
    return v4

    #@19
    .line 2692
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2696
    :cond_5
    return v5
.end method

.method public static equals([D[D)Z
    .locals 8
    .param p0, "a"    # [D
    .param p1, "a2"    # [D

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2776
    if-ne p0, p1, :cond_0

    #@4
    .line 2777
    return v7

    #@5
    .line 2778
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 2779
    :cond_1
    return v6

    #@a
    .line 2781
    :cond_2
    array-length v1, p0

    #@b
    .line 2782
    .local v1, "length":I
    array-length v2, p1

    #@c
    if-eq v2, v1, :cond_3

    #@e
    .line 2783
    return v6

    #@f
    .line 2785
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@12
    .line 2786
    aget-wide v2, p0, v0

    #@14
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@17
    move-result-wide v2

    #@18
    aget-wide v4, p1, v0

    #@1a
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1d
    move-result-wide v4

    #@1e
    cmp-long v2, v2, v4

    #@20
    if-eqz v2, :cond_4

    #@22
    .line 2787
    return v6

    #@23
    .line 2785
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 2789
    :cond_5
    return v7
.end method

.method public static equals([F[F)Z
    .locals 6
    .param p0, "a"    # [F
    .param p1, "a2"    # [F

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2811
    if-ne p0, p1, :cond_0

    #@4
    .line 2812
    return v5

    #@5
    .line 2813
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 2814
    :cond_1
    return v4

    #@a
    .line 2816
    :cond_2
    array-length v1, p0

    #@b
    .line 2817
    .local v1, "length":I
    array-length v2, p1

    #@c
    if-eq v2, v1, :cond_3

    #@e
    .line 2818
    return v4

    #@f
    .line 2820
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@12
    .line 2821
    aget v2, p0, v0

    #@14
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@17
    move-result v2

    #@18
    aget v3, p1, v0

    #@1a
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1d
    move-result v3

    #@1e
    if-eq v2, v3, :cond_4

    #@20
    .line 2822
    return v4

    #@21
    .line 2820
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 2824
    :cond_5
    return v5
.end method

.method public static equals([I[I)Z
    .locals 6
    .param p0, "a"    # [I
    .param p1, "a2"    # [I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2625
    if-ne p0, p1, :cond_0

    #@4
    .line 2626
    return v5

    #@5
    .line 2627
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 2628
    :cond_1
    return v4

    #@a
    .line 2630
    :cond_2
    array-length v1, p0

    #@b
    .line 2631
    .local v1, "length":I
    array-length v2, p1

    #@c
    if-eq v2, v1, :cond_3

    #@e
    .line 2632
    return v4

    #@f
    .line 2634
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@12
    .line 2635
    aget v2, p0, v0

    #@14
    aget v3, p1, v0

    #@16
    if-eq v2, v3, :cond_4

    #@18
    .line 2636
    return v4

    #@19
    .line 2634
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2638
    :cond_5
    return v5
.end method

.method public static equals([J[J)Z
    .locals 8
    .param p0, "a"    # [J
    .param p1, "a2"    # [J

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2596
    if-ne p0, p1, :cond_0

    #@4
    .line 2597
    return v7

    #@5
    .line 2598
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 2599
    :cond_1
    return v6

    #@a
    .line 2601
    :cond_2
    array-length v1, p0

    #@b
    .line 2602
    .local v1, "length":I
    array-length v2, p1

    #@c
    if-eq v2, v1, :cond_3

    #@e
    .line 2603
    return v6

    #@f
    .line 2605
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@12
    .line 2606
    aget-wide v2, p0, v0

    #@14
    aget-wide v4, p1, v0

    #@16
    cmp-long v2, v2, v4

    #@18
    if-eqz v2, :cond_4

    #@1a
    .line 2607
    return v6

    #@1b
    .line 2605
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2609
    :cond_5
    return v7
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2842
    if-ne p0, p1, :cond_0

    #@4
    .line 2843
    return v5

    #@5
    .line 2844
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 2845
    :cond_1
    return v6

    #@a
    .line 2847
    :cond_2
    array-length v1, p0

    #@b
    .line 2848
    .local v1, "length":I
    array-length v4, p1

    #@c
    if-eq v4, v1, :cond_3

    #@e
    .line 2849
    return v6

    #@f
    .line 2851
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_7

    #@12
    .line 2852
    aget-object v2, p0, v0

    #@14
    .line 2853
    .local v2, "o1":Ljava/lang/Object;
    aget-object v3, p1, v0

    #@16
    .line 2854
    .local v3, "o2":Ljava/lang/Object;
    if-nez v2, :cond_5

    #@18
    if-nez v3, :cond_4

    #@1a
    move v4, v5

    #@1b
    :goto_1
    if-nez v4, :cond_6

    #@1d
    .line 2855
    return v6

    #@1e
    :cond_4
    move v4, v6

    #@1f
    .line 2854
    goto :goto_1

    #@20
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    goto :goto_1

    #@25
    .line 2851
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 2858
    .end local v2    # "o1":Ljava/lang/Object;
    .end local v3    # "o2":Ljava/lang/Object;
    :cond_7
    return v5
.end method

.method public static equals([S[S)Z
    .locals 6
    .param p0, "a"    # [S
    .param p1, "a2"    # [S

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2654
    if-ne p0, p1, :cond_0

    #@4
    .line 2655
    return v5

    #@5
    .line 2656
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 2657
    :cond_1
    return v4

    #@a
    .line 2659
    :cond_2
    array-length v1, p0

    #@b
    .line 2660
    .local v1, "length":I
    array-length v2, p1

    #@c
    if-eq v2, v1, :cond_3

    #@e
    .line 2661
    return v4

    #@f
    .line 2663
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@12
    .line 2664
    aget-short v2, p0, v0

    #@14
    aget-short v3, p1, v0

    #@16
    if-eq v2, v3, :cond_4

    #@18
    .line 2665
    return v4

    #@19
    .line 2663
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2667
    :cond_5
    return v5
.end method

.method public static equals([Z[Z)Z
    .locals 6
    .param p0, "a"    # [Z
    .param p1, "a2"    # [Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2741
    if-ne p0, p1, :cond_0

    #@4
    .line 2742
    return v5

    #@5
    .line 2743
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 2744
    :cond_1
    return v4

    #@a
    .line 2746
    :cond_2
    array-length v1, p0

    #@b
    .line 2747
    .local v1, "length":I
    array-length v2, p1

    #@c
    if-eq v2, v1, :cond_3

    #@e
    .line 2748
    return v4

    #@f
    .line 2750
    :cond_3
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@12
    .line 2751
    aget-boolean v2, p0, v0

    #@14
    aget-boolean v3, p1, v0

    #@16
    if-eq v2, v3, :cond_4

    #@18
    .line 2752
    return v4

    #@19
    .line 2750
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2754
    :cond_5
    return v5
.end method

.method public static fill([BB)V
    .locals 2
    .param p0, "a"    # [B
    .param p1, "val"    # B

    #@0
    .prologue
    .line 3011
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    array-length v1, p0

    #@2
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 3012
    aput-byte p1, p0, v0

    #@6
    .line 3011
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 3010
    :cond_0
    return-void
.end method

.method public static fill([BIIB)V
    .locals 2
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # B

    #@0
    .prologue
    .line 3033
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 3034
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 3035
    aput-byte p3, p0, v0

    #@9
    .line 3034
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 3032
    :cond_0
    return-void
.end method

.method public static fill([CC)V
    .locals 2
    .param p0, "a"    # [C
    .param p1, "val"    # C

    #@0
    .prologue
    .line 2976
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    array-length v1, p0

    #@2
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 2977
    aput-char p1, p0, v0

    #@6
    .line 2976
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 2975
    :cond_0
    return-void
.end method

.method public static fill([CIIC)V
    .locals 2
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # C

    #@0
    .prologue
    .line 2998
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 2999
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 3000
    aput-char p3, p0, v0

    #@9
    .line 2999
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 2997
    :cond_0
    return-void
.end method

.method public static fill([DD)V
    .locals 3
    .param p0, "a"    # [D
    .param p1, "val"    # D

    #@0
    .prologue
    .line 3082
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    array-length v1, p0

    #@2
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 3083
    aput-wide p1, p0, v0

    #@6
    .line 3082
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 3081
    :cond_0
    return-void
.end method

.method public static fill([DIID)V
    .locals 3
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # D

    #@0
    .prologue
    .line 3104
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 3105
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 3106
    aput-wide p3, p0, v0

    #@9
    .line 3105
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 3103
    :cond_0
    return-void
.end method

.method public static fill([FF)V
    .locals 2
    .param p0, "a"    # [F
    .param p1, "val"    # F

    #@0
    .prologue
    .line 3117
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    array-length v1, p0

    #@2
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 3118
    aput p1, p0, v0

    #@6
    .line 3117
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 3116
    :cond_0
    return-void
.end method

.method public static fill([FIIF)V
    .locals 2
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # F

    #@0
    .prologue
    .line 3139
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 3140
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 3141
    aput p3, p0, v0

    #@9
    .line 3140
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 3138
    :cond_0
    return-void
.end method

.method public static fill([II)V
    .locals 2
    .param p0, "a"    # [I
    .param p1, "val"    # I

    #@0
    .prologue
    .line 2906
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    array-length v1, p0

    #@2
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 2907
    aput p1, p0, v0

    #@6
    .line 2906
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 2905
    :cond_0
    return-void
.end method

.method public static fill([IIII)V
    .locals 2
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # I

    #@0
    .prologue
    .line 2928
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 2929
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 2930
    aput p3, p0, v0

    #@9
    .line 2929
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 2927
    :cond_0
    return-void
.end method

.method public static fill([JIIJ)V
    .locals 3
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # J

    #@0
    .prologue
    .line 2893
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 2894
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 2895
    aput-wide p3, p0, v0

    #@9
    .line 2894
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 2892
    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 3
    .param p0, "a"    # [J
    .param p1, "val"    # J

    #@0
    .prologue
    .line 2871
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    array-length v1, p0

    #@2
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 2872
    aput-wide p1, p0, v0

    #@6
    .line 2871
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 2870
    :cond_0
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3178
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 3179
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 3180
    aput-object p3, p0, v0

    #@9
    .line 3179
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 3177
    :cond_0
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3154
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    array-length v1, p0

    #@2
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 3155
    aput-object p1, p0, v0

    #@6
    .line 3154
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 3153
    :cond_0
    return-void
.end method

.method public static fill([SIIS)V
    .locals 2
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # S

    #@0
    .prologue
    .line 2963
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 2964
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 2965
    aput-short p3, p0, v0

    #@9
    .line 2964
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 2962
    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2
    .param p0, "a"    # [S
    .param p1, "val"    # S

    #@0
    .prologue
    .line 2941
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    array-length v1, p0

    #@2
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 2942
    aput-short p1, p0, v0

    #@6
    .line 2941
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 2940
    :cond_0
    return-void
.end method

.method public static fill([ZIIZ)V
    .locals 2
    .param p0, "a"    # [Z
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Z

    #@0
    .prologue
    .line 3069
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 3070
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 3071
    aput-boolean p3, p0, v0

    #@9
    .line 3070
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 3068
    :cond_0
    return-void
.end method

.method public static fill([ZZ)V
    .locals 2
    .param p0, "a"    # [Z
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 3046
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    array-length v1, p0

    #@2
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 3047
    aput-boolean p1, p0, v0

    #@6
    .line 3046
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 3045
    :cond_0
    return-void
.end method

.method public static hashCode([B)I
    .locals 5
    .param p0, "a"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4033
    if-nez p0, :cond_0

    #@3
    .line 4034
    return v2

    #@4
    .line 4036
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 4037
    .local v1, "result":I
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget-byte v0, p0, v2

    #@a
    .line 4038
    .local v0, "element":B
    mul-int/lit8 v4, v1, 0x1f

    #@c
    add-int v1, v4, v0

    #@e
    .line 4037
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 4040
    .end local v0    # "element":B
    :cond_1
    return v1
.end method

.method public static hashCode([C)I
    .locals 5
    .param p0, "a"    # [C

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4006
    if-nez p0, :cond_0

    #@3
    .line 4007
    return v2

    #@4
    .line 4009
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 4010
    .local v1, "result":I
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget-char v0, p0, v2

    #@a
    .line 4011
    .local v0, "element":C
    mul-int/lit8 v4, v1, 0x1f

    #@c
    add-int v1, v4, v0

    #@e
    .line 4010
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 4013
    .end local v0    # "element":C
    :cond_1
    return v1
.end method

.method public static hashCode([D)I
    .locals 10
    .param p0, "a"    # [D

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4114
    if-nez p0, :cond_0

    #@3
    .line 4115
    return v5

    #@4
    .line 4117
    :cond_0
    const/4 v4, 0x1

    #@5
    .line 4118
    .local v4, "result":I
    array-length v6, p0

    #@6
    :goto_0
    if-ge v5, v6, :cond_1

    #@8
    aget-wide v2, p0, v5

    #@a
    .line 4119
    .local v2, "element":D
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@d
    move-result-wide v0

    #@e
    .line 4120
    .local v0, "bits":J
    mul-int/lit8 v7, v4, 0x1f

    #@10
    const/16 v8, 0x20

    #@12
    ushr-long v8, v0, v8

    #@14
    xor-long/2addr v8, v0

    #@15
    long-to-int v8, v8

    #@16
    add-int v4, v7, v8

    #@18
    .line 4118
    add-int/lit8 v5, v5, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 4122
    .end local v0    # "bits":J
    .end local v2    # "element":D
    :cond_1
    return v4
.end method

.method public static hashCode([F)I
    .locals 6
    .param p0, "a"    # [F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4087
    if-nez p0, :cond_0

    #@3
    .line 4088
    return v2

    #@4
    .line 4090
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 4091
    .local v1, "result":I
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget v0, p0, v2

    #@a
    .line 4092
    .local v0, "element":F
    mul-int/lit8 v4, v1, 0x1f

    #@c
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@f
    move-result v5

    #@10
    add-int v1, v4, v5

    #@12
    .line 4091
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 4094
    .end local v0    # "element":F
    :cond_1
    return v1
.end method

.method public static hashCode([I)I
    .locals 5
    .param p0, "a"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3952
    if-nez p0, :cond_0

    #@3
    .line 3953
    return v2

    #@4
    .line 3955
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 3956
    .local v1, "result":I
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget v0, p0, v2

    #@a
    .line 3957
    .local v0, "element":I
    mul-int/lit8 v4, v1, 0x1f

    #@c
    add-int v1, v4, v0

    #@e
    .line 3956
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 3959
    .end local v0    # "element":I
    :cond_1
    return v1
.end method

.method public static hashCode([J)I
    .locals 8
    .param p0, "a"    # [J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3923
    if-nez p0, :cond_0

    #@3
    .line 3924
    return v4

    #@4
    .line 3926
    :cond_0
    const/4 v3, 0x1

    #@5
    .line 3927
    .local v3, "result":I
    array-length v5, p0

    #@6
    :goto_0
    if-ge v4, v5, :cond_1

    #@8
    aget-wide v0, p0, v4

    #@a
    .line 3928
    .local v0, "element":J
    const/16 v6, 0x20

    #@c
    ushr-long v6, v0, v6

    #@e
    xor-long/2addr v6, v0

    #@f
    long-to-int v2, v6

    #@10
    .line 3929
    .local v2, "elementHash":I
    mul-int/lit8 v6, v3, 0x1f

    #@12
    add-int v3, v6, v2

    #@14
    .line 3927
    add-int/lit8 v4, v4, 0x1

    #@16
    goto :goto_0

    #@17
    .line 3932
    .end local v0    # "element":J
    .end local v2    # "elementHash":I
    :cond_1
    return v3
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4147
    if-nez p0, :cond_0

    #@3
    .line 4148
    return v3

    #@4
    .line 4150
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 4152
    .local v1, "result":I
    array-length v5, p0

    #@6
    move v4, v3

    #@7
    :goto_0
    if-ge v4, v5, :cond_2

    #@9
    aget-object v0, p0, v4

    #@b
    .line 4153
    .local v0, "element":Ljava/lang/Object;
    mul-int/lit8 v6, v1, 0x1f

    #@d
    if-nez v0, :cond_1

    #@f
    move v2, v3

    #@10
    :goto_1
    add-int v1, v6, v2

    #@12
    .line 4152
    add-int/lit8 v2, v4, 0x1

    #@14
    move v4, v2

    #@15
    goto :goto_0

    #@16
    .line 4153
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@19
    move-result v2

    #@1a
    goto :goto_1

    #@1b
    .line 4155
    .end local v0    # "element":Ljava/lang/Object;
    :cond_2
    return v1
.end method

.method public static hashCode([S)I
    .locals 5
    .param p0, "a"    # [S

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3979
    if-nez p0, :cond_0

    #@3
    .line 3980
    return v2

    #@4
    .line 3982
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 3983
    .local v1, "result":I
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget-short v0, p0, v2

    #@a
    .line 3984
    .local v0, "element":S
    mul-int/lit8 v4, v1, 0x1f

    #@c
    add-int v1, v4, v0

    #@e
    .line 3983
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 3986
    .end local v0    # "element":S
    :cond_1
    return v1
.end method

.method public static hashCode([Z)I
    .locals 6
    .param p0, "a"    # [Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4060
    if-nez p0, :cond_0

    #@3
    .line 4061
    return v2

    #@4
    .line 4063
    :cond_0
    const/4 v1, 0x1

    #@5
    .line 4064
    .local v1, "result":I
    array-length v4, p0

    #@6
    move v3, v2

    #@7
    :goto_0
    if-ge v3, v4, :cond_2

    #@9
    aget-boolean v0, p0, v3

    #@b
    .line 4065
    .local v0, "element":Z
    mul-int/lit8 v5, v1, 0x1f

    #@d
    if-eqz v0, :cond_1

    #@f
    const/16 v2, 0x4cf

    #@11
    :goto_1
    add-int v1, v5, v2

    #@13
    .line 4064
    add-int/lit8 v2, v3, 0x1

    #@15
    move v3, v2

    #@16
    goto :goto_0

    #@17
    .line 4065
    :cond_1
    const/16 v2, 0x4d5

    #@19
    goto :goto_1

    #@1a
    .line 4067
    .end local v0    # "element":Z
    :cond_2
    return v1
.end method

.method private static legacyMergeSort([Ljava/lang/Object;)V
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1264
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, [Ljava/lang/Object;

    #@7
    .line 1265
    .local v0, "aux":[Ljava/lang/Object;
    array-length v1, p0

    #@8
    invoke-static {v0, p0, v2, v1, v2}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    #@b
    .line 1263
    return-void
.end method

.method private static legacyMergeSort([Ljava/lang/Object;II)V
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 1331
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 1332
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    .line 1333
    .local v0, "aux":[Ljava/lang/Object;
    neg-int v1, p1

    #@9
    invoke-static {v0, p0, p1, p2, v1}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    #@c
    .line 1330
    return-void
.end method

.method private static legacyMergeSort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1530
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 1531
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    .line 1532
    .local v0, "aux":[Ljava/lang/Object;, "[TT;"
    if-nez p3, :cond_0

    #@a
    .line 1533
    neg-int v1, p1

    #@b
    invoke-static {v0, p0, p1, p2, v1}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    #@e
    .line 1529
    :goto_0
    return-void

    #@f
    .line 1535
    :cond_0
    neg-int v4, p1

    #@10
    move-object v1, p0

    #@11
    move v2, p1

    #@12
    move v3, p2

    #@13
    move-object v5, p3

    #@14
    invoke-static/range {v0 .. v5}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    #@17
    goto :goto_0
.end method

.method private static legacyMergeSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v2, 0x0

    #@1
    .line 1456
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, [Ljava/lang/Object;

    #@7
    .line 1457
    .local v0, "aux":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    #@9
    .line 1458
    array-length v1, p0

    #@a
    invoke-static {v0, p0, v2, v1, v2}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    #@d
    .line 1455
    :goto_0
    return-void

    #@e
    .line 1460
    :cond_0
    array-length v3, p0

    #@f
    move-object v1, p0

    #@10
    move v4, v2

    #@11
    move-object v5, p1

    #@12
    invoke-static/range {v0 .. v5}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    #@15
    goto :goto_0
.end method

.method private static mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 13
    .param p0, "src"    # [Ljava/lang/Object;
    .param p1, "dest"    # [Ljava/lang/Object;
    .param p2, "low"    # I
    .param p3, "high"    # I
    .param p4, "off"    # I

    #@0
    .prologue
    .line 1356
    sub-int v5, p3, p2

    #@2
    .line 1359
    .local v5, "length":I
    const/4 v11, 0x7

    #@3
    if-ge v5, v11, :cond_2

    #@5
    .line 1360
    move v3, p2

    #@6
    .local v3, "i":I
    :goto_0
    move/from16 v0, p3

    #@8
    if-ge v3, v0, :cond_1

    #@a
    .line 1361
    move v4, v3

    #@b
    .local v4, "j":I
    :goto_1
    if-le v4, p2, :cond_0

    #@d
    .line 1362
    add-int/lit8 v11, v4, -0x1

    #@f
    aget-object v11, p1, v11

    #@11
    check-cast v11, Ljava/lang/Comparable;

    #@13
    aget-object v12, p1, v4

    #@15
    invoke-interface {v11, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@18
    move-result v11

    #@19
    if-lez v11, :cond_0

    #@1b
    .line 1363
    add-int/lit8 v11, v4, -0x1

    #@1d
    invoke-static {p1, v4, v11}, Ljava/util/Arrays;->swap([Ljava/lang/Object;II)V

    #@20
    .line 1362
    add-int/lit8 v4, v4, -0x1

    #@22
    goto :goto_1

    #@23
    .line 1360
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1364
    .end local v4    # "j":I
    :cond_1
    return-void

    #@27
    .line 1368
    .end local v3    # "i":I
    :cond_2
    move v2, p2

    #@28
    .line 1369
    .local v2, "destLow":I
    move/from16 v1, p3

    #@2a
    .line 1370
    .local v1, "destHigh":I
    add-int p2, p2, p4

    #@2c
    .line 1371
    add-int p3, p3, p4

    #@2e
    .line 1372
    add-int v11, p2, p3

    #@30
    ushr-int/lit8 v6, v11, 0x1

    #@32
    .line 1373
    .local v6, "mid":I
    move/from16 v0, p4

    #@34
    neg-int v11, v0

    #@35
    invoke-static {p1, p0, p2, v6, v11}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    #@38
    .line 1374
    move/from16 v0, p4

    #@3a
    neg-int v11, v0

    #@3b
    move/from16 v0, p3

    #@3d
    invoke-static {p1, p0, v6, v0, v11}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    #@40
    .line 1378
    add-int/lit8 v11, v6, -0x1

    #@42
    aget-object v11, p0, v11

    #@44
    check-cast v11, Ljava/lang/Comparable;

    #@46
    aget-object v12, p0, v6

    #@48
    invoke-interface {v11, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@4b
    move-result v11

    #@4c
    if-gtz v11, :cond_3

    #@4e
    .line 1379
    invoke-static {p0, p2, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@51
    .line 1380
    return-void

    #@52
    .line 1384
    :cond_3
    move v3, v2

    #@53
    .restart local v3    # "i":I
    move v7, p2

    #@54
    .local v7, "p":I
    move v9, v6

    #@55
    .local v9, "q":I
    move v10, v9

    #@56
    .end local v9    # "q":I
    .local v10, "q":I
    move v8, v7

    #@57
    .end local v7    # "p":I
    .local v8, "p":I
    :goto_2
    if-ge v3, v1, :cond_6

    #@59
    .line 1385
    move/from16 v0, p3

    #@5b
    if-ge v10, v0, :cond_4

    #@5d
    if-ge v8, v6, :cond_5

    #@5f
    aget-object v11, p0, v8

    #@61
    check-cast v11, Ljava/lang/Comparable;

    #@63
    aget-object v12, p0, v10

    #@65
    invoke-interface {v11, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@68
    move-result v11

    #@69
    if-gtz v11, :cond_5

    #@6b
    .line 1386
    :cond_4
    add-int/lit8 v7, v8, 0x1

    #@6d
    .end local v8    # "p":I
    .restart local v7    # "p":I
    aget-object v11, p0, v8

    #@6f
    aput-object v11, p1, v3

    #@71
    move v9, v10

    #@72
    .line 1384
    .end local v10    # "q":I
    .restart local v9    # "q":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@74
    move v10, v9

    #@75
    .end local v9    # "q":I
    .restart local v10    # "q":I
    move v8, v7

    #@76
    .end local v7    # "p":I
    .restart local v8    # "p":I
    goto :goto_2

    #@77
    .line 1388
    :cond_5
    add-int/lit8 v9, v10, 0x1

    #@79
    .end local v10    # "q":I
    .restart local v9    # "q":I
    aget-object v11, p0, v10

    #@7b
    aput-object v11, p1, v3

    #@7d
    move v7, v8

    #@7e
    .end local v8    # "p":I
    .restart local v7    # "p":I
    goto :goto_3

    #@7f
    .line 1355
    .end local v7    # "p":I
    .end local v9    # "q":I
    .restart local v8    # "p":I
    .restart local v10    # "q":I
    :cond_6
    return-void
.end method

.method private static mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 19
    .param p0, "src"    # [Ljava/lang/Object;
    .param p1, "dest"    # [Ljava/lang/Object;
    .param p2, "low"    # I
    .param p3, "high"    # I
    .param p4, "off"    # I
    .param p5, "c"    # Ljava/util/Comparator;

    #@0
    .prologue
    .line 1550
    sub-int v14, p3, p2

    #@2
    .line 1553
    .local v14, "length":I
    const/4 v3, 0x7

    #@3
    if-ge v14, v3, :cond_2

    #@5
    .line 1554
    move/from16 v12, p2

    #@7
    .local v12, "i":I
    :goto_0
    move/from16 v0, p3

    #@9
    if-ge v12, v0, :cond_1

    #@b
    .line 1555
    move v13, v12

    #@c
    .local v13, "j":I
    :goto_1
    move/from16 v0, p2

    #@e
    if-le v13, v0, :cond_0

    #@10
    add-int/lit8 v3, v13, -0x1

    #@12
    aget-object v3, p1, v3

    #@14
    aget-object v4, p1, v13

    #@16
    move-object/from16 v0, p5

    #@18
    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1b
    move-result v3

    #@1c
    if-lez v3, :cond_0

    #@1e
    .line 1556
    add-int/lit8 v3, v13, -0x1

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-static {v0, v13, v3}, Ljava/util/Arrays;->swap([Ljava/lang/Object;II)V

    #@25
    .line 1555
    add-int/lit8 v13, v13, -0x1

    #@27
    goto :goto_1

    #@28
    .line 1554
    :cond_0
    add-int/lit8 v12, v12, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1557
    .end local v13    # "j":I
    :cond_1
    return-void

    #@2c
    .line 1561
    .end local v12    # "i":I
    :cond_2
    move/from16 v11, p2

    #@2e
    .line 1562
    .local v11, "destLow":I
    move/from16 v10, p3

    #@30
    .line 1563
    .local v10, "destHigh":I
    add-int p2, p2, p4

    #@32
    .line 1564
    add-int p3, p3, p4

    #@34
    .line 1565
    add-int v3, p2, p3

    #@36
    ushr-int/lit8 v6, v3, 0x1

    #@38
    .line 1566
    .local v6, "mid":I
    move/from16 v0, p4

    #@3a
    neg-int v7, v0

    #@3b
    move-object/from16 v3, p1

    #@3d
    move-object/from16 v4, p0

    #@3f
    move/from16 v5, p2

    #@41
    move-object/from16 v8, p5

    #@43
    invoke-static/range {v3 .. v8}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    #@46
    .line 1567
    move/from16 v0, p4

    #@48
    neg-int v8, v0

    #@49
    move-object/from16 v4, p1

    #@4b
    move-object/from16 v5, p0

    #@4d
    move/from16 v7, p3

    #@4f
    move-object/from16 v9, p5

    #@51
    invoke-static/range {v4 .. v9}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    #@54
    .line 1571
    add-int/lit8 v3, v6, -0x1

    #@56
    aget-object v3, p0, v3

    #@58
    aget-object v4, p0, v6

    #@5a
    move-object/from16 v0, p5

    #@5c
    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@5f
    move-result v3

    #@60
    if-gtz v3, :cond_3

    #@62
    .line 1572
    move-object/from16 v0, p0

    #@64
    move/from16 v1, p2

    #@66
    move-object/from16 v2, p1

    #@68
    invoke-static {v0, v1, v2, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6b
    .line 1573
    return-void

    #@6c
    .line 1577
    :cond_3
    move v12, v11

    #@6d
    .restart local v12    # "i":I
    move/from16 v15, p2

    #@6f
    .local v15, "p":I
    move/from16 v17, v6

    #@71
    .local v17, "q":I
    move/from16 v18, v17

    #@73
    .end local v17    # "q":I
    .local v18, "q":I
    move/from16 v16, v15

    #@75
    .end local v15    # "p":I
    .local v16, "p":I
    :goto_2
    if-ge v12, v10, :cond_6

    #@77
    .line 1578
    move/from16 v0, v18

    #@79
    move/from16 v1, p3

    #@7b
    if-ge v0, v1, :cond_4

    #@7d
    move/from16 v0, v16

    #@7f
    if-ge v0, v6, :cond_5

    #@81
    aget-object v3, p0, v16

    #@83
    aget-object v4, p0, v18

    #@85
    move-object/from16 v0, p5

    #@87
    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@8a
    move-result v3

    #@8b
    if-gtz v3, :cond_5

    #@8d
    .line 1579
    :cond_4
    add-int/lit8 v15, v16, 0x1

    #@8f
    .end local v16    # "p":I
    .restart local v15    # "p":I
    aget-object v3, p0, v16

    #@91
    aput-object v3, p1, v12

    #@93
    move/from16 v17, v18

    #@95
    .line 1577
    .end local v18    # "q":I
    .restart local v17    # "q":I
    :goto_3
    add-int/lit8 v12, v12, 0x1

    #@97
    move/from16 v18, v17

    #@99
    .end local v17    # "q":I
    .restart local v18    # "q":I
    move/from16 v16, v15

    #@9b
    .end local v15    # "p":I
    .restart local v16    # "p":I
    goto :goto_2

    #@9c
    .line 1581
    :cond_5
    add-int/lit8 v17, v18, 0x1

    #@9e
    .end local v18    # "q":I
    .restart local v17    # "q":I
    aget-object v3, p0, v18

    #@a0
    aput-object v3, p1, v12

    #@a2
    move/from16 v15, v16

    #@a4
    .end local v16    # "p":I
    .restart local v15    # "p":I
    goto :goto_3

    #@a5
    .line 1549
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_6
    return-void
.end method

.method public static parallelPrefix([DIILjava/util/function/DoubleBinaryOperator;)V
    .locals 6
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/DoubleBinaryOperator;

    #@0
    .prologue
    .line 1738
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1739
    array-length v0, p0

    #@4
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@7
    .line 1740
    if-ge p1, p2, :cond_0

    #@9
    .line 1741
    new-instance v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    #@b
    .line 1742
    const/4 v1, 0x0

    #@c
    move-object v2, p3

    #@d
    move-object v3, p0

    #@e
    move v4, p1

    #@f
    move v5, p2

    #@10
    .line 1741
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V

    #@13
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    #@16
    .line 1737
    :cond_0
    return-void
.end method

.method public static parallelPrefix([DLjava/util/function/DoubleBinaryOperator;)V
    .locals 6
    .param p0, "array"    # [D
    .param p1, "op"    # Ljava/util/function/DoubleBinaryOperator;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1715
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 1716
    array-length v0, p0

    #@5
    if-lez v0, :cond_0

    #@7
    .line 1717
    new-instance v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    #@9
    .line 1718
    array-length v5, p0

    #@a
    const/4 v1, 0x0

    #@b
    move-object v2, p1

    #@c
    move-object v3, p0

    #@d
    .line 1717
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V

    #@10
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    #@13
    .line 1714
    :cond_0
    return-void
.end method

.method public static parallelPrefix([IIILjava/util/function/IntBinaryOperator;)V
    .locals 6
    .param p0, "array"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/IntBinaryOperator;

    #@0
    .prologue
    .line 1783
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1784
    array-length v0, p0

    #@4
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@7
    .line 1785
    if-ge p1, p2, :cond_0

    #@9
    .line 1786
    new-instance v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    #@b
    .line 1787
    const/4 v1, 0x0

    #@c
    move-object v2, p3

    #@d
    move-object v3, p0

    #@e
    move v4, p1

    #@f
    move v5, p2

    #@10
    .line 1786
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V

    #@13
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    #@16
    .line 1782
    :cond_0
    return-void
.end method

.method public static parallelPrefix([ILjava/util/function/IntBinaryOperator;)V
    .locals 6
    .param p0, "array"    # [I
    .param p1, "op"    # Ljava/util/function/IntBinaryOperator;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1760
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 1761
    array-length v0, p0

    #@5
    if-lez v0, :cond_0

    #@7
    .line 1762
    new-instance v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    #@9
    .line 1763
    array-length v5, p0

    #@a
    const/4 v1, 0x0

    #@b
    move-object v2, p1

    #@c
    move-object v3, p0

    #@d
    .line 1762
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V

    #@10
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    #@13
    .line 1759
    :cond_0
    return-void
.end method

.method public static parallelPrefix([JIILjava/util/function/LongBinaryOperator;)V
    .locals 6
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    .line 1690
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1691
    array-length v0, p0

    #@4
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@7
    .line 1692
    if-ge p1, p2, :cond_0

    #@9
    .line 1693
    new-instance v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    #@b
    .line 1694
    const/4 v1, 0x0

    #@c
    move-object v2, p3

    #@d
    move-object v3, p0

    #@e
    move v4, p1

    #@f
    move v5, p2

    #@10
    .line 1693
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V

    #@13
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    #@16
    .line 1689
    :cond_0
    return-void
.end method

.method public static parallelPrefix([JLjava/util/function/LongBinaryOperator;)V
    .locals 6
    .param p0, "array"    # [J
    .param p1, "op"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1667
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 1668
    array-length v0, p0

    #@5
    if-lez v0, :cond_0

    #@7
    .line 1669
    new-instance v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    #@9
    .line 1670
    array-length v5, p0

    #@a
    const/4 v1, 0x0

    #@b
    move-object v2, p1

    #@c
    move-object v3, p0

    #@d
    .line 1669
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V

    #@10
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    #@13
    .line 1666
    :cond_0
    return-void
.end method

.method public static parallelPrefix([Ljava/lang/Object;IILjava/util/function/BinaryOperator;)V
    .locals 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1645
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1646
    array-length v0, p0

    #@4
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@7
    .line 1647
    if-ge p1, p2, :cond_0

    #@9
    .line 1648
    new-instance v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    #@b
    .line 1649
    const/4 v1, 0x0

    #@c
    move-object v2, p3

    #@d
    move-object v3, p0

    #@e
    move v4, p1

    #@f
    move v5, p2

    #@10
    .line 1648
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    #@13
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    #@16
    .line 1644
    :cond_0
    return-void
.end method

.method public static parallelPrefix([Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 1621
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 1622
    array-length v0, p0

    #@5
    if-lez v0, :cond_0

    #@7
    .line 1623
    new-instance v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    #@9
    .line 1624
    array-length v5, p0

    #@a
    const/4 v1, 0x0

    #@b
    move-object v2, p1

    #@c
    move-object v3, p0

    #@d
    .line 1623
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    #@10
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    #@13
    .line 1620
    :cond_0
    return-void
.end method

.method public static parallelSetAll([DLjava/util/function/IntToDoubleFunction;)V
    .locals 2
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;

    #@0
    .prologue
    .line 4844
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 4845
    array-length v0, p0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    #@c
    move-result-object v0

    #@d
    new-instance v1, Ljava/util/Arrays$-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0;

    #@f
    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0;-><init>([DLjava/util/function/IntToDoubleFunction;)V

    #@12
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    #@15
    .line 4843
    return-void
.end method

.method public static parallelSetAll([ILjava/util/function/IntUnaryOperator;)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;

    #@0
    .prologue
    .line 4768
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 4769
    array-length v0, p0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    #@c
    move-result-object v0

    #@d
    new-instance v1, Ljava/util/Arrays$-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0;

    #@f
    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0;-><init>([ILjava/util/function/IntUnaryOperator;)V

    #@12
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    #@15
    .line 4767
    return-void
.end method

.method public static parallelSetAll([JLjava/util/function/IntToLongFunction;)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;

    #@0
    .prologue
    .line 4806
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 4807
    array-length v0, p0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    #@c
    move-result-object v0

    #@d
    new-instance v1, Ljava/util/Arrays$-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0;

    #@f
    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0;-><init>([JLjava/util/function/IntToLongFunction;)V

    #@12
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    #@15
    .line 4805
    return-void
.end method

.method public static parallelSetAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction",
            "<+TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4730
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 4731
    array-length v0, p0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    #@c
    move-result-object v0

    #@d
    new-instance v1, Ljava/util/Arrays$-void_parallelSetAll_java_lang_Object__array_java_util_function_IntFunction_generator_LambdaImpl0;

    #@f
    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$-void_parallelSetAll_java_lang_Object__array_java_util_function_IntFunction_generator_LambdaImpl0;-><init>([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    #@12
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    #@15
    .line 4729
    return-void
.end method

.method public static parallelSort([B)V
    .locals 10
    .param p0, "a"    # [B

    #@0
    .prologue
    const/16 v7, 0x2000

    #@2
    const/4 v4, 0x0

    #@3
    .line 445
    array-length v5, p0

    #@4
    .line 446
    .local v5, "n":I
    if-le v5, v7, :cond_0

    #@6
    .line 447
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@9
    move-result v9

    #@a
    .local v9, "p":I
    const/4 v0, 0x1

    #@b
    if-ne v9, v0, :cond_1

    #@d
    .line 448
    .end local v9    # "p":I
    :cond_0
    add-int/lit8 v0, v5, -0x1

    #@f
    invoke-static {p0, v4, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    #@12
    .line 444
    :goto_0
    return-void

    #@13
    .line 450
    .restart local v9    # "p":I
    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    #@15
    .line 451
    new-array v3, v5, [B

    #@17
    .line 452
    shl-int/lit8 v1, v9, 0x2

    #@19
    div-int v8, v5, v1

    #@1b
    .local v8, "g":I
    if-gt v8, v7, :cond_2

    #@1d
    .line 451
    :goto_1
    const/4 v1, 0x0

    #@1e
    move-object v2, p0

    #@1f
    move v6, v4

    #@20
    .line 450
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    #@23
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->invoke()Ljava/lang/Object;

    #@26
    goto :goto_0

    #@27
    :cond_2
    move v7, v8

    #@28
    .line 453
    goto :goto_1
.end method

.method public static parallelSort([BII)V
    .locals 10
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    const/16 v7, 0x2000

    #@2
    .line 484
    array-length v0, p0

    #@3
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@6
    .line 485
    sub-int v5, p2, p1

    #@8
    .line 486
    .local v5, "n":I
    if-le v5, v7, :cond_0

    #@a
    .line 487
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@d
    move-result v9

    #@e
    .local v9, "p":I
    const/4 v0, 0x1

    #@f
    if-ne v9, v0, :cond_1

    #@11
    .line 488
    .end local v9    # "p":I
    :cond_0
    add-int/lit8 v0, p2, -0x1

    #@13
    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    #@16
    .line 483
    :goto_0
    return-void

    #@17
    .line 490
    .restart local v9    # "p":I
    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    #@19
    .line 491
    new-array v3, v5, [B

    #@1b
    .line 492
    shl-int/lit8 v1, v9, 0x2

    #@1d
    div-int v8, v5, v1

    #@1f
    .local v8, "g":I
    if-gt v8, v7, :cond_2

    #@21
    .line 491
    :goto_1
    const/4 v1, 0x0

    #@22
    const/4 v6, 0x0

    #@23
    move-object v2, p0

    #@24
    move v4, p1

    #@25
    .line 490
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    #@28
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->invoke()Ljava/lang/Object;

    #@2b
    goto :goto_0

    #@2c
    :cond_2
    move v7, v8

    #@2d
    .line 493
    goto :goto_1
.end method

.method public static parallelSort([C)V
    .locals 12
    .param p0, "a"    # [C

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v9, 0x2000

    #@3
    const/4 v1, 0x0

    #@4
    .line 515
    array-length v7, p0

    #@5
    .line 516
    .local v7, "n":I
    if-le v7, v9, :cond_0

    #@7
    .line 517
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@a
    move-result v11

    #@b
    .local v11, "p":I
    const/4 v0, 0x1

    #@c
    if-ne v11, v0, :cond_1

    #@e
    .line 518
    .end local v11    # "p":I
    :cond_0
    add-int/lit8 v2, v7, -0x1

    #@10
    move-object v0, p0

    #@11
    move v4, v1

    #@12
    move v5, v1

    #@13
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    #@16
    .line 514
    :goto_0
    return-void

    #@17
    .line 520
    .restart local v11    # "p":I
    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    #@19
    .line 521
    new-array v5, v7, [C

    #@1b
    .line 522
    shl-int/lit8 v0, v11, 0x2

    #@1d
    div-int v10, v7, v0

    #@1f
    .local v10, "g":I
    if-gt v10, v9, :cond_2

    #@21
    :goto_1
    move-object v4, p0

    #@22
    move v6, v1

    #@23
    move v8, v1

    #@24
    .line 520
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    #@27
    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->invoke()Ljava/lang/Object;

    #@2a
    goto :goto_0

    #@2b
    :cond_2
    move v9, v10

    #@2c
    .line 523
    goto :goto_1
.end method

.method public static parallelSort([CII)V
    .locals 10
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 554
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 555
    sub-int v5, p2, p1

    #@6
    .line 556
    .local v5, "n":I
    const/16 v0, 0x2000

    #@8
    if-le v5, v0, :cond_0

    #@a
    .line 557
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@d
    move-result v9

    #@e
    .local v9, "p":I
    const/4 v0, 0x1

    #@f
    if-ne v9, v0, :cond_1

    #@11
    .line 558
    .end local v9    # "p":I
    :cond_0
    add-int/lit8 v2, p2, -0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    const/4 v5, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    #@1b
    .line 553
    .end local v5    # "n":I
    :goto_0
    return-void

    #@1c
    .line 560
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    #@1e
    .line 561
    new-array v3, v5, [C

    #@20
    .line 562
    shl-int/lit8 v1, v9, 0x2

    #@22
    div-int v8, v5, v1

    #@24
    .local v8, "g":I
    const/16 v1, 0x2000

    #@26
    if-gt v8, v1, :cond_2

    #@28
    .line 563
    const/16 v7, 0x2000

    #@2a
    .line 561
    :goto_1
    const/4 v1, 0x0

    #@2b
    const/4 v6, 0x0

    #@2c
    move-object v2, p0

    #@2d
    move v4, p1

    #@2e
    .line 560
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    #@31
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->invoke()Ljava/lang/Object;

    #@34
    goto :goto_0

    #@35
    :cond_2
    move v7, v8

    #@36
    .line 563
    goto :goto_1
.end method

.method public static parallelSort([D)V
    .locals 12
    .param p0, "a"    # [D

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v9, 0x2000

    #@3
    const/4 v1, 0x0

    #@4
    .line 889
    array-length v7, p0

    #@5
    .line 890
    .local v7, "n":I
    if-le v7, v9, :cond_0

    #@7
    .line 891
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@a
    move-result v11

    #@b
    .local v11, "p":I
    const/4 v0, 0x1

    #@c
    if-ne v11, v0, :cond_1

    #@e
    .line 892
    .end local v11    # "p":I
    :cond_0
    add-int/lit8 v2, v7, -0x1

    #@10
    move-object v0, p0

    #@11
    move v4, v1

    #@12
    move v5, v1

    #@13
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    #@16
    .line 888
    :goto_0
    return-void

    #@17
    .line 894
    .restart local v11    # "p":I
    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;

    #@19
    .line 895
    new-array v5, v7, [D

    #@1b
    .line 896
    shl-int/lit8 v0, v11, 0x2

    #@1d
    div-int v10, v7, v0

    #@1f
    .local v10, "g":I
    if-gt v10, v9, :cond_2

    #@21
    :goto_1
    move-object v4, p0

    #@22
    move v6, v1

    #@23
    move v8, v1

    #@24
    .line 894
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[D[DIIII)V

    #@27
    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;->invoke()Ljava/lang/Object;

    #@2a
    goto :goto_0

    #@2b
    :cond_2
    move v9, v10

    #@2c
    .line 897
    goto :goto_1
.end method

.method public static parallelSort([DII)V
    .locals 10
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 936
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 937
    sub-int v5, p2, p1

    #@6
    .line 938
    .local v5, "n":I
    const/16 v0, 0x2000

    #@8
    if-le v5, v0, :cond_0

    #@a
    .line 939
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@d
    move-result v9

    #@e
    .local v9, "p":I
    const/4 v0, 0x1

    #@f
    if-ne v9, v0, :cond_1

    #@11
    .line 940
    .end local v9    # "p":I
    :cond_0
    add-int/lit8 v2, p2, -0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    const/4 v5, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    #@1b
    .line 935
    .end local v5    # "n":I
    :goto_0
    return-void

    #@1c
    .line 942
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;

    #@1e
    .line 943
    new-array v3, v5, [D

    #@20
    .line 944
    shl-int/lit8 v1, v9, 0x2

    #@22
    div-int v8, v5, v1

    #@24
    .local v8, "g":I
    const/16 v1, 0x2000

    #@26
    if-gt v8, v1, :cond_2

    #@28
    .line 945
    const/16 v7, 0x2000

    #@2a
    .line 943
    :goto_1
    const/4 v1, 0x0

    #@2b
    const/4 v6, 0x0

    #@2c
    move-object v2, p0

    #@2d
    move v4, p1

    #@2e
    .line 942
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[D[DIIII)V

    #@31
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;->invoke()Ljava/lang/Object;

    #@34
    goto :goto_0

    #@35
    :cond_2
    move v7, v8

    #@36
    .line 945
    goto :goto_1
.end method

.method public static parallelSort([F)V
    .locals 12
    .param p0, "a"    # [F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v9, 0x2000

    #@3
    const/4 v1, 0x0

    #@4
    .line 803
    array-length v7, p0

    #@5
    .line 804
    .local v7, "n":I
    if-le v7, v9, :cond_0

    #@7
    .line 805
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@a
    move-result v11

    #@b
    .local v11, "p":I
    const/4 v0, 0x1

    #@c
    if-ne v11, v0, :cond_1

    #@e
    .line 806
    .end local v11    # "p":I
    :cond_0
    add-int/lit8 v2, v7, -0x1

    #@10
    move-object v0, p0

    #@11
    move v4, v1

    #@12
    move v5, v1

    #@13
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    #@16
    .line 802
    :goto_0
    return-void

    #@17
    .line 808
    .restart local v11    # "p":I
    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;

    #@19
    .line 809
    new-array v5, v7, [F

    #@1b
    .line 810
    shl-int/lit8 v0, v11, 0x2

    #@1d
    div-int v10, v7, v0

    #@1f
    .local v10, "g":I
    if-gt v10, v9, :cond_2

    #@21
    :goto_1
    move-object v4, p0

    #@22
    move v6, v1

    #@23
    move v8, v1

    #@24
    .line 808
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[F[FIIII)V

    #@27
    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;->invoke()Ljava/lang/Object;

    #@2a
    goto :goto_0

    #@2b
    :cond_2
    move v9, v10

    #@2c
    .line 811
    goto :goto_1
.end method

.method public static parallelSort([FII)V
    .locals 10
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 850
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 851
    sub-int v5, p2, p1

    #@6
    .line 852
    .local v5, "n":I
    const/16 v0, 0x2000

    #@8
    if-le v5, v0, :cond_0

    #@a
    .line 853
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@d
    move-result v9

    #@e
    .local v9, "p":I
    const/4 v0, 0x1

    #@f
    if-ne v9, v0, :cond_1

    #@11
    .line 854
    .end local v9    # "p":I
    :cond_0
    add-int/lit8 v2, p2, -0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    const/4 v5, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    #@1b
    .line 849
    .end local v5    # "n":I
    :goto_0
    return-void

    #@1c
    .line 856
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;

    #@1e
    .line 857
    new-array v3, v5, [F

    #@20
    .line 858
    shl-int/lit8 v1, v9, 0x2

    #@22
    div-int v8, v5, v1

    #@24
    .local v8, "g":I
    const/16 v1, 0x2000

    #@26
    if-gt v8, v1, :cond_2

    #@28
    .line 859
    const/16 v7, 0x2000

    #@2a
    .line 857
    :goto_1
    const/4 v1, 0x0

    #@2b
    const/4 v6, 0x0

    #@2c
    move-object v2, p0

    #@2d
    move v4, p1

    #@2e
    .line 856
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[F[FIIII)V

    #@31
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;->invoke()Ljava/lang/Object;

    #@34
    goto :goto_0

    #@35
    :cond_2
    move v7, v8

    #@36
    .line 859
    goto :goto_1
.end method

.method public static parallelSort([I)V
    .locals 12
    .param p0, "a"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v9, 0x2000

    #@3
    const/4 v1, 0x0

    #@4
    .line 655
    array-length v7, p0

    #@5
    .line 656
    .local v7, "n":I
    if-le v7, v9, :cond_0

    #@7
    .line 657
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@a
    move-result v11

    #@b
    .local v11, "p":I
    const/4 v0, 0x1

    #@c
    if-ne v11, v0, :cond_1

    #@e
    .line 658
    .end local v11    # "p":I
    :cond_0
    add-int/lit8 v2, v7, -0x1

    #@10
    move-object v0, p0

    #@11
    move v4, v1

    #@12
    move v5, v1

    #@13
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    #@16
    .line 654
    :goto_0
    return-void

    #@17
    .line 660
    .restart local v11    # "p":I
    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;

    #@19
    .line 661
    new-array v5, v7, [I

    #@1b
    .line 662
    shl-int/lit8 v0, v11, 0x2

    #@1d
    div-int v10, v7, v0

    #@1f
    .local v10, "g":I
    if-gt v10, v9, :cond_2

    #@21
    :goto_1
    move-object v4, p0

    #@22
    move v6, v1

    #@23
    move v8, v1

    #@24
    .line 660
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[I[IIIII)V

    #@27
    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;->invoke()Ljava/lang/Object;

    #@2a
    goto :goto_0

    #@2b
    :cond_2
    move v9, v10

    #@2c
    .line 663
    goto :goto_1
.end method

.method public static parallelSort([III)V
    .locals 10
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 694
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 695
    sub-int v5, p2, p1

    #@6
    .line 696
    .local v5, "n":I
    const/16 v0, 0x2000

    #@8
    if-le v5, v0, :cond_0

    #@a
    .line 697
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@d
    move-result v9

    #@e
    .local v9, "p":I
    const/4 v0, 0x1

    #@f
    if-ne v9, v0, :cond_1

    #@11
    .line 698
    .end local v9    # "p":I
    :cond_0
    add-int/lit8 v2, p2, -0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    const/4 v5, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    #@1b
    .line 693
    .end local v5    # "n":I
    :goto_0
    return-void

    #@1c
    .line 700
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;

    #@1e
    .line 701
    new-array v3, v5, [I

    #@20
    .line 702
    shl-int/lit8 v1, v9, 0x2

    #@22
    div-int v8, v5, v1

    #@24
    .local v8, "g":I
    const/16 v1, 0x2000

    #@26
    if-gt v8, v1, :cond_2

    #@28
    .line 703
    const/16 v7, 0x2000

    #@2a
    .line 701
    :goto_1
    const/4 v1, 0x0

    #@2b
    const/4 v6, 0x0

    #@2c
    move-object v2, p0

    #@2d
    move v4, p1

    #@2e
    .line 700
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[I[IIIII)V

    #@31
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;->invoke()Ljava/lang/Object;

    #@34
    goto :goto_0

    #@35
    :cond_2
    move v7, v8

    #@36
    .line 703
    goto :goto_1
.end method

.method public static parallelSort([J)V
    .locals 12
    .param p0, "a"    # [J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v9, 0x2000

    #@3
    const/4 v1, 0x0

    #@4
    .line 725
    array-length v7, p0

    #@5
    .line 726
    .local v7, "n":I
    if-le v7, v9, :cond_0

    #@7
    .line 727
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@a
    move-result v11

    #@b
    .local v11, "p":I
    const/4 v0, 0x1

    #@c
    if-ne v11, v0, :cond_1

    #@e
    .line 728
    .end local v11    # "p":I
    :cond_0
    add-int/lit8 v2, v7, -0x1

    #@10
    move-object v0, p0

    #@11
    move v4, v1

    #@12
    move v5, v1

    #@13
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    #@16
    .line 724
    :goto_0
    return-void

    #@17
    .line 730
    .restart local v11    # "p":I
    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;

    #@19
    .line 731
    new-array v5, v7, [J

    #@1b
    .line 732
    shl-int/lit8 v0, v11, 0x2

    #@1d
    div-int v10, v7, v0

    #@1f
    .local v10, "g":I
    if-gt v10, v9, :cond_2

    #@21
    :goto_1
    move-object v4, p0

    #@22
    move v6, v1

    #@23
    move v8, v1

    #@24
    .line 730
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V

    #@27
    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->invoke()Ljava/lang/Object;

    #@2a
    goto :goto_0

    #@2b
    :cond_2
    move v9, v10

    #@2c
    .line 733
    goto :goto_1
.end method

.method public static parallelSort([JII)V
    .locals 10
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 764
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 765
    sub-int v5, p2, p1

    #@6
    .line 766
    .local v5, "n":I
    const/16 v0, 0x2000

    #@8
    if-le v5, v0, :cond_0

    #@a
    .line 767
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@d
    move-result v9

    #@e
    .local v9, "p":I
    const/4 v0, 0x1

    #@f
    if-ne v9, v0, :cond_1

    #@11
    .line 768
    .end local v9    # "p":I
    :cond_0
    add-int/lit8 v2, p2, -0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    const/4 v5, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    #@1b
    .line 763
    .end local v5    # "n":I
    :goto_0
    return-void

    #@1c
    .line 770
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;

    #@1e
    .line 771
    new-array v3, v5, [J

    #@20
    .line 772
    shl-int/lit8 v1, v9, 0x2

    #@22
    div-int v8, v5, v1

    #@24
    .local v8, "g":I
    const/16 v1, 0x2000

    #@26
    if-gt v8, v1, :cond_2

    #@28
    .line 773
    const/16 v7, 0x2000

    #@2a
    .line 771
    :goto_1
    const/4 v1, 0x0

    #@2b
    const/4 v6, 0x0

    #@2c
    move-object v2, p0

    #@2d
    move v4, p1

    #@2e
    .line 770
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V

    #@31
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->invoke()Ljava/lang/Object;

    #@34
    goto :goto_0

    #@35
    :cond_2
    move v7, v8

    #@36
    .line 773
    goto :goto_1
.end method

.method public static parallelSort([Ljava/lang/Comparable;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    const/4 v4, 0x0

    #@1
    const/16 v10, 0x2000

    #@3
    const/4 v1, 0x0

    #@4
    .line 984
    array-length v2, p0

    #@5
    .line 985
    .local v2, "n":I
    if-le v2, v10, :cond_0

    #@7
    .line 986
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@a
    move-result v13

    #@b
    .local v13, "p":I
    const/4 v0, 0x1

    #@c
    if-ne v13, v0, :cond_1

    #@e
    .line 987
    .end local v13    # "p":I
    :cond_0
    sget-object v3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    #@10
    move-object v0, p0

    #@11
    move v5, v1

    #@12
    move v6, v1

    #@13
    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    #@16
    .line 983
    :goto_0
    return-void

    #@17
    .line 989
    .restart local v13    # "p":I
    :cond_1
    new-instance v3, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    #@19
    .line 991
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@20
    move-result-object v0

    #@21
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    check-cast v6, [Ljava/lang/Comparable;

    #@27
    .line 992
    shl-int/lit8 v0, v13, 0x2

    #@29
    div-int v12, v2, v0

    #@2b
    .local v12, "g":I
    if-gt v12, v10, :cond_2

    #@2d
    .line 993
    :goto_1
    sget-object v11, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    #@2f
    move-object v5, p0

    #@30
    move v7, v1

    #@31
    move v8, v2

    #@32
    move v9, v1

    #@33
    .line 989
    invoke-direct/range {v3 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    #@36
    invoke-virtual {v3}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    #@39
    goto :goto_0

    #@3a
    :cond_2
    move v10, v12

    #@3b
    .line 993
    goto :goto_1
.end method

.method public static parallelSort([Ljava/lang/Comparable;II)V
    .locals 11
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1042
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 1043
    sub-int v5, p2, p1

    #@6
    .line 1044
    .local v5, "n":I
    const/16 v0, 0x2000

    #@8
    if-le v5, v0, :cond_0

    #@a
    .line 1045
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@d
    move-result v10

    #@e
    .local v10, "p":I
    const/4 v0, 0x1

    #@f
    if-ne v10, v0, :cond_1

    #@11
    .line 1046
    .end local v10    # "p":I
    :cond_0
    sget-object v3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    #@13
    const/4 v4, 0x0

    #@14
    const/4 v5, 0x0

    #@15
    const/4 v6, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move v2, p2

    #@19
    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    #@1c
    .line 1041
    .end local v5    # "n":I
    :goto_0
    return-void

    #@1d
    .line 1048
    .restart local v5    # "n":I
    .restart local v10    # "p":I
    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    #@1f
    .line 1050
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, [Ljava/lang/Comparable;

    #@2d
    .line 1051
    shl-int/lit8 v1, v10, 0x2

    #@2f
    div-int v9, v5, v1

    #@31
    .local v9, "g":I
    const/16 v1, 0x2000

    #@33
    if-gt v9, v1, :cond_2

    #@35
    .line 1052
    const/16 v7, 0x2000

    #@37
    :goto_1
    sget-object v8, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    #@39
    .line 1049
    const/4 v1, 0x0

    #@3a
    .line 1051
    const/4 v6, 0x0

    #@3b
    move-object v2, p0

    #@3c
    move v4, p1

    #@3d
    .line 1048
    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    #@40
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    #@43
    goto :goto_0

    #@44
    :cond_2
    move v7, v9

    #@45
    .line 1052
    goto :goto_1
.end method

.method public static parallelSort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 11
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1150
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 1151
    if-nez p3, :cond_0

    #@6
    .line 1152
    sget-object p3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    #@8
    .line 1153
    :cond_0
    sub-int v5, p2, p1

    #@a
    .line 1154
    .local v5, "n":I
    const/16 v0, 0x2000

    #@c
    if-le v5, v0, :cond_1

    #@e
    .line 1155
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@11
    move-result v10

    #@12
    .local v10, "p":I
    const/4 v0, 0x1

    #@13
    if-ne v10, v0, :cond_2

    #@15
    .line 1156
    .end local v10    # "p":I
    :cond_1
    const/4 v4, 0x0

    #@16
    const/4 v5, 0x0

    #@17
    const/4 v6, 0x0

    #@18
    move-object v0, p0

    #@19
    move v1, p1

    #@1a
    move v2, p2

    #@1b
    move-object v3, p3

    #@1c
    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    #@1f
    .line 1149
    .end local v5    # "n":I
    :goto_0
    return-void

    #@20
    .line 1158
    .restart local v5    # "n":I
    .restart local v10    # "p":I
    :cond_2
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    #@22
    .line 1160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, [Ljava/lang/Object;

    #@30
    .line 1161
    shl-int/lit8 v1, v10, 0x2

    #@32
    div-int v9, v5, v1

    #@34
    .local v9, "g":I
    const/16 v1, 0x2000

    #@36
    if-gt v9, v1, :cond_3

    #@38
    .line 1162
    const/16 v7, 0x2000

    #@3a
    .line 1159
    :goto_1
    const/4 v1, 0x0

    #@3b
    .line 1161
    const/4 v6, 0x0

    #@3c
    move-object v2, p0

    #@3d
    move v4, p1

    #@3e
    move-object v8, p3

    #@3f
    .line 1158
    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    #@42
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    #@45
    goto :goto_0

    #@46
    :cond_3
    move v7, v9

    #@47
    .line 1162
    goto :goto_1
.end method

.method public static parallelSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v4, 0x0

    #@1
    const/16 v10, 0x2000

    #@3
    const/4 v1, 0x0

    #@4
    .line 1090
    if-nez p1, :cond_0

    #@6
    .line 1091
    sget-object p1, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    #@8
    .line 1092
    :cond_0
    array-length v2, p0

    #@9
    .line 1093
    .local v2, "n":I
    if-le v2, v10, :cond_1

    #@b
    .line 1094
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@e
    move-result v13

    #@f
    .local v13, "p":I
    const/4 v0, 0x1

    #@10
    if-ne v13, v0, :cond_2

    #@12
    .end local v13    # "p":I
    :cond_1
    move-object v0, p0

    #@13
    move-object v3, p1

    #@14
    move v5, v1

    #@15
    move v6, v1

    #@16
    .line 1095
    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    #@19
    .line 1089
    :goto_0
    return-void

    #@1a
    .line 1097
    .restart local v13    # "p":I
    :cond_2
    new-instance v3, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    #@1c
    .line 1099
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@23
    move-result-object v0

    #@24
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    check-cast v6, [Ljava/lang/Object;

    #@2a
    .line 1100
    shl-int/lit8 v0, v13, 0x2

    #@2c
    div-int v12, v2, v0

    #@2e
    .local v12, "g":I
    if-gt v12, v10, :cond_3

    #@30
    :goto_1
    move-object v5, p0

    #@31
    move v7, v1

    #@32
    move v8, v2

    #@33
    move v9, v1

    #@34
    move-object v11, p1

    #@35
    .line 1097
    invoke-direct/range {v3 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    #@38
    invoke-virtual {v3}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    #@3b
    goto :goto_0

    #@3c
    :cond_3
    move v10, v12

    #@3d
    .line 1101
    goto :goto_1
.end method

.method public static parallelSort([S)V
    .locals 12
    .param p0, "a"    # [S

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v9, 0x2000

    #@3
    const/4 v1, 0x0

    #@4
    .line 585
    array-length v7, p0

    #@5
    .line 586
    .local v7, "n":I
    if-le v7, v9, :cond_0

    #@7
    .line 587
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@a
    move-result v11

    #@b
    .local v11, "p":I
    const/4 v0, 0x1

    #@c
    if-ne v11, v0, :cond_1

    #@e
    .line 588
    .end local v11    # "p":I
    :cond_0
    add-int/lit8 v2, v7, -0x1

    #@10
    move-object v0, p0

    #@11
    move v4, v1

    #@12
    move v5, v1

    #@13
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    #@16
    .line 584
    :goto_0
    return-void

    #@17
    .line 590
    .restart local v11    # "p":I
    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;

    #@19
    .line 591
    new-array v5, v7, [S

    #@1b
    .line 592
    shl-int/lit8 v0, v11, 0x2

    #@1d
    div-int v10, v7, v0

    #@1f
    .local v10, "g":I
    if-gt v10, v9, :cond_2

    #@21
    :goto_1
    move-object v4, p0

    #@22
    move v6, v1

    #@23
    move v8, v1

    #@24
    .line 590
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[S[SIIII)V

    #@27
    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;->invoke()Ljava/lang/Object;

    #@2a
    goto :goto_0

    #@2b
    :cond_2
    move v9, v10

    #@2c
    .line 593
    goto :goto_1
.end method

.method public static parallelSort([SII)V
    .locals 10
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 624
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 625
    sub-int v5, p2, p1

    #@6
    .line 626
    .local v5, "n":I
    const/16 v0, 0x2000

    #@8
    if-le v5, v0, :cond_0

    #@a
    .line 627
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@d
    move-result v9

    #@e
    .local v9, "p":I
    const/4 v0, 0x1

    #@f
    if-ne v9, v0, :cond_1

    #@11
    .line 628
    .end local v9    # "p":I
    :cond_0
    add-int/lit8 v2, p2, -0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    const/4 v5, 0x0

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    #@1b
    .line 623
    .end local v5    # "n":I
    :goto_0
    return-void

    #@1c
    .line 630
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;

    #@1e
    .line 631
    new-array v3, v5, [S

    #@20
    .line 632
    shl-int/lit8 v1, v9, 0x2

    #@22
    div-int v8, v5, v1

    #@24
    .local v8, "g":I
    const/16 v1, 0x2000

    #@26
    if-gt v8, v1, :cond_2

    #@28
    .line 633
    const/16 v7, 0x2000

    #@2a
    .line 631
    :goto_1
    const/4 v1, 0x0

    #@2b
    const/4 v6, 0x0

    #@2c
    move-object v2, p0

    #@2d
    move v4, p1

    #@2e
    .line 630
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[S[SIIII)V

    #@31
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;->invoke()Ljava/lang/Object;

    #@34
    goto :goto_0

    #@35
    :cond_2
    move v7, v8

    #@36
    .line 633
    goto :goto_1
.end method

.method private static rangeCheck(III)V
    .locals 3
    .param p0, "length"    # I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 1590
    if-le p1, p2, :cond_0

    #@2
    .line 1591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 1592
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "fromIndex("

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ") > toIndex("

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, ")"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 1591
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 1594
    :cond_0
    if-gez p1, :cond_1

    #@30
    .line 1595
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@32
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@35
    throw v0

    #@36
    .line 1597
    :cond_1
    if-le p2, p0, :cond_2

    #@38
    .line 1598
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@3a
    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@3d
    throw v0

    #@3e
    .line 1589
    :cond_2
    return-void
.end method

.method public static setAll([DLjava/util/function/IntToDoubleFunction;)V
    .locals 4
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;

    #@0
    .prologue
    .line 4824
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 4825
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 4826
    invoke-interface {p1, v0}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    #@a
    move-result-wide v2

    #@b
    aput-wide v2, p0, v0

    #@d
    .line 4825
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 4823
    :cond_0
    return-void
.end method

.method public static setAll([ILjava/util/function/IntUnaryOperator;)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;

    #@0
    .prologue
    .line 4748
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 4749
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 4750
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@a
    move-result v1

    #@b
    aput v1, p0, v0

    #@d
    .line 4749
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 4747
    :cond_0
    return-void
.end method

.method public static setAll([JLjava/util/function/IntToLongFunction;)V
    .locals 4
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;

    #@0
    .prologue
    .line 4786
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 4787
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 4788
    invoke-interface {p1, v0}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    #@a
    move-result-wide v2

    #@b
    aput-wide v2, p0, v0

    #@d
    .line 4787
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 4785
    :cond_0
    return-void
.end method

.method public static setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction",
            "<+TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4709
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 4710
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 4711
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    aput-object v1, p0, v0

    #@d
    .line 4710
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 4708
    :cond_0
    return-void
.end method

.method public static sort([B)V
    .locals 2
    .param p0, "a"    # [B

    #@0
    .prologue
    .line 286
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v1, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    #@7
    .line 285
    return-void
.end method

.method public static sort([BII)V
    .locals 1
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 310
    array-length v0, p0

    #@1
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@4
    .line 311
    add-int/lit8 v0, p2, -0x1

    #@6
    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    #@9
    .line 309
    return-void
.end method

.method public static sort([C)V
    .locals 6
    .param p0, "a"    # [C

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 246
    array-length v0, p0

    #@2
    add-int/lit8 v2, v0, -0x1

    #@4
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move v4, v1

    #@7
    move v5, v1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    #@b
    .line 245
    return-void
.end method

.method public static sort([CII)V
    .locals 6
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 270
    array-length v0, p0

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@5
    .line 271
    add-int/lit8 v2, p2, -0x1

    #@7
    const/4 v3, 0x0

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move v5, v4

    #@b
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    #@e
    .line 269
    return-void
.end method

.method public static sort([D)V
    .locals 6
    .param p0, "a"    # [D

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 390
    array-length v0, p0

    #@2
    add-int/lit8 v2, v0, -0x1

    #@4
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move v4, v1

    #@7
    move v5, v1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    #@b
    .line 389
    return-void
.end method

.method public static sort([DII)V
    .locals 6
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 422
    array-length v0, p0

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@5
    .line 423
    add-int/lit8 v2, p2, -0x1

    #@7
    const/4 v3, 0x0

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move v5, v4

    #@b
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    #@e
    .line 421
    return-void
.end method

.method public static sort([F)V
    .locals 6
    .param p0, "a"    # [F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 334
    array-length v0, p0

    #@2
    add-int/lit8 v2, v0, -0x1

    #@4
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move v4, v1

    #@7
    move v5, v1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    #@b
    .line 333
    return-void
.end method

.method public static sort([FII)V
    .locals 6
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 366
    array-length v0, p0

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@5
    .line 367
    add-int/lit8 v2, p2, -0x1

    #@7
    const/4 v3, 0x0

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move v5, v4

    #@b
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    #@e
    .line 365
    return-void
.end method

.method public static sort([I)V
    .locals 6
    .param p0, "a"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 126
    array-length v0, p0

    #@2
    add-int/lit8 v2, v0, -0x1

    #@4
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move v4, v1

    #@7
    move v5, v1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    #@b
    .line 125
    return-void
.end method

.method public static sort([III)V
    .locals 6
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 150
    array-length v0, p0

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@5
    .line 151
    add-int/lit8 v2, p2, -0x1

    #@7
    const/4 v3, 0x0

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move v5, v4

    #@b
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    #@e
    .line 149
    return-void
.end method

.method public static sort([J)V
    .locals 6
    .param p0, "a"    # [J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 166
    array-length v0, p0

    #@2
    add-int/lit8 v2, v0, -0x1

    #@4
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move v4, v1

    #@7
    move v5, v1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    #@b
    .line 165
    return-void
.end method

.method public static sort([JII)V
    .locals 6
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 190
    array-length v0, p0

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@5
    .line 191
    add-int/lit8 v2, p2, -0x1

    #@7
    const/4 v3, 0x0

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move v5, v4

    #@b
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    #@e
    .line 189
    return-void
.end method

.method public static sort([Ljava/lang/Object;)V
    .locals 6
    .param p0, "a"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1259
    array-length v2, p0

    #@2
    const/4 v3, 0x0

    #@3
    move-object v0, p0

    #@4
    move v4, v1

    #@5
    move v5, v1

    #@6
    invoke-static/range {v0 .. v5}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V

    #@9
    .line 1255
    return-void
.end method

.method public static sort([Ljava/lang/Object;II)V
    .locals 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1321
    array-length v0, p0

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@5
    .line 1325
    const/4 v3, 0x0

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v5, v4

    #@a
    invoke-static/range {v0 .. v5}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V

    #@d
    .line 1320
    return-void
.end method

.method public static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 1516
    if-nez p3, :cond_0

    #@4
    .line 1517
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    #@7
    .line 1515
    :goto_0
    return-void

    #@8
    .line 1519
    :cond_0
    array-length v0, p0

    #@9
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@c
    move-object v0, p0

    #@d
    move v1, p1

    #@e
    move v2, p2

    #@f
    move-object v3, p3

    #@10
    move v6, v5

    #@11
    .line 1523
    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    #@14
    goto :goto_0
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1444
    if-nez p1, :cond_0

    #@4
    .line 1445
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@7
    .line 1443
    :goto_0
    return-void

    #@8
    .line 1450
    :cond_0
    array-length v2, p0

    #@9
    move-object v0, p0

    #@a
    move-object v3, p1

    #@b
    move v5, v1

    #@c
    move v6, v1

    #@d
    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    #@10
    goto :goto_0
.end method

.method public static sort([S)V
    .locals 6
    .param p0, "a"    # [S

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 206
    array-length v0, p0

    #@2
    add-int/lit8 v2, v0, -0x1

    #@4
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move v4, v1

    #@7
    move v5, v1

    #@8
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    #@b
    .line 205
    return-void
.end method

.method public static sort([SII)V
    .locals 6
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 230
    array-length v0, p0

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    #@5
    .line 231
    add-int/lit8 v2, p2, -0x1

    #@7
    const/4 v3, 0x0

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move v5, v4

    #@b
    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    #@e
    .line 229
    return-void
.end method

.method public static spliterator([D)Ljava/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D

    #@0
    .prologue
    .line 4996
    const/16 v0, 0x410

    #@2
    .line 4995
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([DI)Ljava/util/Spliterator$OfDouble;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static spliterator([DII)Ljava/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    #@0
    .prologue
    .line 5019
    const/16 v0, 0x410

    #@2
    .line 5018
    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([DIII)Ljava/util/Spliterator$OfDouble;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static spliterator([I)Ljava/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I

    #@0
    .prologue
    .line 4917
    const/16 v0, 0x410

    #@2
    .line 4916
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([II)Ljava/util/Spliterator$OfInt;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static spliterator([III)Ljava/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    #@0
    .prologue
    .line 4940
    const/16 v0, 0x410

    #@2
    .line 4939
    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([IIII)Ljava/util/Spliterator$OfInt;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static spliterator([J)Ljava/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J

    #@0
    .prologue
    .line 4956
    const/16 v0, 0x410

    #@2
    .line 4955
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([JI)Ljava/util/Spliterator$OfLong;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static spliterator([JII)Ljava/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    #@0
    .prologue
    .line 4979
    const/16 v0, 0x410

    #@2
    .line 4978
    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([JIII)Ljava/util/Spliterator$OfLong;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4877
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    #@2
    .line 4876
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;
    .locals 1
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4901
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    #@2
    .line 4900
    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static stream([D)Ljava/util/stream/DoubleStream;
    .locals 2
    .param p0, "array"    # [D

    #@0
    .prologue
    .line 5124
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([DII)Ljava/util/stream/DoubleStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static stream([DII)Ljava/util/stream/DoubleStream;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    #@0
    .prologue
    .line 5142
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([DII)Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static stream([I)Ljava/util/stream/IntStream;
    .locals 2
    .param p0, "array"    # [I

    #@0
    .prologue
    .line 5064
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([III)Ljava/util/stream/IntStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static stream([III)Ljava/util/stream/IntStream;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    #@0
    .prologue
    .line 5082
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([III)Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static stream([J)Ljava/util/stream/LongStream;
    .locals 2
    .param p0, "array"    # [J

    #@0
    .prologue
    .line 5094
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([JII)Ljava/util/stream/LongStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static stream([JII)Ljava/util/stream/LongStream;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    #@0
    .prologue
    .line 5112
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([JII)Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static stream([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 5033
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;II)Ljava/util/stream/Stream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static stream([Ljava/lang/Object;II)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 5052
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static swap([Ljava/lang/Object;II)V
    .locals 2
    .param p0, "x"    # [Ljava/lang/Object;
    .param p1, "a"    # I
    .param p2, "b"    # I

    #@0
    .prologue
    .line 1396
    aget-object v0, p0, p1

    #@2
    .line 1397
    .local v0, "t":Ljava/lang/Object;
    aget-object v1, p0, p2

    #@4
    aput-object v1, p0, p1

    #@6
    .line 1398
    aput-object v0, p0, p2

    #@8
    .line 1395
    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [B

    #@0
    .prologue
    .line 4451
    if-nez p0, :cond_0

    #@2
    .line 4452
    const-string/jumbo v3, "null"

    #@5
    return-object v3

    #@6
    .line 4453
    :cond_0
    array-length v3, p0

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .line 4454
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 4455
    const-string/jumbo v3, "[]"

    #@f
    return-object v3

    #@10
    .line 4457
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 4458
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 4459
    const/4 v1, 0x0

    #@1b
    .line 4460
    .local v1, "i":I
    :goto_0
    aget-byte v3, p0, v1

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 4461
    if-ne v1, v2, :cond_2

    #@22
    .line 4462
    const/16 v3, 0x5d

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 4463
    :cond_2
    const-string/jumbo v3, ", "

    #@30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 4459
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0
.end method

.method public static toString([C)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [C

    #@0
    .prologue
    .line 4421
    if-nez p0, :cond_0

    #@2
    .line 4422
    const-string/jumbo v3, "null"

    #@5
    return-object v3

    #@6
    .line 4423
    :cond_0
    array-length v3, p0

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .line 4424
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 4425
    const-string/jumbo v3, "[]"

    #@f
    return-object v3

    #@10
    .line 4427
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 4428
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 4429
    const/4 v1, 0x0

    #@1b
    .line 4430
    .local v1, "i":I
    :goto_0
    aget-char v3, p0, v1

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 4431
    if-ne v1, v2, :cond_2

    #@22
    .line 4432
    const/16 v3, 0x5d

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 4433
    :cond_2
    const-string/jumbo v3, ", "

    #@30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 4429
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0
.end method

.method public static toString([D)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [D

    #@0
    .prologue
    .line 4542
    if-nez p0, :cond_0

    #@2
    .line 4543
    const-string/jumbo v3, "null"

    #@5
    return-object v3

    #@6
    .line 4544
    :cond_0
    array-length v3, p0

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .line 4545
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 4546
    const-string/jumbo v3, "[]"

    #@f
    return-object v3

    #@10
    .line 4548
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 4549
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 4550
    const/4 v1, 0x0

    #@1b
    .line 4551
    .local v1, "i":I
    :goto_0
    aget-wide v4, p0, v1

    #@1d
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@20
    .line 4552
    if-ne v1, v2, :cond_2

    #@22
    .line 4553
    const/16 v3, 0x5d

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 4554
    :cond_2
    const-string/jumbo v3, ", "

    #@30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 4550
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [F

    #@0
    .prologue
    .line 4511
    if-nez p0, :cond_0

    #@2
    .line 4512
    const-string/jumbo v3, "null"

    #@5
    return-object v3

    #@6
    .line 4514
    :cond_0
    array-length v3, p0

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .line 4515
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 4516
    const-string/jumbo v3, "[]"

    #@f
    return-object v3

    #@10
    .line 4518
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 4519
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 4520
    const/4 v1, 0x0

    #@1b
    .line 4521
    .local v1, "i":I
    :goto_0
    aget v3, p0, v1

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@20
    .line 4522
    if-ne v1, v2, :cond_2

    #@22
    .line 4523
    const/16 v3, 0x5d

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 4524
    :cond_2
    const-string/jumbo v3, ", "

    #@30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 4520
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [I

    #@0
    .prologue
    .line 4361
    if-nez p0, :cond_0

    #@2
    .line 4362
    const-string/jumbo v3, "null"

    #@5
    return-object v3

    #@6
    .line 4363
    :cond_0
    array-length v3, p0

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .line 4364
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 4365
    const-string/jumbo v3, "[]"

    #@f
    return-object v3

    #@10
    .line 4367
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 4368
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 4369
    const/4 v1, 0x0

    #@1b
    .line 4370
    .local v1, "i":I
    :goto_0
    aget v3, p0, v1

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 4371
    if-ne v1, v2, :cond_2

    #@22
    .line 4372
    const/16 v3, 0x5d

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 4373
    :cond_2
    const-string/jumbo v3, ", "

    #@30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 4369
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [J

    #@0
    .prologue
    .line 4331
    if-nez p0, :cond_0

    #@2
    .line 4332
    const-string/jumbo v3, "null"

    #@5
    return-object v3

    #@6
    .line 4333
    :cond_0
    array-length v3, p0

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .line 4334
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 4335
    const-string/jumbo v3, "[]"

    #@f
    return-object v3

    #@10
    .line 4337
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 4338
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 4339
    const/4 v1, 0x0

    #@1b
    .line 4340
    .local v1, "i":I
    :goto_0
    aget-wide v4, p0, v1

    #@1d
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    .line 4341
    if-ne v1, v2, :cond_2

    #@22
    .line 4342
    const/16 v3, 0x5d

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 4343
    :cond_2
    const-string/jumbo v3, ", "

    #@30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 4339
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 4575
    if-nez p0, :cond_0

    #@2
    .line 4576
    const-string/jumbo v3, "null"

    #@5
    return-object v3

    #@6
    .line 4578
    :cond_0
    array-length v3, p0

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .line 4579
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 4580
    const-string/jumbo v3, "[]"

    #@f
    return-object v3

    #@10
    .line 4582
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 4583
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 4584
    const/4 v1, 0x0

    #@1b
    .line 4585
    .local v1, "i":I
    :goto_0
    aget-object v3, p0, v1

    #@1d
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 4586
    if-ne v1, v2, :cond_2

    #@26
    .line 4587
    const/16 v3, 0x5d

    #@28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    return-object v3

    #@31
    .line 4588
    :cond_2
    const-string/jumbo v3, ", "

    #@34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 4584
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0
.end method

.method public static toString([S)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [S

    #@0
    .prologue
    .line 4391
    if-nez p0, :cond_0

    #@2
    .line 4392
    const-string/jumbo v3, "null"

    #@5
    return-object v3

    #@6
    .line 4393
    :cond_0
    array-length v3, p0

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .line 4394
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 4395
    const-string/jumbo v3, "[]"

    #@f
    return-object v3

    #@10
    .line 4397
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 4398
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 4399
    const/4 v1, 0x0

    #@1b
    .line 4400
    .local v1, "i":I
    :goto_0
    aget-short v3, p0, v1

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 4401
    if-ne v1, v2, :cond_2

    #@22
    .line 4402
    const/16 v3, 0x5d

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 4403
    :cond_2
    const-string/jumbo v3, ", "

    #@30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 4399
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0
.end method

.method public static toString([Z)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [Z

    #@0
    .prologue
    .line 4481
    if-nez p0, :cond_0

    #@2
    .line 4482
    const-string/jumbo v3, "null"

    #@5
    return-object v3

    #@6
    .line 4483
    :cond_0
    array-length v3, p0

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .line 4484
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 4485
    const-string/jumbo v3, "[]"

    #@f
    return-object v3

    #@10
    .line 4487
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 4488
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 4489
    const/4 v1, 0x0

    #@1b
    .line 4490
    .local v1, "i":I
    :goto_0
    aget-boolean v3, p0, v1

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20
    .line 4491
    if-ne v1, v2, :cond_2

    #@22
    .line 4492
    const/16 v3, 0x5d

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 4493
    :cond_2
    const-string/jumbo v3, ", "

    #@30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 4489
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0
.end method

.class Landroid/media/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static alignRange(Landroid/util/Range;I)Landroid/util/Range;
    .locals 2
    .param p1, "align"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/Integer;

    #@6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    #@d
    move-result v0

    #@e
    mul-int/2addr v0, p1

    #@f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    .line 170
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/Integer;

    #@19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v0

    #@1d
    div-int/2addr v0, p1

    #@1e
    mul-int/2addr v0, p1

    #@1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v0

    #@23
    .line 168
    invoke-virtual {p0, v1, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public static binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 92
    .local p0, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p1, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@3
    move-result-object v0

    #@4
    .line 93
    new-instance v1, Landroid/media/Utils$2;

    #@6
    invoke-direct {v1}, Landroid/media/Utils$2;-><init>()V

    #@9
    .line 92
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method static divUp(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "den"    # I

    #@0
    .prologue
    .line 174
    add-int v0, p0, p1

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    div-int/2addr v0, p1

    #@5
    return v0
.end method

.method private static divUp(JJ)J
    .locals 4
    .param p0, "num"    # J
    .param p2, "den"    # J

    #@0
    .prologue
    .line 178
    add-long v0, p0, p2

    #@2
    const-wide/16 v2, 0x1

    #@4
    sub-long/2addr v0, v2

    #@5
    div-long/2addr v0, p2

    #@6
    return-wide v0
.end method

.method static factorRange(Landroid/util/Range;I)Landroid/util/Range;
    .locals 2
    .param p1, "factor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 132
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 133
    return-object p0

    #@4
    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Integer;

    #@a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    #@11
    move-result v0

    #@12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/Integer;

    #@1c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1f
    move-result v0

    #@20
    div-int/2addr v0, p1

    #@21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v0

    #@25
    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method static factorRange(Landroid/util/Range;J)Landroid/util/Range;
    .locals 5
    .param p1, "factor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 143
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x1

    #@2
    cmp-long v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 144
    return-object p0

    #@7
    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/Long;

    #@d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@10
    move-result-wide v0

    #@11
    invoke-static {v0, v1, p1, p2}, Landroid/media/Utils;->divUp(JJ)J

    #@14
    move-result-wide v0

    #@15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/Long;

    #@1f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@22
    move-result-wide v2

    #@23
    div-long/2addr v2, p1

    #@24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@27
    move-result-object v0

    #@28
    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method static gcd(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 110
    if-nez p0, :cond_0

    #@2
    if-nez p1, :cond_0

    #@4
    .line 111
    const/4 v1, 0x1

    #@5
    return v1

    #@6
    .line 113
    :cond_0
    if-gez p1, :cond_1

    #@8
    .line 114
    neg-int p1, p1

    #@9
    .line 116
    :cond_1
    if-gez p0, :cond_2

    #@b
    .line 117
    neg-int p0, p0

    #@c
    .line 119
    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    #@e
    .line 120
    rem-int v0, p1, p0

    #@10
    .line 121
    .local v0, "c":I
    move p1, p0

    #@11
    .line 122
    move p0, v0

    #@12
    goto :goto_0

    #@13
    .line 124
    .end local v0    # "c":I
    :cond_3
    return p1
.end method

.method static intRangeFor(D)Landroid/util/Range;
    .locals 4
    .param p0, "v"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 192
    double-to-int v0, p0

    #@1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    #@8
    move-result-wide v2

    #@9
    double-to-int v1, v2

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public static intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;[",
            "Landroid/util/Range",
            "<TT;>;)[",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "one":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    .local p1, "another":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 60
    const/4 v0, 0x0

    #@2
    .line 61
    .local v0, "ix":I
    new-instance v2, Ljava/util/Vector;

    #@4
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@7
    .line 62
    .local v2, "result":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Range<TT;>;>;"
    array-length v4, p1

    #@8
    :goto_0
    if-ge v3, v4, :cond_2

    #@a
    aget-object v1, p1, v3

    #@c
    .line 63
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :goto_1
    array-length v5, p0

    #@d
    if-ge v0, v5, :cond_0

    #@f
    .line 64
    aget-object v5, p0, v0

    #@11
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@18
    move-result-object v6

    #@19
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@1c
    move-result v5

    #@1d
    if-gez v5, :cond_0

    #@1f
    .line 65
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_1

    #@22
    .line 67
    :cond_0
    :goto_2
    array-length v5, p0

    #@23
    if-ge v0, v5, :cond_1

    #@25
    .line 68
    aget-object v5, p0, v0

    #@27
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@2e
    move-result-object v6

    #@2f
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@32
    move-result v5

    #@33
    if-gez v5, :cond_1

    #@35
    .line 69
    aget-object v5, p0, v0

    #@37
    invoke-virtual {v1, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@3e
    .line 70
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_2

    #@41
    .line 72
    :cond_1
    array-length v5, p0

    #@42
    if-ne v0, v5, :cond_3

    #@44
    .line 79
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@47
    move-result v3

    #@48
    new-array v3, v3, [Landroid/util/Range;

    #@4a
    invoke-virtual {v2, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4d
    move-result-object v3

    #@4e
    check-cast v3, [Landroid/util/Range;

    #@50
    return-object v3

    #@51
    .line 75
    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :cond_3
    aget-object v5, p0, v0

    #@53
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@5a
    move-result-object v6

    #@5b
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@5e
    move-result v5

    #@5f
    if-gtz v5, :cond_4

    #@61
    .line 76
    aget-object v5, p0, v0

    #@63
    invoke-virtual {v1, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@6a
    .line 62
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@6c
    goto :goto_0
.end method

.method private static lcm(II)J
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 185
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "lce is not defined for zero arguments"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 188
    :cond_1
    int-to-long v0, p0

    #@e
    int-to-long v2, p1

    #@f
    mul-long/2addr v0, v2

    #@10
    invoke-static {p0, p1}, Landroid/media/Utils;->gcd(II)I

    #@13
    move-result v2

    #@14
    int-to-long v2, v2

    #@15
    div-long/2addr v0, v2

    #@16
    return-wide v0
.end method

.method static longRangeFor(D)Landroid/util/Range;
    .locals 4
    .param p0, "v"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 196
    double-to-long v0, p0

    #@1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4
    move-result-object v0

    #@5
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    #@8
    move-result-wide v2

    #@9
    double-to-long v2, v2

    #@a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d
    move-result-object v1

    #@e
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method static parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .locals 11
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 229
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :try_start_0
    move-object v0, p0

    #@1
    check-cast v0, Ljava/lang/String;

    #@3
    move-object v6, v0

    #@4
    .line 230
    .local v6, "s":Ljava/lang/String;
    const/16 v8, 0x2d

    #@6
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v5

    #@a
    .line 231
    .local v5, "ix":I
    if-ltz v5, :cond_0

    #@c
    .line 233
    const/4 v8, 0x0

    #@d
    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v8

    #@11
    const/16 v9, 0xa

    #@13
    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@16
    move-result v8

    #@17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v8

    #@1b
    .line 234
    add-int/lit8 v9, v5, 0x1

    #@1d
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@20
    move-result-object v9

    #@21
    const/16 v10, 0xa

    #@23
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@26
    move-result v9

    #@27
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v9

    #@2b
    .line 232
    invoke-static {v8, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@2e
    move-result-object v8

    #@2f
    return-object v8

    #@30
    .line 236
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@33
    move-result v7

    #@34
    .line 237
    .local v7, "value":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v8

    #@38
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v9

    #@3c
    invoke-static {v8, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    #@3f
    move-result-object v8

    #@40
    return-object v8

    #@41
    .line 240
    .end local v5    # "ix":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "value":I
    :catch_0
    move-exception v3

    #@42
    .line 241
    .local v3, "e":Ljava/lang/NullPointerException;
    return-object p1

    #@43
    .line 238
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@44
    .line 244
    :goto_0
    const-string/jumbo v8, "Utils"

    #@47
    new-instance v9, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v10, "could not parse integer range \'"

    #@4f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    const-string/jumbo v10, "\'"

    #@5a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v9

    #@62
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 245
    return-object p1

    #@66
    .line 239
    :catch_2
    move-exception v4

    #@67
    .local v4, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    #@68
    .line 242
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    #@69
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method static parseIntSafely(Ljava/lang/Object;I)I
    .locals 8
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fallback"    # I

    #@0
    .prologue
    .line 212
    if-nez p0, :cond_0

    #@2
    .line 213
    return p1

    #@3
    .line 216
    :cond_0
    :try_start_0
    move-object v0, p0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    move-object v4, v0

    #@7
    .line 217
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v5

    #@b
    return v5

    #@c
    .line 220
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@d
    .line 221
    .local v2, "e":Ljava/lang/NullPointerException;
    return p1

    #@e
    .line 218
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@f
    .line 223
    :goto_0
    const-string/jumbo v5, "Utils"

    #@12
    new-instance v6, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v7, "could not parse integer \'"

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    const-string/jumbo v7, "\'"

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 224
    return p1

    #@31
    .line 219
    :catch_2
    move-exception v3

    #@32
    .local v3, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method static parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .locals 14
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 250
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :try_start_0
    move-object v0, p0

    #@1
    check-cast v0, Ljava/lang/String;

    #@3
    move-object v7, v0

    #@4
    .line 251
    .local v7, "s":Ljava/lang/String;
    const/16 v10, 0x2d

    #@6
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v6

    #@a
    .line 252
    .local v6, "ix":I
    if-ltz v6, :cond_0

    #@c
    .line 254
    const/4 v10, 0x0

    #@d
    invoke-virtual {v7, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v10

    #@11
    const/16 v11, 0xa

    #@13
    invoke-static {v10, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@16
    move-result-wide v10

    #@17
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v10

    #@1b
    .line 255
    add-int/lit8 v11, v6, 0x1

    #@1d
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@20
    move-result-object v11

    #@21
    const/16 v12, 0xa

    #@23
    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@26
    move-result-wide v12

    #@27
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2a
    move-result-object v11

    #@2b
    .line 253
    invoke-static {v10, v11}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@2e
    move-result-object v10

    #@2f
    return-object v10

    #@30
    .line 257
    :cond_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@33
    move-result-wide v8

    #@34
    .line 258
    .local v8, "value":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@37
    move-result-object v10

    #@38
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3b
    move-result-object v11

    #@3c
    invoke-static {v10, v11}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    #@3f
    move-result-object v10

    #@40
    return-object v10

    #@41
    .line 261
    .end local v6    # "ix":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "value":J
    :catch_0
    move-exception v4

    #@42
    .line 262
    .local v4, "e":Ljava/lang/NullPointerException;
    return-object p1

    #@43
    .line 259
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    #@44
    .line 265
    :goto_0
    const-string/jumbo v10, "Utils"

    #@47
    new-instance v11, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v12, "could not parse long range \'"

    #@4f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v11

    #@53
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v11

    #@57
    const-string/jumbo v12, "\'"

    #@5a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v11

    #@5e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v11

    #@62
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 266
    return-object p1

    #@66
    .line 260
    :catch_2
    move-exception v5

    #@67
    .local v5, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    #@68
    .line 263
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v3

    #@69
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method static parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .locals 11
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 271
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :try_start_0
    move-object v0, p0

    #@1
    check-cast v0, Ljava/lang/String;

    #@3
    move-object v6, v0

    #@4
    .line 272
    .local v6, "s":Ljava/lang/String;
    const/16 v8, 0x2d

    #@6
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v5

    #@a
    .line 273
    .local v5, "ix":I
    if-ltz v5, :cond_0

    #@c
    .line 275
    const/4 v8, 0x0

    #@d
    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v8

    #@11
    invoke-static {v8}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    #@14
    move-result-object v8

    #@15
    .line 276
    add-int/lit8 v9, v5, 0x1

    #@17
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1a
    move-result-object v9

    #@1b
    invoke-static {v9}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    #@1e
    move-result-object v9

    #@1f
    .line 274
    invoke-static {v8, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@22
    move-result-object v8

    #@23
    return-object v8

    #@24
    .line 278
    :cond_0
    invoke-static {v6}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    #@27
    move-result-object v7

    #@28
    .line 279
    .local v7, "value":Landroid/util/Rational;
    invoke-static {v7, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    #@2b
    move-result-object v8

    #@2c
    return-object v8

    #@2d
    .line 282
    .end local v5    # "ix":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "value":Landroid/util/Rational;
    :catch_0
    move-exception v3

    #@2e
    .line 283
    .local v3, "e":Ljava/lang/NullPointerException;
    return-object p1

    #@2f
    .line 280
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@30
    .line 286
    :goto_0
    const-string/jumbo v8, "Utils"

    #@33
    new-instance v9, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v10, "could not parse rational range \'"

    #@3b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    const-string/jumbo v10, "\'"

    #@46
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v9

    #@4e
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 287
    return-object p1

    #@52
    .line 281
    :catch_2
    move-exception v4

    #@53
    .local v4, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    #@54
    .line 284
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    #@55
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method static parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;
    .locals 7
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fallback"    # Landroid/util/Size;

    #@0
    .prologue
    .line 201
    :try_start_0
    move-object v0, p0

    #@1
    check-cast v0, Ljava/lang/String;

    #@3
    move-object v4, v0

    #@4
    invoke-static {v4}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v4

    #@8
    return-object v4

    #@9
    .line 204
    :catch_0
    move-exception v2

    #@a
    .line 205
    .local v2, "e":Ljava/lang/NullPointerException;
    return-object p1

    #@b
    .line 202
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@c
    .line 207
    :goto_0
    const-string/jumbo v4, "Utils"

    #@f
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v6, "could not parse size \'"

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    const-string/jumbo v6, "\'"

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 208
    return-object p1

    #@2e
    .line 203
    :catch_2
    move-exception v3

    #@2f
    .local v3, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method static parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 12
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 292
    :try_start_0
    move-object v0, p0

    #@2
    check-cast v0, Ljava/lang/String;

    #@4
    move-object v6, v0

    #@5
    .line 293
    .local v6, "s":Ljava/lang/String;
    const/16 v8, 0x2d

    #@7
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v5

    #@b
    .line 294
    .local v5, "ix":I
    if-ltz v5, :cond_0

    #@d
    .line 296
    const/4 v8, 0x0

    #@e
    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v8

    #@12
    invoke-static {v8}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    #@15
    move-result-object v8

    #@16
    .line 297
    add-int/lit8 v9, v5, 0x1

    #@18
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    invoke-static {v9}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    #@1f
    move-result-object v9

    #@20
    .line 295
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@23
    move-result-object v8

    #@24
    return-object v8

    #@25
    .line 299
    :cond_0
    invoke-static {v6}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    #@28
    move-result-object v7

    #@29
    .line 300
    .local v7, "value":Landroid/util/Size;
    invoke-static {v7, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    #@2c
    move-result-object v8

    #@2d
    return-object v8

    #@2e
    .line 303
    .end local v5    # "ix":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "value":Landroid/util/Size;
    :catch_0
    move-exception v3

    #@2f
    .line 304
    .local v3, "e":Ljava/lang/NullPointerException;
    return-object v11

    #@30
    .line 301
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@31
    .line 307
    :goto_0
    const-string/jumbo v8, "Utils"

    #@34
    new-instance v9, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v10, "could not parse size range \'"

    #@3c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v9

    #@40
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    const-string/jumbo v10, "\'"

    #@47
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v9

    #@4f
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 308
    return-object v11

    #@53
    .line 302
    :catch_2
    move-exception v4

    #@54
    .local v4, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    #@55
    .line 305
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    #@56
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method static scaleRange(Landroid/util/Range;II)Landroid/util/Range;
    .locals 2
    .param p1, "num"    # I
    .param p2, "den"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;II)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    if-ne p1, p2, :cond_0

    #@2
    .line 160
    return-object p0

    #@3
    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/util/Rational;

    #@9
    invoke-static {v0, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    #@c
    move-result-object v1

    #@d
    .line 164
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/util/Rational;

    #@13
    invoke-static {v0, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    #@16
    move-result-object v0

    #@17
    .line 162
    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method private static scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;
    .locals 8
    .param p0, "ratio"    # Landroid/util/Rational;
    .param p1, "num"    # I
    .param p2, "den"    # I

    #@0
    .prologue
    .line 150
    invoke-static {p1, p2}, Landroid/media/Utils;->gcd(II)I

    #@3
    move-result v0

    #@4
    .line 151
    .local v0, "common":I
    div-int/2addr p1, v0

    #@5
    .line 152
    div-int/2addr p2, v0

    #@6
    .line 153
    new-instance v1, Landroid/util/Rational;

    #@8
    .line 154
    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    #@b
    move-result v2

    #@c
    int-to-double v2, v2

    #@d
    int-to-double v4, p1

    #@e
    mul-double/2addr v2, v4

    #@f
    double-to-int v2, v2

    #@10
    .line 155
    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    #@13
    move-result v3

    #@14
    int-to-double v4, v3

    #@15
    int-to-double v6, p2

    #@16
    mul-double/2addr v4, v6

    #@17
    double-to-int v3, v4

    #@18
    .line 153
    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    #@1b
    return-object v1
.end method

.method public static sortDistinctRanges([Landroid/util/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 38
    .local p0, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    new-instance v0, Landroid/media/Utils$1;

    #@2
    invoke-direct {v0}, Landroid/media/Utils$1;-><init>()V

    #@5
    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@8
    .line 37
    return-void
.end method

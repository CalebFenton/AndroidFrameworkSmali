.class public final Lcom/android/internal/telephony/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/util/ArrayUtils$EmptyArray;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 41
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 7
    .param p3, "allowDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;Z)[TT;"
        }
    .end annotation

    .line 59
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_19

    .line 60
    if-nez p3, :cond_b

    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 61
    :cond_b
    array-length v0, p1

    .line 62
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 63
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 65
    .end local v0    # "end":I
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_19
    const/4 v0, 0x0

    .line 66
    .restart local v0    # "end":I
    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 68
    .restart local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :goto_21
    aput-object p2, v1, v0

    .line 69
    return-object v1
.end method

.method public static varargs blacklist concatElements(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[[TT;)[TT;"
        }
    .end annotation

    .line 83
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "arrays":[[Ljava/lang/Object;, "[[TT;"
    if-eqz p1, :cond_3a

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3a

    .line 87
    :cond_6
    const/4 v0, 0x0

    .line 88
    .local v0, "totalLength":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 89
    .local v4, "item":[Ljava/lang/Object;, "[TT;"
    if-nez v4, :cond_11

    .line 90
    goto :goto_13

    .line 93
    :cond_11
    array-length v5, v4

    add-int/2addr v0, v5

    .line 88
    .end local v4    # "item":[Ljava/lang/Object;, "[TT;"
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 97
    :cond_16
    if-nez v0, :cond_1d

    .line 98
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 101
    :cond_1d
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 102
    .local v1, "all":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 103
    .local v3, "pos":I
    array-length v4, p1

    move v5, v2

    :goto_26
    if-ge v5, v4, :cond_39

    aget-object v6, p1, v5

    .line 104
    .local v6, "item":[Ljava/lang/Object;, "[TT;"
    if-eqz v6, :cond_36

    array-length v7, v6

    if-nez v7, :cond_30

    .line 105
    goto :goto_36

    .line 107
    :cond_30
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    array-length v7, v6

    add-int/2addr v3, v7

    .line 103
    .end local v6    # "item":[Ljava/lang/Object;, "[TT;"
    :cond_36
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 110
    :cond_39
    return-object v1

    .line 84
    .end local v0    # "totalLength":I
    .end local v1    # "all":[Ljava/lang/Object;, "[TT;"
    .end local v3    # "pos":I
    :cond_3a
    :goto_3a
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 147
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist contains([CC)Z
    .registers 6
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .line 134
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 135
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-char v3, p0, v2

    .line 136
    .local v3, "element":C
    if-ne v3, p1, :cond_e

    .line 137
    const/4 v0, 0x1

    return v0

    .line 135
    .end local v3    # "element":C
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 140
    :cond_11
    return v0
.end method

.method public static blacklist contains([II)Z
    .registers 6
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 154
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 155
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 156
    .local v3, "element":I
    if-ne v3, p1, :cond_e

    .line 157
    const/4 v0, 0x1

    return v0

    .line 155
    .end local v3    # "element":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 160
    :cond_11
    return v0
.end method

.method public static blacklist contains([JJ)Z
    .registers 9
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .line 167
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 168
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_13

    aget-wide v3, p0, v2

    .line 169
    .local v3, "element":J
    cmp-long v5, v3, p1

    if-nez v5, :cond_10

    .line 170
    const/4 v0, 0x1

    return v0

    .line 168
    .end local v3    # "element":J
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 173
    :cond_13
    return v0
.end method

.method public static blacklist contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 180
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static blacklist createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 114
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_9

    .line 115
    sget-object v0, Lcom/android/internal/telephony/util/ArrayUtils$EmptyArray;->STRING:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 116
    :cond_9
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_10

    .line 117
    sget-object v0, Lcom/android/internal/telephony/util/ArrayUtils$EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object v0

    .line 120
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static blacklist indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 188
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 189
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 190
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 189
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 192
    .end local v1    # "i":I
    :cond_14
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 199
    .local p0, "array":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 206
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isEmpty([B)Z
    .registers 2
    .param p0, "array"    # [B

    .line 234
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static blacklist isEmpty([I)Z
    .registers 2
    .param p0, "array"    # [I

    .line 220
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static blacklist isEmpty([J)Z
    .registers 2
    .param p0, "array"    # [J

    .line 227
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static blacklist isEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 213
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static blacklist isEmpty([Z)Z
    .registers 2
    .param p0, "array"    # [Z

    .line 241
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

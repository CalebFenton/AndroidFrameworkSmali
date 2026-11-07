.class public Landroid/hardware/camera2/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ArrayUtils"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static greylist-max-o contains([II)Z
    .registers 4
    .param p0, "array"    # [I
    .param p1, "elem"    # I

    .line 167
    invoke-static {p0, p1}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

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

.method public static greylist-max-o contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 178
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "elem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

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

.method public static greylist-max-o convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I
    .registers 7
    .param p1, "convertFrom"    # [Ljava/lang/String;
    .param p2, "convertTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[I)[I"
        }
    .end annotation

    .line 79
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_4
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "convertedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 86
    .local v1, "returnArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_21

    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 90
    .end local v2    # "i":I
    :cond_21
    return-object v1
.end method

.method public static greylist-max-o convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;
    .registers 8
    .param p1, "convertFrom"    # [Ljava/lang/String;
    .param p2, "convertTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 109
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_4

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v0, "convertedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "str":Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 119
    .local v3, "strIndex":I
    if-gez v3, :cond_24

    .line 121
    goto :goto_11

    .line 125
    :cond_24
    array-length v4, p2

    if-ge v3, v4, :cond_30

    .line 126
    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strIndex":I
    :cond_30
    goto :goto_11

    .line 130
    :cond_31
    return-object v0
.end method

.method public static greylist-max-o getArrayIndex([II)I
    .registers 5
    .param p0, "array"    # [I
    .param p1, "needle"    # I

    .line 52
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 53
    return v0

    .line 55
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 56
    aget v2, p0, v1

    if-ne v2, p1, :cond_d

    .line 57
    return v1

    .line 55
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 60
    .end local v1    # "i":I
    :cond_10
    return v0
.end method

.method public static greylist-max-o getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 35
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "needle":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 36
    return v0

    .line 39
    :cond_4
    const/4 v1, 0x0

    .line 40
    .local v1, "index":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_18

    aget-object v4, p0, v3

    .line 41
    .local v4, "elem":Ljava/lang/Object;, "TT;"
    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 42
    return v1

    .line 44
    :cond_12
    nop

    .end local v4    # "elem":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, 0x1

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 47
    :cond_18
    return v0
.end method

.method public static greylist-max-o toIntArray(Ljava/util/List;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 145
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_4

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 150
    .local v0, "arr":[I
    const/4 v1, 0x0

    .line 151
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 152
    .local v3, "elem":I
    aput v3, v0, v1

    .line 153
    nop

    .end local v3    # "elem":I
    add-int/lit8 v1, v1, 0x1

    .line 154
    goto :goto_f

    .line 156
    :cond_25
    return-object v0
.end method

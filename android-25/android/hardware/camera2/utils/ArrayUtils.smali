.class public Landroid/hardware/camera2/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayUtils"


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 182
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@8
    throw v0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "array"    # [I
    .param p1, "elem"    # I

    #@0
    .prologue
    .line 167
    invoke-static {p0, p1}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 178
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "elem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I
    .locals 4
    .param p1, "convertFrom"    # [Ljava/lang/String;
    .param p2, "convertTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[I)[I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 79
    if-nez p0, :cond_0

    #@3
    .line 80
    return-object v3

    #@4
    .line 83
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    .line 85
    .local v0, "convertedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v3

    #@c
    new-array v2, v3, [I

    #@e
    .line 86
    .local v2, "returnArray":[I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@10
    if-ge v1, v3, :cond_1

    #@12
    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/lang/Integer;

    #@18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v3

    #@1c
    aput v3, v2, v1

    #@1e
    .line 86
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 90
    :cond_1
    return-object v2
.end method

.method public static convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;
    .locals 5
    .param p1, "convertFrom"    # [Ljava/lang/String;
    .param p2, "convertTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 109
    if-nez p0, :cond_0

    #@3
    .line 110
    return-object v4

    #@4
    .line 113
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v4

    #@a
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 115
    .local v0, "convertedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "str$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/lang/String;

    #@1d
    .line 116
    .local v1, "str":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    #@20
    move-result v3

    #@21
    .line 119
    .local v3, "strIndex":I
    if-ltz v3, :cond_1

    #@23
    .line 125
    array-length v4, p2

    #@24
    if-ge v3, v4, :cond_1

    #@26
    .line 126
    aget v4, p2, v3

    #@28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v4

    #@2c
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 130
    .end local v1    # "str":Ljava/lang/String;
    .end local v3    # "strIndex":I
    :cond_2
    return-object v0
.end method

.method public static getArrayIndex([II)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "needle"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 52
    if-nez p0, :cond_0

    #@3
    .line 53
    return v2

    #@4
    .line 55
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@6
    if-ge v0, v1, :cond_2

    #@8
    .line 56
    aget v1, p0, v0

    #@a
    if-ne v1, p1, :cond_1

    #@c
    .line 57
    return v0

    #@d
    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 60
    :cond_2
    return v2
.end method

.method public static getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "needle":Ljava/lang/Object;, "TT;"
    const/4 v5, -0x1

    #@1
    .line 35
    if-nez p0, :cond_0

    #@3
    .line 36
    return v5

    #@4
    .line 39
    :cond_0
    const/4 v1, 0x0

    #@5
    .line 40
    .local v1, "index":I
    const/4 v2, 0x0

    #@6
    array-length v3, p0

    #@7
    :goto_0
    if-ge v2, v3, :cond_2

    #@9
    aget-object v0, p0, v2

    #@b
    .line 41
    .local v0, "elem":Ljava/lang/Object;, "TT;"
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 42
    return v1

    #@12
    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@14
    .line 40
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 47
    .end local v0    # "elem":Ljava/lang/Object;, "TT;"
    :cond_2
    return v5
.end method

.method public static toIntArray(Ljava/util/List;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    #@1
    .line 145
    if-nez p0, :cond_0

    #@3
    .line 146
    return-object v4

    #@4
    .line 149
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v4

    #@8
    new-array v0, v4, [I

    #@a
    .line 150
    .local v0, "arr":[I
    const/4 v3, 0x0

    #@b
    .line 151
    .local v3, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "elem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Ljava/lang/Integer;

    #@1b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@1e
    move-result v1

    #@1f
    .line 152
    .local v1, "elem":I
    aput v1, v0, v3

    #@21
    .line 153
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_0

    #@24
    .line 156
    .end local v1    # "elem":I
    :cond_1
    return-object v0
.end method

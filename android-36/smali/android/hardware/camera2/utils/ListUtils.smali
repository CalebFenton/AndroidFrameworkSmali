.class public Landroid/hardware/camera2/utils/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static greylist-max-o listContains(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 31
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "needle":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_4

    .line 32
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_4
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o listElementsEqualTo(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 43
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "single":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 44
    return v0

    .line 47
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v2

    :cond_12
    return v0
.end method

.method public static greylist-max-o listSelectFirstFrom(Ljava/util/List;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[TT;)TT;"
        }
    .end annotation

    .line 88
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "choices":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 89
    return-object v0

    .line 92
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, p1, v2

    .line 93
    .local v3, "choice":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 94
    return-object v3

    .line 92
    .end local v3    # "choice":Ljava/lang/Object;, "TT;"
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 98
    :cond_14
    return-object v0
.end method

.method public static greylist-max-o listToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 54
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 62
    .local v1, "size":I
    const/4 v2, 0x0

    .line 63
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 64
    .local v4, "elem":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v5, v1, -0x1

    if-eq v2, v5, :cond_2d

    .line 67
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :cond_2d
    nop

    .end local v4    # "elem":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_17

    .line 71
    :cond_31
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

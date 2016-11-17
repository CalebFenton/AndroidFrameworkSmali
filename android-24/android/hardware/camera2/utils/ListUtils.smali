.class public Landroid/hardware/camera2/utils/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@8
    throw v0
.end method

.method public static listContains(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 31
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "needle":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 32
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 34
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static listElementsEqualTo(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "single":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    #@1
    .line 43
    if-nez p0, :cond_0

    #@3
    .line 44
    return v0

    #@4
    .line 47
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x1

    #@9
    if-ne v1, v2, :cond_1

    #@b
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    :cond_1
    return v0
.end method

.method public static listSelectFirstFrom(Ljava/util/List;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;[TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "choices":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    #@1
    .line 88
    if-nez p0, :cond_0

    #@3
    .line 89
    return-object v4

    #@4
    .line 92
    :cond_0
    const/4 v1, 0x0

    #@5
    array-length v2, p1

    #@6
    :goto_0
    if-ge v1, v2, :cond_2

    #@8
    aget-object v0, p1, v1

    #@a
    .line 93
    .local v0, "choice":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 94
    return-object v0

    #@11
    .line 92
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 98
    .end local v0    # "choice":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v4
.end method

.method public static listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 54
    if-nez p0, :cond_0

    #@3
    .line 55
    return-object v5

    #@4
    .line 58
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 59
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x5b

    #@b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    .line 61
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@11
    move-result v4

    #@12
    .line 62
    .local v4, "size":I
    const/4 v2, 0x0

    #@13
    .line 63
    .local v2, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "elem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_2

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    .line 64
    .local v0, "elem":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    .line 66
    add-int/lit8 v5, v4, -0x1

    #@26
    if-eq v2, v5, :cond_1

    #@28
    .line 67
    const/16 v5, 0x2c

    #@2a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 69
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 71
    .end local v0    # "elem":Ljava/lang/Object;, "TT;"
    :cond_2
    const/16 v5, 0x5d

    #@32
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    return-object v5
.end method

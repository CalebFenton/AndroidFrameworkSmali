.class public abstract Ljava/util/AbstractSet;
.super Ljava/util/AbstractCollection;
.source "AbstractSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 49
    if-ne p0, p1, :cond_0

    #@3
    .line 50
    const/4 v3, 0x1

    #@4
    return v3

    #@5
    .line 52
    :cond_0
    instance-of v4, p1, Ljava/util/Set;

    #@7
    if-eqz v4, :cond_2

    #@9
    move-object v2, p1

    #@a
    .line 53
    check-cast v2, Ljava/util/Set;

    #@c
    .line 56
    .local v2, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    #@f
    move-result v4

    #@10
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@13
    move-result v5

    #@14
    if-ne v4, v5, :cond_1

    #@16
    invoke-virtual {p0, v2}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v3

    #@1a
    :cond_1
    return v3

    #@1b
    .line 59
    :catch_0
    move-exception v0

    #@1c
    .line 60
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v3

    #@1d
    .line 57
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    #@1e
    .line 58
    .local v1, "ignored":Ljava/lang/NullPointerException;
    return v3

    #@1f
    .line 63
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    .end local v2    # "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_2
    return v3
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 76
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 77
    .local v2, "result":I
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 78
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    .line 80
    .local v1, "next":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@11
    const/4 v3, 0x0

    #@12
    :goto_1
    add-int/2addr v2, v3

    #@13
    goto :goto_0

    #@14
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@17
    move-result v3

    #@18
    goto :goto_1

    #@19
    .line 82
    .end local v1    # "next":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    #@1
    .line 99
    .local v1, "result":Z
    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    #@4
    move-result v2

    #@5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@8
    move-result v3

    #@9
    if-gt v2, v3, :cond_1

    #@b
    .line 100
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    .line 101
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_3

    #@15
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@22
    .line 104
    const/4 v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 108
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v0

    #@28
    .line 109
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_3

    #@2e
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p0, v2}, Ljava/util/AbstractSet;->remove(Ljava/lang/Object;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_2

    #@38
    const/4 v1, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 113
    :cond_3
    return v1
.end method

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
    .line 63
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 86
    if-ne p1, p0, :cond_0

    #@3
    .line 87
    const/4 v3, 0x1

    #@4
    return v3

    #@5
    .line 89
    :cond_0
    instance-of v3, p1, Ljava/util/Set;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 90
    return v5

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 91
    check-cast v0, Ljava/util/Collection;

    #@d
    .line 92
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@10
    move-result v3

    #@11
    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    #@14
    move-result v4

    #@15
    if-eq v3, v4, :cond_2

    #@17
    .line 93
    return v5

    #@18
    .line 95
    :cond_2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v3

    #@1c
    return v3

    #@1d
    .line 98
    :catch_0
    move-exception v2

    #@1e
    .line 99
    .local v2, "unused":Ljava/lang/NullPointerException;
    return v5

    #@1f
    .line 96
    .end local v2    # "unused":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@20
    .line 97
    .local v1, "unused":Ljava/lang/ClassCastException;
    return v5
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 121
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 122
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .line 123
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    .line 125
    .local v2, "obj":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    #@11
    .line 126
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@14
    move-result v3

    #@15
    add-int/2addr v0, v3

    #@16
    goto :goto_0

    #@17
    .line 128
    .end local v2    # "obj":Ljava/lang/Object;, "TE;"
    :cond_1
    return v0
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
    .line 169
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    #@1
    .line 171
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    #@4
    move-result v2

    #@5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@8
    move-result v3

    #@9
    if-le v2, v3, :cond_0

    #@b
    .line 172
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    .end local v1    # "modified":Z
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p0, v2}, Ljava/util/AbstractSet;->remove(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    or-int/2addr v1, v2

    #@1e
    .local v1, "modified":Z
    goto :goto_0

    #@1f
    .line 175
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local v1, "modified":Z
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v0

    #@23
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_1

    #@33
    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@36
    .line 178
    const/4 v1, 0x1

    #@37
    goto :goto_1

    #@38
    .line 182
    .end local v1    # "modified":Z
    :cond_2
    return v1
.end method

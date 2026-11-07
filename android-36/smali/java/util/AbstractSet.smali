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
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 63
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 86
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    if-ne p1, p0, :cond_4

    .line 87
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_4
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 90
    return v1

    .line 91
    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 92
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    move-result v3

    if-eq v2, v3, :cond_18

    .line 93
    return v1

    .line 95
    :cond_18
    :try_start_18
    invoke-virtual {p0, v0}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v1

    .line 96
    :catch_1d
    move-exception v2

    .line 97
    .local v2, "unused":Ljava/lang/RuntimeException;
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 119
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    const/4 v0, 0x0

    .line 120
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 121
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 123
    .local v2, "obj":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_16

    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 125
    .end local v2    # "obj":Ljava/lang/Object;, "TE;"
    :cond_16
    goto :goto_5

    .line 126
    :cond_17
    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 167
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v1, v2, :cond_23

    .line 171
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 172
    .local v2, "e":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ljava/util/AbstractSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .end local v2    # "e":Ljava/lang/Object;
    goto :goto_12

    :cond_22
    goto :goto_3c

    .line 174
    :cond_23
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 177
    const/4 v0, 0x1

    goto :goto_27

    .line 181
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3c
    :goto_3c
    return v0
.end method

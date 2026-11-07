.class abstract Ljava/util/ImmutableCollections$AbstractImmutableSet;
.super Ljava/util/ImmutableCollections$AbstractImmutableCollection;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 759
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableSet;, "Ljava/util/ImmutableCollections$AbstractImmutableSet<TE;>;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 764
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableSet;, "Ljava/util/ImmutableCollections$AbstractImmutableSet<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 765
    return v0

    .line 766
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 767
    return v2

    .line 770
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 771
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/ImmutableCollections$AbstractImmutableSet;->size()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 772
    return v2

    .line 774
    :cond_18
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 775
    .local v4, "e":Ljava/lang/Object;
    if-eqz v4, :cond_30

    invoke-virtual {p0, v4}, Ljava/util/ImmutableCollections$AbstractImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_30

    .line 778
    .end local v4    # "e":Ljava/lang/Object;
    :cond_2f
    goto :goto_1c

    .line 776
    .restart local v4    # "e":Ljava/lang/Object;
    :cond_30
    :goto_30
    return v2

    .line 779
    .end local v4    # "e":Ljava/lang/Object;
    :cond_31
    return v0
.end method

.method public abstract whitelist test-api hashCode()I
.end method

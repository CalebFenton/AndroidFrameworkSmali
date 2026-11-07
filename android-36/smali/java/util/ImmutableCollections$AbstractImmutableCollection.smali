.class abstract Ljava/util/ImmutableCollections$AbstractImmutableCollection;
.super Ljava/util/AbstractCollection;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractImmutableCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 152
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 154
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 155
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 156
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 157
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 158
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 159
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 160
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.class public Landroid/icu/impl/CollectionSet;
.super Ljava/lang/Object;
.source "CollectionSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final blacklist data:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    .local p1, "data":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    .line 25
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

    .line 59
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 74
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 89
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 90
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 39
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 69
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 34
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 44
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 84
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
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

    .line 79
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 29
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 49
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 54
    .local p0, "this":Landroid/icu/impl/CollectionSet;, "Landroid/icu/impl/CollectionSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/icu/impl/CollectionSet;->data:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

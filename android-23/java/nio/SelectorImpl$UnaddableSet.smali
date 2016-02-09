.class Ljava/nio/SelectorImpl$UnaddableSet;
.super Ljava/lang/Object;
.source "SelectorImpl.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SelectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnaddableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 335
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 336
    iput-object p1, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@5
    .line 335
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 350
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 354
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 358
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5
    .line 357
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 362
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 366
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 341
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 346
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 370
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 374
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 378
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 382
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 386
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 390
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 394
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 398
    .local p0, "this":Ljava/nio/SelectorImpl$UnaddableSet;, "Ljava/nio/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/nio/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

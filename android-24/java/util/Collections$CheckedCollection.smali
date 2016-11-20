.class Ljava/util/Collections$CheckedCollection;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x15e96dfd18e6cc6fL


# instance fields
.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private zeroLengthElementArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 2614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 2656
    iput-object v0, p0, Ljava/util/Collections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    #@6
    .line 2615
    if-eqz p1, :cond_0

    #@8
    if-nez p2, :cond_1

    #@a
    .line 2616
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@f
    throw v0

    #@10
    .line 2617
    :cond_1
    iput-object p1, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@12
    .line 2618
    iput-object p2, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    #@14
    .line 2614
    return-void
.end method

.method private badElementMsg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2610
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Attempt to insert "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 2611
    const-string/jumbo v1, " element into collection with element type "

    #@17
    .line 2610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 2611
    iget-object v1, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    #@1d
    .line 2610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method private zeroLengthElementArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2659
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    #@6
    :goto_0
    return-object v0

    #@7
    .line 2660
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    #@9
    invoke-static {v0}, Ljava/util/Collections;->zeroLengthArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/util/Collections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    #@f
    goto :goto_0
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
    .line 2652
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedCollection;->typeCheck(Ljava/lang/Object;)V

    #@3
    .line 2653
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2691
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedCollection;->checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2665
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    #@1
    .line 2667
    .local v0, "a":[Ljava/lang/Object;
    :try_start_0
    invoke-direct {p0}, Ljava/util/Collections$CheckedCollection;->zeroLengthElementArray()[Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    .line 2668
    .local v3, "z":[Ljava/lang/Object;, "[TE;"
    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .line 2670
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v5

    #@11
    if-eq v4, v5, :cond_0

    #@13
    .line 2671
    array-length v4, v0

    #@14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v5

    #@18
    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v0

    #@1c
    .line 2683
    .end local v3    # "z":[Ljava/lang/Object;, "[TE;"
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1f
    move-result-object v4

    #@20
    return-object v4

    #@21
    .line 2672
    .end local v0    # "a":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@22
    .line 2678
    .local v1, "ignore":Ljava/lang/ArrayStoreException;
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, [Ljava/lang/Object;

    #@2c
    .line 2679
    .restart local v0    # "a":[Ljava/lang/Object;
    const/4 v4, 0x0

    #@2d
    array-length v5, v0

    #@2e
    :goto_0
    if-ge v4, v5, :cond_0

    #@30
    aget-object v2, v0, v4

    #@32
    .line 2680
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ljava/util/Collections$CheckedCollection;->typeCheck(Ljava/lang/Object;)V

    #@35
    .line 2679
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 2628
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    #@5
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2623
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

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
    .line 2631
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2696
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    #@5
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 2622
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2643
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 2644
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    new-instance v1, Ljava/util/Collections$CheckedCollection$1;

    #@8
    invoke-direct {v1, p0, v0}, Ljava/util/Collections$CheckedCollection$1;-><init>(Ljava/util/Collections$CheckedCollection;Ljava/util/Iterator;)V

    #@b
    return-object v1
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2706
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2627
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

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
    .line 2634
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2699
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

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
    .line 2637
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 2621
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2702
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2704
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2624
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

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
    .line 2625
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2626
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method typeCheck(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2605
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 2604
    :cond_0
    return-void

    #@b
    .line 2606
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    #@d
    invoke-direct {p0, p1}, Ljava/util/Collections$CheckedCollection;->badElementMsg(Ljava/lang/Object;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

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
    accessFlags = 0xa
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


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Class;)V
    .locals 2
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
    .line 2851
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2852
    if-nez p1, :cond_0

    #@5
    .line 2853
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "c == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 2854
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 2855
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "type == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 2857
    :cond_1
    iput-object p1, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@1b
    .line 2858
    iput-object p2, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    #@1d
    .line 2851
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2890
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    #@4
    invoke-static {p1, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2903
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "c1":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 2904
    .local v0, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@5
    array-length v3, v0

    #@6
    :goto_0
    if-ge v2, v3, :cond_0

    #@8
    aget-object v1, v0, v2

    #@a
    .line 2905
    .local v1, "o":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    #@c
    invoke-static {v1, v4}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@f
    .line 2904
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 2907
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@1b
    move-result v2

    #@1c
    return v2
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 2919
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    #@5
    .line 2918
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2870
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
    .line 2898
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 2866
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2874
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v2, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 2875
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    instance-of v2, v0, Ljava/util/ListIterator;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 2876
    new-instance v1, Ljava/util/Collections$CheckedListIterator;

    #@c
    check-cast v0, Ljava/util/ListIterator;

    #@e
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    iget-object v2, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    #@10
    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedListIterator;-><init>(Ljava/util/ListIterator;Ljava/lang/Class;)V

    #@13
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    move-object v0, v1

    #@14
    .line 2878
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2894
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
    .line 2911
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

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
    .line 2915
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
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
    .line 2862
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2882
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
    .line 2886
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "arr":[Ljava/lang/Object;, "[TT;"
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
    .line 2923
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

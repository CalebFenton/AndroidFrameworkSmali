.class public Lcom/android/org/bouncycastle/util/CollectionStore;
.super Ljava/lang/Object;
.source "CollectionStore.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Store;
.implements Lcom/android/org/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/org/bouncycastle/util/Store",
        "<TT;>;",
        "Lcom/android/org/bouncycastle/util/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private _local:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 21
    .local p0, "this":Lcom/android/org/bouncycastle/util/CollectionStore;, "Lcom/android/org/bouncycastle/util/CollectionStore<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    #@a
    .line 22
    return-void
.end method


# virtual methods
.method public getMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/bouncycastle/util/Selector",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 35
    .local p0, "this":Lcom/android/org/bouncycastle/util/CollectionStore;, "Lcom/android/org/bouncycastle/util/CollectionStore<TT;>;"
    .local p1, "selector":Lcom/android/org/bouncycastle/util/Selector;, "Lorg/bouncycastle/util/Selector<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 37
    new-instance v3, Ljava/util/ArrayList;

    #@4
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    #@6
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@9
    return-object v3

    #@a
    .line 41
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 42
    .local v0, "col":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, Lcom/android/org/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    #@11
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .line 44
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    .line 48
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Lcom/android/org/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 54
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p0, "this":Lcom/android/org/bouncycastle/util/CollectionStore;, "Lcom/android/org/bouncycastle/util/CollectionStore<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/util/CollectionStore;->getMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    #@4
    move-result-object v0

    #@5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

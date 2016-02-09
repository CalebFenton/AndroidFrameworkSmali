.class abstract Ljava/util/TreeMap$MapIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected expectedModCount:I

.field protected last:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected next:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 870
    .local p0, "this":Ljava/util/TreeMap$MapIterator;, "Ljava/util/TreeMap<TK;TV;>.MapIterator<TT;>;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "next":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 868
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    #@7
    iget v0, v0, Ljava/util/TreeMap;->modCount:I

    #@9
    iput v0, p0, Ljava/util/TreeMap$MapIterator;->expectedModCount:I

    #@b
    .line 871
    iput-object p2, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    #@d
    .line 870
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 875
    .local p0, "this":Ljava/util/TreeMap$MapIterator;, "Ljava/util/TreeMap<TK;TV;>.MapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$MapIterator;, "Ljava/util/TreeMap<TK;TV;>.MapIterator<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 903
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 904
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 906
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    #@d
    iget-object v1, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    #@12
    .line 907
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    #@14
    iget v0, v0, Ljava/util/TreeMap;->modCount:I

    #@16
    iput v0, p0, Ljava/util/TreeMap$MapIterator;->expectedModCount:I

    #@18
    .line 908
    iput-object v2, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    #@1a
    .line 902
    return-void
.end method

.method protected stepBackward()Ljava/util/TreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 891
    .local p0, "this":Ljava/util/TreeMap$MapIterator;, "Ljava/util/TreeMap<TK;TV;>.MapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 892
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v0

    #@a
    .line 894
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    #@c
    iget v0, v0, Ljava/util/TreeMap;->modCount:I

    #@e
    iget v1, p0, Ljava/util/TreeMap$MapIterator;->expectedModCount:I

    #@10
    if-eq v0, v1, :cond_1

    #@12
    .line 895
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@14
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@17
    throw v0

    #@18
    .line 897
    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    #@1a
    iput-object v0, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    #@1c
    .line 898
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    #@1e
    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->prev()Ljava/util/TreeMap$Node;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    #@24
    .line 899
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    #@26
    return-object v0
.end method

.method protected stepForward()Ljava/util/TreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 879
    .local p0, "this":Ljava/util/TreeMap$MapIterator;, "Ljava/util/TreeMap<TK;TV;>.MapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 880
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v0

    #@a
    .line 882
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    #@c
    iget v0, v0, Ljava/util/TreeMap;->modCount:I

    #@e
    iget v1, p0, Ljava/util/TreeMap$MapIterator;->expectedModCount:I

    #@10
    if-eq v0, v1, :cond_1

    #@12
    .line 883
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@14
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@17
    throw v0

    #@18
    .line 885
    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    #@1a
    iput-object v0, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    #@1c
    .line 886
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    #@1e
    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->next()Ljava/util/TreeMap$Node;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    #@24
    .line 887
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    #@26
    return-object v0
.end method

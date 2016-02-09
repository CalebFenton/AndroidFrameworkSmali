.class Ljava/util/TreeMap$BoundedMap$BoundedKeySet$2;
.super Ljava/util/TreeMap$BoundedMap$BoundedIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->descendingIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<TK;TV;>.BoundedMap.BoundedIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$BoundedMap$BoundedKeySet;Ljava/util/TreeMap$BoundedMap;Ljava/util/TreeMap$Node;)V
    .locals 0

    #@0
    .prologue
    .line 1553
    .local p1, "this$2":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p2, "this$1":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p3, "$anonymous0":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$2;->this$2:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    #@2
    invoke-direct {p0, p2, p3}, Ljava/util/TreeMap$BoundedMap$BoundedIterator;-><init>(Ljava/util/TreeMap$BoundedMap;Ljava/util/TreeMap$Node;)V

    #@5
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1555
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$2;->this$2:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    #@2
    iget-object v0, v0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@4
    invoke-static {v0}, Ljava/util/TreeMap$BoundedMap;->-get0(Ljava/util/TreeMap$BoundedMap;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$2;->stepBackward()Ljava/util/TreeMap$Node;

    #@d
    move-result-object v0

    #@e
    :goto_0
    iget-object v0, v0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@10
    return-object v0

    #@11
    :cond_0
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$2;->stepForward()Ljava/util/TreeMap$Node;

    #@14
    move-result-object v0

    #@15
    goto :goto_0
.end method

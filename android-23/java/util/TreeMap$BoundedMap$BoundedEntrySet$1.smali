.class Ljava/util/TreeMap$BoundedMap$BoundedEntrySet$1;
.super Ljava/util/TreeMap$BoundedMap$BoundedIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<TK;TV;>.BoundedMap.BoundedIterator<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;Ljava/util/TreeMap$BoundedMap;Ljava/util/TreeMap$Node;)V
    .locals 0

    #@0
    .prologue
    .line 1511
    .local p1, "this$2":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    .local p2, "this$1":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p3, "$anonymous0":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet$1;->this$2:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    #@2
    invoke-direct {p0, p2, p3}, Ljava/util/TreeMap$BoundedMap$BoundedIterator;-><init>(Ljava/util/TreeMap$BoundedMap;Ljava/util/TreeMap$Node;)V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1512
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet$1;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1513
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet$1;->this$2:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    #@2
    iget-object v0, v0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@4
    invoke-static {v0}, Ljava/util/TreeMap$BoundedMap;->-get0(Ljava/util/TreeMap$BoundedMap;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet$1;->stepForward()Ljava/util/TreeMap$Node;

    #@d
    move-result-object v0

    #@e
    :goto_0
    return-object v0

    #@f
    :cond_0
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet$1;->stepBackward()Ljava/util/TreeMap$Node;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

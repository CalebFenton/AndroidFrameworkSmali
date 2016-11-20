.class Ljava/util/TreeMap$Values;
.super Ljava/util/AbstractCollection;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    #@0
    .prologue
    .line 1050
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1074
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    #@5
    .line 1073
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1060
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

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
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1052
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/TreeMap$ValueIterator;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    #@4
    iget-object v2, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    #@6
    invoke-virtual {v2}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2}, Ljava/util/TreeMap$ValueIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@d
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1064
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v1}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@5
    move-result-object v0

    #@6
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@8
    .line 1065
    invoke-virtual {v0}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1, p1}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1066
    iget-object v1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    #@14
    invoke-static {v1, v0}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@17
    .line 1067
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 1064
    :cond_0
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@1c
    move-result-object v0

    #@1d
    goto :goto_0

    #@1e
    .line 1070
    :cond_1
    const/4 v1, 0x0

    #@1f
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1056
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1078
    new-instance v0, Ljava/util/TreeMap$ValueSpliterator;

    #@4
    iget-object v1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    #@6
    const/4 v5, -0x1

    #@7
    move-object v3, v2

    #@8
    move v6, v4

    #@9
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$ValueSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    #@c
    return-object v0
.end method

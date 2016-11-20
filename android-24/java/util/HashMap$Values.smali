.class final Ljava/util/HashMap$Values;
.super Ljava/util/AbstractCollection;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    #@0
    .prologue
    .line 1244
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    .local p1, "this$0":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$Values;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/HashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1255
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 1254
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1252
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1262
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 1263
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 1264
    :cond_0
    iget-object v4, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@a
    iget v4, v4, Ljava/util/HashMap;->size:I

    #@c
    if-lez v4, :cond_3

    #@e
    iget-object v4, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@10
    iget-object v3, v4, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@12
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v3, :cond_3

    #@14
    .line 1265
    iget-object v4, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@16
    iget v2, v4, Ljava/util/HashMap;->modCount:I

    #@18
    .line 1266
    .local v2, "mc":I
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@1a
    if-ge v1, v4, :cond_3

    #@1c
    .line 1267
    aget-object v0, v3, v1

    #@1e
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    #@20
    .line 1268
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@22
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@25
    .line 1271
    iget-object v4, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@27
    iget v4, v4, Ljava/util/HashMap;->modCount:I

    #@29
    if-eq v4, v2, :cond_1

    #@2b
    .line 1272
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@2d
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@30
    throw v4

    #@31
    .line 1267
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@33
    goto :goto_1

    #@34
    .line 1266
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_0

    #@37
    .line 1260
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "mc":I
    .end local v3    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1246
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->newValueIterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1249
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@2
    iget v0, v0, Ljava/util/HashMap;->size:I

    #@4
    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    const/4 v2, 0x0

    #@1
    .line 1258
    new-instance v0, Ljava/util/HashMap$ValueSpliterator;

    #@3
    iget-object v1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@5
    const/4 v3, -0x1

    #@6
    move v4, v2

    #@7
    move v5, v2

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/HashMap$ValueSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    #@b
    return-object v0
.end method

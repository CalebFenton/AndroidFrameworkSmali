.class final Ljava/util/HashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/HashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/HashMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1103
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api clear()V
    .registers 2

    .line 1105
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1110
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1112
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1113
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->getNode(Ljava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v3

    .line 1114
    .local v3, "candidate":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_1b

    invoke-virtual {v3, v0}, Ljava/util/HashMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 1111
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "candidate":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_1c
    return v1
.end method

.method public final whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1129
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_38

    .line 1131
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_37

    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    iget-object v0, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_37

    .line 1132
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->modCount:I

    .line 1134
    .local v0, "mc":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v3, v1

    if-ge v2, v3, :cond_2a

    iget-object v3, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    iget v3, v3, Ljava/util/HashMap;->modCount:I

    if-ne v3, v0, :cond_2a

    .line 1135
    aget-object v3, v1, v2

    .local v3, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_1f
    if-eqz v3, :cond_27

    .line 1136
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1135
    iget-object v3, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_1f

    .line 1134
    .end local v3    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1138
    .end local v2    # "i":I
    :cond_2a
    iget-object v2, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->modCount:I

    if-ne v2, v0, :cond_31

    goto :goto_37

    .line 1139
    :cond_31
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1141
    .end local v0    # "mc":I
    .end local v1    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_37
    :goto_37
    return-void

    .line 1130
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1107
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/HashMap$EntryIterator;

    iget-object v1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap$EntryIterator;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 1117
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1118
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 1119
    .local v4, "key":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1120
    .local v5, "value":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1

    .line 1122
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_20
    return v1
.end method

.method public final whitelist test-api size()I
    .registers 2

    .line 1104
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1125
    .local p0, "this":Ljava/util/HashMap$EntrySet;, "Ljava/util/HashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/HashMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/HashMap$EntrySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    return-object v0
.end method

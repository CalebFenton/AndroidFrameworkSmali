.class Ljava/util/IdentityHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/IdentityHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1100
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$Values;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 1120
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 1121
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1108
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1102
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/IdentityHashMap$ValueIterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$ValueIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1111
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 1113
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1114
    const/4 v1, 0x1

    return v1

    .line 1117
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1105
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 1154
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/IdentityHashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$ValueSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 1123
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap$Values;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1127
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->modCount:I

    .line 1128
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$Values;->size()I

    move-result v1

    .line 1129
    .local v1, "size":I
    array-length v2, p1

    if-ge v2, v1, :cond_1a

    .line 1130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, [Ljava/lang/Object;

    .line 1131
    :cond_1a
    iget-object v2, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    iget-object v2, v2, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1132
    .local v2, "tab":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1133
    .local v3, "ti":I
    const/4 v4, 0x0

    .local v4, "si":I
    :goto_20
    array-length v5, v2

    if-ge v4, v5, :cond_3c

    .line 1134
    aget-object v5, v2, v4

    if-eqz v5, :cond_39

    .line 1136
    if-ge v3, v1, :cond_33

    .line 1139
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "ti":I
    .local v5, "ti":I
    add-int/lit8 v6, v4, 0x1

    aget-object v6, v2, v6

    aput-object v6, p1, v3

    move v3, v5

    goto :goto_39

    .line 1137
    .end local v5    # "ti":I
    .restart local v3    # "ti":I
    :cond_33
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 1133
    :cond_39
    :goto_39
    add-int/lit8 v4, v4, 0x2

    goto :goto_20

    .line 1143
    .end local v4    # "si":I
    :cond_3c
    if-lt v3, v1, :cond_4b

    iget-object v4, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    iget v4, v4, Ljava/util/IdentityHashMap;->modCount:I

    if-ne v0, v4, :cond_4b

    .line 1147
    array-length v4, p1

    if-ge v3, v4, :cond_4a

    .line 1148
    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 1150
    :cond_4a
    return-object p1

    .line 1144
    :cond_4b
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
.end method

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
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    #@0
    .prologue
    .line 1084
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$Values;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$Values;-><init>(Ljava/util/IdentityHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1104
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    #@5
    .line 1103
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1092
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsValue(Ljava/lang/Object;)Z

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
    .line 1086
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/IdentityHashMap$ValueIterator;

    #@2
    iget-object v1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$ValueIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$ValueIterator;)V

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1095
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$Values;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 1096
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    if-ne v1, p1, :cond_0

    #@10
    .line 1097
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@13
    .line 1098
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 1101
    :cond_1
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1089
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
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
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    const/4 v2, 0x0

    #@1
    .line 1138
    new-instance v0, Ljava/util/IdentityHashMap$ValueSpliterator;

    #@3
    iget-object v1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    #@5
    const/4 v3, -0x1

    #@6
    move v4, v2

    #@7
    move v5, v2

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$ValueSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    #@b
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1107
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap$Values;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v7, 0x0

    #@1
    .line 1111
    iget-object v6, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    #@3
    invoke-static {v6}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@6
    move-result v0

    #@7
    .line 1112
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$Values;->size()I

    #@a
    move-result v2

    #@b
    .line 1113
    .local v2, "size":I
    array-length v6, p1

    #@c
    if-ge v6, v2, :cond_0

    #@e
    .line 1114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@15
    move-result-object v6

    #@16
    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    #@1c
    .line 1115
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v6, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    #@1e
    invoke-static {v6}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    .line 1116
    .local v3, "tab":[Ljava/lang/Object;
    const/4 v4, 0x0

    #@23
    .line 1117
    .local v4, "ti":I
    const/4 v1, 0x0

    #@24
    .local v1, "si":I
    :goto_0
    array-length v6, v3

    #@25
    if-ge v1, v6, :cond_3

    #@27
    .line 1118
    aget-object v6, v3, v1

    #@29
    if-eqz v6, :cond_2

    #@2b
    .line 1120
    if-lt v4, v2, :cond_1

    #@2d
    .line 1121
    new-instance v6, Ljava/util/ConcurrentModificationException;

    #@2f
    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@32
    throw v6

    #@33
    .line 1123
    :cond_1
    add-int/lit8 v5, v4, 0x1

    #@35
    .end local v4    # "ti":I
    .local v5, "ti":I
    add-int/lit8 v6, v1, 0x1

    #@37
    aget-object v6, v3, v6

    #@39
    aput-object v6, p1, v4

    #@3b
    move v4, v5

    #@3c
    .line 1117
    .end local v5    # "ti":I
    .restart local v4    # "ti":I
    :cond_2
    add-int/lit8 v1, v1, 0x2

    #@3e
    goto :goto_0

    #@3f
    .line 1127
    :cond_3
    if-lt v4, v2, :cond_4

    #@41
    iget-object v6, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    #@43
    invoke-static {v6}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@46
    move-result v6

    #@47
    if-eq v0, v6, :cond_5

    #@49
    .line 1128
    :cond_4
    new-instance v6, Ljava/util/ConcurrentModificationException;

    #@4b
    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@4e
    throw v6

    #@4f
    .line 1131
    :cond_5
    array-length v6, p1

    #@50
    if-ge v4, v6, :cond_6

    #@52
    .line 1132
    aput-object v7, p1, v4

    #@54
    .line 1134
    :cond_6
    return-object p1
.end method

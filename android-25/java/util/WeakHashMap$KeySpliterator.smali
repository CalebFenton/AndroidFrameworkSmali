.class final Ljava/util/WeakHashMap$KeySpliterator;
.super Ljava/util/WeakHashMap$WeakHashMapSpliterator;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/WeakHashMap$WeakHashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;IIII)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1078
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    #@3
    .line 1077
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1149
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v10, 0x0

    #@1
    .line 1090
    if-nez p1, :cond_0

    #@3
    .line 1091
    new-instance v9, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v9

    #@9
    .line 1092
    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    #@b
    .line 1093
    .local v4, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v7, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@d
    .line 1094
    .local v7, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    #@f
    .local v0, "hi":I
    if-gez v0, :cond_3

    #@11
    .line 1095
    iget v5, v4, Ljava/util/WeakHashMap;->modCount:I

    #@13
    iput v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    #@15
    .line 1096
    .local v5, "mc":I
    array-length v0, v7

    #@16
    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    #@18
    .line 1100
    .restart local v0    # "hi":I
    :goto_0
    array-length v9, v7

    #@19
    if-lt v9, v0, :cond_5

    #@1b
    iget v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@1d
    .local v1, "i":I
    if-ltz v1, :cond_5

    #@1f
    .line 1101
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@21
    if-lt v1, v0, :cond_1

    #@23
    iget-object v9, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@25
    if-eqz v9, :cond_5

    #@27
    .line 1102
    :cond_1
    iget-object v6, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@29
    .line 1103
    .local v6, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iput-object v10, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@2b
    move v2, v1

    #@2c
    .line 1105
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-nez v6, :cond_4

    #@2e
    .line 1106
    add-int/lit8 v1, v2, 0x1

    #@30
    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v6, v7, v2

    #@32
    .line 1116
    :goto_2
    if-nez v6, :cond_2

    #@34
    if-ge v1, v0, :cond_5

    #@36
    :cond_2
    move v2, v1

    #@37
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@38
    .line 1099
    .end local v2    # "i":I
    .end local v5    # "mc":I
    .end local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    #@3a
    .restart local v5    # "mc":I
    goto :goto_0

    #@3b
    .line 1108
    .restart local v2    # "i":I
    .restart local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_4
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@3e
    move-result-object v8

    #@3f
    .line 1109
    .local v8, "x":Ljava/lang/Object;
    iget-object v6, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@41
    .line 1110
    if-eqz v8, :cond_7

    #@43
    .line 1112
    invoke-static {v8}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    .line 1113
    .local v3, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@4a
    move v1, v2

    #@4b
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    #@4c
    .line 1118
    .end local v1    # "i":I
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v8    # "x":Ljava/lang/Object;
    :cond_5
    iget v9, v4, Ljava/util/WeakHashMap;->modCount:I

    #@4e
    if-eq v9, v5, :cond_6

    #@50
    .line 1119
    new-instance v9, Ljava/util/ConcurrentModificationException;

    #@52
    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@55
    throw v9

    #@56
    .line 1088
    :cond_6
    return-void

    #@57
    .restart local v2    # "i":I
    .restart local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v8    # "x":Ljava/lang/Object;
    :cond_7
    move v1, v2

    #@58
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v6, 0x0

    #@1
    .line 1124
    if-nez p1, :cond_0

    #@3
    .line 1125
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v4

    #@9
    .line 1126
    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    #@b
    iget-object v2, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@d
    .line 1127
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v4, v2

    #@e
    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    #@11
    move-result v0

    #@12
    .local v0, "hi":I
    if-lt v4, v0, :cond_5

    #@14
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@16
    if-ltz v4, :cond_5

    #@18
    .line 1128
    :cond_1
    :goto_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@1a
    if-nez v4, :cond_2

    #@1c
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@1e
    if-ge v4, v0, :cond_5

    #@20
    .line 1129
    :cond_2
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@22
    if-nez v4, :cond_3

    #@24
    .line 1130
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@26
    add-int/lit8 v5, v4, 0x1

    #@28
    iput v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@2a
    aget-object v4, v2, v4

    #@2c
    iput-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@2e
    goto :goto_0

    #@2f
    .line 1132
    :cond_3
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@31
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    .line 1133
    .local v3, "x":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@37
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@39
    iput-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    #@3b
    .line 1134
    if-eqz v3, :cond_1

    #@3d
    .line 1136
    invoke-static {v3}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    .line 1137
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@44
    .line 1138
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    #@46
    iget v4, v4, Ljava/util/WeakHashMap;->modCount:I

    #@48
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    #@4a
    if-eq v4, v5, :cond_4

    #@4c
    .line 1139
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@4e
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@51
    throw v4

    #@52
    .line 1140
    :cond_4
    const/4 v4, 0x1

    #@53
    return v4

    #@54
    .line 1145
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "x":Ljava/lang/Object;
    :cond_5
    return v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1081
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$KeySpliterator;->trySplit()Ljava/util/WeakHashMap$KeySpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/WeakHashMap$KeySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1082
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    #@3
    move-result v6

    #@4
    .local v6, "hi":I
    iget v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@6
    .local v2, "lo":I
    add-int v0, v2, v6

    #@8
    ushr-int/lit8 v3, v0, 0x1

    #@a
    .line 1083
    .local v3, "mid":I
    if-lt v2, v3, :cond_0

    #@c
    const/4 v0, 0x0

    #@d
    :goto_0
    return-object v0

    #@e
    .line 1084
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$KeySpliterator;

    #@10
    iget-object v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    #@12
    iput v3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@14
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    #@16
    ushr-int/lit8 v4, v4, 0x1

    #@18
    iput v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    #@1a
    .line 1085
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    #@1c
    .line 1084
    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$KeySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    #@1f
    goto :goto_0
.end method

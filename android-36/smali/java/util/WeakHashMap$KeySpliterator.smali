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
        "Ljava/util/WeakHashMap$WeakHashMapSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/WeakHashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 1109
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    .line 1110
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1180
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 1121
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_52

    .line 1123
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySpliterator;->map:Ljava/util/WeakHashMap;

    .line 1124
    .local v0, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v1, v0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1125
    .local v1, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v2, p0, Ljava/util/WeakHashMap$KeySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-gez v2, :cond_14

    .line 1126
    iget v2, v0, Ljava/util/WeakHashMap;->modCount:I

    iput v2, p0, Ljava/util/WeakHashMap$KeySpliterator;->expectedModCount:I

    .line 1127
    .local v2, "mc":I
    array-length v4, v1

    iput v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->fence:I

    move v3, v4

    goto :goto_16

    .line 1130
    .end local v2    # "mc":I
    :cond_14
    iget v2, p0, Ljava/util/WeakHashMap$KeySpliterator;->expectedModCount:I

    .line 1131
    .restart local v2    # "mc":I
    :goto_16
    array-length v4, v1

    if-lt v4, v3, :cond_47

    iget v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    move v5, v4

    .local v5, "i":I
    if-ltz v4, :cond_47

    iput v3, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    if-lt v5, v3, :cond_26

    iget-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v4, :cond_47

    .line 1133
    :cond_26
    iget-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1134
    .local v4, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1136
    :cond_2b
    if-nez v4, :cond_33

    .line 1137
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-object v4, v1, v5

    move v5, v6

    goto :goto_43

    .line 1139
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_33
    invoke-virtual {v4}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v6

    .line 1140
    .local v6, "x":Ljava/lang/Object;
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1141
    if-eqz v6, :cond_43

    .line 1142
    nop

    .line 1143
    invoke-static {v6}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1144
    .local v7, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1147
    .end local v6    # "x":Ljava/lang/Object;
    .end local v7    # "k":Ljava/lang/Object;, "TK;"
    :cond_43
    :goto_43
    if-nez v4, :cond_2b

    if-lt v5, v3, :cond_2b

    .line 1149
    .end local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "i":I
    :cond_47
    iget v4, v0, Ljava/util/WeakHashMap;->modCount:I

    if-ne v4, v2, :cond_4c

    .line 1151
    return-void

    .line 1150
    :cond_4c
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1122
    .end local v0    # "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .end local v1    # "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "mc":I
    .end local v3    # "hi":I
    :cond_52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 1155
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_52

    .line 1157
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v0, v0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1158
    .local v0, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    invoke-virtual {p0}, Ljava/util/WeakHashMap$KeySpliterator;->getFence()I

    move-result v2

    move v3, v2

    .local v3, "hi":I
    if-lt v1, v2, :cond_50

    iget v1, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    if-ltz v1, :cond_50

    .line 1159
    :goto_12
    iget-object v1, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v1, :cond_1a

    iget v1, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    if-ge v1, v3, :cond_50

    .line 1160
    :cond_1a
    iget-object v1, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v1, :cond_29

    .line 1161
    iget v1, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    goto :goto_12

    .line 1163
    :cond_29
    iget-object v1, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v1}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1164
    .local v1, "x":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v2, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v2, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1165
    if-eqz v1, :cond_4f

    .line 1166
    nop

    .line 1167
    invoke-static {v1}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1168
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1169
    iget-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->map:Ljava/util/WeakHashMap;

    iget v4, v4, Ljava/util/WeakHashMap;->modCount:I

    iget v5, p0, Ljava/util/WeakHashMap$KeySpliterator;->expectedModCount:I

    if-ne v4, v5, :cond_49

    .line 1171
    const/4 v4, 0x1

    return v4

    .line 1170
    :cond_49
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1173
    .end local v1    # "x":Ljava/lang/Object;
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    :cond_4f
    goto :goto_12

    .line 1176
    :cond_50
    const/4 v1, 0x0

    return v1

    .line 1156
    .end local v0    # "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v3    # "hi":I
    :cond_52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1104
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$KeySpliterator;->trySplit()Ljava/util/WeakHashMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/WeakHashMap$KeySpliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$KeySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1113
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$KeySpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v3, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    .local v3, "lo":I
    add-int v1, v3, v0

    ushr-int/lit8 v4, v1, 0x1

    .line 1114
    .local v4, "mid":I
    if-lt v3, v4, :cond_e

    const/4 v1, 0x0

    goto :goto_1f

    .line 1115
    :cond_e
    new-instance v1, Ljava/util/WeakHashMap$KeySpliterator;

    iget-object v2, p0, Ljava/util/WeakHashMap$KeySpliterator;->map:Ljava/util/WeakHashMap;

    iput v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    iget v5, p0, Ljava/util/WeakHashMap$KeySpliterator;->est:I

    ushr-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/WeakHashMap$KeySpliterator;->est:I

    iget v6, p0, Ljava/util/WeakHashMap$KeySpliterator;->expectedModCount:I

    invoke-direct/range {v1 .. v6}, Ljava/util/WeakHashMap$KeySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    .line 1114
    :goto_1f
    return-object v1
.end method

.class final Ljava/util/HashMap$KeySpliterator;
.super Ljava/util/HashMap$HashMapSpliterator;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
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
        "Ljava/util/HashMap$HashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/HashMap;IIII)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 939
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/HashMap$HashMapSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    #@3
    .line 938
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1001
    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    #@3
    if-ltz v0, :cond_0

    #@5
    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    #@7
    iget-object v2, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    #@9
    iget v2, v2, Ljava/util/HashMap;->size:I

    #@b
    if-ne v0, v2, :cond_2

    #@d
    :cond_0
    const/16 v0, 0x40

    #@f
    :goto_0
    or-int/lit8 v0, v0, 0x1

    #@11
    .line 1003
    iget-object v2, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    #@13
    instance-of v2, v2, Ljava/util/LinkedHashMap;

    #@15
    if-eqz v2, :cond_1

    #@17
    const/16 v1, 0x10

    #@19
    .line 1001
    :cond_1
    or-int/2addr v0, v1

    #@1a
    return v0

    #@1b
    :cond_2
    move v0, v1

    #@1c
    goto :goto_0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 951
    if-nez p1, :cond_0

    #@4
    .line 952
    new-instance v7, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v7

    #@a
    .line 953
    :cond_0
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    #@c
    .line 954
    .local v3, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v6, v3, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@e
    .line 955
    .local v6, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    #@10
    .local v0, "hi":I
    if-gez v0, :cond_4

    #@12
    .line 956
    iget v4, v3, Ljava/util/HashMap;->modCount:I

    #@14
    iput v4, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    #@16
    .line 957
    .local v4, "mc":I
    if-nez v6, :cond_3

    #@18
    move v0, v7

    #@19
    :goto_0
    iput v0, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    #@1b
    .line 961
    :goto_1
    if-eqz v6, :cond_7

    #@1d
    array-length v7, v6

    #@1e
    if-lt v7, v0, :cond_7

    #@20
    .line 962
    iget v1, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    #@22
    .local v1, "i":I
    if-ltz v1, :cond_7

    #@24
    iput v0, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    #@26
    if-lt v1, v0, :cond_1

    #@28
    iget-object v7, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@2a
    if-eqz v7, :cond_7

    #@2c
    .line 963
    :cond_1
    iget-object v5, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@2e
    .line 964
    .local v5, "p":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iput-object v8, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@30
    move v2, v1

    #@31
    .line 966
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2
    if-nez v5, :cond_5

    #@33
    .line 967
    add-int/lit8 v1, v2, 0x1

    #@35
    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v5, v6, v2

    #@37
    .line 972
    :goto_3
    if-nez v5, :cond_2

    #@39
    if-ge v1, v0, :cond_6

    #@3b
    :cond_2
    move v2, v1

    #@3c
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    #@3d
    .line 957
    .end local v2    # "i":I
    .end local v5    # "p":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    array-length v0, v6

    #@3e
    goto :goto_0

    #@3f
    .line 960
    .end local v4    # "mc":I
    :cond_4
    iget v4, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    #@41
    .restart local v4    # "mc":I
    goto :goto_1

    #@42
    .line 969
    .restart local v2    # "i":I
    .restart local v5    # "p":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_5
    iget-object v7, v5, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@44
    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@47
    .line 970
    iget-object v5, v5, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@49
    move v1, v2

    #@4a
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    #@4b
    .line 973
    :cond_6
    iget v7, v3, Ljava/util/HashMap;->modCount:I

    #@4d
    if-eq v7, v4, :cond_7

    #@4f
    .line 974
    new-instance v7, Ljava/util/ConcurrentModificationException;

    #@51
    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@54
    throw v7

    #@55
    .line 949
    .end local v1    # "i":I
    .end local v5    # "p":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_7
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v5, 0x0

    #@1
    .line 980
    if-nez p1, :cond_0

    #@3
    .line 981
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v3

    #@9
    .line 982
    :cond_0
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    #@b
    iget-object v2, v3, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@d
    .line 983
    .local v2, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v2, :cond_4

    #@f
    array-length v3, v2

    #@10
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapSpliterator;->getFence()I

    #@13
    move-result v0

    #@14
    .local v0, "hi":I
    if-lt v3, v0, :cond_4

    #@16
    iget v3, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    #@18
    if-ltz v3, :cond_4

    #@1a
    .line 984
    :goto_0
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@1c
    if-nez v3, :cond_1

    #@1e
    iget v3, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    #@20
    if-ge v3, v0, :cond_4

    #@22
    .line 985
    :cond_1
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@24
    if-nez v3, :cond_2

    #@26
    .line 986
    iget v3, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    #@28
    add-int/lit8 v4, v3, 0x1

    #@2a
    iput v4, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    #@2c
    aget-object v3, v2, v3

    #@2e
    iput-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@30
    goto :goto_0

    #@31
    .line 988
    :cond_2
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@33
    iget-object v1, v3, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@35
    .line 989
    .local v1, "k":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@37
    iget-object v3, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@39
    iput-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@3b
    .line 990
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@3e
    .line 991
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    #@40
    iget v3, v3, Ljava/util/HashMap;->modCount:I

    #@42
    iget v4, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    #@44
    if-eq v3, v4, :cond_3

    #@46
    .line 992
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@48
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@4b
    throw v3

    #@4c
    .line 993
    :cond_3
    const/4 v3, 0x1

    #@4d
    return v3

    #@4e
    .line 997
    .end local v0    # "hi":I
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    :cond_4
    return v5
.end method

.method public trySplit()Ljava/util/HashMap$KeySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 943
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapSpliterator;->getFence()I

    #@4
    move-result v6

    #@5
    .local v6, "hi":I
    iget v2, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    #@7
    .local v2, "lo":I
    add-int v1, v2, v6

    #@9
    ushr-int/lit8 v3, v1, 0x1

    #@b
    .line 944
    .local v3, "mid":I
    if-ge v2, v3, :cond_0

    #@d
    iget-object v1, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    #@f
    if-eqz v1, :cond_1

    #@11
    :cond_0
    :goto_0
    return-object v0

    #@12
    .line 945
    :cond_1
    new-instance v0, Ljava/util/HashMap$KeySpliterator;

    #@14
    iget-object v1, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    #@16
    iput v3, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    #@18
    iget v4, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    #@1a
    ushr-int/lit8 v4, v4, 0x1

    #@1c
    iput v4, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    #@1e
    .line 946
    iget v5, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    #@20
    .line 945
    invoke-direct/range {v0 .. v5}, Ljava/util/HashMap$KeySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    #@23
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 942
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap$KeySpliterator;->trySplit()Ljava/util/HashMap$KeySpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

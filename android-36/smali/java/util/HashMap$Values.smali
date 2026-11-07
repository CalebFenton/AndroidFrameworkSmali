.class final Ljava/util/HashMap$Values;
.super Ljava/util/AbstractCollection;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
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

    .line 1048
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iput-object p1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api clear()V
    .registers 2

    .line 1050
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1052
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1067
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_3a

    .line 1069
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_39

    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget-object v0, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_39

    .line 1070
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->modCount:I

    .line 1072
    .local v0, "mc":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v3, v1

    if-ge v2, v3, :cond_2c

    iget-object v3, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget v3, v3, Ljava/util/HashMap;->modCount:I

    if-ne v3, v0, :cond_2c

    .line 1073
    aget-object v3, v1, v2

    .local v3, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_1f
    if-eqz v3, :cond_29

    .line 1074
    iget-object v4, v3, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1073
    iget-object v3, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_1f

    .line 1072
    .end local v3    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1076
    .end local v2    # "i":I
    :cond_2c
    iget-object v2, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->modCount:I

    if-ne v2, v0, :cond_33

    goto :goto_39

    .line 1077
    :cond_33
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1079
    .end local v0    # "mc":I
    .end local v1    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_39
    :goto_39
    return-void

    .line 1068
    :cond_3a
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
            "TV;>;"
        }
    .end annotation

    .line 1051
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/HashMap$ValueIterator;

    iget-object v1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap$ValueIterator;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final whitelist test-api size()I
    .registers 2

    .line 1049
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 1054
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/HashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/HashMap$ValueSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 1058
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget-object v1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget v1, v1, Ljava/util/HashMap;->size:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->valuesToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1062
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget-object v1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->prepareArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->valuesToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.class final Ljava/util/ArrayDeque$DeqSpliterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DeqSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final deq:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation
.end field

.field private fence:I

.field private index:I


# direct methods
.method constructor <init>(Ljava/util/ArrayDeque;II)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque",
            "<TE;>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 919
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    .local p1, "deq":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 920
    iput-object p1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    #@5
    .line 921
    iput p2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    #@7
    .line 922
    iput p3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    #@9
    .line 919
    return-void
.end method

.method private getFence()I
    .locals 2

    #@0
    .prologue
    .line 927
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    #@2
    .local v0, "t":I
    if-gez v0, :cond_0

    #@4
    .line 928
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    #@6
    iget v0, v1, Ljava/util/ArrayDeque;->tail:I

    #@8
    .end local v0    # "t":I
    iput v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    #@a
    .line 929
    .restart local v0    # "t":I
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    #@c
    iget v1, v1, Ljava/util/ArrayDeque;->head:I

    #@e
    iput v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    #@10
    .line 931
    :cond_0
    return v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 985
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    const/16 v0, 0x4150

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 977
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    #@6
    sub-int v0, v1, v2

    #@8
    .line 978
    .local v0, "n":I
    if-gez v0, :cond_0

    #@a
    .line 979
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    #@c
    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@e
    array-length v1, v1

    #@f
    add-int/2addr v0, v1

    #@10
    .line 980
    :cond_0
    int-to-long v2, v0

    #@11
    return-wide v2
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 946
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 947
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 948
    :cond_0
    iget-object v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    #@a
    iget-object v0, v5, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@c
    .line 949
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    #@d
    add-int/lit8 v4, v5, -0x1

    #@f
    .local v4, "m":I
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    #@12
    move-result v2

    #@13
    .local v2, "f":I
    iget v3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    #@15
    .line 950
    .local v3, "i":I
    iput v2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    #@17
    .line 951
    :goto_0
    if-eq v3, v2, :cond_2

    #@19
    .line 952
    aget-object v1, v0, v3

    #@1b
    .line 953
    .local v1, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v3, 0x1

    #@1d
    and-int v3, v5, v4

    #@1f
    .line 954
    if-nez v1, :cond_1

    #@21
    .line 955
    new-instance v5, Ljava/util/ConcurrentModificationException;

    #@23
    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@26
    throw v5

    #@27
    .line 956
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 945
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 961
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 962
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 963
    :cond_0
    iget-object v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    #@a
    iget-object v0, v5, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@c
    .line 964
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    #@d
    add-int/lit8 v4, v5, -0x1

    #@f
    .local v4, "m":I
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    #@12
    move-result v2

    #@13
    .local v2, "f":I
    iget v3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    #@15
    .line 965
    .local v3, "i":I
    if-eq v3, v2, :cond_2

    #@17
    .line 966
    aget-object v1, v0, v3

    #@19
    .line 967
    .local v1, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v3, 0x1

    #@1b
    and-int/2addr v5, v4

    #@1c
    iput v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    #@1e
    .line 968
    if-nez v1, :cond_1

    #@20
    .line 969
    new-instance v5, Ljava/util/ConcurrentModificationException;

    #@22
    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@25
    throw v5

    #@26
    .line 970
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@29
    .line 971
    const/4 v5, 0x1

    #@2a
    return v5

    #@2b
    .line 973
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v5, 0x0

    #@2c
    return v5
.end method

.method public trySplit()Ljava/util/ArrayDeque$DeqSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque$DeqSpliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 935
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    #@3
    move-result v3

    #@4
    .local v3, "t":I
    iget v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    #@6
    .local v0, "h":I
    iget-object v4, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    #@8
    iget-object v4, v4, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@a
    array-length v2, v4

    #@b
    .line 936
    .local v2, "n":I
    if-eq v0, v3, :cond_1

    #@d
    add-int/lit8 v4, v0, 0x1

    #@f
    add-int/lit8 v5, v2, -0x1

    #@11
    and-int/2addr v4, v5

    #@12
    if-eq v4, v3, :cond_1

    #@14
    .line 937
    if-le v0, v3, :cond_0

    #@16
    .line 938
    add-int/2addr v3, v2

    #@17
    .line 939
    :cond_0
    add-int v4, v0, v3

    #@19
    ushr-int/lit8 v4, v4, 0x1

    #@1b
    add-int/lit8 v5, v2, -0x1

    #@1d
    and-int v1, v4, v5

    #@1f
    .line 940
    .local v1, "m":I
    new-instance v4, Ljava/util/ArrayDeque$DeqSpliterator;

    #@21
    iget-object v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    #@23
    iput v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    #@25
    invoke-direct {v4, v5, v0, v1}, Ljava/util/ArrayDeque$DeqSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    #@28
    return-object v4

    #@29
    .line 942
    .end local v1    # "m":I
    :cond_1
    const/4 v4, 0x0

    #@2a
    return-object v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 934
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->trySplit()Ljava/util/ArrayDeque$DeqSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

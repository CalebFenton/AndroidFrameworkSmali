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
    accessFlags = 0x10
    name = "DeqSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist cursor:I

.field private greylist-max-o fence:I

.field final synthetic blacklist this$0:Ljava/util/ArrayDeque;


# direct methods
.method constructor blacklist <init>(Ljava/util/ArrayDeque;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 813
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->this$0:Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    .line 815
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/ArrayDeque;II)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/ArrayDeque;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 818
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->this$0:Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput p2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->cursor:I

    .line 822
    iput p3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    .line 823
    return-void
.end method

.method private greylist-max-o getFence()I
    .registers 3

    .line 828
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    move v1, v0

    .local v1, "t":I
    if-gez v0, :cond_12

    .line 829
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->this$0:Ljava/util/ArrayDeque;

    iget v0, v0, Ljava/util/ArrayDeque;->tail:I

    iput v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    move v1, v0

    .line 830
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->this$0:Ljava/util/ArrayDeque;

    iget v0, v0, Ljava/util/ArrayDeque;->head:I

    iput v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->cursor:I

    .line 832
    :cond_12
    return v1
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 880
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator;"
    const/16 v0, 0x4150

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 4

    .line 876
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator;"
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->cursor:I

    iget-object v2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v2, v2, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v1, v2}, Ljava/util/ArrayDeque;->sub(III)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 844
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_3c

    .line 846
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v0

    .local v0, "end":I
    iget v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->cursor:I

    .line 847
    .local v1, "cursor":I
    iget-object v2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v2, v2, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 848
    .local v2, "es":[Ljava/lang/Object;
    if-eq v1, v0, :cond_3b

    .line 849
    iput v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->cursor:I

    .line 851
    aget-object v3, v2, v1

    if-eqz v3, :cond_35

    array-length v3, v2

    invoke-static {v0, v3}, Ljava/util/ArrayDeque;->dec(II)I

    move-result v3

    aget-object v3, v2, v3

    if-eqz v3, :cond_35

    .line 853
    move v3, v1

    .local v3, "i":I
    if-gt v3, v0, :cond_22

    move v4, v0

    goto :goto_23

    :cond_22
    array-length v4, v2

    .line 855
    .local v4, "to":I
    :goto_23
    if-ge v3, v4, :cond_2f

    .line 856
    invoke-static {v2, v3}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 855
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 857
    :cond_2f
    if-ne v4, v0, :cond_32

    goto :goto_3b

    .line 854
    :cond_32
    const/4 v3, 0x0

    move v4, v0

    goto :goto_23

    .line 852
    .end local v3    # "i":I
    .end local v4    # "to":I
    :cond_35
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 860
    :cond_3b
    :goto_3b
    return-void

    .line 845
    .end local v0    # "end":I
    .end local v1    # "cursor":I
    .end local v2    # "es":[Ljava/lang/Object;
    :cond_3c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 863
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v0, v0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 865
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    if-gez v1, :cond_17

    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->this$0:Ljava/util/ArrayDeque;

    iget v1, v1, Ljava/util/ArrayDeque;->tail:I

    iput v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->this$0:Ljava/util/ArrayDeque;

    iget v1, v1, Ljava/util/ArrayDeque;->head:I

    iput v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->cursor:I

    .line 867
    :cond_17
    iget v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->cursor:I

    move v2, v1

    .local v2, "i":I
    iget v3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    if-ne v1, v3, :cond_20

    .line 868
    const/4 v1, 0x0

    return v1

    .line 869
    :cond_20
    invoke-static {v0, v2}, Ljava/util/ArrayDeque;->nonNullElementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 870
    .local v1, "e":Ljava/lang/Object;, "TE;"
    array-length v3, v0

    invoke-static {v2, v3}, Ljava/util/ArrayDeque;->inc(II)I

    move-result v3

    iput v3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->cursor:I

    .line 871
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 872
    const/4 v3, 0x1

    return v3
.end method

.method public blacklist trySplit()Ljava/util/ArrayDeque$DeqSpliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "TE;>.DeqSpliterator;"
        }
    .end annotation

    .line 836
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator;"
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v0, v0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 838
    .local v0, "es":[Ljava/lang/Object;
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v1

    iget v2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->cursor:I

    move v3, v2

    .local v3, "i":I
    array-length v4, v0

    invoke-static {v1, v2, v4}, Ljava/util/ArrayDeque;->sub(III)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    move v2, v1

    .local v2, "n":I
    if-gtz v1, :cond_17

    .line 839
    const/4 v1, 0x0

    goto :goto_25

    .line 840
    :cond_17
    new-instance v1, Ljava/util/ArrayDeque$DeqSpliterator;

    iget-object v4, p0, Ljava/util/ArrayDeque$DeqSpliterator;->this$0:Ljava/util/ArrayDeque;

    array-length v5, v0

    invoke-static {v3, v2, v5}, Ljava/util/ArrayDeque;->inc(III)I

    move-result v5

    iput v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->cursor:I

    invoke-direct {v1, v4, v3, v5}, Ljava/util/ArrayDeque$DeqSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    .line 838
    :goto_25
    return-object v1
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 808
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->trySplit()Ljava/util/ArrayDeque$DeqSpliterator;

    move-result-object v0

    return-object v0
.end method

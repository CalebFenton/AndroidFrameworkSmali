.class Ljava/util/ReverseOrderSortedSetView$Subset;
.super Ljava/util/AbstractSet;
.source "ReverseOrderSortedSetView.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ReverseOrderSortedSetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Subset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final blacklist cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final blacklist head:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final blacklist tail:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/ReverseOrderSortedSetView;


# direct methods
.method constructor blacklist <init>(Ljava/util/ReverseOrderSortedSetView;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/ReverseOrderSortedSetView;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 245
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    .local p2, "head":Ljava/lang/Object;, "TE;"
    .local p3, "tail":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->this$0:Ljava/util/ReverseOrderSortedSetView;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 246
    iput-object p2, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->head:Ljava/lang/Object;

    .line 247
    iput-object p3, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->tail:Ljava/lang/Object;

    .line 248
    invoke-virtual {p1}, Ljava/util/ReverseOrderSortedSetView;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 249
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    if-nez v0, :cond_13

    .line 250
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    .line 251
    :cond_13
    iput-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->cmp:Ljava/util/Comparator;

    .line 252
    return-void
.end method


# virtual methods
.method blacklist aboveHead(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 256
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->head:Ljava/lang/Object;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->cmp:Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->head:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 308
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedSetView$Subset;->aboveHead(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedSetView$Subset;->belowTail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 309
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->this$0:Ljava/util/ReverseOrderSortedSetView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 311
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method blacklist belowTail(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 261
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->tail:Ljava/lang/Object;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->cmp:Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->tail:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 331
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->this$0:Ljava/util/ReverseOrderSortedSetView;

    invoke-virtual {v0}, Ljava/util/ReverseOrderSortedSetView;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 335
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedSetView$Subset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 359
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    .local p1, "to":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedSetView$Subset;->aboveHead(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedSetView$Subset;->belowTail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 360
    new-instance v0, Ljava/util/ReverseOrderSortedSetView$Subset;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->this$0:Ljava/util/ReverseOrderSortedSetView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->head:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Ljava/util/ReverseOrderSortedSetView$Subset;-><init>(Ljava/util/ReverseOrderSortedSetView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 362
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 265
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    new-instance v0, Ljava/util/ReverseOrderSortedSetView$Subset$1;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedSetView$Subset$1;-><init>(Ljava/util/ReverseOrderSortedSetView$Subset;)V

    return-object v0
.end method

.method public whitelist test-api last()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 339
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedSetView$Subset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 340
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 342
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 343
    .local v1, "last":Ljava/lang/Object;, "TE;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    .line 345
    :cond_19
    return-object v1

    .line 341
    .end local v1    # "last":Ljava/lang/Object;, "TE;"
    :cond_1a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 316
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    move-object v0, p1

    .line 317
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Ljava/util/ReverseOrderSortedSetView$Subset;->aboveHead(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Ljava/util/ReverseOrderSortedSetView$Subset;->belowTail(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 318
    iget-object v1, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->this$0:Ljava/util/ReverseOrderSortedSetView;

    iget-object v1, v1, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 320
    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api size()I
    .registers 4

    .line 324
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    const/4 v0, 0x0

    .line 325
    .local v0, "sz":I
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedSetView$Subset;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 326
    .local v2, "e":Ljava/lang/Object;, "TE;"
    nop

    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 327
    :cond_13
    return v0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 349
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    .local p1, "from":Ljava/lang/Object;, "TE;"
    .local p2, "to":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedSetView$Subset;->aboveHead(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedSetView$Subset;->belowTail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 350
    invoke-virtual {p0, p2}, Ljava/util/ReverseOrderSortedSetView$Subset;->aboveHead(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0, p2}, Ljava/util/ReverseOrderSortedSetView$Subset;->belowTail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->cmp:Ljava/util/Comparator;

    .line 351
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2b

    .line 352
    new-instance v0, Ljava/util/ReverseOrderSortedSetView$Subset;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->this$0:Ljava/util/ReverseOrderSortedSetView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Ljava/util/ReverseOrderSortedSetView$Subset;-><init>(Ljava/util/ReverseOrderSortedSetView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 354
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 366
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset;, "Ljava/util/ReverseOrderSortedSetView<TE;>.Subset;"
    .local p1, "from":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedSetView$Subset;->aboveHead(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedSetView$Subset;->belowTail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 367
    new-instance v0, Ljava/util/ReverseOrderSortedSetView$Subset;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->this$0:Ljava/util/ReverseOrderSortedSetView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/ReverseOrderSortedSetView$Subset;->tail:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/ReverseOrderSortedSetView$Subset;-><init>(Ljava/util/ReverseOrderSortedSetView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 369
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

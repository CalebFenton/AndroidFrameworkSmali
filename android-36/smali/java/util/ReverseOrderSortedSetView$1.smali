.class Ljava/util/ReverseOrderSortedSetView$1;
.super Ljava/lang/Object;
.source "ReverseOrderSortedSetView.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ReverseOrderSortedSetView;->descendingIterator(Ljava/util/SortedSet;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist prev:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field blacklist root:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$set:Ljava/util/SortedSet;

.field blacklist view:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/SortedSet;)V
    .registers 2

    .line 207
    iput-object p1, p0, Ljava/util/ReverseOrderSortedSetView$1;->val$set:Ljava/util/SortedSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iget-object p1, p0, Ljava/util/ReverseOrderSortedSetView$1;->val$set:Ljava/util/SortedSet;

    iput-object p1, p0, Ljava/util/ReverseOrderSortedSetView$1;->root:Ljava/util/SortedSet;

    .line 209
    iget-object p1, p0, Ljava/util/ReverseOrderSortedSetView$1;->val$set:Ljava/util/SortedSet;

    iput-object p1, p0, Ljava/util/ReverseOrderSortedSetView$1;->view:Ljava/util/SortedSet;

    .line 210
    const/4 p1, 0x0

    iput-object p1, p0, Ljava/util/ReverseOrderSortedSetView$1;->prev:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 213
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$1;->view:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$1;->view:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 219
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$1;->view:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ReverseOrderSortedSetView$1;->prev:Ljava/lang/Object;

    .line 220
    .local v0, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Ljava/util/ReverseOrderSortedSetView$1;->root:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    iput-object v1, p0, Ljava/util/ReverseOrderSortedSetView$1;->view:Ljava/util/SortedSet;

    .line 221
    return-object v0

    .line 218
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 225
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$1;->prev:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 228
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$1;->root:Ljava/util/SortedSet;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedSetView$1;->prev:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ReverseOrderSortedSetView$1;->prev:Ljava/lang/Object;

    .line 231
    return-void

    .line 226
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

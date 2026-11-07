.class Ljava/util/ReverseOrderSortedSetView$Subset$1;
.super Ljava/lang/Object;
.source "ReverseOrderSortedSetView.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ReverseOrderSortedSetView$Subset;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field blacklist cache:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field blacklist dead:Z

.field blacklist it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$1:Ljava/util/ReverseOrderSortedSetView$Subset;


# direct methods
.method constructor blacklist <init>(Ljava/util/ReverseOrderSortedSetView$Subset;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/ReverseOrderSortedSetView$Subset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 265
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset$1;, "Ljava/util/ReverseOrderSortedSetView$Subset$1;"
    iput-object p1, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->this$1:Ljava/util/ReverseOrderSortedSetView$Subset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->cache:Ljava/lang/Object;

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->dead:Z

    .line 268
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->this$1:Ljava/util/ReverseOrderSortedSetView$Subset;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedSetView$Subset;->this$0:Ljava/util/ReverseOrderSortedSetView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/ReverseOrderSortedSetView;->descendingIterator(Ljava/util/SortedSet;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 5

    .line 271
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset$1;, "Ljava/util/ReverseOrderSortedSetView$Subset$1;"
    iget-boolean v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->dead:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 272
    return v1

    .line 274
    :cond_6
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->cache:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 275
    return v2

    .line 277
    :cond_c
    :goto_c
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 278
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 280
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->this$1:Ljava/util/ReverseOrderSortedSetView$Subset;

    invoke-virtual {v3, v0}, Ljava/util/ReverseOrderSortedSetView$Subset;->aboveHead(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 281
    goto :goto_c

    .line 283
    :cond_23
    iget-object v3, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->this$1:Ljava/util/ReverseOrderSortedSetView$Subset;

    invoke-virtual {v3, v0}, Ljava/util/ReverseOrderSortedSetView$Subset;->belowTail(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 284
    iput-boolean v2, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->dead:Z

    .line 285
    return v1

    .line 288
    :cond_2e
    iput-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->cache:Ljava/lang/Object;

    .line 289
    return v2

    .line 292
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_31
    return v1
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 296
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView$Subset$1;, "Ljava/util/ReverseOrderSortedSetView$Subset$1;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedSetView$Subset$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 297
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->cache:Ljava/lang/Object;

    .line 298
    .local v0, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/ReverseOrderSortedSetView$Subset$1;->cache:Ljava/lang/Object;

    .line 299
    return-object v0

    .line 301
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

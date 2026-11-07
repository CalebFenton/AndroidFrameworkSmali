.class final Ljava/util/ImmutableCollections$ListItr;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist cursor:I

.field private final blacklist isListIterator:Z
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final blacklist list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final blacklist size:I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/List;I)V
    .registers 4
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;I)V"
        }
    .end annotation

    .line 364
    .local p0, "this":Ljava/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Ljava/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    .line 366
    iput p2, p0, Ljava/util/ImmutableCollections$ListItr;->size:I

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ImmutableCollections$ListItr;->cursor:I

    .line 368
    iput-boolean v0, p0, Ljava/util/ImmutableCollections$ListItr;->isListIterator:Z

    .line 369
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;II)V
    .registers 5
    .param p2, "size"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;II)V"
        }
    .end annotation

    .line 371
    .local p0, "this":Ljava/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Ljava/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    .line 373
    iput p2, p0, Ljava/util/ImmutableCollections$ListItr;->size:I

    .line 374
    iput p3, p0, Ljava/util/ImmutableCollections$ListItr;->cursor:I

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/ImmutableCollections$ListItr;->isListIterator:Z

    .line 376
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 437
    .local p0, "this":Ljava/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 379
    .local p0, "this":Ljava/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$ListItr;->cursor:I

    iget v1, p0, Ljava/util/ImmutableCollections$ListItr;->size:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 398
    .local p0, "this":Ljava/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Ljava/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_c

    .line 401
    iget v0, p0, Ljava/util/ImmutableCollections$ListItr;->cursor:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 399
    :cond_c
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 384
    .local p0, "this":Ljava/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    :try_start_0
    iget v0, p0, Ljava/util/ImmutableCollections$ListItr;->cursor:I

    .line 385
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 386
    .local v1, "next":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    .line 387
    return-object v1

    .line 388
    .end local v0    # "i":I
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :catch_d
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api nextIndex()I
    .registers 2

    .line 419
    .local p0, "this":Ljava/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Ljava/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_7

    .line 422
    iget v0, p0, Ljava/util/ImmutableCollections$ListItr;->cursor:I

    return v0

    .line 420
    :cond_7
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 405
    .local p0, "this":Ljava/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Ljava/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_18

    .line 409
    :try_start_4
    iget v0, p0, Ljava/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 410
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 411
    .local v1, "previous":Ljava/lang/Object;, "TE;"
    iput v0, p0, Ljava/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_10} :catch_11

    .line 412
    return-object v1

    .line 413
    .end local v0    # "i":I
    .end local v1    # "previous":Ljava/lang/Object;, "TE;"
    :catch_11
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 406
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_18
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 426
    .local p0, "this":Ljava/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Ljava/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_9

    .line 429
    iget v0, p0, Ljava/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 427
    :cond_9
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 394
    .local p0, "this":Ljava/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 433
    .local p0, "this":Ljava/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

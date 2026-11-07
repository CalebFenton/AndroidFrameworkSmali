.class Ljava/util/Collections$CheckedCollection;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x15e96dfd18e6cc6fL


# instance fields
.field final greylist-max-o c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field

.field final greylist-max-o type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist-max-o zeroLengthElementArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Collection;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 3428
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3429
    const-string v0, "c"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    .line 3430
    const-string v0, "type"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    .line 3431
    return-void
.end method

.method private greylist-max-o badElementMsg(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 3424
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to insert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " element into collection with element type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o zeroLengthElementArray()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    .line 3473
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    goto :goto_f

    .line 3474
    :cond_7
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Collections;->zeroLengthArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Collections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    .line 3473
    :goto_f
    return-object v0
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 3467
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedCollection;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 3505
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedCollection;->checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 3481
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :try_start_0
    invoke-direct {p0}, Ljava/util/Collections$CheckedCollection;->zeroLengthElementArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3482
    .local v0, "z":[Ljava/lang/Object;, "[TE;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 3484
    .local v1, "a":[Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1c

    .line 3485
    array-length v2, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_1b} :catch_1d

    move-object v1, v2

    .line 3495
    .end local v0    # "z":[Ljava/lang/Object;, "[TE;"
    :cond_1c
    goto :goto_34

    .line 3486
    .end local v1    # "a":[Ljava/lang/Object;
    :catch_1d
    move-exception v0

    .line 3492
    .local v0, "ignore":Ljava/lang/ArrayStoreException;
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 3493
    .restart local v1    # "a":[Ljava/lang/Object;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_34

    aget-object v4, v1, v3

    .line 3494
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Ljava/util/Collections$CheckedCollection;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3493
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 3497
    .end local v0    # "ignore":Ljava/lang/ArrayStoreException;
    :cond_34
    :goto_34
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 3441
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 3435
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 3444
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 3510
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 3434
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 3456
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3457
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    new-instance v1, Ljava/util/Collections$CheckedCollection$1;

    invoke-direct {v1, p0, v0}, Ljava/util/Collections$CheckedCollection$1;-><init>(Ljava/util/Collections$CheckedCollection;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public whitelist test-api parallelStream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 3520
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 3440
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 3447
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 3513
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 3450
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 3433
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 3516
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 3518
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 3436
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 3438
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "f":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 3437
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 3439
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o typeCheck(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 3418
    .local p0, "this":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    if-eqz p1, :cond_15

    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    .line 3419
    :cond_b
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Ljava/util/Collections$CheckedCollection;->badElementMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3420
    :cond_15
    :goto_15
    return-object p1
.end method

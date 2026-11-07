.class public abstract Ljava/util/concurrent/CountedCompleter;
.super Ljava/util/concurrent/ForkJoinTask;
.source "CountedCompleter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o PENDING:J

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;

.field private static final whitelist serialVersionUID:J = 0x489d68f7081983ceL


# instance fields
.field final greylist-max-o completer:Ljava/util/concurrent/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation
.end field

.field volatile greylist-max-o pending:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 789
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/CountedCompleter;->U:Ljdk/internal/misc/Unsafe;

    .line 790
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/util/concurrent/CountedCompleter;

    const-string v2, "pending"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    .line 791
    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 462
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .line 464
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/util/concurrent/CountedCompleter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 454
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "completer":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 455
    iput-object p1, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .line 456
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/util/concurrent/CountedCompleter;I)V
    .registers 3
    .param p2, "initialPendingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;I)V"
        }
    .end annotation

    .line 443
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "completer":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 444
    iput-object p1, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .line 445
    iput p2, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .line 446
    return-void
.end method


# virtual methods
.method public final whitelist test-api addToPendingCount(I)V
    .registers 5
    .param p1, "delta"    # I

    .line 542
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    .line 543
    return-void
.end method

.method public final whitelist test-api compareAndSetPendingCount(II)Z
    .registers 9
    .param p1, "expected"    # I
    .param p2, "count"    # I

    .line 554
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    .end local p1    # "expected":I
    .end local p2    # "count":I
    .local v4, "expected":I
    .local v5, "count":I
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api complete(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 653
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "rawResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CountedCompleter;->setRawResult(Ljava/lang/Object;)V

    .line 654
    invoke-virtual {p0, p0}, Ljava/util/concurrent/CountedCompleter;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 655
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 656
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_11

    .line 657
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 658
    :cond_11
    return-void
.end method

.method public abstract whitelist test-api compute()V
.end method

.method public final whitelist test-api decrementPendingCountUnlessZero()I
    .registers 3

    .line 570
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    nop

    :cond_1
    iget v0, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    move v1, v0

    .local v1, "c":I
    if-eqz v0, :cond_e

    add-int/lit8 v0, v1, -0x1

    .line 571
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/CountedCompleter;->weakCompareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    :cond_e
    return v1
.end method

.method protected final whitelist test-api exec()Z
    .registers 2

    .line 754
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->compute()V

    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api firstComplete()Ljava/util/concurrent/CountedCompleter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 670
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    nop

    :cond_1
    iget v0, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    move v1, v0

    .local v1, "c":I
    if-nez v0, :cond_7

    .line 671
    return-object p0

    .line 672
    :cond_7
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/CountedCompleter;->weakCompareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api getCompleter()Ljava/util/concurrent/CountedCompleter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 515
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    return-object v0
.end method

.method public final whitelist test-api getPendingCount()I
    .registers 2

    .line 524
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget v0, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    return v0
.end method

.method public whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 768
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api getRoot()Ljava/util/concurrent/CountedCompleter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 582
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 583
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_1
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v1, :cond_8

    .line 584
    move-object v0, v2

    goto :goto_1

    .line 585
    :cond_8
    return-object v0
.end method

.method public final whitelist test-api helpComplete(I)V
    .registers 5
    .param p1, "maxTasks"    # I

    .line 728
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move v2, v0

    .local v2, "owned":Z
    if-eqz v0, :cond_10

    .line 729
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_14

    .line 731
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_10
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .line 732
    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_14
    if-eqz v0, :cond_1b

    if-lez p1, :cond_1b

    .line 733
    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->helpComplete(Ljava/util/concurrent/ForkJoinTask;ZI)I

    .line 734
    :cond_1b
    return-void
.end method

.method public final whitelist test-api nextComplete()Ljava/util/concurrent/CountedCompleter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 696
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_a

    .line 697
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    return-object v0

    .line 699
    :cond_a
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 700
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 484
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    return-void
.end method

.method public whitelist test-api onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z
    .registers 4
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)Z"
        }
    .end annotation

    .line 505
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p2, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api propagateCompletion()V
    .registers 5

    .line 619
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 621
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_1
    iget v1, v0, Ljava/util/concurrent/CountedCompleter;->pending:I

    move v2, v1

    .local v2, "c":I
    if-nez v1, :cond_10

    .line 622
    move-object v1, v0

    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget-object v3, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v0, v3

    if-nez v3, :cond_1

    .line 623
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 624
    return-void

    .line 627
    .end local v1    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_10
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/CountedCompleter;->weakCompareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    return-void
.end method

.method public final whitelist test-api quietlyCompleteRoot()V
    .registers 4

    .line 708
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 709
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_1
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-nez v1, :cond_a

    .line 710
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 711
    return-void

    .line 713
    :cond_a
    move-object v0, v2

    goto :goto_1
.end method

.method public final whitelist test-api setPendingCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 533
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iput p1, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .line 534
    return-void
.end method

.method protected whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 778
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final whitelist test-api tryComplete()V
    .registers 5

    .line 595
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v1, v0

    .line 597
    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_2
    iget v2, v0, Ljava/util/concurrent/CountedCompleter;->pending:I

    move v3, v2

    .local v3, "c":I
    if-nez v2, :cond_14

    .line 598
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountedCompleter;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 599
    move-object v1, v0

    iget-object v2, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v0, v2

    if-nez v2, :cond_2

    .line 600
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 601
    return-void

    .line 604
    :cond_14
    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/CountedCompleter;->weakCompareAndSetPendingCount(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 605
    return-void
.end method

.method final blacklist trySetException(Ljava/lang/Throwable;)I
    .registers 5
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 742
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v1, v0

    .line 743
    .local v1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CountedCompleter;->trySetThrown(Ljava/lang/Throwable;)I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/CountedCompleter;->isExceptionalStatus(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 744
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/CountedCompleter;->onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object v1, v0

    iget-object v2, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v0, v2

    if-eqz v2, :cond_1c

    iget v2, v0, Ljava/util/concurrent/CountedCompleter;->status:I

    if-gez v2, :cond_2

    .line 746
    :cond_1c
    iget v2, p0, Ljava/util/concurrent/CountedCompleter;->status:I

    return v2
.end method

.method final blacklist weakCompareAndSetPendingCount(II)Z
    .registers 9
    .param p1, "expected"    # I
    .param p2, "count"    # I

    .line 559
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    .end local p1    # "expected":I
    .end local p2    # "count":I
    .local v4, "expected":I
    .local v5, "count":I
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1
.end method

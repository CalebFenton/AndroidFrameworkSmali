.class public abstract Ljava/util/concurrent/CountedCompleter;
.super Ljava/util/concurrent/ForkJoinTask;
.source "CountedCompleter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final PENDING:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x489d68f7081983ceL


# instance fields
.field final completer:Ljava/util/concurrent/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation
.end field

.field volatile pending:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 713
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    #@6
    .line 714
    sget-object v1, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    #@8
    .line 715
    const-class v2, Ljava/util/concurrent/CountedCompleter;

    #@a
    const-string/jumbo v3, "pending"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 714
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 383
    return-void

    #@18
    .line 716
    :catch_0
    move-exception v0

    #@19
    .line 717
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 418
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    .line 419
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@6
    .line 418
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 410
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "completer":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    .line 411
    iput-object p1, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@5
    .line 410
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/CountedCompleter;I)V
    .locals 0
    .param p2, "initialPendingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 398
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "completer":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    .line 400
    iput-object p1, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@5
    .line 401
    iput p2, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    #@7
    .line 399
    return-void
.end method


# virtual methods
.method public final addToPendingCount(I)V
    .locals 6
    .param p1, "delta"    # I

    #@0
    .prologue
    .line 499
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :cond_0
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    #@4
    iget v4, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    #@6
    .local v4, "c":I
    add-int v5, v4, p1

    #@8
    move-object v1, p0

    #@9
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 497
    return-void
.end method

.method public final compareAndSetPendingCount(II)Z
    .locals 6
    .param p1, "expected"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 511
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    #@4
    move-object v1, p0

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 605
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "rawResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CountedCompleter;->setRawResult(Ljava/lang/Object;)V

    #@3
    .line 606
    invoke-virtual {p0, p0}, Ljava/util/concurrent/CountedCompleter;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    #@6
    .line 607
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    #@9
    .line 608
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@b
    .local v0, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_0

    #@d
    .line 609
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    #@10
    .line 603
    :cond_0
    return-void
.end method

.method public abstract compute()V
.end method

.method public final decrementPendingCountUnlessZero()I
    .locals 6

    #@0
    .prologue
    .line 522
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    #@2
    .local v4, "c":I
    if-eqz v4, :cond_1

    #@4
    .line 523
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    #@8
    add-int/lit8 v5, v4, -0x1

    #@a
    move-object v1, p0

    #@b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 524
    :cond_1
    return v4
.end method

.method protected final exec()Z
    .locals 1

    #@0
    .prologue
    .line 684
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->compute()V

    #@3
    .line 685
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public final firstComplete()Ljava/util/concurrent/CountedCompleter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 622
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    #@2
    .local v4, "c":I
    if-nez v4, :cond_1

    #@4
    .line 623
    return-object p0

    #@5
    .line 624
    :cond_1
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    #@7
    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    #@9
    add-int/lit8 v5, v4, -0x1

    #@b
    move-object v1, p0

    #@c
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 625
    const/4 v0, 0x0

    #@13
    return-object v0
.end method

.method public final getCompleter()Ljava/util/concurrent/CountedCompleter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 471
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@2
    return-object v0
.end method

.method public final getPendingCount()I
    .locals 1

    #@0
    .prologue
    .line 480
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget v0, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    #@2
    return v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 697
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getRoot()Ljava/util/concurrent/CountedCompleter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 534
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    #@1
    .line 535
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@3
    .local v1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v1, :cond_0

    #@5
    .line 536
    move-object v0, v1

    #@6
    goto :goto_0

    #@7
    .line 537
    :cond_0
    return-object v0
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 673
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    #@1
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v1, v0

    #@2
    .line 674
    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_0
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/CountedCompleter;->onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 675
    move-object v1, v0

    #@9
    iget-object v0, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget v2, v0, Ljava/util/concurrent/CountedCompleter;->status:I

    #@f
    if-ltz v2, :cond_1

    #@11
    .line 676
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CountedCompleter;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    #@14
    move-result v2

    #@15
    const/high16 v3, -0x80000000

    #@17
    if-eq v2, v3, :cond_0

    #@19
    .line 672
    :cond_1
    return-void
.end method

.method public final nextComplete()Ljava/util/concurrent/CountedCompleter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 648
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@3
    .local v0, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_0

    #@5
    .line 649
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 651
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    #@d
    .line 652
    return-object v1
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 439
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    return-void
.end method

.method public onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 461
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p2, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final propagateCompletion()V
    .locals 7

    #@0
    .prologue
    .line 571
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v1, p0

    #@1
    .local v1, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v6, v1

    #@2
    .line 573
    .local v6, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_0
    iget v4, v1, Ljava/util/concurrent/CountedCompleter;->pending:I

    #@4
    .local v4, "c":I
    if-nez v4, :cond_1

    #@6
    .line 574
    move-object v6, v1

    #@7
    iget-object v1, v1, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 575
    invoke-virtual {v6}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    #@e
    .line 576
    return-void

    #@f
    .line 579
    :cond_1
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    #@11
    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    #@13
    add-int/lit8 v5, v4, -0x1

    #@15
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 580
    return-void
.end method

.method public final quietlyCompleteRoot()V
    .locals 2

    #@0
    .prologue
    .line 660
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    #@1
    .line 661
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@3
    .local v1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-nez v1, :cond_0

    #@5
    .line 662
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    #@8
    .line 663
    return-void

    #@9
    .line 665
    :cond_0
    move-object v0, v1

    #@a
    goto :goto_0
.end method

.method public final setPendingCount(I)V
    .locals 0
    .param p1, "count"    # I

    #@0
    .prologue
    .line 489
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iput p1, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    #@2
    .line 488
    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 706
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final tryComplete()V
    .locals 7

    #@0
    .prologue
    .line 547
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v1, p0

    #@1
    .local v1, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v6, v1

    #@2
    .line 549
    .local v6, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_0
    iget v4, v1, Ljava/util/concurrent/CountedCompleter;->pending:I

    #@4
    .local v4, "c":I
    if-nez v4, :cond_1

    #@6
    .line 550
    invoke-virtual {v1, v6}, Ljava/util/concurrent/CountedCompleter;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    #@9
    .line 551
    move-object v6, v1

    #@a
    iget-object v1, v1, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 552
    invoke-virtual {v6}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    #@11
    .line 553
    return-void

    #@12
    .line 556
    :cond_1
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    #@14
    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    #@16
    add-int/lit8 v5, v4, -0x1

    #@18
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 557
    return-void
.end method

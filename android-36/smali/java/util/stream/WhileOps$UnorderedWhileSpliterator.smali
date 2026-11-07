.class abstract Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;
.super Ljava/lang/Object;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UnorderedWhileSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;,
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;,
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;,
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final blacklist CANCEL_CHECK_COUNT:I = 0x3f


# instance fields
.field final blacklist cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field blacklist count:I

.field final blacklist noSplitting:Z

.field final blacklist s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field blacklist takeOrDrop:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<",
            "TT;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 702
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    .local p2, "parent":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    .line 703
    iput-object p1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava/util/Spliterator;

    .line 704
    iget-boolean v0, p2, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    .line 705
    iget-object v0, p2, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 706
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator;Z)V
    .registers 4
    .param p2, "noSplitting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Z)V"
        }
    .end annotation

    .line 696
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    .line 697
    iput-object p1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava/util/Spliterator;

    .line 698
    iput-boolean p2, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    .line 699
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 700
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 716
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4041

    return v0
.end method

.method blacklist checkCancelOnCount()Z
    .registers 2

    .line 737
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->count:I

    if-nez v0, :cond_f

    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 710
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 726
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExactSizeIfKnown()J
    .registers 3

    .line 721
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method abstract blacklist makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            ")TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 732
    .local p0, "this":Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 733
    .local v0, "ls":Ljava/util/Spliterator;, "TT_SPLITR;"
    :goto_d
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    :cond_13
    return-object v1
.end method

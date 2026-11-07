.class abstract Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UnorderedSliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist CHUNK_SIZE:I = 0x80


# instance fields
.field protected final blacklist chunkSize:I

.field private final blacklist permits:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final blacklist s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field private final blacklist skipThreshold:J

.field protected final blacklist unlimited:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 906
    const-class v0, Ljava/util/stream/StreamSpliterators;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator;JJ)V
    .registers 12
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .line 916
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    .line 918
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    iput-boolean v2, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    .line 919
    cmp-long v2, p4, v0

    if-ltz v2, :cond_16

    move-wide v2, p4

    goto :goto_17

    :cond_16
    move-wide v2, v0

    :goto_17
    iput-wide v2, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    .line 920
    cmp-long v2, p4, v0

    if-ltz v2, :cond_30

    add-long v2, p2, p4

    .line 921
    invoke-static {}, Ljava/util/stream/AbstractTask;->getLeafTarget()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 920
    const-wide/16 v4, 0x80

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_32

    .line 921
    :cond_30
    const/16 v2, 0x80

    :goto_32
    iput v2, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    .line 922
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    cmp-long v0, p4, v0

    if-ltz v0, :cond_3d

    add-long v0, p2, p4

    goto :goto_3e

    :cond_3d
    move-wide v0, p2

    :goto_3e
    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 923
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
            "TT;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 926
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    .local p2, "parent":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    .line 928
    iget-boolean v0, p2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    .line 929
    iget-object v0, p2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 930
    iget-wide v0, p2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    .line 931
    iget v0, p2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    iput v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    .line 932
    return-void
.end method


# virtual methods
.method protected final blacklist acquirePermits(J)J
    .registers 12
    .param p1, "numElements"    # J

    .line 952
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    nop

    .line 954
    :cond_1
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 955
    .local v0, "remainingPermits":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    .line 956
    iget-boolean v4, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v4, :cond_12

    move-wide v2, p1

    :cond_12
    return-wide v2

    .line 957
    :cond_13
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 958
    .local v4, "grabbing":J
    cmp-long v6, v4, v2

    if-lez v6, :cond_25

    iget-object v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v7, v0, v4

    .line 959
    invoke-virtual {v6, v0, v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 961
    :cond_25
    iget-boolean v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v6, :cond_30

    .line 962
    sub-long v6, p1, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    .line 963
    :cond_30
    iget-wide v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_41

    .line 964
    iget-wide v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    sub-long v6, v0, v6

    sub-long v6, v4, v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    .line 966
    :cond_41
    return-wide v4
.end method

.method public final whitelist test-api characteristics()I
    .registers 2

    .line 995
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4051

    return v0
.end method

.method public final whitelist test-api estimateSize()J
    .registers 3

    .line 991
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract blacklist makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            ")TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method protected final blacklist permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .registers 5

    .line 973
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 974
    sget-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-object v0

    .line 976
    :cond_f
    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v0, :cond_16

    sget-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->UNLIMITED:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    goto :goto_18

    :cond_16
    sget-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    :goto_18
    return-object v0
.end method

.method public final whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 981
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 982
    return-object v1

    .line 984
    :cond_e
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 985
    .local v0, "split":Ljava/util/Spliterator;, "TT_SPLITR;"
    if-nez v0, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {p0, v0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    :goto_1b
    return-object v1
.end method

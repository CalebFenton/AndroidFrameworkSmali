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
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final CHUNK_SIZE:I = 0x80


# instance fields
.field private final permits:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field private final skipThreshold:J

.field protected final unlimited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->-assertionsDisabled:Z

    #@b
    .line 902
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Spliterator;JJ)V
    .locals 4
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    const-wide/16 v2, 0x0

    #@2
    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 912
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    #@7
    .line 913
    cmp-long v0, p4, v2

    #@9
    if-gez v0, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    #@e
    .line 914
    cmp-long v0, p4, v2

    #@10
    if-ltz v0, :cond_2

    #@12
    move-wide v0, p4

    #@13
    :goto_1
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    #@15
    .line 915
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@17
    cmp-long v1, p4, v2

    #@19
    if-ltz v1, :cond_0

    #@1b
    add-long/2addr p2, p4

    #@1c
    .end local p2    # "skip":J
    :cond_0
    invoke-direct {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@1f
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    #@21
    .line 911
    return-void

    #@22
    .line 913
    .restart local p2    # "skip":J
    :cond_1
    const/4 v0, 0x0

    #@23
    goto :goto_0

    #@24
    :cond_2
    move-wide v0, v2

    #@25
    .line 914
    goto :goto_1
.end method

.method constructor <init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator",
            "<TT;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 918
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    .local p2, "parent":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 920
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    #@5
    .line 921
    iget-boolean v0, p2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    #@7
    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    #@9
    .line 922
    iget-object v0, p2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    #@b
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    #@d
    .line 923
    iget-wide v0, p2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    #@f
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    #@11
    .line 919
    return-void
.end method


# virtual methods
.method protected final acquirePermits(J)J
    .locals 11
    .param p1, "numElements"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    const-wide/16 v4, 0x0

    #@2
    .line 944
    sget-boolean v6, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->-assertionsDisabled:Z

    #@4
    if-nez v6, :cond_1

    #@6
    cmp-long v6, p1, v4

    #@8
    if-lez v6, :cond_0

    #@a
    const/4 v6, 0x1

    #@b
    :goto_0
    if-nez v6, :cond_1

    #@d
    new-instance v4, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v4

    #@13
    :cond_0
    const/4 v6, 0x0

    #@14
    goto :goto_0

    #@15
    .line 946
    :cond_1
    iget-object v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    #@17
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@1a
    move-result-wide v2

    #@1b
    .line 947
    .local v2, "remainingPermits":J
    cmp-long v6, v2, v4

    #@1d
    if-nez v6, :cond_3

    #@1f
    .line 948
    iget-boolean v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    #@21
    if-eqz v6, :cond_2

    #@23
    .end local p1    # "numElements":J
    :goto_1
    return-wide p1

    #@24
    .restart local p1    # "numElements":J
    :cond_2
    move-wide p1, v4

    #@25
    goto :goto_1

    #@26
    .line 949
    :cond_3
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    #@29
    move-result-wide v0

    #@2a
    .line 950
    .local v0, "grabbing":J
    cmp-long v6, v0, v4

    #@2c
    if-lez v6, :cond_4

    #@2e
    .line 951
    iget-object v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    #@30
    sub-long v8, v2, v0

    #@32
    invoke-virtual {v6, v2, v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_1

    #@38
    .line 953
    :cond_4
    iget-boolean v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    #@3a
    if-eqz v6, :cond_5

    #@3c
    .line 954
    sub-long v6, p1, v0

    #@3e
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@41
    move-result-wide v4

    #@42
    return-wide v4

    #@43
    .line 955
    :cond_5
    iget-wide v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    #@45
    cmp-long v6, v2, v6

    #@47
    if-lez v6, :cond_6

    #@49
    .line 956
    iget-wide v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    #@4b
    sub-long v6, v2, v6

    #@4d
    sub-long v6, v0, v6

    #@4f
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@52
    move-result-wide v4

    #@53
    return-wide v4

    #@54
    .line 958
    :cond_6
    return-wide v0
.end method

.method public final characteristics()I
    .locals 1

    #@0
    .prologue
    .line 987
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    #@2
    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    #@5
    move-result v0

    #@6
    and-int/lit16 v0, v0, -0x4051

    #@8
    return v0
.end method

.method public final estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 983
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    #@2
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method protected abstract makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            ")TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method protected final permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .locals 4

    #@0
    .prologue
    .line 965
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-lez v0, :cond_0

    #@c
    .line 966
    sget-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@e
    return-object v0

    #@f
    .line 968
    :cond_0
    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    sget-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->UNLIMITED:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@15
    :goto_0
    return-object v0

    #@16
    :cond_1
    sget-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    #@18
    goto :goto_0
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    const/4 v1, 0x0

    #@1
    .line 973
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@6
    move-result-wide v2

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v2, v2, v4

    #@b
    if-nez v2, :cond_0

    #@d
    .line 974
    return-object v1

    #@e
    .line 976
    :cond_0
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    #@10
    invoke-interface {v2}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    #@13
    move-result-object v0

    #@14
    .line 977
    .local v0, "split":Ljava/util/Spliterator;, "TT_SPLITR;"
    if-nez v0, :cond_1

    #@16
    :goto_0
    return-object v1

    #@17
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    #@1a
    move-result-object v1

    #@1b
    goto :goto_0
.end method

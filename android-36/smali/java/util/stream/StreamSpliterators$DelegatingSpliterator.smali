.class Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelegatingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;,
        Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;,
        Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;,
        Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
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


# instance fields
.field private blacklist s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field private final blacklist supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "+TT_SP",
            "LITR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 505
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT_SPLITR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->supplier:Ljava/util/function/Supplier;

    .line 507
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 539
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 534
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 529
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 530
    return-void
.end method

.method blacklist get()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 510
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljava/util/Spliterator;

    if-nez v0, :cond_e

    .line 511
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator;

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljava/util/Spliterator;

    .line 513
    :cond_e
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljava/util/Spliterator;

    return-object v0
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

    .line 544
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExactSizeIfKnown()J
    .registers 3

    .line 549
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 554
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 524
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 519
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

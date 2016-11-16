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
        Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;,
        Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;,
        Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field private final supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<+TT_SP",
            "LITR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 507
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT_SPLITR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 508
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->supplier:Ljava/util/function/Supplier;

    #@5
    .line 507
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 541
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 536
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 531
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@7
    .line 530
    return-void
.end method

.method get()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    #@0
    .prologue
    .line 512
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljava/util/Spliterator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 513
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->supplier:Ljava/util/function/Supplier;

    #@6
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/Spliterator;

    #@c
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljava/util/Spliterator;

    #@e
    .line 515
    :cond_0
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljava/util/Spliterator;

    #@10
    return-object v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 546
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    #@0
    .prologue
    .line 551
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 556
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "["

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "]"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 526
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    #@0
    .prologue
    .line 521
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<TT;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.class abstract Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/IntConsumer;
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;,
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "Ljava/lang/Integer;",
        "Ljava/util/Spliterator$OfInt;",
        ">;",
        "Ljava/util/function/IntConsumer;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final blacklist p:Ljava/util/function/IntPredicate;

.field blacklist t:I


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "parent"    # Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;

    .line 857
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 858
    iget-object v0, p2, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava/util/function/IntPredicate;

    iput-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava/util/function/IntPredicate;

    .line 859
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/IntPredicate;

    .line 852
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava/util/Spliterator;Z)V

    .line 853
    iput-object p3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava/util/function/IntPredicate;

    .line 854
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 3
    .param p1, "t"    # I

    .line 863
    iget v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->count:I

    .line 864
    iput p1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->t:I

    .line 865
    return-void
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 847
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 847
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method

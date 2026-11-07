.class abstract Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;,
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "Ljava/lang/Double;",
        "Ljava/util/Spliterator$OfDouble;",
        ">;",
        "Ljava/util/function/DoubleConsumer;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field final blacklist p:Ljava/util/function/DoublePredicate;

.field blacklist t:D


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "parent"    # Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;

    .line 1067
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 1068
    iget-object v0, p2, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava/util/function/DoublePredicate;

    iput-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava/util/function/DoublePredicate;

    .line 1069
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/DoublePredicate;

    .line 1062
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava/util/Spliterator;Z)V

    .line 1063
    iput-object p3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava/util/function/DoublePredicate;

    .line 1064
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 4
    .param p1, "t"    # D

    .line 1073
    iget v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->count:I

    .line 1074
    iput-wide p1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->t:D

    .line 1075
    return-void
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 1057
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1057
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method

.class abstract Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.super Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/LongConsumer;
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;,
        Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "Ljava/lang/Long;",
        "Ljava/util/Spliterator$OfLong;",
        ">;",
        "Ljava/util/function/LongConsumer;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field final blacklist p:Ljava/util/function/LongPredicate;

.field blacklist t:J


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfLong;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "parent"    # Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;

    .line 962
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 963
    iget-object v0, p2, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava/util/function/LongPredicate;

    iput-object v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava/util/function/LongPredicate;

    .line 964
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V
    .registers 4
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava/util/function/LongPredicate;

    .line 957
    invoke-direct {p0, p1, p2}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava/util/Spliterator;Z)V

    .line 958
    iput-object p3, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava/util/function/LongPredicate;

    .line 959
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 4
    .param p1, "t"    # J

    .line 968
    iget v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->count:I

    .line 969
    iput-wide p1, p0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->t:J

    .line 970
    return-void
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 952
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 952
    invoke-super {p0}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method

.class Ljava/util/stream/WhileOps$3Op$1OpSink;
.super Ljava/util/stream/Sink$ChainedLong;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/stream/WhileOps$DropWhileSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/WhileOps$3Op;->opWrapSink(Ljava/util/stream/Sink;Z)Ljava/util/stream/WhileOps$DropWhileSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/stream/WhileOps$DropWhileSink<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist dropCount:J

.field blacklist take:Z

.field final synthetic blacklist this$0:Ljava/util/stream/WhileOps$3Op;

.field final synthetic blacklist val$retainAndCountDroppedElements:Z

.field final synthetic blacklist val$sink:Ljava/util/stream/Sink;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/WhileOps$3Op;Ljava/util/stream/Sink;Z)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/stream/WhileOps$3Op;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 541
    iput-object p1, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->this$0:Ljava/util/stream/WhileOps$3Op;

    iput-object p2, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->val$sink:Ljava/util/stream/Sink;

    iput-boolean p3, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->val$retainAndCountDroppedElements:Z

    .line 542
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    .line 543
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 8
    .param p1, "t"    # J

    .line 547
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->take:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->this$0:Ljava/util/stream/WhileOps$3Op;

    iget-object v0, v0, Ljava/util/stream/WhileOps$3Op;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->take:Z

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 551
    .local v0, "takeElement":Z
    :goto_16
    iget-boolean v1, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-eqz v1, :cond_23

    if-nez v0, :cond_23

    .line 552
    iget-wide v1, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->dropCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->dropCount:J

    .line 556
    :cond_23
    iget-boolean v1, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-nez v1, :cond_29

    if-eqz v0, :cond_2e

    .line 557
    :cond_29
    iget-object v1, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    .line 558
    :cond_2e
    return-void
.end method

.method public blacklist getDropCount()J
    .registers 3

    .line 562
    iget-wide v0, p0, Ljava/util/stream/WhileOps$3Op$1OpSink;->dropCount:J

    return-wide v0
.end method

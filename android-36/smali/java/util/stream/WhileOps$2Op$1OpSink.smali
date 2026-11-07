.class Ljava/util/stream/WhileOps$2Op$1OpSink;
.super Ljava/util/stream/Sink$ChainedInt;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/stream/WhileOps$DropWhileSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/WhileOps$2Op;->opWrapSink(Ljava/util/stream/Sink;Z)Ljava/util/stream/WhileOps$DropWhileSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/stream/WhileOps$DropWhileSink<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist dropCount:J

.field blacklist take:Z

.field final synthetic blacklist this$0:Ljava/util/stream/WhileOps$2Op;

.field final synthetic blacklist val$retainAndCountDroppedElements:Z

.field final synthetic blacklist val$sink:Ljava/util/stream/Sink;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/WhileOps$2Op;Ljava/util/stream/Sink;Z)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/stream/WhileOps$2Op;
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

    .line 463
    iput-object p1, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->this$0:Ljava/util/stream/WhileOps$2Op;

    iput-object p2, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->val$sink:Ljava/util/stream/Sink;

    iput-boolean p3, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->val$retainAndCountDroppedElements:Z

    .line 464
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    .line 465
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 7
    .param p1, "t"    # I

    .line 469
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->take:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->this$0:Ljava/util/stream/WhileOps$2Op;

    iget-object v0, v0, Ljava/util/stream/WhileOps$2Op;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->take:Z

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 473
    .local v0, "takeElement":Z
    :goto_16
    iget-boolean v1, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-eqz v1, :cond_23

    if-nez v0, :cond_23

    .line 474
    iget-wide v1, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->dropCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->dropCount:J

    .line 478
    :cond_23
    iget-boolean v1, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-nez v1, :cond_29

    if-eqz v0, :cond_2e

    .line 479
    :cond_29
    iget-object v1, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1, p1}, Ljava/util/stream/Sink;->accept(I)V

    .line 480
    :cond_2e
    return-void
.end method

.method public blacklist getDropCount()J
    .registers 3

    .line 484
    iget-wide v0, p0, Ljava/util/stream/WhileOps$2Op$1OpSink;->dropCount:J

    return-wide v0
.end method

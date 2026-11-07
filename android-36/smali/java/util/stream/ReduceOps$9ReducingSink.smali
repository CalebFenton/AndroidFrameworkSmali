.class Ljava/util/stream/ReduceOps$9ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Long;",
        "Ljava/util/OptionalLong;",
        "Ljava/util/stream/ReduceOps$9ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private blacklist empty:Z

.field private blacklist state:J

.field final synthetic blacklist val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/LongBinaryOperator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 6
    .param p1, "t"    # J

    .line 518
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-eqz v0, :cond_a

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    .line 520
    iput-wide p1, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    goto :goto_14

    .line 523
    :cond_a
    iget-object v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    iget-wide v1, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    .line 525
    :goto_14
    return-void
.end method

.method public blacklist begin(J)V
    .registers 5
    .param p1, "size"    # J

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    .line 513
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    .line 514
    return-void
.end method

.method public blacklist combine(Ljava/util/stream/ReduceOps$9ReducingSink;)V
    .registers 4
    .param p1, "other"    # Ljava/util/stream/ReduceOps$9ReducingSink;

    .line 534
    iget-boolean v0, p1, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-nez v0, :cond_9

    .line 535
    iget-wide v0, p1, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/ReduceOps$9ReducingSink;->accept(J)V

    .line 536
    :cond_9
    return-void
.end method

.method public bridge synthetic blacklist combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 506
    check-cast p1, Ljava/util/stream/ReduceOps$9ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$9ReducingSink;->combine(Ljava/util/stream/ReduceOps$9ReducingSink;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 506
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$9ReducingSink;->get()Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/util/OptionalLong;
    .registers 3

    .line 529
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object v0

    :goto_f
    return-object v0
.end method

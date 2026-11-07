.class Ljava/util/stream/ReduceOps$8ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeLong(JLjava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;
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
        "Ljava/lang/Long;",
        "Ljava/util/stream/ReduceOps$8ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private blacklist state:J

.field final synthetic blacklist val$identity:J

.field final synthetic blacklist val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor blacklist <init>(JLjava/util/function/LongBinaryOperator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 464
    iput-wide p1, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    iput-object p3, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 6
    .param p1, "t"    # J

    .line 475
    iget-object v0, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    iget-wide v1, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->state:J

    .line 476
    return-void
.end method

.method public blacklist begin(J)V
    .registers 5
    .param p1, "size"    # J

    .line 470
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->state:J

    .line 471
    return-void
.end method

.method public blacklist combine(Ljava/util/stream/ReduceOps$8ReducingSink;)V
    .registers 4
    .param p1, "other"    # Ljava/util/stream/ReduceOps$8ReducingSink;

    .line 485
    iget-wide v0, p1, Ljava/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/ReduceOps$8ReducingSink;->accept(J)V

    .line 486
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

    .line 464
    check-cast p1, Ljava/util/stream/ReduceOps$8ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$8ReducingSink;->combine(Ljava/util/stream/ReduceOps$8ReducingSink;)V

    return-void
.end method

.method public blacklist get()Ljava/lang/Long;
    .registers 3

    .line 480
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 464
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$8ReducingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

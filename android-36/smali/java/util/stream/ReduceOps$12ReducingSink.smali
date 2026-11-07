.class Ljava/util/stream/ReduceOps$12ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Double;",
        "Ljava/util/OptionalDouble;",
        "Ljava/util/stream/ReduceOps$12ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private blacklist empty:Z

.field private blacklist state:D

.field final synthetic blacklist val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/DoubleBinaryOperator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 682
    iput-object p1, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 6
    .param p1, "t"    # D

    .line 694
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_a

    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    .line 696
    iput-wide p1, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    goto :goto_14

    .line 699
    :cond_a
    iget-object v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    .line 701
    :goto_14
    return-void
.end method

.method public blacklist begin(J)V
    .registers 5
    .param p1, "size"    # J

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    .line 689
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    .line 690
    return-void
.end method

.method public blacklist combine(Ljava/util/stream/ReduceOps$12ReducingSink;)V
    .registers 4
    .param p1, "other"    # Ljava/util/stream/ReduceOps$12ReducingSink;

    .line 710
    iget-boolean v0, p1, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-nez v0, :cond_9

    .line 711
    iget-wide v0, p1, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/ReduceOps$12ReducingSink;->accept(D)V

    .line 712
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

    .line 682
    check-cast p1, Ljava/util/stream/ReduceOps$12ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$12ReducingSink;->combine(Ljava/util/stream/ReduceOps$12ReducingSink;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 682
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$12ReducingSink;->get()Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/util/OptionalDouble;
    .registers 3

    .line 705
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-static {v0, v1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v0

    :goto_f
    return-object v0
.end method

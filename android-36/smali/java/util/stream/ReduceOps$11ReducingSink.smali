.class Ljava/util/stream/ReduceOps$11ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeDouble(DLjava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;
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
        "Ljava/lang/Double;",
        "Ljava/util/stream/ReduceOps$11ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private blacklist state:D

.field final synthetic blacklist val$identity:D

.field final synthetic blacklist val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor blacklist <init>(DLjava/util/function/DoubleBinaryOperator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 640
    iput-wide p1, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-object p3, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 6
    .param p1, "t"    # D

    .line 651
    iget-object v0, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->state:D

    .line 652
    return-void
.end method

.method public blacklist begin(J)V
    .registers 5
    .param p1, "size"    # J

    .line 646
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->state:D

    .line 647
    return-void
.end method

.method public blacklist combine(Ljava/util/stream/ReduceOps$11ReducingSink;)V
    .registers 4
    .param p1, "other"    # Ljava/util/stream/ReduceOps$11ReducingSink;

    .line 661
    iget-wide v0, p1, Ljava/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/ReduceOps$11ReducingSink;->accept(D)V

    .line 662
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

    .line 640
    check-cast p1, Ljava/util/stream/ReduceOps$11ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$11ReducingSink;->combine(Ljava/util/stream/ReduceOps$11ReducingSink;)V

    return-void
.end method

.method public blacklist get()Ljava/lang/Double;
    .registers 3

    .line 656
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 640
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$11ReducingSink;->get()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

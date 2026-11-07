.class Ljava/util/stream/ReduceOps$13ReducingSink;
.super Ljava/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$Box<",
        "TR;>;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Double;",
        "TR;",
        "Ljava/util/stream/ReduceOps$13ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$accumulator:Ljava/util/function/ObjDoubleConsumer;

.field final synthetic blacklist val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic blacklist val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 740
    iput-object p1, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$accumulator:Ljava/util/function/ObjDoubleConsumer;

    iput-object p3, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 5
    .param p1, "t"    # D

    .line 749
    iget-object v0, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$accumulator:Ljava/util/function/ObjDoubleConsumer;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/ObjDoubleConsumer;->accept(Ljava/lang/Object;D)V

    .line 750
    return-void
.end method

.method public blacklist begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 744
    iget-object v0, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    .line 745
    return-void
.end method

.method public blacklist combine(Ljava/util/stream/ReduceOps$13ReducingSink;)V
    .registers 5
    .param p1, "other"    # Ljava/util/stream/ReduceOps$13ReducingSink;

    .line 754
    iget-object v0, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    iget-object v2, p1, Ljava/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    .line 755
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

    .line 740
    check-cast p1, Ljava/util/stream/ReduceOps$13ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$13ReducingSink;->combine(Ljava/util/stream/ReduceOps$13ReducingSink;)V

    return-void
.end method

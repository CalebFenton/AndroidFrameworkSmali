.class Ljava/util/stream/ReduceOps$7ReducingSink;
.super Ljava/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
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
        "Ljava/lang/Integer;",
        "TR;",
        "Ljava/util/stream/ReduceOps$7ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$accumulator:Ljava/util/function/ObjIntConsumer;

.field final synthetic blacklist val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic blacklist val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 388
    iput-object p1, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$accumulator:Ljava/util/function/ObjIntConsumer;

    iput-object p3, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 4
    .param p1, "t"    # I

    .line 397
    iget-object v0, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$accumulator:Ljava/util/function/ObjIntConsumer;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    .line 398
    return-void
.end method

.method public blacklist begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 392
    iget-object v0, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->state:Ljava/lang/Object;

    .line 393
    return-void
.end method

.method public blacklist combine(Ljava/util/stream/ReduceOps$7ReducingSink;)V
    .registers 5
    .param p1, "other"    # Ljava/util/stream/ReduceOps$7ReducingSink;

    .line 402
    iget-object v0, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->state:Ljava/lang/Object;

    iget-object v2, p1, Ljava/util/stream/ReduceOps$7ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->state:Ljava/lang/Object;

    .line 403
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

    .line 388
    check-cast p1, Ljava/util/stream/ReduceOps$7ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$7ReducingSink;->combine(Ljava/util/stream/ReduceOps$7ReducingSink;)V

    return-void
.end method

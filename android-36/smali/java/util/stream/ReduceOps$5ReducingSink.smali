.class Ljava/util/stream/ReduceOps$5ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeInt(ILjava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/ReduceOps$5ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private blacklist state:I

.field final synthetic blacklist val$identity:I

.field final synthetic blacklist val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor blacklist <init>(ILjava/util/function/IntBinaryOperator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 288
    iput p1, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    iput-object p2, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 4
    .param p1, "t"    # I

    .line 299
    iget-object v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    iget v1, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-interface {v0, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    .line 300
    return-void
.end method

.method public blacklist begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 294
    iget v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    iput v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    .line 295
    return-void
.end method

.method public blacklist combine(Ljava/util/stream/ReduceOps$5ReducingSink;)V
    .registers 3
    .param p1, "other"    # Ljava/util/stream/ReduceOps$5ReducingSink;

    .line 309
    iget v0, p1, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-virtual {p0, v0}, Ljava/util/stream/ReduceOps$5ReducingSink;->accept(I)V

    .line 310
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

    .line 288
    check-cast p1, Ljava/util/stream/ReduceOps$5ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$5ReducingSink;->combine(Ljava/util/stream/ReduceOps$5ReducingSink;)V

    return-void
.end method

.method public blacklist get()Ljava/lang/Integer;
    .registers 2

    .line 304
    iget v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 288
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$5ReducingSink;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

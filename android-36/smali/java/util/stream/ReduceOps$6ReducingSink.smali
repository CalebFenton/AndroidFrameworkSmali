.class Ljava/util/stream/ReduceOps$6ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;
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
        "Ljava/util/OptionalInt;",
        "Ljava/util/stream/ReduceOps$6ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private blacklist empty:Z

.field private blacklist state:I

.field final synthetic blacklist val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/IntBinaryOperator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 4
    .param p1, "t"    # I

    .line 342
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-eqz v0, :cond_a

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    .line 344
    iput p1, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    goto :goto_14

    .line 347
    :cond_a
    iget-object v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    iget v1, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-interface {v0, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    .line 349
    :goto_14
    return-void
.end method

.method public blacklist begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    .line 338
    return-void
.end method

.method public blacklist combine(Ljava/util/stream/ReduceOps$6ReducingSink;)V
    .registers 3
    .param p1, "other"    # Ljava/util/stream/ReduceOps$6ReducingSink;

    .line 358
    iget-boolean v0, p1, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-nez v0, :cond_9

    .line 359
    iget v0, p1, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-virtual {p0, v0}, Ljava/util/stream/ReduceOps$6ReducingSink;->accept(I)V

    .line 360
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

    .line 330
    check-cast p1, Ljava/util/stream/ReduceOps$6ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$6ReducingSink;->combine(Ljava/util/stream/ReduceOps$6ReducingSink;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 330
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$6ReducingSink;->get()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/util/OptionalInt;
    .registers 2

    .line 353
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    :goto_f
    return-object v0
.end method

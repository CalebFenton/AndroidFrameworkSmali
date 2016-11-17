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
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/OptionalDouble;",
        "Ljava/util/stream/ReduceOps$12ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:D

.field final synthetic val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/DoubleBinaryOperator;)V
    .locals 0
    .param p1, "val$operator"    # Ljava/util/function/DoubleBinaryOperator;

    #@0
    .prologue
    .line 561
    iput-object p1, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 5
    .param p1, "t"    # D

    #@0
    .prologue
    .line 573
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 574
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    #@7
    .line 575
    iput-wide p1, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    #@9
    .line 572
    :goto_0
    return-void

    #@a
    .line 578
    :cond_0
    iget-object v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    #@c
    iget-wide v2, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    #@e
    invoke-interface {v0, v2, v3, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    #@14
    goto :goto_0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 229
    check-cast p1, Ljava/lang/Double;

    #@2
    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    #@5
    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    #@0
    .prologue
    .line 567
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    #@3
    .line 568
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    #@7
    .line 566
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$12ReducingSink;)V
    .locals 2
    .param p1, "other"    # Ljava/util/stream/ReduceOps$12ReducingSink;

    #@0
    .prologue
    .line 589
    iget-boolean v0, p1, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 590
    iget-wide v0, p1, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/util/stream/ReduceOps$12ReducingSink;->accept(D)V

    #@9
    .line 588
    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@0
    .prologue
    .line 588
    check-cast p1, Ljava/util/stream/ReduceOps$12ReducingSink;

    #@2
    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$12ReducingSink;->combine(Ljava/util/stream/ReduceOps$12ReducingSink;)V

    #@5
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 583
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$12ReducingSink;->get()Ljava/util/OptionalDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get()Ljava/util/OptionalDouble;
    .locals 2

    #@0
    .prologue
    .line 584
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->empty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$12ReducingSink;->state:D

    #@b
    invoke-static {v0, v1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

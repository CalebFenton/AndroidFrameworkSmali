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
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/OptionalLong;",
        "Ljava/util/stream/ReduceOps$9ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:J

.field final synthetic val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/LongBinaryOperator;)V
    .locals 0
    .param p1, "val$operator"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    .line 425
    iput-object p1, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 5
    .param p1, "t"    # J

    #@0
    .prologue
    .line 437
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 438
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    #@7
    .line 439
    iput-wide p1, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    #@9
    .line 436
    :goto_0
    return-void

    #@a
    .line 442
    :cond_0
    iget-object v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    #@c
    iget-wide v2, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    #@e
    invoke-interface {v0, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    #@14
    goto :goto_0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 212
    check-cast p1, Ljava/lang/Long;

    #@2
    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfLong;->accept(Ljava/lang/Long;)V

    #@5
    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    #@0
    .prologue
    .line 431
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    #@3
    .line 432
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    #@7
    .line 430
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$9ReducingSink;)V
    .locals 2
    .param p1, "other"    # Ljava/util/stream/ReduceOps$9ReducingSink;

    #@0
    .prologue
    .line 453
    iget-boolean v0, p1, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 454
    iget-wide v0, p1, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/util/stream/ReduceOps$9ReducingSink;->accept(J)V

    #@9
    .line 452
    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@0
    .prologue
    .line 452
    check-cast p1, Ljava/util/stream/ReduceOps$9ReducingSink;

    #@2
    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$9ReducingSink;->combine(Ljava/util/stream/ReduceOps$9ReducingSink;)V

    #@5
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 447
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$9ReducingSink;->get()Ljava/util/OptionalLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get()Ljava/util/OptionalLong;
    .locals 2

    #@0
    .prologue
    .line 448
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    #@b
    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

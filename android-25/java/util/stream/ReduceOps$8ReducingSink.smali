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
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/ReduceOps$8ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private state:J

.field final synthetic val$identity:J

.field final synthetic val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(JLjava/util/function/LongBinaryOperator;)V
    .locals 1
    .param p1, "val$identity"    # J
    .param p3, "val$operator"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    .line 383
    iput-wide p1, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    #@2
    iput-object p3, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 5
    .param p1, "t"    # J

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    #@2
    iget-wide v2, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->state:J

    #@4
    invoke-interface {v0, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@7
    move-result-wide v0

    #@8
    iput-wide v0, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->state:J

    #@a
    .line 393
    return-void
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
    .line 389
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    #@2
    iput-wide v0, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->state:J

    #@4
    .line 388
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$8ReducingSink;)V
    .locals 2
    .param p1, "other"    # Ljava/util/stream/ReduceOps$8ReducingSink;

    #@0
    .prologue
    .line 404
    iget-wide v0, p1, Ljava/util/stream/ReduceOps$8ReducingSink;->state:J

    #@2
    invoke-virtual {p0, v0, v1}, Ljava/util/stream/ReduceOps$8ReducingSink;->accept(J)V

    #@5
    .line 403
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@0
    .prologue
    .line 403
    check-cast p1, Ljava/util/stream/ReduceOps$8ReducingSink;

    #@2
    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$8ReducingSink;->combine(Ljava/util/stream/ReduceOps$8ReducingSink;)V

    #@5
    return-void
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    #@0
    .prologue
    .line 399
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$8ReducingSink;->state:J

    #@2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 398
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$8ReducingSink;->get()Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

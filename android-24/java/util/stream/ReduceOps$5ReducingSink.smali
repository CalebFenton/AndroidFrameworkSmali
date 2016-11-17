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
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/ReduceOps$5ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private state:I

.field final synthetic val$identity:I

.field final synthetic val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(ILjava/util/function/IntBinaryOperator;)V
    .locals 0
    .param p1, "val$identity"    # I
    .param p2, "val$operator"    # Ljava/util/function/IntBinaryOperator;

    #@0
    .prologue
    .line 247
    iput p1, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    #@2
    iput-object p2, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    #@2
    iget v1, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    #@4
    invoke-interface {v0, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@7
    move-result v0

    #@8
    iput v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    #@a
    .line 257
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 195
    check-cast p1, Ljava/lang/Integer;

    #@2
    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    #@5
    return-void
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    #@0
    .prologue
    .line 253
    iget v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    #@2
    iput v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    #@4
    .line 252
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$5ReducingSink;)V
    .locals 1
    .param p1, "other"    # Ljava/util/stream/ReduceOps$5ReducingSink;

    #@0
    .prologue
    .line 268
    iget v0, p1, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/stream/ReduceOps$5ReducingSink;->accept(I)V

    #@5
    .line 267
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@0
    .prologue
    .line 267
    check-cast p1, Ljava/util/stream/ReduceOps$5ReducingSink;

    #@2
    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$5ReducingSink;->combine(Ljava/util/stream/ReduceOps$5ReducingSink;)V

    #@5
    return-void
.end method

.method public get()Ljava/lang/Integer;
    .locals 1

    #@0
    .prologue
    .line 263
    iget v0, p0, Ljava/util/stream/ReduceOps$5ReducingSink;->state:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$5ReducingSink;->get()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

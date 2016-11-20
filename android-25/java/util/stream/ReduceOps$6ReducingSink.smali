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
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/OptionalInt;",
        "Ljava/util/stream/ReduceOps$6ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:I

.field final synthetic val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/IntBinaryOperator;)V
    .locals 0
    .param p1, "val$operator"    # Ljava/util/function/IntBinaryOperator;

    #@0
    .prologue
    .line 289
    iput-object p1, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    #@0
    .prologue
    .line 301
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 302
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    #@7
    .line 303
    iput p1, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    #@9
    .line 300
    :goto_0
    return-void

    #@a
    .line 306
    :cond_0
    iget-object v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    #@c
    iget v1, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    #@e
    invoke-interface {v0, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    #@14
    goto :goto_0
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
    .line 295
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    #@3
    .line 296
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    #@6
    .line 294
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$6ReducingSink;)V
    .locals 1
    .param p1, "other"    # Ljava/util/stream/ReduceOps$6ReducingSink;

    #@0
    .prologue
    .line 317
    iget-boolean v0, p1, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 318
    iget v0, p1, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    #@6
    invoke-virtual {p0, v0}, Ljava/util/stream/ReduceOps$6ReducingSink;->accept(I)V

    #@9
    .line 316
    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@0
    .prologue
    .line 316
    check-cast p1, Ljava/util/stream/ReduceOps$6ReducingSink;

    #@2
    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$6ReducingSink;->combine(Ljava/util/stream/ReduceOps$6ReducingSink;)V

    #@5
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 311
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$6ReducingSink;->get()Ljava/util/OptionalInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get()Ljava/util/OptionalInt;
    .locals 1

    #@0
    .prologue
    .line 312
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    #@b
    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

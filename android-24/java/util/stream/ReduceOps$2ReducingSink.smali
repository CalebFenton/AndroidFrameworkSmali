.class Ljava/util/stream/ReduceOps$2ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<TT;",
        "Ljava/util/Optional",
        "<TT;>;",
        "Ljava/util/stream/ReduceOps$2ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$operator:Ljava/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    #@0
    .prologue
    .line 107
    .local p1, "val$operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    iput-object p1, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->val$operator:Ljava/util/function/BinaryOperator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 119
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->empty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 120
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->empty:Z

    #@7
    .line 121
    iput-object p1, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    #@9
    .line 118
    :goto_0
    return-void

    #@a
    .line 123
    :cond_0
    iget-object v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->val$operator:Ljava/util/function/BinaryOperator;

    #@c
    iget-object v1, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    #@e
    invoke-interface {v0, v1, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    #@14
    goto :goto_0
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    #@0
    .prologue
    .line 113
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->empty:Z

    #@3
    .line 114
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    #@6
    .line 112
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$2ReducingSink;)V
    .locals 1
    .param p1, "other"    # Ljava/util/stream/ReduceOps$2ReducingSink;

    #@0
    .prologue
    .line 134
    iget-boolean v0, p1, Ljava/util/stream/ReduceOps$2ReducingSink;->empty:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 135
    iget-object v0, p1, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    #@6
    invoke-virtual {p0, v0}, Ljava/util/stream/ReduceOps$2ReducingSink;->accept(Ljava/lang/Object;)V

    #@9
    .line 133
    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@0
    .prologue
    .line 133
    check-cast p1, Ljava/util/stream/ReduceOps$2ReducingSink;

    #@2
    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$2ReducingSink;->combine(Ljava/util/stream/ReduceOps$2ReducingSink;)V

    #@5
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$2ReducingSink;->get()Ljava/util/Optional;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 129
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->empty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget-object v0, p0, Ljava/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    #@b
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

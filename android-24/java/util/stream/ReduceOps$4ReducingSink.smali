.class Ljava/util/stream/ReduceOps$4ReducingSink;
.super Ljava/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$Box",
        "<TR;>;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<TT;TR;",
        "Ljava/util/stream/ReduceOps$4ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava/util/function/BiConsumer;

.field final synthetic val$reducer:Ljava/util/function/BiConsumer;

.field final synthetic val$seedFactory:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 0

    #@0
    .prologue
    .line 211
    .local p1, "val$seedFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "val$accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;-TT;>;"
    .local p3, "val$reducer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    iput-object p1, p0, Ljava/util/stream/ReduceOps$4ReducingSink;->val$seedFactory:Ljava/util/function/Supplier;

    #@2
    iput-object p2, p0, Ljava/util/stream/ReduceOps$4ReducingSink;->val$accumulator:Ljava/util/function/BiConsumer;

    #@4
    iput-object p3, p0, Ljava/util/stream/ReduceOps$4ReducingSink;->val$reducer:Ljava/util/function/BiConsumer;

    #@6
    invoke-direct {p0}, Ljava/util/stream/ReduceOps$Box;-><init>()V

    #@9
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
    .line 220
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/ReduceOps$4ReducingSink;->val$accumulator:Ljava/util/function/BiConsumer;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@7
    .line 219
    return-void
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Ljava/util/stream/ReduceOps$4ReducingSink;->val$seedFactory:Ljava/util/function/Supplier;

    #@2
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@8
    .line 214
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$4ReducingSink;)V
    .locals 3
    .param p1, "other"    # Ljava/util/stream/ReduceOps$4ReducingSink;

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Ljava/util/stream/ReduceOps$4ReducingSink;->val$reducer:Ljava/util/function/BiConsumer;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@4
    iget-object v2, p1, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@6
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@9
    .line 224
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@0
    .prologue
    .line 224
    check-cast p1, Ljava/util/stream/ReduceOps$4ReducingSink;

    #@2
    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$4ReducingSink;->combine(Ljava/util/stream/ReduceOps$4ReducingSink;)V

    #@5
    return-void
.end method

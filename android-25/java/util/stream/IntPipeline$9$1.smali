.class Ljava/util/stream/IntPipeline$9$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$9;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/IntPipeline$9;

.field final synthetic val$predicate:Ljava/util/function/IntPredicate;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline$9;Ljava/util/stream/Sink;Ljava/util/function/IntPredicate;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$9;
    .param p3, "val$predicate"    # Ljava/util/function/IntPredicate;

    #@0
    .prologue
    .line 336
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$9$1;->this$1:Ljava/util/stream/IntPipeline$9;

    #@2
    iput-object p3, p0, Ljava/util/stream/IntPipeline$9$1;->val$predicate:Ljava/util/function/IntPredicate;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Ljava/util/stream/IntPipeline$9$1;->val$predicate:Ljava/util/function/IntPredicate;

    #@2
    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 345
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@a
    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(I)V

    #@d
    .line 343
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@2
    const-wide/16 v2, -0x1

    #@4
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    #@7
    .line 338
    return-void
.end method

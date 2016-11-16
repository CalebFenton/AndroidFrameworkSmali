.class Ljava/util/stream/IntPipeline$4$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$4;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/IntPipeline$4;

.field final synthetic val$mapper:Ljava/util/function/IntFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline$4;Ljava/util/stream/Sink;Ljava/util/function/IntFunction;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$4;

    #@0
    .prologue
    .line 248
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TU;>;"
    .local p3, "val$mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TU;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$4$1;->this$1:Ljava/util/stream/IntPipeline$4;

    #@2
    iput-object p3, p0, Ljava/util/stream/IntPipeline$4$1;->val$mapper:Ljava/util/function/IntFunction;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@2
    iget-object v1, p0, Ljava/util/stream/IntPipeline$4$1;->val$mapper:Ljava/util/function/IntFunction;

    #@4
    invoke-interface {v1, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    #@b
    .line 250
    return-void
.end method

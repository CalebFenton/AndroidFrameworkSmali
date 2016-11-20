.class Ljava/util/stream/DoublePipeline$2$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$2;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/DoublePipeline$2;

.field final synthetic val$mapper:Ljava/util/function/DoubleFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/DoublePipeline$2;Ljava/util/stream/Sink;Ljava/util/function/DoubleFunction;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$2;

    #@0
    .prologue
    .line 212
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TU;>;"
    .local p3, "val$mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+TU;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$2$1;->this$1:Ljava/util/stream/DoublePipeline$2;

    #@2
    iput-object p3, p0, Ljava/util/stream/DoublePipeline$2$1;->val$mapper:Ljava/util/function/DoubleFunction;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    #@2
    iget-object v1, p0, Ljava/util/stream/DoublePipeline$2$1;->val$mapper:Ljava/util/function/DoubleFunction;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    #@b
    .line 214
    return-void
.end method

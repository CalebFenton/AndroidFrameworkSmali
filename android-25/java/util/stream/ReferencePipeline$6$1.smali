.class Ljava/util/stream/ReferencePipeline$6$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$6;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$6;

.field final synthetic val$mapper:Ljava/util/function/ToDoubleFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline$6;Ljava/util/stream/Sink;Ljava/util/function/ToDoubleFunction;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$6;

    #@0
    .prologue
    .line 242
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    .local p3, "val$mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TP_OUT;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$6$1;->this$1:Ljava/util/stream/ReferencePipeline$6;

    #@2
    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$6$1;->val$mapper:Ljava/util/function/ToDoubleFunction;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$6$1;->val$mapper:Ljava/util/function/ToDoubleFunction;

    #@4
    invoke-interface {v1, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    #@7
    move-result-wide v2

    #@8
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->accept(D)V

    #@b
    .line 244
    return-void
.end method

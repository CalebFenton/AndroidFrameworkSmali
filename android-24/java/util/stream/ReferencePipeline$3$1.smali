.class Ljava/util/stream/ReferencePipeline$3$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$3;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$3;

.field final synthetic val$mapper:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline$3;Ljava/util/stream/Sink;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$3;

    #@0
    .prologue
    .line 191
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TR;>;"
    .local p3, "val$mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+TR;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$3$1;->this$1:Ljava/util/stream/ReferencePipeline$3;

    #@2
    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$3$1;->val$mapper:Ljava/util/function/Function;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 194
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$3$1;->val$mapper:Ljava/util/function/Function;

    #@4
    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    #@b
    .line 193
    return-void
.end method

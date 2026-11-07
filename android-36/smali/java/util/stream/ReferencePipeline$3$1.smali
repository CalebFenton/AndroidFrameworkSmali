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
        "Ljava/util/stream/Sink$ChainedReference<",
        "TP_OUT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/ReferencePipeline$3;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReferencePipeline$3;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 206
    .local p0, "this":Ljava/util/stream/ReferencePipeline$3$1;, "Ljava/util/stream/ReferencePipeline$3$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TR;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$3$1;->this$1:Ljava/util/stream/ReferencePipeline$3;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 209
    .local p0, "this":Ljava/util/stream/ReferencePipeline$3$1;, "Ljava/util/stream/ReferencePipeline$3$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$3$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$3$1;->this$1:Ljava/util/stream/ReferencePipeline$3;

    iget-object v1, v1, Ljava/util/stream/ReferencePipeline$3;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

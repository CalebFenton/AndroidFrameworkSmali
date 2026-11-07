.class Ljava/util/stream/ReferencePipeline$11$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$11;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
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
.field final synthetic blacklist this$1:Ljava/util/stream/ReferencePipeline$11;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReferencePipeline$11;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$11;
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

    .line 459
    .local p0, "this":Ljava/util/stream/ReferencePipeline$11$1;, "Ljava/util/stream/ReferencePipeline$11$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TR;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$11$1;->this$1:Ljava/util/stream/ReferencePipeline$11;

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

    .line 469
    .local p0, "this":Ljava/util/stream/ReferencePipeline$11$1;, "Ljava/util/stream/ReferencePipeline$11$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$11$1;->this$1:Ljava/util/stream/ReferencePipeline$11;

    iget-object v0, v0, Ljava/util/stream/ReferencePipeline$11;->val$mapper:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$11$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 470
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 463
    .local p0, "this":Ljava/util/stream/ReferencePipeline$11$1;, "Ljava/util/stream/ReferencePipeline$11$1;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$11$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 464
    return-void
.end method

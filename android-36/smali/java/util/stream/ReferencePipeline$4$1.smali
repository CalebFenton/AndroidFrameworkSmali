.class Ljava/util/stream/ReferencePipeline$4$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$4;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/ReferencePipeline$4;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReferencePipeline$4;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$4;
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

    .line 224
    .local p0, "this":Ljava/util/stream/ReferencePipeline$4$1;, "Ljava/util/stream/ReferencePipeline$4$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$4$1;->this$1:Ljava/util/stream/ReferencePipeline$4;

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

    .line 227
    .local p0, "this":Ljava/util/stream/ReferencePipeline$4$1;, "Ljava/util/stream/ReferencePipeline$4$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$4$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$4$1;->this$1:Ljava/util/stream/ReferencePipeline$4;

    iget-object v1, v1, Ljava/util/stream/ReferencePipeline$4;->val$mapper:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(I)V

    .line 228
    return-void
.end method

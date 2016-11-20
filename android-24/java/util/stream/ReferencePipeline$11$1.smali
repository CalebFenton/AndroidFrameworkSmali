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
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;TP_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$11;

.field final synthetic val$action:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline$11;Ljava/util/stream/Sink;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$11;

    #@0
    .prologue
    .line 370
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TP_OUT;>;"
    .local p3, "val$action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$11$1;->this$1:Ljava/util/stream/ReferencePipeline$11;

    #@2
    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$11$1;->val$action:Ljava/util/function/Consumer;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 373
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$11$1;->val$action:Ljava/util/function/Consumer;

    #@2
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@5
    .line 374
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@7
    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    #@a
    .line 372
    return-void
.end method

.class Ljava/util/stream/ReferencePipeline$3;
.super Ljava/util/stream/ReferencePipeline$StatelessOp;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReferencePipeline$StatelessOp",
        "<TP_OUT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/stream/ReferencePipeline;

.field final synthetic val$mapper:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V
    .locals 0
    .param p3, "$anonymous1"    # Ljava/util/stream/StreamShape;
    .param p4, "$anonymous2"    # I

    #@0
    .prologue
    .line 187
    .local p1, "this$0":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p2, "$anonymous0":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TP_OUT;*>;"
    .local p5, "val$mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+TR;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$3;->this$0:Ljava/util/stream/ReferencePipeline;

    #@2
    iput-object p5, p0, Ljava/util/stream/ReferencePipeline$3;->val$mapper:Ljava/util/function/Function;

    #@4
    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/ReferencePipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@7
    .line 188
    return-void
.end method


# virtual methods
.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<TR;>;)",
            "Ljava/util/stream/Sink",
            "<TP_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 191
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TR;>;"
    new-instance v0, Ljava/util/stream/ReferencePipeline$3$1;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$3;->val$mapper:Ljava/util/function/Function;

    #@4
    invoke-direct {v0, p0, p2, v1}, Ljava/util/stream/ReferencePipeline$3$1;-><init>(Ljava/util/stream/ReferencePipeline$3;Ljava/util/stream/Sink;Ljava/util/function/Function;)V

    #@7
    return-object v0
.end method

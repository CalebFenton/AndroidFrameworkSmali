.class Ljava/util/stream/IntPipeline$4;
.super Ljava/util/stream/ReferencePipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReferencePipeline$StatelessOp",
        "<",
        "Ljava/lang/Integer;",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/stream/IntPipeline;

.field final synthetic val$mapper:Ljava/util/function/IntFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntFunction;)V
    .locals 0
    .param p3, "$anonymous1"    # Ljava/util/stream/StreamShape;
    .param p4, "$anonymous2"    # I

    #@0
    .prologue
    .line 244
    .local p1, "this$0":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p2, "$anonymous0":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    .local p5, "val$mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TU;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$4;->this$0:Ljava/util/stream/IntPipeline;

    #@2
    iput-object p5, p0, Ljava/util/stream/IntPipeline$4;->val$mapper:Ljava/util/function/IntFunction;

    #@4
    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/ReferencePipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@7
    .line 245
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
            "<TU;>;)",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 248
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TU;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$4$1;

    #@2
    iget-object v1, p0, Ljava/util/stream/IntPipeline$4;->val$mapper:Ljava/util/function/IntFunction;

    #@4
    invoke-direct {v0, p0, p2, v1}, Ljava/util/stream/IntPipeline$4$1;-><init>(Ljava/util/stream/IntPipeline$4;Ljava/util/stream/Sink;Ljava/util/function/IntFunction;)V

    #@7
    return-object v0
.end method

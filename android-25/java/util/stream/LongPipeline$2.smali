.class Ljava/util/stream/LongPipeline$2;
.super Ljava/util/stream/LongPipeline$StatelessOp;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline;->map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/LongPipeline$StatelessOp",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/stream/LongPipeline;

.field final synthetic val$mapper:Ljava/util/function/LongUnaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongUnaryOperator;)V
    .locals 0
    .param p3, "$anonymous1"    # Ljava/util/stream/StreamShape;
    .param p4, "$anonymous2"    # I
    .param p5, "val$mapper"    # Ljava/util/function/LongUnaryOperator;

    #@0
    .prologue
    .line 208
    .local p1, "this$0":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p2, "$anonymous0":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$2;->this$0:Ljava/util/stream/LongPipeline;

    #@2
    iput-object p5, p0, Ljava/util/stream/LongPipeline$2;->val$mapper:Ljava/util/function/LongUnaryOperator;

    #@4
    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/LongPipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@7
    .line 209
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
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 212
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$2$1;

    #@2
    iget-object v1, p0, Ljava/util/stream/LongPipeline$2;->val$mapper:Ljava/util/function/LongUnaryOperator;

    #@4
    invoke-direct {v0, p0, p2, v1}, Ljava/util/stream/LongPipeline$2$1;-><init>(Ljava/util/stream/LongPipeline$2;Ljava/util/stream/Sink;Ljava/util/function/LongUnaryOperator;)V

    #@7
    return-object v0
.end method

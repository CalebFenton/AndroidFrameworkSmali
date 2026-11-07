.class Ljava/util/stream/DoublePipeline$4;
.super Ljava/util/stream/LongPipeline$StatelessOp;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline;->mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/LongPipeline$StatelessOp<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$mapper:Ljava/util/function/DoubleToLongFunction;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleToLongFunction;)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/stream/DoublePipeline;
    .param p3, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p4, "opFlags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 257
    .local p0, "this":Ljava/util/stream/DoublePipeline$4;, "Ljava/util/stream/DoublePipeline$4;"
    .local p2, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    iput-object p5, p0, Ljava/util/stream/DoublePipeline$4;->val$mapper:Ljava/util/function/DoubleToLongFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/LongPipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public blacklist opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 261
    .local p0, "this":Ljava/util/stream/DoublePipeline$4;, "Ljava/util/stream/DoublePipeline$4;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$4$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/DoublePipeline$4$1;-><init>(Ljava/util/stream/DoublePipeline$4;Ljava/util/stream/Sink;)V

    return-object v0
.end method

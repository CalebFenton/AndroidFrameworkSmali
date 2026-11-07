.class Ljava/util/stream/IntPipeline$7;
.super Ljava/util/stream/IntPipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline;->flatMap(Ljava/util/function/IntFunction;)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/IntPipeline$StatelessOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$mapper:Ljava/util/function/IntFunction;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntFunction;)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/stream/IntPipeline;
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

    .line 310
    .local p0, "this":Ljava/util/stream/IntPipeline$7;, "Ljava/util/stream/IntPipeline$7;"
    .local p2, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    iput-object p5, p0, Ljava/util/stream/IntPipeline$7;->val$mapper:Ljava/util/function/IntFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/IntPipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 314
    .local p0, "this":Ljava/util/stream/IntPipeline$7;, "Ljava/util/stream/IntPipeline$7;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$7$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/IntPipeline$7$1;-><init>(Ljava/util/stream/IntPipeline$7;Ljava/util/stream/Sink;)V

    return-object v0
.end method

.class Ljava/util/stream/IntPipeline$3$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$3;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/IntPipeline$3;

.field final synthetic val$mapper:Ljava/util/function/IntUnaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline$3;Ljava/util/stream/Sink;Ljava/util/function/IntUnaryOperator;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$3;
    .param p3, "val$mapper"    # Ljava/util/function/IntUnaryOperator;

    #@0
    .prologue
    .line 231
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$3$1;->this$1:Ljava/util/stream/IntPipeline$3;

    #@2
    iput-object p3, p0, Ljava/util/stream/IntPipeline$3$1;->val$mapper:Ljava/util/function/IntUnaryOperator;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@2
    iget-object v1, p0, Ljava/util/stream/IntPipeline$3$1;->val$mapper:Ljava/util/function/IntUnaryOperator;

    #@4
    invoke-interface {v1, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@7
    move-result v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(I)V

    #@b
    .line 233
    return-void
.end method

.class Ljava/util/stream/IntPipeline$10$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$10;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
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
.field final synthetic this$1:Ljava/util/stream/IntPipeline$10;

.field final synthetic val$action:Ljava/util/function/IntConsumer;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline$10;Ljava/util/stream/Sink;Ljava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$10;
    .param p3, "val$action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 359
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$10$1;->this$1:Ljava/util/stream/IntPipeline$10;

    #@2
    iput-object p3, p0, Ljava/util/stream/IntPipeline$10$1;->val$action:Ljava/util/function/IntConsumer;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Ljava/util/stream/IntPipeline$10$1;->val$action:Ljava/util/function/IntConsumer;

    #@2
    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    #@5
    .line 363
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@7
    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(I)V

    #@a
    .line 361
    return-void
.end method

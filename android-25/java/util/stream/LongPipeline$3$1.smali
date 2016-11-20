.class Ljava/util/stream/LongPipeline$3$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$3;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/LongPipeline$3;

.field final synthetic val$mapper:Ljava/util/function/LongFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/LongPipeline$3;Ljava/util/stream/Sink;Ljava/util/function/LongFunction;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$3;

    #@0
    .prologue
    .line 229
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TU;>;"
    .local p3, "val$mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+TU;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$3$1;->this$1:Ljava/util/stream/LongPipeline$3;

    #@2
    iput-object p3, p0, Ljava/util/stream/LongPipeline$3$1;->val$mapper:Ljava/util/function/LongFunction;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    #@2
    iget-object v1, p0, Ljava/util/stream/LongPipeline$3$1;->val$mapper:Ljava/util/function/LongFunction;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    #@b
    .line 231
    return-void
.end method

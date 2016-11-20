.class Ljava/util/stream/DoublePipeline$4$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$4;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/DoublePipeline$4;

.field final synthetic val$mapper:Ljava/util/function/DoubleToLongFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/DoublePipeline$4;Ljava/util/stream/Sink;Ljava/util/function/DoubleToLongFunction;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$4;
    .param p3, "val$mapper"    # Ljava/util/function/DoubleToLongFunction;

    #@0
    .prologue
    .line 246
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$4$1;->this$1:Ljava/util/stream/DoublePipeline$4;

    #@2
    iput-object p3, p0, Ljava/util/stream/DoublePipeline$4$1;->val$mapper:Ljava/util/function/DoubleToLongFunction;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 5
    .param p1, "t"    # D

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    #@2
    iget-object v1, p0, Ljava/util/stream/DoublePipeline$4$1;->val$mapper:Ljava/util/function/DoubleToLongFunction;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/function/DoubleToLongFunction;->applyAsLong(D)J

    #@7
    move-result-wide v2

    #@8
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->accept(J)V

    #@b
    .line 248
    return-void
.end method

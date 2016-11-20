.class Ljava/util/stream/LongPipeline$9$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$9;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/LongPipeline$9;

.field final synthetic val$action:Ljava/util/function/LongConsumer;


# direct methods
.method constructor <init>(Ljava/util/stream/LongPipeline$9;Ljava/util/stream/Sink;Ljava/util/function/LongConsumer;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$9;
    .param p3, "val$action"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 340
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$9$1;->this$1:Ljava/util/stream/LongPipeline$9;

    #@2
    iput-object p3, p0, Ljava/util/stream/LongPipeline$9$1;->val$action:Ljava/util/function/LongConsumer;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "t"    # J

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Ljava/util/stream/LongPipeline$9$1;->val$action:Ljava/util/function/LongConsumer;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    #@5
    .line 344
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    #@7
    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    #@a
    .line 342
    return-void
.end method

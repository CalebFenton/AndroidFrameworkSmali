.class Ljava/util/stream/LongPipeline$4$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$4;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/LongPipeline$4;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/LongPipeline$4;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$4;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 260
    .local p0, "this":Ljava/util/stream/LongPipeline$4$1;, "Ljava/util/stream/LongPipeline$4$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$4$1;->this$1:Ljava/util/stream/LongPipeline$4;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 5
    .param p1, "t"    # J

    .line 263
    .local p0, "this":Ljava/util/stream/LongPipeline$4$1;, "Ljava/util/stream/LongPipeline$4$1;"
    iget-object v0, p0, Ljava/util/stream/LongPipeline$4$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/LongPipeline$4$1;->this$1:Ljava/util/stream/LongPipeline$4;

    iget-object v1, v1, Ljava/util/stream/LongPipeline$4;->val$mapper:Ljava/util/function/LongToIntFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/LongToIntFunction;->applyAsInt(J)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(I)V

    .line 264
    return-void
.end method

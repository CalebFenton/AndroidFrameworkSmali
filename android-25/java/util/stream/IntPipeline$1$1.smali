.class Ljava/util/stream/IntPipeline$1$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$1;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/IntPipeline$1;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline$1;Ljava/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$1;

    #@0
    .prologue
    .line 193
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$1$1;->this$1:Ljava/util/stream/IntPipeline$1;

    #@2
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    #@5
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 4
    .param p1, "t"    # I

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@2
    int-to-long v2, p1

    #@3
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->accept(J)V

    #@6
    .line 195
    return-void
.end method

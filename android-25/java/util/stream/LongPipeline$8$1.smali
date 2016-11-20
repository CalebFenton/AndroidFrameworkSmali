.class Ljava/util/stream/LongPipeline$8$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$8;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
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
.field final synthetic this$1:Ljava/util/stream/LongPipeline$8;

.field final synthetic val$predicate:Ljava/util/function/LongPredicate;


# direct methods
.method constructor <init>(Ljava/util/stream/LongPipeline$8;Ljava/util/stream/Sink;Ljava/util/function/LongPredicate;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$8;
    .param p3, "val$predicate"    # Ljava/util/function/LongPredicate;

    #@0
    .prologue
    .line 317
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$8$1;->this$1:Ljava/util/stream/LongPipeline$8;

    #@2
    iput-object p3, p0, Ljava/util/stream/LongPipeline$8$1;->val$predicate:Ljava/util/function/LongPredicate;

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
    .line 325
    iget-object v0, p0, Ljava/util/stream/LongPipeline$8$1;->val$predicate:Ljava/util/function/LongPredicate;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 326
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    #@a
    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    #@d
    .line 324
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    #@2
    const-wide/16 v2, -0x1

    #@4
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    #@7
    .line 319
    return-void
.end method

.class Ljava/util/stream/ReferencePipeline$4$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$4;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$4;

.field final synthetic val$mapper:Ljava/util/function/ToIntFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline$4;Ljava/util/stream/Sink;Ljava/util/function/ToIntFunction;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$4;

    #@0
    .prologue
    .line 208
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    .local p3, "val$mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TP_OUT;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$4$1;->this$1:Ljava/util/stream/ReferencePipeline$4;

    #@2
    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$4$1;->val$mapper:Ljava/util/function/ToIntFunction;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 211
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$4$1;->val$mapper:Ljava/util/function/ToIntFunction;

    #@4
    invoke-interface {v1, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    #@7
    move-result v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(I)V

    #@b
    .line 210
    return-void
.end method

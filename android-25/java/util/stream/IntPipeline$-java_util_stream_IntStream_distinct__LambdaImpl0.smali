.class final synthetic Ljava/util/stream/IntPipeline$-java_util_stream_IntStream_distinct__LambdaImpl0;
.super Ljava/lang/Object;
.source "IntPipeline.java"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_IntStream_distinct__LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public applyAsInt(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    check-cast p1, Ljava/lang/Integer;

    #@2
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/IntPipeline;->-java_util_stream_IntPipeline_lambda$4(Ljava/lang/Integer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

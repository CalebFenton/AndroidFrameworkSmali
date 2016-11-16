.class final synthetic Ljava/util/stream/LongPipeline$-java_util_stream_LongStream_distinct__LambdaImpl0;
.super Ljava/lang/Object;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_LongStream_distinct__LambdaImpl0"
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
.method public applyAsLong(Ljava/lang/Object;)J
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    check-cast p1, Ljava/lang/Long;

    #@2
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline_lambda$4(Ljava/lang/Long;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

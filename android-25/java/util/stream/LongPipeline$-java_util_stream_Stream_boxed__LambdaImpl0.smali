.class final synthetic Ljava/util/stream/LongPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;
.super Ljava/lang/Object;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/function/LongFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Stream_boxed__LambdaImpl0"
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
.method public apply(J)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # J

    #@0
    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-1(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

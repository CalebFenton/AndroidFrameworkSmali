.class final synthetic Ljava/util/stream/LongPipeline$-long_sum__LambdaImpl0;
.super Ljava/lang/Object;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/function/LongBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-long_sum__LambdaImpl0"
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
.method public applyAsLong(JJ)J
    .locals 3
    .param p1, "arg0"    # J
    .param p3, "arg1"    # J

    #@0
    .prologue
    invoke-static {p1, p2, p3, p4}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-2(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

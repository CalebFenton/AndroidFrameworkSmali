.class final synthetic Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_max__LambdaImpl0;
.super Ljava/lang/Object;
.source "DoublePipeline.java"

# interfaces
.implements Ljava/util/function/DoubleBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DoublePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_OptionalDouble_max__LambdaImpl0"
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
.method public applyAsDouble(DD)D
    .locals 3
    .param p1, "arg0"    # D
    .param p3, "arg1"    # D

    #@0
    .prologue
    invoke-static {p1, p2, p3, p4}, Ljava/util/stream/DoublePipeline;->-java_util_stream_DoublePipeline-mthref-3(DD)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

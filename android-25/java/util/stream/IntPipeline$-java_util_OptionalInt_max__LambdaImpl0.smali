.class final synthetic Ljava/util/stream/IntPipeline$-java_util_OptionalInt_max__LambdaImpl0;
.super Ljava/lang/Object;
.source "IntPipeline.java"

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_OptionalInt_max__LambdaImpl0"
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
.method public applyAsInt(II)I
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    #@0
    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/IntPipeline;->-java_util_stream_IntPipeline-mthref-4(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

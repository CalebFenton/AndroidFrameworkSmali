.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_summarizingDouble_java_util_function_ToDoubleFunction_mapper_LambdaImpl1;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Collector_summarizingDouble_java_util_function_ToDoubleFunction_mapper_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$mapper:Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ToDoubleFunction;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_summarizingDouble_java_util_function_ToDoubleFunction_mapper_LambdaImpl1;->val$mapper:Ljava/util/function/ToDoubleFunction;

    #@5
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_summarizingDouble_java_util_function_ToDoubleFunction_mapper_LambdaImpl1;->val$mapper:Ljava/util/function/ToDoubleFunction;

    #@2
    check-cast p1, Ljava/util/DoubleSummaryStatistics;

    #@4
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$88(Ljava/util/function/ToDoubleFunction;Ljava/util/DoubleSummaryStatistics;Ljava/lang/Object;)V

    #@7
    return-void
.end method

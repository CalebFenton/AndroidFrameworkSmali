.class final synthetic Ljava/util/stream/Collectors$-java_util_concurrent_ConcurrentMap_-java_util_stream_Collectors_lambda$69_java_util_function_Function_downstreamFinisher_java_util_concurrent_ConcurrentMap_intermediate_LambdaImpl0;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_concurrent_ConcurrentMap_-java_util_stream_Collectors_lambda$69_java_util_function_Function_downstreamFinisher_java_util_concurrent_ConcurrentMap_intermediate_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$downstreamFinisher:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_concurrent_ConcurrentMap_-java_util_stream_Collectors_lambda$69_java_util_function_Function_downstreamFinisher_java_util_concurrent_ConcurrentMap_intermediate_LambdaImpl0;->val$downstreamFinisher:Ljava/util/function/Function;

    #@5
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_concurrent_ConcurrentMap_-java_util_stream_Collectors_lambda$69_java_util_function_Function_downstreamFinisher_java_util_concurrent_ConcurrentMap_intermediate_LambdaImpl0;->val$downstreamFinisher:Ljava/util/function/Function;

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$70(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

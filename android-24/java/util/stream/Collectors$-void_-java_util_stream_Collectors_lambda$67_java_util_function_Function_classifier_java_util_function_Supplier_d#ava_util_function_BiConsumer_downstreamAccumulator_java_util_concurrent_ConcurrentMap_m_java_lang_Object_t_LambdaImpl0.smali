.class final synthetic Ljava/util/stream/Collectors$-void_-java_util_stream_Collectors_lambda$67_java_util_function_Function_classifier_java_util_function_Supplier_downstreamSupplier_java_util_function_BiConsumer_downstreamAccumulator_java_util_concurrent_ConcurrentMap_m_java_lang_Object_t_LambdaImpl0;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_-java_util_stream_Collectors_lambda$67_java_util_function_Function_classifier_java_util_function_Supplier_downstreamSupplier_java_util_function_BiConsumer_downstreamAccumulator_java_util_concurrent_ConcurrentMap_m_java_lang_Object_t_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$downstreamSupplier:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/Collectors$-void_-java_util_stream_Collectors_lambda$67_java_util_function_Function_classifier_java_util_function_Supplier_downstreamSupplier_java_util_function_BiConsumer_downstreamAccumulator_java_util_concurrent_ConcurrentMap_m_java_lang_Object_t_LambdaImpl0;->val$downstreamSupplier:Ljava/util/function/Supplier;

    #@5
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/Collectors$-void_-java_util_stream_Collectors_lambda$67_java_util_function_Function_classifier_java_util_function_Supplier_downstreamSupplier_java_util_function_BiConsumer_downstreamAccumulator_java_util_concurrent_ConcurrentMap_m_java_lang_Object_t_LambdaImpl0;->val$downstreamSupplier:Ljava/util/function/Supplier;

    #@2
    invoke-static {v0, p1}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$68(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

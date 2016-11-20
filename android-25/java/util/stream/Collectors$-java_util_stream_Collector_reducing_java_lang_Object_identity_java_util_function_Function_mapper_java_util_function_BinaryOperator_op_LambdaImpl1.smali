.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_reducing_java_lang_Object_identity_java_util_function_Function_mapper_java_util_function_BinaryOperator_op_LambdaImpl1;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Collector_reducing_java_lang_Object_identity_java_util_function_Function_mapper_java_util_function_BinaryOperator_op_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$op:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_reducing_java_lang_Object_identity_java_util_function_Function_mapper_java_util_function_BinaryOperator_op_LambdaImpl1;->val$op:Ljava/util/function/BinaryOperator;

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
    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_reducing_java_lang_Object_identity_java_util_function_Function_mapper_java_util_function_BinaryOperator_op_LambdaImpl1;->val$op:Ljava/util/function/BinaryOperator;

    #@2
    check-cast p1, [Ljava/lang/Object;

    #@4
    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    #@6
    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$56(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

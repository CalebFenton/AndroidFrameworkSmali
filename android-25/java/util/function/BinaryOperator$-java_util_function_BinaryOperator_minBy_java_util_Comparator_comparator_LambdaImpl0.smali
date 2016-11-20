.class final synthetic Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_minBy_java_util_Comparator_comparator_LambdaImpl0;
.super Ljava/lang/Object;
.source "BinaryOperator.java"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/function/BinaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_BinaryOperator_minBy_java_util_Comparator_comparator_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_minBy_java_util_Comparator_comparator_LambdaImpl0;->val$comparator:Ljava/util/Comparator;

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
    iget-object v0, p0, Ljava/util/function/BinaryOperator$-java_util_function_BinaryOperator_minBy_java_util_Comparator_comparator_LambdaImpl0;->val$comparator:Ljava/util/Comparator;

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/function/BinaryOperator;->-java_util_function_BinaryOperator_lambda$1(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

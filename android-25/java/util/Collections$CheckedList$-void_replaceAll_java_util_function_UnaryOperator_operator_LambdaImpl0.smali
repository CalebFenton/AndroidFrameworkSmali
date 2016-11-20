.class final synthetic Ljava/util/Collections$CheckedList$-void_replaceAll_java_util_function_UnaryOperator_operator_LambdaImpl0;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CheckedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_replaceAll_java_util_function_UnaryOperator_operator_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$operator:Ljava/util/function/UnaryOperator;

.field private synthetic val$this:Ljava/util/Collections$CheckedList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collections$CheckedList;Ljava/util/function/UnaryOperator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/Collections$CheckedList$-void_replaceAll_java_util_function_UnaryOperator_operator_LambdaImpl0;->val$this:Ljava/util/Collections$CheckedList;

    #@5
    iput-object p2, p0, Ljava/util/Collections$CheckedList$-void_replaceAll_java_util_function_UnaryOperator_operator_LambdaImpl0;->val$operator:Ljava/util/function/UnaryOperator;

    #@7
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/Collections$CheckedList$-void_replaceAll_java_util_function_UnaryOperator_operator_LambdaImpl0;->val$this:Ljava/util/Collections$CheckedList;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedList$-void_replaceAll_java_util_function_UnaryOperator_operator_LambdaImpl0;->val$operator:Ljava/util/function/UnaryOperator;

    #@4
    invoke-virtual {v0, v1, p1}, Ljava/util/Collections$CheckedList;->-java_util_Collections$CheckedList_lambda$2(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

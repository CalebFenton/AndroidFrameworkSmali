.class final synthetic Ljava/util/Comparator$-java_util_Comparator_comparingLong_java_util_function_ToLongFunction_keyExtractor_LambdaImpl0;
.super Ljava/lang/Object;
.source "Comparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_Comparator_comparingLong_java_util_function_ToLongFunction_keyExtractor_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$keyExtractor:Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ToLongFunction;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/Comparator$-java_util_Comparator_comparingLong_java_util_function_ToLongFunction_keyExtractor_LambdaImpl0;->val$keyExtractor:Ljava/util/function/ToLongFunction;

    #@5
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/Comparator$-java_util_Comparator_comparingLong_java_util_function_ToLongFunction_keyExtractor_LambdaImpl0;->val$keyExtractor:Ljava/util/function/ToLongFunction;

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/Comparator;->-java_util_Comparator_lambda$5(Ljava/util/function/ToLongFunction;Ljava/lang/Object;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

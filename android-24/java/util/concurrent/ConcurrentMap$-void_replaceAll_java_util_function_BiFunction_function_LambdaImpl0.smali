.class final synthetic Ljava/util/concurrent/ConcurrentMap$-void_replaceAll_java_util_function_BiFunction_function_LambdaImpl0;
.super Ljava/lang/Object;
.source "ConcurrentMap.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_replaceAll_java_util_function_BiFunction_function_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$function:Ljava/util/function/BiFunction;

.field private synthetic val$this:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentMap$-void_replaceAll_java_util_function_BiFunction_function_LambdaImpl0;->val$this:Ljava/util/concurrent/ConcurrentMap;

    #@5
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentMap$-void_replaceAll_java_util_function_BiFunction_function_LambdaImpl0;->val$function:Ljava/util/function/BiFunction;

    #@7
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentMap$-void_replaceAll_java_util_function_BiFunction_function_LambdaImpl0;->val$this:Ljava/util/concurrent/ConcurrentMap;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentMap$-void_replaceAll_java_util_function_BiFunction_function_LambdaImpl0;->val$function:Ljava/util/function/BiFunction;

    #@4
    invoke-interface {v0, v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->-java_util_concurrent_ConcurrentMap_lambda$1(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)V

    #@7
    return-void
.end method

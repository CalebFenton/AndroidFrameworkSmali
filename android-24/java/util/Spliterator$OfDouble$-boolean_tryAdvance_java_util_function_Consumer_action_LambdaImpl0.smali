.class final synthetic Ljava/util/Spliterator$OfDouble$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/Spliterator$OfDouble$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/Consumer;

    #@5
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "arg0"    # D

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/Spliterator$OfDouble$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/Consumer;

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/Spliterator$OfDouble;->-java_util_Spliterator$OfDouble-mthref-0(Ljava/util/function/Consumer;D)V

    #@5
    return-void
.end method

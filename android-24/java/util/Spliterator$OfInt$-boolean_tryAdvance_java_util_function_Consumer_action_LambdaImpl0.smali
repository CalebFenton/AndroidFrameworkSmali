.class final synthetic Ljava/util/Spliterator$OfInt$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterator$OfInt;
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
    iput-object p1, p0, Ljava/util/Spliterator$OfInt$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/Consumer;

    #@5
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "arg0"    # I

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/Spliterator$OfInt$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/Consumer;

    #@2
    invoke-static {v0, p1}, Ljava/util/Spliterator$OfInt;->-java_util_Spliterator$OfInt-mthref-0(Ljava/util/function/Consumer;I)V

    #@5
    return-void
.end method

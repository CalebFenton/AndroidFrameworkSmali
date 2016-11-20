.class final synthetic Ljava/util/stream/ForEachOps$ForEachOrderedTask$-void_doCompute_java_util_stream_ForEachOps$ForEachOrderedTask_task_LambdaImpl0;
.super Ljava/lang/Object;
.source "ForEachOps.java"

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps$ForEachOrderedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_doCompute_java_util_stream_ForEachOps$ForEachOrderedTask_task_LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    #@0
    .prologue
    invoke-static {p1}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->-java_util_stream_ForEachOps$ForEachOrderedTask_lambda$1(I)[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

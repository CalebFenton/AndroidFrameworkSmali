.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_averagingInt_java_util_function_ToIntFunction_mapper_LambdaImpl3;
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
    name = "-java_util_stream_Collector_averagingInt_java_util_function_ToIntFunction_mapper_LambdaImpl3"
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
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    check-cast p1, [J

    #@2
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$38([J)Ljava/lang/Double;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.class final synthetic Ljava/util/stream/SliceOps$-java_util_function_IntFunction_castingArray__LambdaImpl0;
.super Ljava/lang/Object;
.source "SliceOps.java"

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SliceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_IntFunction_castingArray__LambdaImpl0"
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
    invoke-static {p1}, Ljava/util/stream/SliceOps;->-java_util_stream_SliceOps_lambda$1(I)[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

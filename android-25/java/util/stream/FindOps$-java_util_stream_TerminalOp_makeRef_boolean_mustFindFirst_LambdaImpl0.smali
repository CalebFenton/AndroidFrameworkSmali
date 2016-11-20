.class final synthetic Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeRef_boolean_mustFindFirst_LambdaImpl0;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_TerminalOp_makeRef_boolean_mustFindFirst_LambdaImpl0"
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
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    check-cast p1, Ljava/util/Optional;

    #@2
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/FindOps;->-java_util_stream_FindOps-mthref-0(Ljava/util/Optional;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

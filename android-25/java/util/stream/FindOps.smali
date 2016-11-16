.class final Ljava/util/stream/FindOps;
.super Ljava/lang/Object;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeDouble_boolean_mustFindFirst_LambdaImpl0;,
        Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeDouble_boolean_mustFindFirst_LambdaImpl1;,
        Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeInt_boolean_mustFindFirst_LambdaImpl0;,
        Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeInt_boolean_mustFindFirst_LambdaImpl1;,
        Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeLong_boolean_mustFindFirst_LambdaImpl0;,
        Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeLong_boolean_mustFindFirst_LambdaImpl1;,
        Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeRef_boolean_mustFindFirst_LambdaImpl0;,
        Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeRef_boolean_mustFindFirst_LambdaImpl1;,
        Ljava/util/stream/FindOps$FindOp;,
        Ljava/util/stream/FindOps$FindSink;,
        Ljava/util/stream/FindOps$FindTask;
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_FindOps-mthref-0(Ljava/util/Optional;)Z
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-1()Ljava/util/stream/TerminalSink;
    .locals 1

    #@0
    .prologue
    .line 59
    new-instance v0, Ljava/util/stream/FindOps$FindSink$OfRef;

    #@2
    invoke-direct {v0}, Ljava/util/stream/FindOps$FindSink$OfRef;-><init>()V

    #@5
    return-object v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-2(Ljava/util/OptionalInt;)Z
    .locals 1

    #@0
    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-3()Ljava/util/stream/TerminalSink;
    .locals 1

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/util/stream/FindOps$FindSink$OfInt;

    #@2
    invoke-direct {v0}, Ljava/util/stream/FindOps$FindSink$OfInt;-><init>()V

    #@5
    return-object v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-4(Ljava/util/OptionalLong;)Z
    .locals 1

    #@0
    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/util/OptionalLong;->isPresent()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-5()Ljava/util/stream/TerminalSink;
    .locals 1

    #@0
    .prologue
    .line 83
    new-instance v0, Ljava/util/stream/FindOps$FindSink$OfLong;

    #@2
    invoke-direct {v0}, Ljava/util/stream/FindOps$FindSink$OfLong;-><init>()V

    #@5
    return-object v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-6(Ljava/util/OptionalDouble;)Z
    .locals 1

    #@0
    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-7()Ljava/util/stream/TerminalSink;
    .locals 1

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/util/stream/FindOps$FindSink$OfDouble;

    #@2
    invoke-direct {v0}, Ljava/util/stream/FindOps$FindSink$OfDouble;-><init>()V

    #@5
    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static makeDouble(Z)Ljava/util/stream/TerminalOp;
    .locals 6
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Double;",
            "Ljava/util/OptionalDouble;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 94
    new-instance v0, Ljava/util/stream/FindOps$FindOp;

    #@2
    sget-object v2, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@4
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    #@7
    move-result-object v3

    #@8
    .line 95
    new-instance v4, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeDouble_boolean_mustFindFirst_LambdaImpl0;

    #@a
    invoke-direct {v4}, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeDouble_boolean_mustFindFirst_LambdaImpl0;-><init>()V

    #@d
    new-instance v5, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeDouble_boolean_mustFindFirst_LambdaImpl1;

    #@f
    invoke-direct {v5}, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeDouble_boolean_mustFindFirst_LambdaImpl1;-><init>()V

    #@12
    move v1, p0

    #@13
    .line 94
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    #@16
    return-object v0
.end method

.method public static makeInt(Z)Ljava/util/stream/TerminalOp;
    .locals 6
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/OptionalInt;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    new-instance v0, Ljava/util/stream/FindOps$FindOp;

    #@2
    sget-object v2, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@4
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    #@7
    move-result-object v3

    #@8
    .line 71
    new-instance v4, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeInt_boolean_mustFindFirst_LambdaImpl0;

    #@a
    invoke-direct {v4}, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeInt_boolean_mustFindFirst_LambdaImpl0;-><init>()V

    #@d
    new-instance v5, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeInt_boolean_mustFindFirst_LambdaImpl1;

    #@f
    invoke-direct {v5}, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeInt_boolean_mustFindFirst_LambdaImpl1;-><init>()V

    #@12
    move v1, p0

    #@13
    .line 70
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    #@16
    return-object v0
.end method

.method public static makeLong(Z)Ljava/util/stream/TerminalOp;
    .locals 6
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/OptionalLong;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    new-instance v0, Ljava/util/stream/FindOps$FindOp;

    #@2
    sget-object v2, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@4
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    #@7
    move-result-object v3

    #@8
    .line 83
    new-instance v4, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeLong_boolean_mustFindFirst_LambdaImpl0;

    #@a
    invoke-direct {v4}, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeLong_boolean_mustFindFirst_LambdaImpl0;-><init>()V

    #@d
    new-instance v5, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeLong_boolean_mustFindFirst_LambdaImpl1;

    #@f
    invoke-direct {v5}, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeLong_boolean_mustFindFirst_LambdaImpl1;-><init>()V

    #@12
    move v1, p0

    #@13
    .line 82
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    #@16
    return-object v0
.end method

.method public static makeRef(Z)Ljava/util/stream/TerminalOp;
    .locals 6
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Ljava/util/stream/TerminalOp",
            "<TT;",
            "Ljava/util/Optional",
            "<TT;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    new-instance v0, Ljava/util/stream/FindOps$FindOp;

    #@2
    sget-object v2, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    #@7
    move-result-object v3

    #@8
    .line 59
    new-instance v4, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeRef_boolean_mustFindFirst_LambdaImpl0;

    #@a
    invoke-direct {v4}, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeRef_boolean_mustFindFirst_LambdaImpl0;-><init>()V

    #@d
    new-instance v5, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeRef_boolean_mustFindFirst_LambdaImpl1;

    #@f
    invoke-direct {v5}, Ljava/util/stream/FindOps$-java_util_stream_TerminalOp_makeRef_boolean_mustFindFirst_LambdaImpl1;-><init>()V

    #@12
    move v1, p0

    #@13
    .line 58
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    #@16
    return-object v0
.end method

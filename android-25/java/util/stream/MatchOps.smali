.class final Ljava/util/stream/MatchOps;
.super Ljava/lang/Object;
.source "MatchOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeDouble_java_util_function_DoublePredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;,
        Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeInt_java_util_function_IntPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;,
        Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeLong_java_util_function_LongPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;,
        Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeRef_java_util_function_Predicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;,
        Ljava/util/stream/MatchOps$BooleanTerminalSink;,
        Ljava/util/stream/MatchOps$MatchKind;,
        Ljava/util/stream/MatchOps$MatchOp;,
        Ljava/util/stream/MatchOps$MatchTask;
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_MatchOps-mthref-0(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;
    .locals 1

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/util/stream/MatchOps$1MatchSink;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/MatchOps$1MatchSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)V

    #@5
    return-object v0
.end method

.method static synthetic -java_util_stream_MatchOps-mthref-1(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;
    .locals 1

    #@0
    .prologue
    .line 126
    new-instance v0, Ljava/util/stream/MatchOps$2MatchSink;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/MatchOps$2MatchSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)V

    #@5
    return-object v0
.end method

.method static synthetic -java_util_stream_MatchOps-mthref-2(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;
    .locals 1

    #@0
    .prologue
    .line 156
    new-instance v0, Ljava/util/stream/MatchOps$3MatchSink;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/MatchOps$3MatchSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)V

    #@5
    return-object v0
.end method

.method static synthetic -java_util_stream_MatchOps-mthref-3(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;
    .locals 1

    #@0
    .prologue
    .line 186
    new-instance v0, Ljava/util/stream/MatchOps$4MatchSink;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/MatchOps$4MatchSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)V

    #@5
    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static makeDouble(Ljava/util/function/DoublePredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;
    .locals 3
    .param p0, "predicate"    # Ljava/util/function/DoublePredicate;
    .param p1, "matchKind"    # Ljava/util/stream/MatchOps$MatchKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoublePredicate;",
            "Ljava/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 170
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 186
    new-instance v0, Ljava/util/stream/MatchOps$MatchOp;

    #@8
    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@a
    new-instance v2, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeDouble_java_util_function_DoublePredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;

    #@c
    invoke-direct {v2, p1, p0}, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeDouble_java_util_function_DoublePredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)V

    #@f
    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/MatchOps$MatchOp;-><init>(Ljava/util/stream/StreamShape;Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    #@12
    return-object v0
.end method

.method public static makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;
    .locals 3
    .param p0, "predicate"    # Ljava/util/function/IntPredicate;
    .param p1, "matchKind"    # Ljava/util/stream/MatchOps$MatchKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntPredicate;",
            "Ljava/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 126
    new-instance v0, Ljava/util/stream/MatchOps$MatchOp;

    #@8
    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@a
    new-instance v2, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeInt_java_util_function_IntPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;

    #@c
    invoke-direct {v2, p1, p0}, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeInt_java_util_function_IntPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)V

    #@f
    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/MatchOps$MatchOp;-><init>(Ljava/util/stream/StreamShape;Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    #@12
    return-object v0
.end method

.method public static makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;
    .locals 3
    .param p0, "predicate"    # Ljava/util/function/LongPredicate;
    .param p1, "matchKind"    # Ljava/util/stream/MatchOps$MatchKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongPredicate;",
            "Ljava/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 139
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 156
    new-instance v0, Ljava/util/stream/MatchOps$MatchOp;

    #@8
    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@a
    new-instance v2, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeLong_java_util_function_LongPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;

    #@c
    invoke-direct {v2, p1, p0}, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeLong_java_util_function_LongPredicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)V

    #@f
    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/MatchOps$MatchOp;-><init>(Ljava/util/stream/StreamShape;Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    #@12
    return-object v0
.end method

.method public static makeRef(Ljava/util/function/Predicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;
    .locals 3
    .param p1, "matchKind"    # Ljava/util/stream/MatchOps$MatchKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate",
            "<-TT;>;",
            "Ljava/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 81
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 82
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 97
    new-instance v0, Ljava/util/stream/MatchOps$MatchOp;

    #@8
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@a
    new-instance v2, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeRef_java_util_function_Predicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;

    #@c
    invoke-direct {v2, p1, p0}, Ljava/util/stream/MatchOps$-java_util_stream_TerminalOp_makeRef_java_util_function_Predicate_predicate_java_util_stream_MatchOps$MatchKind_matchKind_LambdaImpl0;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)V

    #@f
    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/MatchOps$MatchOp;-><init>(Ljava/util/stream/StreamShape;Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    #@12
    return-object v0
.end method

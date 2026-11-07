.class final Ljava/util/stream/FindOps;
.super Ljava/lang/Object;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/FindOps$FindSink;,
        Ljava/util/stream/FindOps$FindTask;,
        Ljava/util/stream/FindOps$FindOp;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist makeDouble(Z)Ljava/util/stream/TerminalOp;
    .registers 2
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava/util/OptionalDouble;",
            ">;"
        }
    .end annotation

    .line 93
    if-eqz p0, :cond_5

    sget-object v0, Ljava/util/stream/FindOps$FindSink$OfDouble;->OP_FIND_FIRST:Ljava/util/stream/TerminalOp;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/util/stream/FindOps$FindSink$OfDouble;->OP_FIND_ANY:Ljava/util/stream/TerminalOp;

    :goto_7
    return-object v0
.end method

.method public static blacklist makeInt(Z)Ljava/util/stream/TerminalOp;
    .registers 2
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava/util/OptionalInt;",
            ">;"
        }
    .end annotation

    .line 71
    if-eqz p0, :cond_5

    sget-object v0, Ljava/util/stream/FindOps$FindSink$OfInt;->OP_FIND_FIRST:Ljava/util/stream/TerminalOp;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/util/stream/FindOps$FindSink$OfInt;->OP_FIND_ANY:Ljava/util/stream/TerminalOp;

    :goto_7
    return-object v0
.end method

.method public static blacklist makeLong(Z)Ljava/util/stream/TerminalOp;
    .registers 2
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava/util/OptionalLong;",
            ">;"
        }
    .end annotation

    .line 82
    if-eqz p0, :cond_5

    sget-object v0, Ljava/util/stream/FindOps$FindSink$OfLong;->OP_FIND_FIRST:Ljava/util/stream/TerminalOp;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/util/stream/FindOps$FindSink$OfLong;->OP_FIND_ANY:Ljava/util/stream/TerminalOp;

    :goto_7
    return-object v0
.end method

.method public static blacklist makeRef(Z)Ljava/util/stream/TerminalOp;
    .registers 2
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Ljava/util/stream/TerminalOp<",
            "TT;",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 60
    if-eqz p0, :cond_5

    sget-object v0, Ljava/util/stream/FindOps$FindSink$OfRef;->OP_FIND_FIRST:Ljava/util/stream/TerminalOp;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/util/stream/FindOps$FindSink$OfRef;->OP_FIND_ANY:Ljava/util/stream/TerminalOp;

    .line 59
    :goto_7
    return-object v0
.end method

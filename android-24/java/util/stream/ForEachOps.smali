.class final Ljava/util/stream/ForEachOps;
.super Ljava/lang/Object;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/ForEachOps$ForEachOp;,
        Ljava/util/stream/ForEachOps$ForEachOrderedTask;,
        Ljava/util/stream/ForEachOps$ForEachTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static makeDouble(Ljava/util/function/DoubleConsumer;Z)Ljava/util/stream/TerminalOp;
    .locals 1
    .param p0, "action"    # Ljava/util/function/DoubleConsumer;
    .param p1, "ordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleConsumer;",
            "Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 118
    new-instance v0, Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;-><init>(Ljava/util/function/DoubleConsumer;Z)V

    #@8
    return-object v0
.end method

.method public static makeInt(Ljava/util/function/IntConsumer;Z)Ljava/util/stream/TerminalOp;
    .locals 1
    .param p0, "action"    # Ljava/util/function/IntConsumer;
    .param p1, "ordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntConsumer;",
            "Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 88
    new-instance v0, Ljava/util/stream/ForEachOps$ForEachOp$OfInt;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/stream/ForEachOps$ForEachOp$OfInt;-><init>(Ljava/util/function/IntConsumer;Z)V

    #@8
    return-object v0
.end method

.method public static makeLong(Ljava/util/function/LongConsumer;Z)Ljava/util/stream/TerminalOp;
    .locals 1
    .param p0, "action"    # Ljava/util/function/LongConsumer;
    .param p1, "ordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongConsumer;",
            "Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 102
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 103
    new-instance v0, Ljava/util/stream/ForEachOps$ForEachOp$OfLong;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/stream/ForEachOps$ForEachOp$OfLong;-><init>(Ljava/util/function/LongConsumer;Z)V

    #@8
    return-object v0
.end method

.method public static makeRef(Ljava/util/function/Consumer;Z)Ljava/util/stream/TerminalOp;
    .locals 1
    .param p1, "ordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer",
            "<-TT;>;Z)",
            "Ljava/util/stream/TerminalOp",
            "<TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 72
    .local p0, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 73
    new-instance v0, Ljava/util/stream/ForEachOps$ForEachOp$OfRef;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/stream/ForEachOps$ForEachOp$OfRef;-><init>(Ljava/util/function/Consumer;Z)V

    #@8
    return-object v0
.end method

.class final Ljava/util/stream/SortedOps;
.super Ljava/lang/Object;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;,
        Ljava/util/stream/SortedOps$AbstractIntSortingSink;,
        Ljava/util/stream/SortedOps$AbstractLongSortingSink;,
        Ljava/util/stream/SortedOps$AbstractRefSortingSink;,
        Ljava/util/stream/SortedOps$DoubleSortingSink;,
        Ljava/util/stream/SortedOps$IntSortingSink;,
        Ljava/util/stream/SortedOps$LongSortingSink;,
        Ljava/util/stream/SortedOps$OfDouble;,
        Ljava/util/stream/SortedOps$OfInt;,
        Ljava/util/stream/SortedOps$OfLong;,
        Ljava/util/stream/SortedOps$OfRef;,
        Ljava/util/stream/SortedOps$RefSortingSink;,
        Ljava/util/stream/SortedOps$SizedDoubleSortingSink;,
        Ljava/util/stream/SortedOps$SizedIntSortingSink;,
        Ljava/util/stream/SortedOps$SizedLongSortingSink;,
        Ljava/util/stream/SortedOps$SizedRefSortingSink;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static makeDouble(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/DoubleStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Double;",
            "*>;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 93
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    new-instance v0, Ljava/util/stream/SortedOps$OfDouble;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/SortedOps$OfDouble;-><init>(Ljava/util/stream/AbstractPipeline;)V

    #@5
    return-object v0
.end method

.method static makeInt(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/IntStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Integer;",
            "*>;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    new-instance v0, Ljava/util/stream/SortedOps$OfInt;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/SortedOps$OfInt;-><init>(Ljava/util/stream/AbstractPipeline;)V

    #@5
    return-object v0
.end method

.method static makeLong(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Long;",
            "*>;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    new-instance v0, Ljava/util/stream/SortedOps$OfLong;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/SortedOps$OfLong;-><init>(Ljava/util/stream/AbstractPipeline;)V

    #@5
    return-object v0
.end method

.method static makeRef(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TT;*>;)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 51
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    new-instance v0, Ljava/util/stream/SortedOps$OfRef;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/SortedOps$OfRef;-><init>(Ljava/util/stream/AbstractPipeline;)V

    #@5
    return-object v0
.end method

.method static makeRef(Ljava/util/stream/AbstractPipeline;Ljava/util/Comparator;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TT;*>;",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 63
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Ljava/util/stream/SortedOps$OfRef;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/SortedOps$OfRef;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/Comparator;)V

    #@5
    return-object v0
.end method

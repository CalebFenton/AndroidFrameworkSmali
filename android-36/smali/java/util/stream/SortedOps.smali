.class final Ljava/util/stream/SortedOps;
.super Ljava/lang/Object;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SortedOps$OfRef;,
        Ljava/util/stream/SortedOps$OfInt;,
        Ljava/util/stream/SortedOps$OfLong;,
        Ljava/util/stream/SortedOps$OfDouble;,
        Ljava/util/stream/SortedOps$DoubleSortingSink;,
        Ljava/util/stream/SortedOps$SizedDoubleSortingSink;,
        Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;,
        Ljava/util/stream/SortedOps$LongSortingSink;,
        Ljava/util/stream/SortedOps$SizedLongSortingSink;,
        Ljava/util/stream/SortedOps$AbstractLongSortingSink;,
        Ljava/util/stream/SortedOps$IntSortingSink;,
        Ljava/util/stream/SortedOps$SizedIntSortingSink;,
        Ljava/util/stream/SortedOps$AbstractIntSortingSink;,
        Ljava/util/stream/SortedOps$RefSortingSink;,
        Ljava/util/stream/SortedOps$SizedRefSortingSink;,
        Ljava/util/stream/SortedOps$AbstractRefSortingSink;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist makeDouble(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/DoubleStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 93
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    new-instance v0, Ljava/util/stream/SortedOps$OfDouble;

    invoke-direct {v0, p0}, Ljava/util/stream/SortedOps$OfDouble;-><init>(Ljava/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static blacklist makeInt(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/IntStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 73
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    new-instance v0, Ljava/util/stream/SortedOps$OfInt;

    invoke-direct {v0, p0}, Ljava/util/stream/SortedOps$OfInt;-><init>(Ljava/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static blacklist makeLong(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/LongStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 83
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    new-instance v0, Ljava/util/stream/SortedOps$OfLong;

    invoke-direct {v0, p0}, Ljava/util/stream/SortedOps$OfLong;-><init>(Ljava/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static blacklist makeRef(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TT;*>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 51
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    new-instance v0, Ljava/util/stream/SortedOps$OfRef;

    invoke-direct {v0, p0}, Ljava/util/stream/SortedOps$OfRef;-><init>(Ljava/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static blacklist makeRef(Ljava/util/stream/AbstractPipeline;Ljava/util/Comparator;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 63
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Ljava/util/stream/SortedOps$OfRef;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/SortedOps$OfRef;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/Comparator;)V

    return-object v0
.end method

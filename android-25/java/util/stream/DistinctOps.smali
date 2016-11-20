.class final Ljava/util/stream/DistinctOps;
.super Ljava/lang/Object;
.source "DistinctOps.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static makeRef(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/ReferencePipeline;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TT;*>;)",
            "Ljava/util/stream/ReferencePipeline",
            "<TT;TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    new-instance v0, Ljava/util/stream/DistinctOps$1;

    #@2
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@4
    .line 56
    sget v2, Ljava/util/stream/StreamOpFlag;->IS_DISTINCT:I

    #@6
    sget v3, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    #@8
    or-int/2addr v2, v3

    #@9
    .line 55
    invoke-direct {v0, p0, v1, v2}, Ljava/util/stream/DistinctOps$1;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@c
    return-object v0
.end method

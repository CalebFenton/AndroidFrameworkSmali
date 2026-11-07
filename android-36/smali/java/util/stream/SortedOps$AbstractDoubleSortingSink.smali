.class abstract Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractDoubleSortingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field protected blacklist cancellationRequestedCalled:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Sink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 619
    .local p1, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    .line 620
    return-void
.end method


# virtual methods
.method public final blacklist cancellationRequested()Z
    .registers 2

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;->cancellationRequestedCalled:Z

    .line 625
    const/4 v0, 0x0

    return v0
.end method

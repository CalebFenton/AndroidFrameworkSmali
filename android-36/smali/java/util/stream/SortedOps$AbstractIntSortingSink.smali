.class abstract Ljava/util/stream/SortedOps$AbstractIntSortingSink;
.super Ljava/util/stream/Sink$ChainedInt;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractIntSortingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 421
    .local p1, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    .line 422
    return-void
.end method


# virtual methods
.method public final blacklist cancellationRequested()Z
    .registers 2

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/SortedOps$AbstractIntSortingSink;->cancellationRequestedCalled:Z

    .line 427
    const/4 v0, 0x0

    return v0
.end method

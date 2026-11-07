.class abstract Ljava/util/stream/SortedOps$AbstractLongSortingSink;
.super Ljava/util/stream/Sink$ChainedLong;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractLongSortingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 520
    .local p1, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    .line 521
    return-void
.end method


# virtual methods
.method public final blacklist cancellationRequested()Z
    .registers 2

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/SortedOps$AbstractLongSortingSink;->cancellationRequestedCalled:Z

    .line 526
    const/4 v0, 0x0

    return v0
.end method

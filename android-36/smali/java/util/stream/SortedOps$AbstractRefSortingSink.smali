.class abstract Ljava/util/stream/SortedOps$AbstractRefSortingSink;
.super Ljava/util/stream/Sink$ChainedReference;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractRefSortingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Sink$ChainedReference<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field protected blacklist cancellationRequestedCalled:Z

.field protected final blacklist comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink<",
            "-TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 311
    .local p0, "this":Ljava/util/stream/SortedOps$AbstractRefSortingSink;, "Ljava/util/stream/SortedOps$AbstractRefSortingSink<TT;>;"
    .local p1, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    .line 312
    iput-object p2, p0, Ljava/util/stream/SortedOps$AbstractRefSortingSink;->comparator:Ljava/util/Comparator;

    .line 313
    return-void
.end method


# virtual methods
.method public final blacklist cancellationRequested()Z
    .registers 2

    .line 327
    .local p0, "this":Ljava/util/stream/SortedOps$AbstractRefSortingSink;, "Ljava/util/stream/SortedOps$AbstractRefSortingSink<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/SortedOps$AbstractRefSortingSink;->cancellationRequestedCalled:Z

    .line 328
    const/4 v0, 0x0

    return v0
.end method

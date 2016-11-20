.class Ljava/util/stream/Streams$ConcatSpliterator$OfRef;
.super Ljava/util/stream/Streams$ConcatSpliterator;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams$ConcatSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Streams$ConcatSpliterator",
        "<TT;",
        "Ljava/util/Spliterator",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 781
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfRef;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfRef<TT;>;"
    .local p1, "aSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "bSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Streams$ConcatSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;)V

    #@3
    .line 780
    return-void
.end method

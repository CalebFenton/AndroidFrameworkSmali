.class abstract Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InfiniteSupplyingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;,
        Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;,
        Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;,
        Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field estimate:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "estimate"    # J

    #@0
    .prologue
    .line 1330
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1331
    iput-wide p1, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    #@5
    .line 1330
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1341
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>;"
    const/16 v0, 0x400

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1336
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>;"
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    #@2
    return-wide v0
.end method

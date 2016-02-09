.class final Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;
.super Ljava/util/concurrent/ConcurrentSkipListMap$Index;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HeadIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final level:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V
    .locals 0
    .param p4, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 597
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.HeadIndex<TK;TV;>;"
    .local p1, "node":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p2, "down":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p3, "right":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    #@3
    .line 598
    iput p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@5
    .line 596
    return-void
.end method

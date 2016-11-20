.class final Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CLQSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field batch:I

.field current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field exhausted:Z

.field final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 792
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 793
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@5
    .line 792
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 867
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator<TE;>;"
    const/16 v0, 0x1110

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 864
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator<TE;>;"
    const-wide v0, 0x7fffffffffffffffL

    #@5
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 827
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 828
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@a
    .line 829
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    #@c
    if-nez v4, :cond_4

    #@e
    .line 830
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@10
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v1, :cond_1

    #@12
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_4

    #@18
    .line 831
    :cond_1
    const/4 v4, 0x1

    #@19
    iput-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    #@1b
    .line 833
    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@1d
    .line 834
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@1f
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v2, :cond_5

    #@21
    .line 835
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@24
    move-result-object v1

    #@25
    .line 836
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_3

    #@27
    .line 837
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2a
    .line 838
    :cond_3
    if-nez v1, :cond_2

    #@2c
    .line 825
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    return-void

    #@2d
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    move-object v1, v2

    #@2e
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v5, 0x1

    #@1
    .line 844
    if-nez p1, :cond_0

    #@3
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v4

    #@9
    .line 845
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@b
    .line 846
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    #@d
    if-nez v4, :cond_4

    #@f
    .line 847
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@11
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v1, :cond_1

    #@13
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_4

    #@19
    .line 850
    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@1b
    .line 851
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@1d
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v2, :cond_5

    #@1f
    .line 852
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@22
    move-result-object v1

    #@23
    .line 853
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-nez v0, :cond_2

    #@25
    if-nez v1, :cond_1

    #@27
    .line 854
    :cond_2
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@29
    if-nez v1, :cond_3

    #@2b
    .line 855
    iput-boolean v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    #@2d
    .line 856
    :cond_3
    if-eqz v0, :cond_4

    #@2f
    .line 857
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@32
    .line 858
    return v5

    #@33
    .line 861
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    const/4 v4, 0x0

    #@34
    return v4

    #@35
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    move-object v1, v2

    #@36
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator<TE;>;"
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 798
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@4
    .line 799
    .local v6, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    iget v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->batch:I

    #@6
    .line 800
    .local v1, "b":I
    if-gtz v1, :cond_5

    #@8
    const/4 v3, 0x1

    #@9
    .line 801
    .local v3, "n":I
    :goto_0
    iget-boolean v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    #@b
    if-nez v7, :cond_7

    #@d
    .line 802
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@f
    .local v4, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v4, :cond_0

    #@11
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@14
    move-result-object v4

    #@15
    if-eqz v4, :cond_7

    #@17
    .line 803
    :cond_0
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@19
    if-eqz v7, :cond_7

    #@1b
    .line 804
    new-array v0, v3, [Ljava/lang/Object;

    #@1d
    .line 805
    .local v0, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@1e
    .line 807
    .local v2, "i":I
    :cond_1
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@20
    aput-object v7, v0, v2

    #@22
    if-eqz v7, :cond_2

    #@24
    .line 808
    add-int/lit8 v2, v2, 0x1

    #@26
    .line 809
    :cond_2
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@28
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v5, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v4, v5, :cond_8

    #@2a
    .line 810
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@2d
    move-result-object v4

    #@2e
    .line 811
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz v4, :cond_3

    #@30
    if-lt v2, v3, :cond_1

    #@32
    .line 812
    :cond_3
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@34
    if-nez v4, :cond_4

    #@36
    .line 813
    const/4 v7, 0x1

    #@37
    iput-boolean v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    #@39
    .line 814
    :cond_4
    if-lez v2, :cond_7

    #@3b
    .line 815
    iput v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->batch:I

    #@3d
    .line 817
    const/16 v7, 0x1110

    #@3f
    .line 816
    invoke-static {v0, v9, v2, v7}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    #@42
    move-result-object v7

    #@43
    return-object v7

    #@44
    .line 800
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    const/high16 v7, 0x2000000

    #@46
    if-lt v1, v7, :cond_6

    #@48
    const/high16 v3, 0x2000000

    #@4a
    .restart local v3    # "n":I
    goto :goto_0

    #@4b
    .end local v3    # "n":I
    :cond_6
    add-int/lit8 v3, v1, 0x1

    #@4d
    .restart local v3    # "n":I
    goto :goto_0

    #@4e
    .line 822
    :cond_7
    return-object v8

    #@4f
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_8
    move-object v4, v5

    #@50
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_1
.end method

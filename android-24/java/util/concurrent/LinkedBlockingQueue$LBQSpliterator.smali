.class final Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LBQSpliterator"
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

.field current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field est:J

.field exhausted:Z

.field final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 807
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 808
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    #@5
    .line 809
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    #@8
    move-result v0

    #@9
    int-to-long v0, v0

    #@a
    iput-wide v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    #@c
    .line 807
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 909
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator<TE;>;"
    const/16 v0, 0x1110

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 812
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator<TE;>;"
    iget-wide v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    #@2
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 854
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 855
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    #@a
    .line 856
    .local v2, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    #@c
    if-nez v3, :cond_5

    #@e
    .line 857
    const/4 v3, 0x1

    #@f
    iput-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    #@11
    .line 858
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@13
    .line 860
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_1
    const/4 v0, 0x0

    #@14
    .line 861
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@17
    .line 863
    if-nez v1, :cond_2

    #@19
    .line 864
    :try_start_0
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@1b
    iget-object v1, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@1d
    .line 865
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    if-eqz v1, :cond_3

    #@1f
    .line 866
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@21
    .line 867
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 868
    if-eqz v0, :cond_2

    #@25
    .line 872
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@28
    .line 874
    if-eqz v0, :cond_4

    #@2a
    .line 875
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2d
    .line 876
    :cond_4
    if-nez v1, :cond_1

    #@2f
    .line 853
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_5
    return-void

    #@30
    .line 871
    .restart local v1    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v3

    #@31
    .line 872
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@34
    .line 871
    throw v3
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v3, 0x1

    #@1
    .line 881
    if-nez p1, :cond_0

    #@3
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v2

    #@9
    .line 882
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    #@b
    .line 883
    .local v1, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-boolean v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    #@d
    if-nez v2, :cond_4

    #@f
    .line 884
    const/4 v0, 0x0

    #@10
    .line 885
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@13
    .line 887
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@15
    if-nez v2, :cond_1

    #@17
    .line 888
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@19
    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@1b
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@1d
    .line 889
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 890
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@23
    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@25
    .line 891
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@27
    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@29
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 892
    if-eqz v0, :cond_1

    #@2d
    .line 896
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@30
    .line 898
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@32
    if-nez v2, :cond_3

    #@34
    .line 899
    iput-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    #@36
    .line 900
    :cond_3
    if-eqz v0, :cond_4

    #@38
    .line 901
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@3b
    .line 902
    return v3

    #@3c
    .line 895
    :catchall_0
    move-exception v2

    #@3d
    .line 896
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@40
    .line 895
    throw v2

    #@41
    .line 905
    :cond_4
    const/4 v2, 0x0

    #@42
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 816
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator<TE;>;"
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    #@2
    .line 817
    .local v6, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->batch:I

    #@4
    .line 818
    .local v1, "b":I
    if-gtz v1, :cond_5

    #@6
    const/4 v4, 0x1

    #@7
    .line 819
    .local v4, "n":I
    :goto_0
    iget-boolean v7, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    #@9
    if-nez v7, :cond_8

    #@b
    .line 820
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@d
    .local v2, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-nez v2, :cond_0

    #@f
    iget-object v7, v6, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@11
    iget-object v2, v7, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@13
    if-eqz v2, :cond_8

    #@15
    .line 821
    :cond_0
    iget-object v7, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@17
    if-eqz v7, :cond_8

    #@19
    .line 822
    new-array v0, v4, [Ljava/lang/Object;

    #@1b
    .line 823
    .local v0, "a":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@1c
    .line 824
    .local v3, "i":I
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@1e
    .line 825
    .local v5, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@21
    .line 827
    if-nez v5, :cond_1

    #@23
    :try_start_0
    iget-object v7, v6, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@25
    iget-object v5, v7, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@27
    if-eqz v5, :cond_3

    #@29
    .line 829
    :cond_1
    iget-object v7, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@2b
    aput-object v7, v0, v3

    #@2d
    if-eqz v7, :cond_2

    #@2f
    .line 830
    add-int/lit8 v3, v3, 0x1

    #@31
    .line 831
    :cond_2
    iget-object v5, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    if-eqz v5, :cond_3

    #@35
    if-lt v3, v4, :cond_1

    #@37
    .line 834
    :cond_3
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@3a
    .line 836
    iput-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@3c
    if-nez v5, :cond_7

    #@3e
    .line 837
    const-wide/16 v8, 0x0

    #@40
    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    #@42
    .line 838
    const/4 v7, 0x1

    #@43
    iput-boolean v7, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    #@45
    .line 842
    :cond_4
    :goto_1
    if-lez v3, :cond_8

    #@47
    .line 843
    iput v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->batch:I

    #@49
    .line 845
    const/4 v7, 0x0

    #@4a
    const/16 v8, 0x1110

    #@4c
    .line 844
    invoke-static {v0, v7, v3, v8}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    #@4f
    move-result-object v7

    #@50
    return-object v7

    #@51
    .line 818
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v5    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_5
    const/high16 v7, 0x2000000

    #@53
    if-lt v1, v7, :cond_6

    #@55
    const/high16 v4, 0x2000000

    #@57
    .restart local v4    # "n":I
    goto :goto_0

    #@58
    .end local v4    # "n":I
    :cond_6
    add-int/lit8 v4, v1, 0x1

    #@5a
    .restart local v4    # "n":I
    goto :goto_0

    #@5b
    .line 833
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .restart local v3    # "i":I
    .restart local v5    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v7

    #@5c
    .line 834
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@5f
    .line 833
    throw v7

    #@60
    .line 840
    :cond_7
    iget-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    #@62
    int-to-long v10, v3

    #@63
    sub-long/2addr v8, v10

    #@64
    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    #@66
    const-wide/16 v10, 0x0

    #@68
    cmp-long v7, v8, v10

    #@6a
    if-gez v7, :cond_4

    #@6c
    .line 841
    const-wide/16 v8, 0x0

    #@6e
    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    #@70
    goto :goto_1

    #@71
    .line 850
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v3    # "i":I
    .end local v5    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_8
    const/4 v7, 0x0

    #@72
    return-object v7
.end method

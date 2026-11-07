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
    accessFlags = 0x12
    name = "LBQSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field greylist-max-o batch:I

.field greylist-max-o current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field greylist-max-o est:J

.field greylist-max-o exhausted:Z

.field final synthetic blacklist this$0:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 877
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iget-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    .line 877
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 950
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator;"
    const/16 v0, 0x1110

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 879
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator;"
    iget-wide v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 940
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v0, :cond_14

    .line 942
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    .line 943
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 944
    .local v0, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 945
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->forEachFrom(Ljava/util/function/Consumer;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    .line 947
    .end local v0    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_14
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 915
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v0, :cond_43

    .line 917
    const/4 v0, 0x0

    .line 918
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 921
    :try_start_d
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-nez v1, :cond_1b

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v2, v1

    if-eqz v1, :cond_29

    .line 923
    :cond_1b
    iget-object v1, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    move-object v0, v1

    .line 924
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->succ(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v1

    move-object v2, v1

    .line 925
    if-nez v0, :cond_29

    if-nez v2, :cond_1b

    .line 926
    :cond_29
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v1, 0x1

    if-nez v2, :cond_30

    .line 927
    iput-boolean v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_3c

    .line 929
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_30
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 930
    nop

    .line 931
    if-eqz v0, :cond_43

    .line 932
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 933
    return v1

    .line 929
    :catchall_3c
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 930
    throw v1

    .line 936
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_43
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 883
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.LBQSpliterator;"
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v0, :cond_7c

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v1, v0

    .local v1, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-nez v0, :cond_12

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v1, v0

    if-eqz v0, :cond_7c

    :cond_12
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v0, :cond_7c

    .line 886
    iget v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->batch:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/high16 v3, 0x2000000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->batch:I

    .line 887
    .local v0, "n":I
    new-array v3, v0, [Ljava/lang/Object;

    .line 888
    .local v3, "a":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 889
    .local v4, "i":I
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 890
    .local v5, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 892
    if-nez v5, :cond_3a

    :try_start_2e
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v6, v6, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v6, v6, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v5, v6

    if-eqz v6, :cond_54

    goto :goto_3a

    .line 897
    :catchall_38
    move-exception v2

    goto :goto_4e

    .line 893
    :cond_3a
    :goto_3a
    if-eqz v5, :cond_54

    if-ge v4, v0, :cond_54

    .line 894
    iget-object v6, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v6, v3, v4

    if-eqz v6, :cond_46

    .line 895
    add-int/lit8 v4, v4, 0x1

    .line 893
    :cond_46
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->succ(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v6
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_38

    move-object v5, v6

    goto :goto_3a

    .line 897
    :goto_4e
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 898
    throw v2

    .line 897
    :cond_54
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 898
    nop

    .line 899
    iput-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const-wide/16 v6, 0x0

    if-nez v5, :cond_65

    .line 900
    iput-wide v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    .line 901
    iput-boolean v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    goto :goto_71

    .line 903
    :cond_65
    iget-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    int-to-long v10, v4

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    cmp-long v2, v8, v6

    if-gez v2, :cond_71

    .line 904
    iput-wide v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    .line 905
    :cond_71
    :goto_71
    if-lez v4, :cond_7c

    .line 906
    nop

    .line 907
    const/4 v2, 0x0

    const/16 v6, 0x1110

    invoke-static {v3, v2, v4, v6}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v2

    .line 906
    return-object v2

    .line 911
    .end local v0    # "n":I
    .end local v1    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v3    # "a":[Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v5    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_7c
    const/4 v0, 0x0

    return-object v0
.end method

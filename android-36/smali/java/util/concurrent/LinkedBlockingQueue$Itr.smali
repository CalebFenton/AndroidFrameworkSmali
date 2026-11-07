.class Ljava/util/concurrent/LinkedBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist ancestor:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist-max-o lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private blacklist next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private blacklist nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 775
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$Itr;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 778
    :try_start_8
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v0, :cond_16

    .line 779
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 781
    :cond_16
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 782
    nop

    .line 783
    return-void

    .line 781
    :catchall_1b
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 782
    throw v0
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 810
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$Itr;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-nez v0, :cond_9

    return-void

    .line 813
    :cond_9
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 815
    const/16 v2, 0x40

    .line 816
    .local v2, "batchSize":I
    const/4 v3, 0x0

    .line 817
    .local v3, "es":[Ljava/lang/Object;
    const/4 v4, 0x1

    .line 819
    .local v4, "len":I
    :cond_12
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 821
    if-nez v3, :cond_40

    .line 822
    :try_start_19
    iget-object v5, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v1, v5

    .line 823
    nop

    .local v5, "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_1d
    if-eqz v5, :cond_32

    .line 824
    iget-object v6, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-eqz v6, :cond_2a

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x40

    if-ne v4, v6, :cond_2a

    .line 825
    goto :goto_32

    .line 823
    :cond_2a
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->succ(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v6

    move-object v5, v6

    goto :goto_1d

    .line 826
    .end local v5    # "q":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_32
    :goto_32
    new-array v5, v4, [Ljava/lang/Object;

    move-object v3, v5

    .line 827
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 828
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 829
    const/4 v5, 0x1

    .local v5, "n":I
    goto :goto_41

    .line 838
    .end local v5    # "n":I
    :catchall_3e
    move-exception v0

    goto :goto_57

    .line 831
    :cond_40
    const/4 v5, 0x0

    .line 832
    .restart local v5    # "n":I
    :goto_41
    if-eqz v1, :cond_5d

    if-ge v5, v4, :cond_5d

    .line 833
    iget-object v6, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v6, v3, v5

    if-eqz v6, :cond_4f

    .line 834
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 835
    add-int/lit8 v5, v5, 0x1

    .line 832
    :cond_4f
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->succ(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v6
    :try_end_55
    .catchall {:try_start_19 .. :try_end_55} :catchall_3e

    move-object v1, v6

    goto :goto_41

    .line 838
    .end local v5    # "n":I
    :goto_57
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 839
    throw v0

    .line 838
    .restart local v5    # "n":I
    :cond_5d
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 839
    nop

    .line 840
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_64
    if-ge v6, v5, :cond_6e

    .line 841
    aget-object v7, v3, v6

    .line 842
    .local v7, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 840
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 844
    .end local v6    # "i":I
    :cond_6e
    if-lez v5, :cond_72

    if-nez v1, :cond_12

    .line 845
    :cond_72
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 786
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$Itr;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 791
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$Itr;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-eqz v0, :cond_33

    .line 793
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 794
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 795
    .local v0, "x":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, "e":Ljava/lang/Object;, "TE;"
    :try_start_f
    iget-object v3, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v1, v3

    :goto_12
    if-eqz v1, :cond_21

    iget-object v3, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    move-object v2, v3

    if-nez v3, :cond_21

    .line 799
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->succ(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v3

    move-object v1, v3

    goto :goto_12

    .line 800
    :cond_21
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 801
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2c

    .line 803
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 804
    nop

    .line 805
    return-object v0

    .line 803
    :catchall_2c
    move-exception v2

    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 804
    throw v2

    .line 792
    .end local v0    # "x":Ljava/lang/Object;, "TE;"
    :cond_33
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 848
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$Itr;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 849
    .local v0, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-eqz v0, :cond_39

    .line 851
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 852
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 854
    :try_start_c
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-eqz v1, :cond_2b

    .line 855
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->ancestor:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v1, :cond_1a

    .line 856
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->ancestor:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 857
    :cond_1a
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->ancestor:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->findPred(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->ancestor:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 858
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->ancestor:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_32

    .line 861
    :cond_2b
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 862
    nop

    .line 863
    return-void

    .line 861
    :catchall_32
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 862
    throw v1

    .line 850
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

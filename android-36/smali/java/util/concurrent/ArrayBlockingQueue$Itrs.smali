.class Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Itrs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    }
.end annotation


# static fields
.field private static final greylist-max-o LONG_SWEEP_PROBES:I = 0x10

.field private static final greylist-max-o SHORT_SWEEP_PROBES:I = 0x4


# instance fields
.field greylist-max-o cycles:I

.field private greylist-max-o head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "TE;>.Itrs.Node;"
        }
    .end annotation
.end field

.field private greylist-max-o sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "TE;>.Itrs.Node;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "TE;>.Itr;)V"
        }
    .end annotation

    .line 841
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    .local p2, "initial":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    .line 843
    return-void
.end method


# virtual methods
.method greylist-max-o doSomeSweeping(Z)V
    .registers 11
    .param p1, "tryHarder"    # Z

    .line 856
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    if-eqz p1, :cond_5

    const/16 v0, 0x10

    goto :goto_6

    :cond_5
    const/4 v0, 0x4

    .line 858
    .local v0, "probes":I
    :goto_6
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 861
    .local v1, "sweeper":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-nez v1, :cond_f

    .line 862
    const/4 v2, 0x0

    .line 863
    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 864
    .local v3, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    const/4 v4, 0x1

    .local v4, "passedGo":Z
    goto :goto_13

    .line 866
    .end local v2    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .end local v3    # "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .end local v4    # "passedGo":Z
    :cond_f
    move-object v2, v1

    .line 867
    .restart local v2    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 868
    .restart local v3    # "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    const/4 v4, 0x0

    .line 871
    .restart local v4    # "passedGo":Z
    :goto_13
    const/4 v5, 0x0

    if-lez v0, :cond_4a

    .line 872
    if-nez v3, :cond_1f

    .line 873
    if-eqz v4, :cond_1b

    .line 874
    goto :goto_4a

    .line 875
    :cond_1b
    const/4 v2, 0x0

    .line 876
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 877
    const/4 v4, 0x1

    .line 879
    :cond_1f
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 880
    .local v6, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v7, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 881
    .local v7, "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v6, :cond_32

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v8

    if-eqz v8, :cond_30

    goto :goto_32

    .line 898
    :cond_30
    move-object v2, v3

    goto :goto_46

    .line 883
    :cond_32
    :goto_32
    const/16 v0, 0x10

    .line 885
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 886
    iput-object v5, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 887
    if-nez v2, :cond_44

    .line 888
    iput-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 889
    if-nez v7, :cond_46

    .line 891
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v5, v8, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 892
    return-void

    .line 896
    :cond_44
    iput-object v7, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 900
    :cond_46
    :goto_46
    move-object v3, v7

    .line 871
    .end local v6    # "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .end local v7    # "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 903
    :cond_4a
    :goto_4a
    if-nez v3, :cond_4d

    goto :goto_4e

    :cond_4d
    move-object v5, v2

    :goto_4e
    iput-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 904
    return-void
.end method

.method greylist-max-o elementDequeued()V
    .registers 2

    .line 994
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v0, :cond_a

    .line 995
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    goto :goto_13

    .line 996
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-nez v0, :cond_13

    .line 997
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    .line 998
    :cond_13
    :goto_13
    return-void
.end method

.method greylist-max-o queueIsEmpty()V
    .registers 3

    .line 978
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .local v0, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_2
    if-eqz v0, :cond_15

    .line 979
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 980
    .local v1, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    if-eqz v1, :cond_12

    .line 981
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 982
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    .line 978
    .end local v1    # "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    :cond_12
    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_2

    .line 985
    .end local v0    # "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 986
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v0, v1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 987
    return-void
.end method

.method greylist-max-o register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "TE;>.Itr;)V"
        }
    .end annotation

    .line 911
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    .local p1, "itr":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    invoke-direct {v0, p0, p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;-><init>(Ljava/util/concurrent/ArrayBlockingQueue$Itrs;Ljava/util/concurrent/ArrayBlockingQueue$Itr;Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;)V

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 912
    return-void
.end method

.method greylist-max-o removedAt(I)V
    .registers 8
    .param p1, "removedIndex"    # I

    .line 949
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v0, 0x0

    .local v0, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .local v1, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_3
    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 950
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 951
    .local v3, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v4, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 952
    .local v4, "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v3, :cond_19

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->removedAt(I)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_19

    .line 962
    :cond_17
    move-object v0, v1

    goto :goto_25

    .line 955
    :cond_19
    :goto_19
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 956
    iput-object v2, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 957
    if-nez v0, :cond_23

    .line 958
    iput-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_25

    .line 960
    :cond_23
    iput-object v4, v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 964
    :goto_25
    move-object v1, v4

    .line 965
    .end local v3    # "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .end local v4    # "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    goto :goto_3

    .line 966
    .end local v0    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .end local v1    # "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_27
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v0, :cond_2f

    .line 967
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v2, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 968
    :cond_2f
    return-void
.end method

.method greylist-max-o takeIndexWrapped()V
    .registers 7

    .line 921
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    .line 922
    const/4 v0, 0x0

    .local v0, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .local v1, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_9
    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 923
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    .line 924
    .local v3, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v4, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 925
    .local v4, "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->takeIndexWrapped()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_1f

    .line 935
    :cond_1d
    move-object v0, v1

    goto :goto_2b

    .line 928
    :cond_1f
    :goto_1f
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    .line 929
    iput-object v2, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 930
    if-nez v0, :cond_29

    .line 931
    iput-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    goto :goto_2b

    .line 933
    :cond_29
    iput-object v4, v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    .line 937
    :goto_2b
    move-object v1, v4

    .line 938
    .end local v3    # "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .end local v4    # "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    goto :goto_9

    .line 939
    .end local v0    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .end local v1    # "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_2d
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    if-nez v0, :cond_35

    .line 940
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v2, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 941
    :cond_35
    return-void
.end method

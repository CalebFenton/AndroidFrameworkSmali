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
.field private static final LONG_SWEEP_PROBES:I = 0x10

.field private static final SHORT_SWEEP_PROBES:I = 0x4


# instance fields
.field cycles:I

.field private head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs.Node;"
        }
    .end annotation
.end field

.field private sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs.Node;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itr;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 788
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    .local p1, "this$0":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p2, "initial":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 789
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    #@8
    .line 788
    return-void
.end method


# virtual methods
.method doSomeSweeping(Z)V
    .locals 9
    .param p1, "tryHarder"    # Z

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v7, 0x0

    #@1
    .line 803
    if-eqz p1, :cond_2

    #@3
    const/16 v5, 0x10

    #@5
    .line 805
    .local v5, "probes":I
    :goto_0
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@7
    .line 808
    .local v6, "sweeper":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-nez v6, :cond_3

    #@9
    .line 809
    const/4 v2, 0x0

    #@a
    .line 810
    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@c
    .line 811
    .local v3, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    const/4 v4, 0x1

    #@d
    .line 818
    .end local v2    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .local v4, "passedGo":Z
    :goto_1
    if-lez v5, :cond_0

    #@f
    .line 819
    if-nez v3, :cond_5

    #@11
    .line 820
    if-eqz v4, :cond_4

    #@13
    .line 850
    :cond_0
    if-nez v3, :cond_1

    #@15
    move-object v2, v7

    #@16
    :cond_1
    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->sweeper:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@18
    .line 800
    return-void

    #@19
    .line 803
    .end local v3    # "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .end local v4    # "passedGo":Z
    .end local v5    # "probes":I
    .end local v6    # "sweeper":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_2
    const/4 v5, 0x4

    #@1a
    .restart local v5    # "probes":I
    goto :goto_0

    #@1b
    .line 813
    .restart local v6    # "sweeper":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_3
    move-object v2, v6

    #@1c
    .line 814
    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@1e
    .line 815
    .restart local v3    # "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    const/4 v4, 0x0

    #@1f
    .restart local v4    # "passedGo":Z
    goto :goto_1

    #@20
    .line 822
    .end local v2    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_4
    const/4 v2, 0x0

    #@21
    .line 823
    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@23
    .line 824
    const/4 v4, 0x1

    #@24
    .line 826
    .end local v2    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_5
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    #@2a
    .line 827
    .local v0, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@2c
    .line 828
    .local v1, "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v0, :cond_6

    #@2e
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_9

    #@34
    .line 830
    :cond_6
    const/16 v5, 0x10

    #@36
    .line 832
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    #@39
    .line 833
    iput-object v7, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@3b
    .line 834
    if-nez v2, :cond_7

    #@3d
    .line 835
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@3f
    .line 836
    if-nez v1, :cond_8

    #@41
    .line 838
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@43
    iput-object v7, v8, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@45
    .line 839
    return-void

    #@46
    .line 843
    :cond_7
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@48
    .line 847
    :cond_8
    :goto_2
    move-object v3, v1

    #@49
    .line 818
    add-int/lit8 v5, v5, -0x1

    #@4b
    goto :goto_1

    #@4c
    .line 845
    :cond_9
    move-object v2, v3

    #@4d
    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    goto :goto_2
.end method

.method elementDequeued()V
    .locals 1

    #@0
    .prologue
    .line 941
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@2
    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    #@4
    if-nez v0, :cond_1

    #@6
    .line 942
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    #@9
    .line 939
    :cond_0
    :goto_0
    return-void

    #@a
    .line 943
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@c
    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    #@e
    if-nez v0, :cond_0

    #@10
    .line 944
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    #@13
    goto :goto_0
.end method

.method queueIsEmpty()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v3, 0x0

    #@1
    .line 925
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@3
    .local v1, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_0
    if-eqz v1, :cond_1

    #@5
    .line 926
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    #@b
    .line 927
    .local v0, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    if-eqz v0, :cond_0

    #@d
    .line 928
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    #@10
    .line 929
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    #@13
    .line 925
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@15
    goto :goto_0

    #@16
    .line 932
    .end local v0    # "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    :cond_1
    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@18
    .line 933
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@1a
    iput-object v3, v2, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@1c
    .line 923
    return-void
.end method

.method register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itr;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 858
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    .local p1, "itr":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@4
    invoke-direct {v0, p0, p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;-><init>(Ljava/util/concurrent/ArrayBlockingQueue$Itrs;Ljava/util/concurrent/ArrayBlockingQueue$Itr;Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;)V

    #@7
    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@9
    .line 856
    return-void
.end method

.method removedAt(I)V
    .locals 6
    .param p1, "removedIndex"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v5, 0x0

    #@1
    .line 896
    const/4 v2, 0x0

    #@2
    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@4
    .end local v2    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .local v3, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_0
    if-eqz v3, :cond_3

    #@6
    .line 897
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    #@c
    .line 898
    .local v0, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@e
    .line 899
    .local v1, "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->removedAt(I)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_2

    #@16
    .line 902
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    #@19
    .line 903
    iput-object v5, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@1b
    .line 904
    if-nez v2, :cond_1

    #@1d
    .line 905
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@1f
    .line 911
    :goto_1
    move-object v3, v1

    #@20
    goto :goto_0

    #@21
    .line 907
    :cond_1
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@23
    goto :goto_1

    #@24
    .line 909
    :cond_2
    move-object v2, v3

    #@25
    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    goto :goto_1

    #@26
    .line 913
    .end local v0    # "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .end local v1    # "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .end local v2    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@28
    if-nez v4, :cond_4

    #@2a
    .line 914
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@2c
    iput-object v5, v4, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@2e
    .line 895
    :cond_4
    return-void
.end method

.method takeIndexWrapped()V
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itrs;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs;"
    const/4 v5, 0x0

    #@1
    .line 868
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    #@3
    add-int/lit8 v4, v4, 0x1

    #@5
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    #@7
    .line 869
    const/4 v2, 0x0

    #@8
    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@a
    .end local v2    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .local v3, "p":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :goto_0
    if-eqz v3, :cond_3

    #@c
    .line 870
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->get()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    #@12
    .line 871
    .local v0, "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@14
    .line 872
    .local v1, "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    if-eqz v0, :cond_0

    #@16
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->takeIndexWrapped()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_2

    #@1c
    .line 875
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->clear()V

    #@1f
    .line 876
    iput-object v5, v3, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@21
    .line 877
    if-nez v2, :cond_1

    #@23
    .line 878
    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@25
    .line 884
    :goto_1
    move-object v3, v1

    #@26
    goto :goto_0

    #@27
    .line 880
    :cond_1
    iput-object v1, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;->next:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@29
    goto :goto_1

    #@2a
    .line 882
    :cond_2
    move-object v2, v3

    #@2b
    .local v2, "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    goto :goto_1

    #@2c
    .line 886
    .end local v0    # "it":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .end local v1    # "next":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    .end local v2    # "o":Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itrs.Node;"
    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->head:Ljava/util/concurrent/ArrayBlockingQueue$Itrs$Node;

    #@2e
    if-nez v4, :cond_4

    #@30
    .line 887
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    #@32
    iput-object v5, v4, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    #@34
    .line 866
    :cond_4
    return-void
.end method

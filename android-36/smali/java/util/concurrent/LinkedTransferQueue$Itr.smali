.class final Ljava/util/concurrent/LinkedTransferQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
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
.field private blacklist ancestor:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

.field private blacklist lastRet:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

.field private greylist-max-o nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private blacklist nextNode:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

.field final synthetic blacklist this$0:Ljava/util/concurrent/LinkedTransferQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/LinkedTransferQueue;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/concurrent/LinkedTransferQueue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 928
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V

    .line 930
    return-void
.end method

.method private blacklist advance(Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V
    .registers 8
    .param p1, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 902
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    if-nez p1, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v0, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    goto :goto_9

    :cond_7
    iget-object v0, p1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_9
    move-object v1, v0

    .line 903
    .local v1, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_a
    if-eqz v0, :cond_45

    .line 904
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    .line 905
    .local v2, "isData":Z
    iget-object v3, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    .line 906
    .local v3, "item":Ljava/lang/Object;
    if-eqz v2, :cond_20

    if-eqz v3, :cond_20

    .line 907
    iput-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 908
    iput-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 909
    if-eq v1, v0, :cond_1f

    .line 910
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v4, p1, v1, v0}, Ljava/util/concurrent/LinkedTransferQueue;->tryCasSuccessor(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Z

    .line 911
    :cond_1f
    return-void

    .line 913
    :cond_20
    if-nez v2, :cond_25

    if-nez v3, :cond_25

    .line 914
    goto :goto_45

    .line 915
    :cond_25
    if-eq v1, v0, :cond_36

    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    move-object v5, v0

    .end local v1    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v5, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    invoke-virtual {v4, p1, v1, v0}, Ljava/util/concurrent/LinkedTransferQueue;->tryCasSuccessor(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 916
    move-object p1, v0

    .line 917
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v0, v1

    .end local v5    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v1    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_44

    .line 915
    .end local v1    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v5    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_35
    move-object v1, v5

    .line 919
    .end local v5    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v1    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_36
    iget-object v4, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v5, v4

    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v5, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v0, v4, :cond_43

    .line 920
    const/4 p1, 0x0

    .line 921
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v0, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v4, v0

    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    move-object v1, v0

    .end local v1    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v0, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_44

    .line 919
    .end local v0    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v1    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_43
    move-object v0, v5

    .line 923
    .end local v2    # "isData":Z
    .end local v3    # "item":Ljava/lang/Object;
    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_44
    goto :goto_a

    .line 924
    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v1    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_45
    :goto_45
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 925
    iput-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 926
    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 945
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_4
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v1, :cond_13

    .line 948
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 947
    move-object v0, v2

    invoke-direct {p0, v2}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V

    goto :goto_4

    .line 949
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_13
    if-eqz v0, :cond_17

    .line 950
    iput-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 951
    :cond_17
    return-void
.end method

.method public final whitelist test-api hasNext()Z
    .registers 2

    .line 933
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 938
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v0, :cond_d

    .line 939
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 940
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V

    .line 941
    return-object v0

    .line 938
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api remove()V
    .registers 9

    .line 954
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 955
    .local v0, "lastRet":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-eqz v0, :cond_6e

    .line 957
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 958
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    if-nez v1, :cond_c

    .line 959
    return-void

    .line 961
    :cond_c
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->ancestor:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 962
    .local v1, "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-nez v1, :cond_15

    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v2, v2, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    goto :goto_17

    :cond_15
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_17
    move-object v3, v2

    .line 963
    .local v3, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_18
    if-eqz v2, :cond_6d

    .line 964
    if-ne v2, v0, :cond_33

    .line 965
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v5, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/util/concurrent/LinkedTransferQueue;->tryMatchData(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/lang/Object;)Z

    .line 966
    iget-object v4, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v5, v4

    .local v5, "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-nez v4, :cond_29

    move-object v5, v2

    .line 967
    :cond_29
    if-eq v3, v5, :cond_30

    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v4, v1, v3, v5}, Ljava/util/concurrent/LinkedTransferQueue;->tryCasSuccessor(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Z

    .line 968
    :cond_30
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->ancestor:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 969
    return-void

    .line 972
    .end local v5    # "q":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_33
    iget-object v4, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "item":Ljava/lang/Object;
    if-eqz v4, :cond_3e

    iget-boolean v4, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    if-eqz v4, :cond_3e

    const/4 v4, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v4, 0x0

    :goto_3f
    move v6, v4

    .local v6, "pAlive":Z
    if-eqz v4, :cond_43

    goto :goto_4a

    .line 975
    :cond_43
    iget-boolean v4, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    if-nez v4, :cond_4a

    if-nez v5, :cond_4a

    .line 976
    goto :goto_6d

    .line 977
    :cond_4a
    :goto_4a
    if-eq v3, v2, :cond_56

    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    move-object v7, v2

    .end local v3    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v7, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    invoke-virtual {v4, v1, v3, v2}, Ljava/util/concurrent/LinkedTransferQueue;->tryCasSuccessor(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Z

    move-result v3

    if-eqz v3, :cond_59

    move-object v3, v7

    .end local v7    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v3    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_56
    if-eqz v6, :cond_5e

    move-object v7, v3

    .line 978
    .end local v3    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v7    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_59
    move-object v1, v2

    .line 979
    iget-object v3, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v2, v3

    .end local v7    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v3    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_6c

    .line 981
    :cond_5e
    iget-object v4, v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v7, v4

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v7, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    if-ne v2, v4, :cond_6b

    .line 982
    const/4 v1, 0x0

    .line 983
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v2, v2, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-object v4, v2

    .end local v7    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    move-object v3, v2

    .end local v3    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v2, "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    goto :goto_6c

    .line 981
    .end local v2    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v3    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .restart local v7    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_6b
    move-object v2, v7

    .line 985
    .end local v5    # "item":Ljava/lang/Object;
    .end local v6    # "pAlive":Z
    .end local v7    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :goto_6c
    goto :goto_18

    .line 991
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .end local v3    # "c":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_6d
    :goto_6d
    return-void

    .line 956
    .end local v1    # "pred":Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    :cond_6e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

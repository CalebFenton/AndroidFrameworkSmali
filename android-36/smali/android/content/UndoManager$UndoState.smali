.class final Landroid/content/UndoManager$UndoState;
.super Ljava/lang/Object;
.source "UndoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/UndoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UndoState"
.end annotation


# instance fields
.field private greylist-max-o mCanMerge:Z

.field private final greylist-max-o mCommitId:I

.field private greylist-max-o mExecuted:Z

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private final greylist-max-o mManager:Landroid/content/UndoManager;

.field private final greylist-max-o mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UndoOperation<",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mRecent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UndoOperation<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/UndoManager;I)V
    .registers 4
    .param p1, "manager"    # Landroid/content/UndoManager;
    .param p2, "commitId"    # I

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    .line 767
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    .line 768
    iput p2, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    .line 769
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/UndoManager;Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 9
    .param p1, "manager"    # Landroid/content/UndoManager;
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    .line 772
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    move v1, v0

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    iput-boolean v1, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    iput-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    .line 776
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 778
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    if-ge v1, v0, :cond_54

    .line 779
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    invoke-virtual {v2, p2}, Landroid/content/UndoManager;->restoreOwner(Landroid/os/Parcel;)Landroid/content/UndoOwner;

    move-result-object v2

    .line 780
    .local v2, "owner":Landroid/content/UndoOwner;
    const-class v3, Landroid/content/UndoOperation;

    invoke-virtual {p2, p3, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoOperation;

    .line 781
    .local v3, "op":Landroid/content/UndoOperation;
    iput-object v2, v3, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    .line 782
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    .end local v2    # "owner":Landroid/content/UndoOwner;
    .end local v3    # "op":Landroid/content/UndoOperation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 784
    .end local v1    # "i":I
    :cond_54
    return-void
.end method


# virtual methods
.method greylist-max-o addOperation(Landroid/content/UndoOperation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOperation<",
            "*>;)V"
        }
    .end annotation

    .line 870
    .local p1, "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 873
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    .line 875
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    .line 876
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_1d
    iget-object v0, p1, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    iget v1, v0, Landroid/content/UndoOwner;->mOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/content/UndoOwner;->mOpCount:I

    .line 879
    return-void

    .line 871
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already holds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o canMerge()Z
    .registers 2

    .line 835
    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o commit()V
    .registers 4

    .line 923
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 924
    .local v0, "N":I
    :goto_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1d

    .line 925
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    invoke-virtual {v2}, Landroid/content/UndoOperation;->commit()V

    .line 924
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 927
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    .line 928
    return-void
.end method

.method greylist-max-o countOperations()I
    .registers 2

    .line 839
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method greylist-max-o destroy()V
    .registers 6

    .line 944
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_54

    .line 945
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoOperation;

    iget-object v1, v1, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    .line 946
    .local v1, "owner":Landroid/content/UndoOwner;
    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    .line 947
    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    if-gtz v2, :cond_51

    .line 948
    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    if-ltz v2, :cond_28

    .line 952
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->removeOwner(Landroid/content/UndoOwner;)V

    goto :goto_51

    .line 949
    :cond_28
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Underflow of op count on owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in op "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    .line 950
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 944
    .end local v1    # "owner":Landroid/content/UndoOwner;
    :cond_51
    :goto_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 955
    .end local v0    # "i":I
    :cond_54
    return-void
.end method

.method greylist-max-o getCommitId()I
    .registers 2

    .line 804
    iget v0, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    return v0
.end method

.method greylist-max-o getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 818
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method greylist-max-o getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;
    .registers 8
    .param p2, "owner"    # Landroid/content/UndoOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/UndoOperation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/UndoOwner;",
            ")TT;"
        }
    .end annotation

    .line 882
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 883
    .local v0, "N":I
    const/4 v1, 0x0

    if-nez p1, :cond_18

    if-nez p2, :cond_18

    .line 884
    if-lez v0, :cond_17

    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoOperation;

    :cond_17
    return-object v1

    .line 887
    :cond_18
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_3a

    .line 888
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoOperation;

    .line 889
    .local v3, "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    if-eqz p2, :cond_30

    invoke-virtual {v3}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v4

    if-eq v4, p2, :cond_30

    .line 890
    nop

    .line 887
    .end local v3    # "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 895
    .restart local v3    # "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    :cond_30
    if-eqz p1, :cond_39

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p1, :cond_39

    .line 896
    return-object v1

    .line 898
    :cond_39
    return-object v3

    .line 901
    .end local v2    # "i":I
    .end local v3    # "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    :cond_3a
    return-object v1
.end method

.method greylist-max-o hasData()Z
    .registers 4

    .line 914
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 915
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    invoke-virtual {v2}, Landroid/content/UndoOperation;->hasData()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 916
    return v1

    .line 914
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 919
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o hasMultipleOwners()Z
    .registers 7

    .line 856
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 857
    .local v0, "N":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_b

    .line 858
    return v1

    .line 860
    :cond_b
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoOperation;

    invoke-virtual {v3}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v3

    .line 861
    .local v3, "owner":Landroid/content/UndoOwner;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_18
    if-ge v4, v0, :cond_2c

    .line 862
    iget-object v5, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/UndoOperation;

    invoke-virtual {v5}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v5

    if-eq v5, v3, :cond_29

    .line 863
    return v2

    .line 861
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 866
    .end local v4    # "i":I
    :cond_2c
    return v1
.end method

.method greylist-max-o hasOperation(Landroid/content/UndoOwner;)Z
    .registers 7
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .line 843
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 844
    .local v0, "N":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_e

    .line 845
    if-eqz v0, :cond_d

    move v1, v2

    :cond_d
    return v1

    .line 847
    :cond_e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_23

    .line 848
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/UndoOperation;

    invoke-virtual {v4}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v4

    if-ne v4, p1, :cond_20

    .line 849
    return v2

    .line 847
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 852
    .end local v3    # "i":I
    :cond_23
    return v1
.end method

.method greylist-max-o makeExecuted()V
    .registers 2

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    .line 832
    return-void
.end method

.method greylist-max-o matchOwner(Landroid/content/UndoOwner;)Z
    .registers 5
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .line 905
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 906
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    invoke-virtual {v2, p1}, Landroid/content/UndoOperation;->matchOwner(Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 907
    return v1

    .line 905
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 910
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o redo()V
    .registers 4

    .line 937
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 938
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 939
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    invoke-virtual {v2}, Landroid/content/UndoOperation;->redo()V

    .line 938
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 941
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method greylist-max-o setCanMerge(Z)Z
    .registers 3
    .param p1, "state"    # Z

    .line 823
    if-eqz p1, :cond_8

    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    if-eqz v0, :cond_8

    .line 824
    const/4 v0, 0x0

    return v0

    .line 826
    :cond_8
    iput-boolean p1, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    .line 827
    const/4 v0, 0x1

    return v0
.end method

.method greylist-max-o setLabel(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 808
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    .line 809
    return-void
.end method

.method greylist-max-o undo()V
    .registers 3

    .line 931
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 932
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoOperation;

    invoke-virtual {v1}, Landroid/content/UndoOperation;->undo()V

    .line 931
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 934
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method greylist-max-o updateLabel(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 812
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 813
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    .line 815
    :cond_6
    return-void
.end method

.method greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "p"    # Landroid/os/Parcel;

    .line 787
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    if-nez v0, :cond_3b

    .line 790
    iget v0, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 794
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 795
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    if-ge v2, v0, :cond_3a

    .line 797
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoOperation;

    .line 798
    .local v3, "op":Landroid/content/UndoOperation;
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    iget-object v5, v3, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    invoke-virtual {v4, v5, p1}, Landroid/content/UndoManager;->saveOwner(Landroid/content/UndoOwner;Landroid/os/Parcel;)V

    .line 799
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 796
    .end local v3    # "op":Landroid/content/UndoOperation;
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 801
    .end local v2    # "i":I
    :cond_3a
    return-void

    .line 788
    .end local v0    # "N":I
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t save state before committing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

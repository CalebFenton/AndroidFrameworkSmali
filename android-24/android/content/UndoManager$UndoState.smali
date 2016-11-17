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
.field private mCanMerge:Z

.field private final mCommitId:I

.field private mExecuted:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private final mManager:Landroid/content/UndoManager;

.field private final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoOperation",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mRecent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoOperation",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/UndoManager;I)V
    .locals 1
    .param p1, "manager"    # Landroid/content/UndoManager;
    .param p2, "commitId"    # I

    #@0
    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 741
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@a
    .line 744
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    #@d
    .line 748
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    #@f
    .line 749
    iput p2, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    #@11
    .line 747
    return-void
.end method

.method constructor <init>(Landroid/content/UndoManager;Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "manager"    # Landroid/content/UndoManager;
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 741
    new-instance v4, Ljava/util/ArrayList;

    #@7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@c
    .line 744
    iput-boolean v5, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    #@e
    .line 753
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    #@10
    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v4

    #@14
    iput v4, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    #@16
    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    move v4, v5

    #@1d
    :goto_0
    iput-boolean v4, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    #@1f
    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    :goto_1
    iput-boolean v5, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    #@27
    .line 757
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Ljava/lang/CharSequence;

    #@2f
    iput-object v4, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    #@31
    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    .line 759
    .local v0, "N":I
    const/4 v1, 0x0

    #@36
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    #@38
    .line 760
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    #@3a
    invoke-virtual {v4, p2}, Landroid/content/UndoManager;->restoreOwner(Landroid/os/Parcel;)Landroid/content/UndoOwner;

    #@3d
    move-result-object v3

    #@3e
    .line 761
    .local v3, "owner":Landroid/content/UndoOwner;
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Landroid/content/UndoOperation;

    #@44
    .line 762
    .local v2, "op":Landroid/content/UndoOperation;
    iput-object v3, v2, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    #@46
    .line 763
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4b
    .line 759
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_2

    #@4e
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "op":Landroid/content/UndoOperation;
    .end local v3    # "owner":Landroid/content/UndoOwner;
    :cond_0
    move v4, v6

    #@4f
    .line 755
    goto :goto_0

    #@50
    :cond_1
    move v5, v6

    #@51
    .line 756
    goto :goto_1

    #@52
    .line 752
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method addOperation(Landroid/content/UndoOperation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOperation",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 851
    .local p1, "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 852
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Already holds "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 854
    :cond_0
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 855
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 856
    new-instance v0, Ljava/util/ArrayList;

    #@2d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@30
    iput-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    #@32
    .line 857
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 859
    :cond_1
    iget-object v0, p1, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    #@39
    iget v1, v0, Landroid/content/UndoOwner;->mOpCount:I

    #@3b
    add-int/lit8 v1, v1, 0x1

    #@3d
    iput v1, v0, Landroid/content/UndoOwner;->mOpCount:I

    #@3f
    .line 850
    return-void
.end method

.method canMerge()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 816
    iget-boolean v1, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method commit()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 904
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    .line 905
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    #@e
    .line 906
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/content/UndoOperation;

    #@16
    invoke-virtual {v2}, Landroid/content/UndoOperation;->commit()V

    #@19
    .line 905
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_1

    #@1c
    .line 904
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "N":I
    goto :goto_0

    #@1e
    .line 908
    .restart local v1    # "i":I
    :cond_1
    iput-object v3, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    #@20
    .line 903
    return-void
.end method

.method countOperations()I
    .locals 1

    #@0
    .prologue
    .line 820
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method destroy()V
    .locals 5

    #@0
    .prologue
    .line 925
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@a
    .line 926
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/content/UndoOperation;

    #@12
    iget-object v1, v2, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    #@14
    .line 927
    .local v1, "owner":Landroid/content/UndoOwner;
    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    #@16
    add-int/lit8 v2, v2, -0x1

    #@18
    iput v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    #@1a
    .line 928
    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    #@1c
    if-gtz v2, :cond_1

    #@1e
    .line 929
    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    #@20
    if-gez v2, :cond_0

    #@22
    .line 930
    new-instance v2, Ljava/lang/IllegalStateException;

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "Underflow of op count on owner "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    .line 931
    const-string/jumbo v4, " in op "

    #@37
    .line 930
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 931
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    .line 930
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v2

    #@4d
    .line 933
    :cond_0
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    #@4f
    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->removeOwner(Landroid/content/UndoOwner;)V

    #@52
    .line 925
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@54
    goto :goto_0

    #@55
    .line 924
    .end local v1    # "owner":Landroid/content/UndoOwner;
    :cond_2
    return-void
.end method

.method getCommitId()I
    .locals 1

    #@0
    .prologue
    .line 785
    iget v0, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    #@2
    return v0
.end method

.method getLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 799
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;
    .locals 5
    .param p2, "owner"    # Landroid/content/UndoOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/UndoOperation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/UndoOwner;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 863
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 864
    .local v0, "N":I
    if-nez p1, :cond_1

    #@9
    if-nez p2, :cond_1

    #@b
    .line 865
    if-lez v0, :cond_0

    #@d
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@f
    add-int/lit8 v4, v0, -0x1

    #@11
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/content/UndoOperation;

    #@17
    :cond_0
    return-object v3

    #@18
    .line 868
    :cond_1
    add-int/lit8 v1, v0, -0x1

    #@1a
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    #@1c
    .line 869
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/content/UndoOperation;

    #@24
    .line 870
    .local v2, "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    if-eqz p2, :cond_2

    #@26
    invoke-virtual {v2}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    #@29
    move-result-object v4

    #@2a
    if-eq v4, p2, :cond_2

    #@2c
    .line 868
    add-int/lit8 v1, v1, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 876
    :cond_2
    if-eqz p1, :cond_3

    #@31
    invoke-virtual {v2}, Landroid/content/UndoOperation;->getClass()Ljava/lang/Class;

    #@34
    move-result-object v4

    #@35
    if-eq v4, p1, :cond_3

    #@37
    .line 877
    return-object v3

    #@38
    .line 879
    :cond_3
    return-object v2

    #@39
    .line 882
    .end local v2    # "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    :cond_4
    return-object v3
.end method

.method hasData()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 895
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 896
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/content/UndoOperation;

    #@13
    invoke-virtual {v1}, Landroid/content/UndoOperation;->hasData()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 897
    const/4 v1, 0x1

    #@1a
    return v1

    #@1b
    .line 895
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 900
    :cond_1
    return v2
.end method

.method hasMultipleOwners()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 837
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 838
    .local v0, "N":I
    if-gt v0, v5, :cond_0

    #@a
    .line 839
    return v4

    #@b
    .line 841
    :cond_0
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/content/UndoOperation;

    #@13
    invoke-virtual {v3}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    #@16
    move-result-object v2

    #@17
    .line 842
    .local v2, "owner":Landroid/content/UndoOwner;
    const/4 v1, 0x1

    #@18
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@1a
    .line 843
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Landroid/content/UndoOperation;

    #@22
    invoke-virtual {v3}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    #@25
    move-result-object v3

    #@26
    if-eq v3, v2, :cond_1

    #@28
    .line 844
    return v5

    #@29
    .line 842
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 847
    :cond_2
    return v4
.end method

.method hasOperation(Landroid/content/UndoOwner;)Z
    .locals 5
    .param p1, "owner"    # Landroid/content/UndoOwner;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 824
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 825
    .local v0, "N":I
    if-nez p1, :cond_1

    #@a
    .line 826
    if-eqz v0, :cond_0

    #@c
    move v2, v3

    #@d
    :goto_0
    return v2

    #@e
    :cond_0
    move v2, v4

    #@f
    goto :goto_0

    #@10
    .line 828
    :cond_1
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@13
    .line 829
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/content/UndoOperation;

    #@1b
    invoke-virtual {v2}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    #@1e
    move-result-object v2

    #@1f
    if-ne v2, p1, :cond_2

    #@21
    .line 830
    return v3

    #@22
    .line 828
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_1

    #@25
    .line 833
    :cond_3
    return v4
.end method

.method makeExecuted()V
    .locals 1

    #@0
    .prologue
    .line 812
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    #@3
    .line 811
    return-void
.end method

.method matchOwner(Landroid/content/UndoOwner;)Z
    .locals 3
    .param p1, "owner"    # Landroid/content/UndoOwner;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 886
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 887
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/content/UndoOperation;

    #@13
    invoke-virtual {v1, p1}, Landroid/content/UndoOperation;->matchOwner(Landroid/content/UndoOwner;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 888
    const/4 v1, 0x1

    #@1a
    return v1

    #@1b
    .line 886
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 891
    :cond_1
    return v2
.end method

.method redo()V
    .locals 3

    #@0
    .prologue
    .line 918
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 919
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 920
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/content/UndoOperation;

    #@11
    invoke-virtual {v2}, Landroid/content/UndoOperation;->redo()V

    #@14
    .line 919
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 917
    :cond_0
    return-void
.end method

.method setCanMerge(Z)Z
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 804
    if-eqz p1, :cond_0

    #@2
    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 805
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 807
    :cond_0
    iput-boolean p1, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    #@a
    .line 808
    const/4 v0, 0x1

    #@b
    return v0
.end method

.method setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 789
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    #@2
    .line 788
    return-void
.end method

.method undo()V
    .locals 2

    #@0
    .prologue
    .line 912
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 913
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/content/UndoOperation;

    #@12
    invoke-virtual {v1}, Landroid/content/UndoOperation;->undo()V

    #@15
    .line 912
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 911
    :cond_0
    return-void
.end method

.method updateLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 793
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 794
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    #@6
    .line 792
    :cond_0
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 768
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 769
    new-instance v3, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v4, "Can\'t save state before committing"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 771
    :cond_0
    iget v3, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    #@11
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 772
    iget-boolean v3, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    #@16
    if-eqz v3, :cond_1

    #@18
    move v3, v4

    #@19
    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 773
    iget-boolean v3, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    #@1e
    if-eqz v3, :cond_2

    #@20
    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 774
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    #@25
    invoke-static {v3, p1, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@28
    .line 775
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v0

    #@2e
    .line 776
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 777
    const/4 v1, 0x0

    #@32
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    #@34
    .line 778
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Landroid/content/UndoOperation;

    #@3c
    .line 779
    .local v2, "op":Landroid/content/UndoOperation;
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    #@3e
    iget-object v4, v2, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    #@40
    invoke-virtual {v3, v4, p1}, Landroid/content/UndoManager;->saveOwner(Landroid/content/UndoOwner;Landroid/os/Parcel;)V

    #@43
    .line 780
    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@46
    .line 777
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_2

    #@49
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "op":Landroid/content/UndoOperation;
    :cond_1
    move v3, v5

    #@4a
    .line 772
    goto :goto_0

    #@4b
    :cond_2
    move v4, v5

    #@4c
    .line 773
    goto :goto_1

    #@4d
    .line 767
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

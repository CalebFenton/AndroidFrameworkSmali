.class Landroid/app/StatsManager$PullAtomCallbackInternal;
.super Landroid/os/IPullAtomCallback$Stub;
.source "StatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PullAtomCallbackInternal"
.end annotation


# instance fields
.field public final blacklist mAtomId:I

.field public final blacklist mCallback:Landroid/app/StatsManager$StatsPullAtomCallback;

.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$oIAiCNGFyxeWs0XtQyXXxYxjHhU(Landroid/app/StatsManager$PullAtomCallbackInternal;ILandroid/os/IPullAtomResultReceiver;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/StatsManager$PullAtomCallbackInternal;->lambda$onPullAtom$0(ILandroid/os/IPullAtomResultReceiver;)V

    return-void
.end method

.method constructor blacklist <init>(ILandroid/app/StatsManager$StatsPullAtomCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "atomId"    # I
    .param p2, "callback"    # Landroid/app/StatsManager$StatsPullAtomCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 688
    invoke-direct {p0}, Landroid/os/IPullAtomCallback$Stub;-><init>()V

    .line 689
    iput p1, p0, Landroid/app/StatsManager$PullAtomCallbackInternal;->mAtomId:I

    .line 690
    iput-object p2, p0, Landroid/app/StatsManager$PullAtomCallbackInternal;->mCallback:Landroid/app/StatsManager$StatsPullAtomCallback;

    .line 691
    iput-object p3, p0, Landroid/app/StatsManager$PullAtomCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    .line 692
    return-void
.end method

.method private synthetic blacklist lambda$onPullAtom$0(ILandroid/os/IPullAtomResultReceiver;)V
    .registers 13
    .param p1, "atomTag"    # I
    .param p2, "resultReceiver"    # Landroid/os/IPullAtomResultReceiver;

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v1, p0, Landroid/app/StatsManager$PullAtomCallbackInternal;->mCallback:Landroid/app/StatsManager$StatsPullAtomCallback;

    invoke-interface {v1, p1, v0}, Landroid/app/StatsManager$StatsPullAtomCallback;->onPullAtom(ILjava/util/List;)I

    move-result v1

    .line 701
    .local v1, "successInt":I
    const/4 v2, 0x0

    if-nez v1, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    move v3, v2

    .line 702
    .local v3, "success":Z
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/util/StatsEventParcel;

    .line 703
    .local v4, "parcels":[Landroid/util/StatsEventParcel;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_36

    .line 704
    new-instance v6, Landroid/util/StatsEventParcel;

    invoke-direct {v6}, Landroid/util/StatsEventParcel;-><init>()V

    aput-object v6, v4, v5

    .line 705
    aget-object v6, v4, v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/StatsEvent;

    invoke-virtual {v7}, Landroid/util/StatsEvent;->getBytes()[B

    move-result-object v7

    iput-object v7, v6, Landroid/util/StatsEventParcel;->buffer:[B

    .line 703
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 708
    .end local v5    # "i":I
    :cond_36
    :try_start_36
    invoke-interface {p2, p1, v3, v4}, Landroid/os/IPullAtomResultReceiver;->pullFinished(IZ[Landroid/util/StatsEventParcel;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 719
    goto :goto_7e

    .line 709
    :catch_3a
    move-exception v5

    .line 710
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StatsPullResultReceiver failed for tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Landroid/app/StatsManager$PullAtomCallbackInternal;->mAtomId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " due to TransactionTooLarge. Calling pullFinish with no data"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "StatsManager"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-array v6, v2, [Landroid/util/StatsEventParcel;

    .line 714
    .local v6, "emptyData":[Landroid/util/StatsEventParcel;
    :try_start_5d
    invoke-interface {p2, p1, v2, v6}, Landroid/os/IPullAtomResultReceiver;->pullFinished(IZ[Landroid/util/StatsEventParcel;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_60} :catch_61

    .line 718
    goto :goto_7e

    .line 715
    :catch_61
    move-exception v2

    .line 716
    .local v2, "nestedException":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/app/StatsManager$PullAtomCallbackInternal;->mAtomId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " with empty payload"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v2    # "nestedException":Landroid/os/RemoteException;
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v6    # "emptyData":[Landroid/util/StatsEventParcel;
    :goto_7e
    return-void
.end method


# virtual methods
.method public blacklist onPullAtom(ILandroid/os/IPullAtomResultReceiver;)V
    .registers 7
    .param p1, "atomTag"    # I
    .param p2, "resultReceiver"    # Landroid/os/IPullAtomResultReceiver;

    .line 696
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 698
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/app/StatsManager$PullAtomCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/StatsManager$PullAtomCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/StatsManager$PullAtomCallbackInternal$$ExternalSyntheticLambda0;-><init>(Landroid/app/StatsManager$PullAtomCallbackInternal;ILandroid/os/IPullAtomResultReceiver;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 722
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    nop

    .line 724
    return-void

    .line 722
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    throw v2
.end method

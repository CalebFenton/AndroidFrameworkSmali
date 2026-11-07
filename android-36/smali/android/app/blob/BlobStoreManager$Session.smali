.class public Landroid/app/blob/BlobStoreManager$Session;
.super Ljava/lang/Object;
.source "BlobStoreManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/blob/BlobStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mSession:Landroid/app/blob/IBlobStoreSession;


# direct methods
.method private constructor blacklist <init>(Landroid/app/blob/IBlobStoreSession;)V
    .registers 2
    .param p1, "session"    # Landroid/app/blob/IBlobStoreSession;

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput-object p1, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    .line 669
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/blob/IBlobStoreSession;Landroid/app/blob/BlobStoreManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/blob/BlobStoreManager$Session;-><init>(Landroid/app/blob/IBlobStoreSession;)V

    return-void
.end method


# virtual methods
.method public whitelist abandon()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->abandon()V
    :try_end_5
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 788
    nop

    .line 789
    return-void

    .line 786
    :catch_7
    move-exception v0

    .line 787
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 783
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 784
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 785
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist allowPackageAccess(Ljava/lang/String;[B)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xdf

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v3

    :goto_10
    const-string/jumbo v1, "packageName is longer than 223 chars"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 814
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    array-length v0, p2

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    const-string v0, "certificate is longer than 32 chars"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 818
    :try_start_25
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0, p1, p2}, Landroid/app/blob/IBlobStoreSession;->allowPackageAccess(Ljava/lang/String;[B)V
    :try_end_2a
    .catch Landroid/os/ParcelableException; {:try_start_25 .. :try_end_2a} :catch_32
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2c

    .line 825
    nop

    .line 826
    return-void

    .line 823
    :catch_2c
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 819
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_32
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 821
    const-class v1, Landroid/os/LimitExceededException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 822
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist allowPublicAccess()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 915
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->allowPublicAccess()V
    :try_end_5
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 921
    nop

    .line 922
    return-void

    .line 919
    :catch_7
    move-exception v0

    .line 920
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 916
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 917
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 918
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist allowSameSignatureAccess()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 867
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->allowSameSignatureAccess()V
    :try_end_5
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 873
    nop

    .line 874
    return-void

    .line 871
    :catch_7
    move-exception v0

    .line 872
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 868
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 869
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 870
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->close()V
    :try_end_5
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 769
    nop

    .line 770
    return-void

    .line 767
    :catch_7
    move-exception v0

    .line 768
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 764
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 766
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist commit(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 973
    .local p2, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    new-instance v1, Landroid/app/blob/BlobStoreManager$Session$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/blob/BlobStoreManager$Session$1;-><init>(Landroid/app/blob/BlobStoreManager$Session;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/app/blob/IBlobStoreSession;->commit(Landroid/app/blob/IBlobCommitCallback;)V
    :try_end_a
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_a} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 984
    nop

    .line 985
    return-void

    .line 982
    :catch_c
    move-exception v0

    .line 983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 979
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 980
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 981
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->getSize()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 749
    :catch_7
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 746
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 747
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 748
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isPackageAccessAllowed(Ljava/lang/String;[B)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0, p1, p2}, Landroid/app/blob/IBlobStoreSession;->isPackageAccessAllowed(Ljava/lang/String;[B)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 848
    :catch_7
    move-exception v0

    .line 849
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 845
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 847
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isPublicAccessAllowed()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->isPublicAccessAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 938
    :catch_7
    move-exception v0

    .line 939
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 935
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 936
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 937
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isSameSignatureAccessAllowed()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->isSameSignatureAccessAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 891
    :catch_7
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 888
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 889
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 890
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist openRead()Landroid/os/ParcelFileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->openRead()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 727
    :catch_7
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 724
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 725
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 726
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist openWrite(JJ)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "offsetBytes"    # J
    .param p3, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/blob/IBlobStoreSession;->openWrite(JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 700
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J
    :try_end_9
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_9} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 701
    return-object v0

    .line 705
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_a
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 702
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_10
    move-exception v0

    .line 703
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 704
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

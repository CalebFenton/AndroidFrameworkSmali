.class Landroid/app/backup/BackupTransport$TransportImpl;
.super Lcom/android/internal/backup/IBackupTransport$Stub;
.source "BackupTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransportImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/backup/BackupTransport;


# direct methods
.method constructor blacklist <init>(Landroid/app/backup/BackupTransport;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/backup/BackupTransport;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 698
    iput-object p1, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abortFullRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->abortFullRestore()I

    move-result v0

    .line 984
    .local v0, "result":I
    invoke-interface {p1, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 987
    .end local v0    # "result":I
    goto :goto_10

    .line 985
    :catch_a
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 988
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->cancelFullBackup()V

    .line 930
    invoke-interface {p1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationComplete()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    .line 933
    goto :goto_f

    .line 931
    :catch_9
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 934
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_f
    return-void
.end method

.method public blacklist checkFullBackupSize(JLcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 6
    .param p1, "size"    # J
    .param p3, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->checkFullBackupSize(J)I

    move-result v0

    .line 909
    .local v0, "result":I
    invoke-interface {p3, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 912
    .end local v0    # "result":I
    goto :goto_10

    .line 910
    :catch_a
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p3, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 913
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist clearBackupData(Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 799
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 800
    .local v0, "result":I
    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 803
    .end local v0    # "result":I
    goto :goto_10

    .line 801
    :catch_a
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 804
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist configurationIntent(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v0

    .line 715
    .local v0, "result":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 718
    nop

    .end local v0    # "result":Landroid/content/Intent;
    goto :goto_10

    .line 716
    :catch_b
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 719
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist currentDestinationString(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 729
    nop

    .end local v0    # "result":Ljava/lang/String;
    goto :goto_10

    .line 727
    :catch_b
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 730
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist dataManagementIntent(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v0

    .line 737
    .local v0, "result":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 740
    nop

    .end local v0    # "result":Landroid/content/Intent;
    goto :goto_10

    .line 738
    :catch_b
    move-exception v0

    .line 739
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 741
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist dataManagementIntentLabel(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 747
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->dataManagementIntentLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 748
    .local v0, "result":Ljava/lang/CharSequence;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 751
    nop

    .end local v0    # "result":Ljava/lang/CharSequence;
    goto :goto_10

    .line 749
    :catch_b
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 752
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist finishBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->finishBackup()I

    move-result v0

    .line 810
    .local v0, "result":I
    invoke-interface {p1, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 813
    .end local v0    # "result":I
    goto :goto_10

    .line 811
    :catch_a
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 814
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist finishRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->finishRestore()V

    .line 876
    invoke-interface {p1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationComplete()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    .line 879
    goto :goto_f

    .line 877
    :catch_9
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 880
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_f
    return-void
.end method

.method public blacklist getAvailableRestoreSets(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/app/backup/RestoreSet;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 820
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/app/backup/RestoreSet;>;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v0

    .line 821
    .local v0, "result":[Landroid/app/backup/RestoreSet;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_f

    .line 824
    nop

    .end local v0    # "result":[Landroid/app/backup/RestoreSet;
    goto :goto_14

    .line 822
    :catch_f
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 825
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_14
    return-void
.end method

.method public blacklist getBackupManagerMonitor(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/backup/IBackupManagerMonitor;",
            ">;)V"
        }
    .end annotation

    .line 993
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/backup/IBackupManagerMonitor;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getBackupManagerMonitor()Landroid/app/backup/BackupManagerMonitor;

    move-result-object v0

    .line 994
    .local v0, "result":Landroid/app/backup/BackupManagerMonitor;
    new-instance v1, Landroid/app/backup/BackupManagerMonitorWrapper;

    invoke-direct {v1, v0}, Landroid/app/backup/BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManagerMonitor;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_e} :catch_10

    .line 997
    nop

    .end local v0    # "result":Landroid/app/backup/BackupManagerMonitor;
    goto :goto_15

    .line 995
    :catch_10
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 998
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_15
    return-void
.end method

.method public blacklist getBackupQuota(Ljava/lang/String;ZLcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isFullBackup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    .local p3, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v0

    .line 953
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_f

    .line 956
    nop

    .end local v0    # "result":J
    goto :goto_14

    .line 954
    :catch_f
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 957
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_14
    return-void
.end method

.method public blacklist getCurrentRestoreSet(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getCurrentRestoreSet()J

    move-result-wide v0

    .line 832
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_f

    .line 835
    nop

    .end local v0    # "result":J
    goto :goto_14

    .line 833
    :catch_f
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 836
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_14
    return-void
.end method

.method public blacklist getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 5
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 973
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    .line 974
    .local v0, "result":I
    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 977
    .end local v0    # "result":I
    goto :goto_10

    .line 975
    :catch_a
    move-exception v0

    .line 976
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 978
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist getPackagesThatShouldNotUseRestrictedMode(Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p2, "operationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1005
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    .line 1006
    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->getPackagesThatShouldNotUseRestrictedMode(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 1008
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 1011
    nop

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_10

    .line 1009
    :catch_b
    move-exception v0

    .line 1010
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 1012
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist getRestoreData(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 5
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    .line 865
    .local v0, "result":I
    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 868
    .end local v0    # "result":I
    goto :goto_10

    .line 866
    :catch_a
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 869
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist getTransportFlags(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 962
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getTransportFlags()I

    move-result v0

    .line 963
    .local v0, "result":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_f

    .line 966
    nop

    .end local v0    # "result":I
    goto :goto_14

    .line 964
    :catch_f
    move-exception v0

    .line 965
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 967
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_14
    return-void
.end method

.method public blacklist initializeDevice(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->initializeDevice()I

    move-result v0

    .line 778
    .local v0, "result":I
    invoke-interface {p1, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 781
    .end local v0    # "result":I
    goto :goto_10

    .line 779
    :catch_a
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 782
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist isAppEligibleForBackup(Landroid/content/pm/PackageInfo;ZLcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "isFullBackup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Z",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    .local p3, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    .line 942
    .local v0, "result":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_f

    .line 945
    nop

    .end local v0    # "result":Z
    goto :goto_14

    .line 943
    :catch_f
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 946
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_14
    return-void
.end method

.method public blacklist name(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->name()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 707
    nop

    .end local v0    # "result":Ljava/lang/String;
    goto :goto_10

    .line 705
    :catch_b
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 708
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/backup/RestoreDescription;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/backup/RestoreDescription;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    .line 854
    .local v0, "result":Landroid/app/backup/RestoreDescription;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 857
    nop

    .end local v0    # "result":Landroid/app/backup/RestoreDescription;
    goto :goto_10

    .line 855
    :catch_b
    move-exception v0

    .line 856
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 858
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    .line 789
    .local v0, "result":I
    invoke-interface {p4, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 792
    .end local v0    # "result":I
    goto :goto_10

    .line 790
    :catch_a
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p4, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 793
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 7
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    .line 898
    .local v0, "result":I
    invoke-interface {p4, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 901
    .end local v0    # "result":I
    goto :goto_10

    .line 899
    :catch_a
    move-exception v0

    .line 900
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p4, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 902
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist requestBackupTime(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->requestBackupTime()J

    move-result-wide v0

    .line 768
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_f

    .line 771
    nop

    .end local v0    # "result":J
    goto :goto_14

    .line 769
    :catch_f
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 772
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_14
    return-void
.end method

.method public blacklist requestFullBackupTime(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 886
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->requestFullBackupTime()J

    move-result-wide v0

    .line 887
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_f

    .line 890
    nop

    .end local v0    # "result":J
    goto :goto_14

    .line 888
    :catch_f
    move-exception v0

    .line 889
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 891
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_14
    return-void
.end method

.method public blacklist sendBackupData(ILcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 5
    .param p1, "numBytes"    # I
    .param p2, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 919
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->sendBackupData(I)I

    move-result v0

    .line 920
    .local v0, "result":I
    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 923
    .end local v0    # "result":I
    goto :goto_10

    .line 921
    :catch_a
    move-exception v0

    .line 922
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 924
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist startRestore(J[Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .registers 7
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;
    .param p4, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 843
    .local v0, "result":I
    invoke-interface {p4, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 846
    .end local v0    # "result":I
    goto :goto_10

    .line 844
    :catch_a
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p4, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 847
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method public blacklist transportDirName(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 761
    nop

    .end local v0    # "result":Ljava/lang/String;
    goto :goto_10

    .line 759
    :catch_b
    move-exception v0

    .line 760
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 762
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

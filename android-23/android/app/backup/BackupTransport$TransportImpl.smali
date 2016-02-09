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
.field final synthetic this$0:Landroid/app/backup/BackupTransport;


# direct methods
.method constructor <init>(Landroid/app/backup/BackupTransport;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/backup/BackupTransport;

    #@0
    .prologue
    .line 528
    iput-object p1, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 1

    #@0
    .prologue
    .line 648
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->abortFullRestore()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public cancelFullBackup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 638
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->cancelFullBackup()V

    #@5
    .line 637
    return-void
.end method

.method public checkFullBackupSize(J)I
    .locals 1
    .param p1, "size"    # J

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->checkFullBackupSize(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 578
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 537
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->configurationIntent()Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 542
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->currentDestinationString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->dataManagementIntent()Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 552
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->dataManagementLabel()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public finishBackup()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 583
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->finishBackup()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public finishRestore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->finishRestore()V

    #@5
    .line 612
    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 588
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCurrentRestoreSet()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 593
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getCurrentRestoreSet()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 608
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public initializeDevice()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->initializeDevice()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 532
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->name()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 603
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 573
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 623
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public requestBackupTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->requestBackupTime()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 618
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->requestFullBackupTime()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 1
    .param p1, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->sendBackupData(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->transportDirName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

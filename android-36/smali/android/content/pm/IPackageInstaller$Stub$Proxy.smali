.class Landroid/content/pm/IPackageInstaller$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageInstaller.java"

# interfaces
.implements Landroid/content/pm/IPackageInstaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstaller$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p1, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 609
    return-void
.end method


# virtual methods
.method public greylist-max-o abandonSession(I)V
    .registers 7
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 676
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 679
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 682
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 684
    nop

    .line 685
    return-void

    .line 682
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 684
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 612
    iget-object v0, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist bypassNextAllowedApexUpdateCheck(Z)V
    .registers 7
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 902
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 903
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 906
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 908
    nop

    .line 909
    return-void

    .line 906
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 908
    throw v2
.end method

.method public blacklist bypassNextStagedInstallerCheck(Z)V
    .registers 7
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 887
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 888
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 891
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    nop

    .line 894
    return-void

    .line 891
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    throw v2
.end method

.method public blacklist checkInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/os/RemoteCallback;)V
    .registers 10
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p3, "constraints"    # Landroid/content/pm/PackageInstaller$InstallConstraints;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInstaller$InstallConstraints;",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 957
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 958
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 960
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 963
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 964
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 965
    iget-object v3, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 966
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 969
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    nop

    .line 972
    return-void

    .line 969
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    throw v2
.end method

.method public blacklist createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "installerAttributionTag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 621
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 624
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 625
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 626
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget-object v3, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 630
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 631
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 634
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 636
    nop

    .line 637
    return v3

    .line 634
    .end local v3    # "_result":I
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 636
    throw v2
.end method

.method public blacklist disableVerificationForUid(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 912
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 913
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 915
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 918
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 921
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 923
    nop

    .line 924
    return-void

    .line 921
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 923
    throw v2
.end method

.method public greylist-max-o getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 724
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 725
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 728
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 731
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 732
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 735
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 737
    nop

    .line 738
    return-object v3

    .line 735
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 737
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 616
    const-string v0, "android.content.pm.IPackageInstaller"

    return-object v0
.end method

.method public greylist-max-o getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 742
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 743
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 746
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 750
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 751
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 754
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 756
    nop

    .line 757
    return-object v3

    .line 754
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 756
    throw v2
.end method

.method public greylist-max-o getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 7
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 707
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 710
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 713
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 714
    sget-object v3, Landroid/content/pm/PackageInstaller$SessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 717
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    nop

    .line 720
    return-object v3

    .line 717
    .end local v3    # "_result":Landroid/content/pm/PackageInstaller$SessionInfo;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    throw v2
.end method

.method public blacklist getStagedSessions()Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 762
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 765
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 766
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 767
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 768
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 771
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 773
    nop

    .line 774
    return-object v3

    .line 771
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 773
    throw v2
.end method

.method public blacklist installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installFlags"    # I
    .param p3, "installReason"    # I
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/IntentSender;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 846
    .local p6, "whiteListedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 847
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 849
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 854
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 856
    iget-object v3, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 857
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 860
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 862
    nop

    .line 863
    return-void

    .line 860
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 862
    throw v2
.end method

.method public blacklist installPackageArchived(Landroid/content/pm/ArchivedPackageParcel;Landroid/content/pm/PackageInstaller$SessionParams;Landroid/content/IntentSender;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 11
    .param p1, "archivedPackageParcel"    # Landroid/content/pm/ArchivedPackageParcel;
    .param p2, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1031
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1032
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1035
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1036
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1037
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1038
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1040
    iget-object v3, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1041
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 1044
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1046
    nop

    .line 1047
    return-void

    .line 1044
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1046
    throw v2
.end method

.method public greylist-max-o openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .registers 7
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 689
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 692
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 695
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 696
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageInstallerSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 699
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/content/pm/IPackageInstallerSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 701
    nop

    .line 702
    return-object v3

    .line 699
    .end local v3    # "_result":Landroid/content/pm/IPackageInstallerSession;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 701
    throw v2
.end method

.method public greylist-max-o registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .registers 8
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 779
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 781
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 783
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 785
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 788
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    nop

    .line 791
    return-void

    .line 788
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    throw v2
.end method

.method public blacklist reportUnarchivalStatus(IIJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "unarchiveId"    # I
    .param p2, "status"    # I
    .param p3, "requiredStorageBytes"    # J
    .param p5, "userActionIntent"    # Landroid/app/PendingIntent;
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1053
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1057
    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1058
    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1059
    iget-object v3, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1060
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 1063
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1065
    nop

    .line 1066
    return-void

    .line 1063
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1065
    throw v2
.end method

.method public blacklist requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .param p5, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 997
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1002
    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1003
    iget-object v3, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1004
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 1007
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1009
    nop

    .line 1010
    return-void

    .line 1007
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1009
    throw v2
.end method

.method public blacklist requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1013
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1014
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1019
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1020
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1021
    iget-object v3, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1022
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 1025
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1027
    nop

    .line 1028
    return-void

    .line 1025
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1027
    throw v2
.end method

.method public blacklist setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V
    .registers 7
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 928
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 932
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 933
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 936
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 938
    nop

    .line 939
    return-void

    .line 936
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 938
    throw v2
.end method

.method public greylist-max-o setPermissionsResult(IZ)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 867
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 869
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 870
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 872
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 873
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 876
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 878
    nop

    .line 879
    return-void

    .line 876
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 878
    throw v2
.end method

.method public blacklist setSilentUpdatesThrottleTime(J)V
    .registers 8
    .param p1, "throttleTimeInSeconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 945
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 947
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 948
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 951
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 953
    nop

    .line 954
    return-void

    .line 951
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 953
    throw v2
.end method

.method public greylist-max-o uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .registers 11
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 810
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 812
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 813
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 814
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 817
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-object v3, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 819
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 822
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 824
    nop

    .line 825
    return-void

    .line 822
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 824
    throw v2
.end method

.method public blacklist uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    .registers 10
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 829
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 832
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 833
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 835
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget-object v3, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 837
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 840
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    nop

    .line 843
    return-void

    .line 840
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    throw v2
.end method

.method public greylist-max-o unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 795
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 797
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 799
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 800
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 803
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    nop

    .line 806
    return-void

    .line 803
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    throw v2
.end method

.method public greylist-max-o updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "appIcon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 642
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 644
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 647
    iget-object v3, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 648
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 651
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    nop

    .line 654
    return-void

    .line 651
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    throw v2
.end method

.method public greylist-max-o updateSessionAppLabel(ILjava/lang/String;)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "appLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 658
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 660
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    iget-object v2, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 664
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 667
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 669
    nop

    .line 670
    return-void

    .line 667
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 669
    throw v2
.end method

.method public blacklist waitForInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V
    .registers 12
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p3, "constraints"    # Landroid/content/pm/PackageInstaller$InstallConstraints;
    .param p4, "callback"    # Landroid/content/IntentSender;
    .param p5, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInstaller$InstallConstraints;",
            "Landroid/content/IntentSender;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 975
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 976
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 978
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.content.pm.IPackageInstaller"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 981
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 982
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 983
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 984
    iget-object v3, p0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 985
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 988
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    nop

    .line 991
    return-void

    .line 988
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    throw v2
.end method

.class Landroid/app/INotificationManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 630
    iput-object p1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 628
    return-void
.end method


# virtual methods
.method public applyRestore([BI)V
    .locals 5
    .param p1, "payload"    # [B
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@11
    .line 1447
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1448
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x2c

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1440
    return-void

    #@26
    .line 1451
    :catchall_0
    move-exception v2

    #@27
    .line 1452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1451
    throw v2
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 755
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 759
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 760
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 761
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x7

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 763
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    const/4 v2, 0x1

    #@25
    .line 766
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 769
    return v2

    #@2c
    .line 763
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2d
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2e
    .line 765
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2f
    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 765
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 643
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 645
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 647
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 648
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x1

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 649
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 640
    return-void

    #@25
    .line 651
    :catchall_0
    move-exception v2

    #@26
    .line 652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 651
    throw v2
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 961
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 963
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 964
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 965
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 966
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 967
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 968
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v3, 0x12

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 969
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 958
    return-void

    #@33
    .line 971
    :catchall_0
    move-exception v2

    #@34
    .line 972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 971
    throw v2
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 722
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 724
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 725
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 726
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 727
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v3, 0x5

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 717
    return-void

    #@2b
    .line 730
    :catchall_0
    move-exception v2

    #@2c
    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 730
    throw v2
.end method

.method public cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 979
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 981
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 982
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 983
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1b
    .line 984
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x13

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 976
    return-void

    #@2d
    .line 987
    :catchall_0
    move-exception v2

    #@2e
    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 987
    throw v2
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 676
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 678
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 680
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 681
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x3

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 673
    return-void

    #@2c
    .line 684
    :catchall_0
    move-exception v2

    #@2d
    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 684
    throw v2
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "notification"    # Landroid/app/Notification;
    .param p6, "idReceived"    # [I
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 694
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 695
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 696
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 697
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 698
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 699
    if-eqz p5, :cond_0

    #@1c
    .line 700
    const/4 v2, 0x1

    #@1d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 701
    const/4 v2, 0x0

    #@21
    invoke-virtual {p5, v0, v2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 706
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    #@27
    .line 707
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 708
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2c
    const/4 v3, 0x4

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@34
    .line 710
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 689
    return-void

    #@3e
    .line 704
    :cond_0
    const/4 v2, 0x0

    #@3f
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 712
    :catchall_0
    move-exception v2

    #@44
    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 712
    throw v2
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 659
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 661
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 663
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 664
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 665
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x2

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 656
    return-void

    #@2f
    .line 668
    :catchall_0
    move-exception v2

    #@30
    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 668
    throw v2
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 885
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 888
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 890
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xe

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 891
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 892
    sget-object v3, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 895
    .local v2, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 898
    return-object v2

    #@2b
    .line 894
    .end local v2    # "_result":[Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v3

    #@2c
    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 894
    throw v3
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "trim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1011
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1014
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1015
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1016
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1b
    .line 1017
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1018
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0x15

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 1020
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1

    #@2f
    .line 1021
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@31
    invoke-interface {v3, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 1028
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1031
    return-object v2

    #@3e
    .line 1024
    :cond_1
    const/4 v2, 0x0

    #@3f
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    #@40
    .line 1027
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v3

    #@41
    .line 1028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1027
    throw v3
.end method

.method public getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1463
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1464
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1465
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x2d

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1466
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 1467
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 1468
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@27
    invoke-interface {v3, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1475
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1478
    return-object v2

    #@34
    .line 1471
    :cond_0
    const/4 v2, 0x0

    #@35
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    #@36
    .line 1474
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v3

    #@37
    .line 1475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1474
    throw v3
.end method

.method public getBackupPayload(I)[B
    .locals 6
    .param p1, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1425
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1428
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1429
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1430
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x2b

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1431
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1432
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 1435
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1438
    return-object v2

    #@27
    .line 1434
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    #@28
    .line 1435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1434
    throw v3
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1139
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1140
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1c

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1141
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1142
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 1143
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1150
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1153
    return-object v2

    #@2e
    .line 1146
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/content/ComponentName;
    goto :goto_0

    #@30
    .line 1149
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    #@31
    .line 1150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1149
    throw v3
.end method

.method public getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 6
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1052
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1055
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1056
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1057
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x17

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1059
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 1062
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1065
    return v2

    #@2e
    .line 1061
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2f
    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1061
    throw v3
.end method

.method public getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 903
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 906
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 907
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 908
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 909
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xf

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 911
    sget-object v3, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, [Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 914
    .local v2, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 917
    return-object v2

    #@2e
    .line 913
    .end local v2    # "_result":[Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v3

    #@2f
    .line 914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 913
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 638
    const-string/jumbo v0, "android.app.INotificationManager"

    #@3
    return-object v0
.end method

.method public getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 6
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1086
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1089
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1090
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1091
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x19

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1092
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1093
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 1096
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1099
    return v2

    #@2e
    .line 1095
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2f
    .line 1096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1095
    throw v3
.end method

.method public getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1329
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1332
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1333
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1334
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x26

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1336
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 1337
    sget-object v3, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/app/NotificationManager$Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1344
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1347
    return-object v2

    #@31
    .line 1340
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/app/NotificationManager$Policy;
    goto :goto_0

    #@33
    .line 1343
    .end local v2    # "_result":Landroid/app/NotificationManager$Policy;
    :catchall_0
    move-exception v3

    #@34
    .line 1344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1343
    throw v3
.end method

.method public getPackagePeekable(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 827
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 832
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 833
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xb

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 834
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    .line 838
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 841
    return v2

    #@2d
    .line 835
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2f
    .line 837
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@30
    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 837
    throw v3
.end method

.method public getPackagePriority(Ljava/lang/String;I)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 794
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 796
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 797
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x9

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 799
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 802
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 805
    return v2

    #@2a
    .line 801
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 802
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 801
    throw v3
.end method

.method public getPackageVisibilityOverride(Ljava/lang/String;I)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 863
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 866
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 867
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 868
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 869
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xd

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 870
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 871
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 874
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 877
    return v2

    #@2a
    .line 873
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 873
    throw v3
.end method

.method public getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1378
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x28

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1380
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1383
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1386
    return-object v2

    #@24
    .line 1382
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 1383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1382
    throw v3
.end method

.method public getZenMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1204
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1f

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1206
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1209
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1212
    return v2

    #@24
    .line 1208
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1208
    throw v3
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1220
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1221
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x20

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1222
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1223
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 1224
    sget-object v3, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1231
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1234
    return-object v2

    #@2e
    .line 1227
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/service/notification/ZenModeConfig;
    goto :goto_0

    #@30
    .line 1230
    .end local v2    # "_result":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v3

    #@31
    .line 1231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1230
    throw v3
.end method

.method public isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1316
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x25

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1318
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 1321
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1324
    return v2

    #@2a
    .line 1318
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1320
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1320
    throw v3
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1396
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x29

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1398
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 1401
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1404
    return v2

    #@2a
    .line 1398
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1400
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1400
    throw v3
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1185
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1187
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x1e

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1189
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    .line 1192
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1195
    return v2

    #@2a
    .line 1189
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 1191
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 1192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1191
    throw v3
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1162
    if-eqz p1, :cond_0

    #@10
    .line 1163
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1164
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1169
    :goto_0
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x1d

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    const/4 v2, 0x1

    #@2a
    .line 1174
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1177
    return v2

    #@31
    .line 1167
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@32
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 1173
    :catchall_0
    move-exception v3

    #@37
    .line 1174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1173
    throw v3

    #@3e
    .line 1171
    :cond_1
    const/4 v2, 0x0

    #@3f
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1285
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.INotificationManager"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 1286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 1287
    if-eqz p2, :cond_0

    #@10
    invoke-interface {p2}, Landroid/service/notification/IConditionProvider;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17
    .line 1288
    const/4 v1, 0x0

    #@18
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1b
    .line 1289
    iget-object v1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v2, 0x23

    #@1f
    const/4 v3, 0x0

    #@20
    const/4 v4, 0x1

    #@21
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1281
    return-void

    #@28
    .line 1291
    :catchall_0
    move-exception v1

    #@29
    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1291
    throw v1
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 925
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 926
    if-eqz p2, :cond_1

    #@1a
    .line 927
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 928
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 933
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 934
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/16 v3, 0x10

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2d
    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 919
    return-void

    #@37
    .line 931
    :cond_1
    const/4 v2, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 937
    :catchall_0
    move-exception v2

    #@3d
    .line 938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 937
    throw v2
.end method

.method public requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "hints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1036
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1039
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1040
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1041
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x16

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1042
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1033
    return-void

    #@2d
    .line 1044
    :catchall_0
    move-exception v2

    #@2e
    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1044
    throw v2
.end method

.method public requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1070
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1072
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1073
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1074
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1075
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x18

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1067
    return-void

    #@2d
    .line 1078
    :catchall_0
    move-exception v2

    #@2e
    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1078
    throw v2
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 5
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1299
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.INotificationManager"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 1300
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 1301
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1302
    iget-object v1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0x24

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 1305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1295
    return-void

    #@24
    .line 1304
    :catchall_0
    move-exception v1

    #@25
    .line 1305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1304
    throw v1
.end method

.method public setInterruptionFilter(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1125
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x1b

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1117
    return-void

    #@26
    .line 1128
    :catchall_0
    move-exception v2

    #@27
    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1128
    throw v2
.end method

.method public setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1356
    if-eqz p2, :cond_0

    #@13
    .line 1357
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1358
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1363
    :goto_0
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x27

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1364
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1349
    return-void

    #@2d
    .line 1361
    :cond_0
    const/4 v2, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 1366
    :catchall_0
    move-exception v2

    #@33
    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1366
    throw v2
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1413
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1414
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x2a

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1406
    return-void

    #@2a
    .line 1417
    :catchall_0
    move-exception v2

    #@2b
    .line 1418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1417
    throw v2
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 738
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 740
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 742
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 743
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 744
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x6

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 735
    return-void

    #@2c
    .line 747
    :catchall_0
    move-exception v2

    #@2d
    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 747
    throw v2
.end method

.method public setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 997
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 998
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 999
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1b
    .line 1000
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x14

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1001
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 992
    return-void

    #@2d
    .line 1003
    :catchall_0
    move-exception v2

    #@2e
    .line 1004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1003
    throw v2
.end method

.method public setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "trim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1107
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1109
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x1a

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1101
    return-void

    #@2d
    .line 1112
    :catchall_0
    move-exception v2

    #@2e
    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1112
    throw v2
.end method

.method public setPackagePeekable(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "peekable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 810
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 812
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 813
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 814
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 815
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 816
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xa

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 817
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 807
    return-void

    #@2d
    .line 819
    :catchall_0
    move-exception v2

    #@2e
    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 819
    throw v2
.end method

.method public setPackagePriority(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 776
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 778
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 779
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 780
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x8

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 771
    return-void

    #@29
    .line 783
    :catchall_0
    move-exception v2

    #@2a
    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 783
    throw v2
.end method

.method public setPackageVisibilityOverride(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 846
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 848
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 850
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 851
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 852
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xc

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 853
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 843
    return-void

    #@29
    .line 855
    :catchall_0
    move-exception v2

    #@2a
    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 855
    throw v2
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1265
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.app.INotificationManager"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 1267
    if-eqz p2, :cond_0

    #@f
    .line 1268
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1269
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 1274
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 1275
    iget-object v1, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v2, 0x22

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x1

    #@20
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1261
    return-void

    #@27
    .line 1272
    :cond_0
    const/4 v1, 0x0

    #@28
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 1277
    :catchall_0
    move-exception v1

    #@2d
    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1277
    throw v1
.end method

.method public setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1243
    if-eqz p1, :cond_0

    #@10
    .line 1244
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1245
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1250
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1251
    iget-object v3, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x21

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1252
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 1253
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    const/4 v2, 0x1

    #@2d
    .line 1256
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1259
    return v2

    #@34
    .line 1248
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@35
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1255
    :catchall_0
    move-exception v3

    #@3a
    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1255
    throw v3

    #@41
    .line 1253
    :cond_1
    const/4 v2, 0x0

    #@42
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;
    .param p2, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 945
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 947
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 948
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 949
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 950
    iget-object v2, p0, Landroid/app/INotificationManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x11

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 951
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 942
    return-void

    #@2d
    .line 953
    :catchall_0
    move-exception v2

    #@2e
    .line 954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 953
    throw v2
.end method

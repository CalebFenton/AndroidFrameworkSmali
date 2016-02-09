.class Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService$Stub;
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
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 449
    iput-object p1, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 447
    return-void
.end method


# virtual methods
.method public appTransitionCancelled()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 992
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 995
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x21

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 989
    return-void

    #@20
    .line 998
    :catchall_0
    move-exception v2

    #@21
    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 998
    throw v2
.end method

.method public appTransitionPending()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 975
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 977
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 978
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x20

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 972
    return-void

    #@20
    .line 981
    :catchall_0
    move-exception v2

    #@21
    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 981
    throw v2
.end method

.method public appTransitionStarting(JJ)V
    .locals 5
    .param p1, "statusBarAnimationsStartTime"    # J
    .param p3, "statusBarAnimationsDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1014
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1017
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 1018
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 1019
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x22

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1020
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1011
    return-void

    #@26
    .line 1022
    :catchall_0
    move-exception v2

    #@27
    .line 1023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1022
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public cancelPreloadRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 957
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 959
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 960
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x1f

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 954
    return-void

    #@20
    .line 963
    :catchall_0
    move-exception v2

    #@21
    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 963
    throw v2
.end method

.method public clearNotificationEffects()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 736
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x11

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 730
    return-void

    #@20
    .line 739
    :catchall_0
    move-exception v2

    #@21
    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 739
    throw v2
.end method

.method public collapsePanels()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 476
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 478
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 479
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x2

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 480
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 473
    return-void

    #@1f
    .line 482
    :catchall_0
    move-exception v2

    #@20
    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 482
    throw v2
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 492
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 494
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 495
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 496
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x3

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 487
    return-void

    #@28
    .line 499
    :catchall_0
    move-exception v2

    #@29
    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 499
    throw v2
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 525
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 527
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 529
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 530
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 531
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x5

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 522
    return-void

    #@28
    .line 534
    :catchall_0
    move-exception v2

    #@29
    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 534
    throw v2
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 546
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 547
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 548
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 549
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v3, 0x6

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 550
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 539
    return-void

    #@2b
    .line 552
    :catchall_0
    move-exception v2

    #@2c
    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 552
    throw v2
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 507
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 509
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 511
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 512
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 513
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 514
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v3, 0x4

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 504
    return-void

    #@2b
    .line 517
    :catchall_0
    move-exception v2

    #@2c
    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 517
    throw v2
.end method

.method public expandNotificationsPanel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 465
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 459
    return-void

    #@1f
    .line 468
    :catchall_0
    move-exception v2

    #@20
    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 468
    throw v2
.end method

.method public expandSettingsPanel()V
    .locals 5
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
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 646
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0xc

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 640
    return-void

    #@20
    .line 649
    :catchall_0
    move-exception v2

    #@21
    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 649
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 457
    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBarService"

    #@3
    return-object v0
.end method

.method public hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 913
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 915
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 916
    if-eqz p1, :cond_0

    #@12
    move v4, v2

    #@13
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 917
    if-eqz p2, :cond_1

    #@18
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 918
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x1c

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 910
    return-void

    #@2d
    :cond_0
    move v4, v3

    #@2e
    .line 916
    goto :goto_0

    #@2f
    :cond_1
    move v2, v3

    #@30
    .line 917
    goto :goto_1

    #@31
    .line 921
    :catchall_0
    move-exception v2

    #@32
    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 921
    throw v2
.end method

.method public onClearAllNotifications(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 799
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 801
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 802
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 803
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x15

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 796
    return-void

    #@23
    .line 806
    :catchall_0
    move-exception v2

    #@24
    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 806
    throw v2
.end method

.method public onNotificationActionClick(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 762
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 764
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 766
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 767
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x13

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 768
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 759
    return-void

    #@26
    .line 770
    :catchall_0
    move-exception v2

    #@27
    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 770
    throw v2
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
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
    .line 813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 814
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 817
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 818
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 819
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 820
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 821
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x16

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 822
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 811
    return-void

    #@2c
    .line 824
    :catchall_0
    move-exception v2

    #@2d
    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 824
    throw v2
.end method

.method public onNotificationClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 747
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 749
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 751
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x12

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 752
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 744
    return-void

    #@23
    .line 754
    :catchall_0
    move-exception v2

    #@24
    .line 755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 754
    throw v2
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 778
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 780
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 781
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 782
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 783
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 784
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 785
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 786
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 787
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 788
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@25
    const/16 v3, 0x14

    #@27
    const/4 v4, 0x0

    #@28
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 789
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 775
    return-void

    #@35
    .line 791
    :catchall_0
    move-exception v2

    #@36
    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 791
    throw v2
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 848
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 850
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 851
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 852
    if-eqz p2, :cond_0

    #@15
    move v4, v2

    #@16
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 853
    if-eqz p3, :cond_1

    #@1b
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 854
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x18

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 855
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 845
    return-void

    #@30
    :cond_0
    move v4, v3

    #@31
    .line 852
    goto :goto_0

    #@32
    :cond_1
    move v2, v3

    #@33
    .line 853
    goto :goto_1

    #@34
    .line 857
    :catchall_0
    move-exception v2

    #@35
    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 857
    throw v2
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 5
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 832
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 835
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@12
    .line 836
    const/4 v2, 0x0

    #@13
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@16
    .line 837
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/16 v3, 0x17

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 829
    return-void

    #@28
    .line 840
    :catchall_0
    move-exception v2

    #@29
    .line 841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 840
    throw v2
.end method

.method public onPanelHidden()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 717
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 719
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 720
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x10

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 721
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 714
    return-void

    #@20
    .line 723
    :catchall_0
    move-exception v2

    #@21
    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 723
    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .locals 5
    .param p1, "clearNotificationEffects"    # Z
    .param p2, "numItems"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 701
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 704
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 705
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 706
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0xf

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 698
    return-void

    #@2a
    .line 709
    :catchall_0
    move-exception v2

    #@2b
    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 709
    throw v2
.end method

.method public preloadRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 945
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 946
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x1e

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 940
    return-void

    #@20
    .line 949
    :catchall_0
    move-exception v2

    #@21
    .line 950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 949
    throw v2
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    .locals 5
    .param p1, "callbacks"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p3, "switches"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .local p4, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v2, 0x0

    #@1
    .line 674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 675
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 678
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBar;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 679
    if-nez p3, :cond_2

    #@1a
    .line 680
    const/4 v2, -0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 685
    :goto_0
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0xe

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_1

    #@2f
    .line 688
    invoke-virtual {p2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->readFromParcel(Landroid/os/Parcel;)V

    #@32
    .line 690
    :cond_1
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V

    #@35
    .line 691
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 672
    return-void

    #@3f
    .line 683
    :cond_2
    :try_start_1
    array-length v2, p3

    #@40
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 693
    :catchall_0
    move-exception v2

    #@45
    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 693
    throw v2
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 595
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 597
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 598
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 599
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x9

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 592
    return-void

    #@23
    .line 602
    :catchall_0
    move-exception v2

    #@24
    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 602
    throw v2
.end method

.method public setCurrentUser(I)V
    .locals 5
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 659
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 661
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xd

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 662
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 654
    return-void

    #@23
    .line 664
    :catchall_0
    move-exception v2

    #@24
    .line 665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 664
    throw v2
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 560
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 562
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 564
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 565
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 566
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 567
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 568
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v3, 0x7

    #@20
    const/4 v4, 0x0

    #@21
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 557
    return-void

    #@2e
    .line 571
    :catchall_0
    move-exception v2

    #@2f
    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 571
    throw v2
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 581
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 583
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 584
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x8

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 576
    return-void

    #@2a
    .line 587
    :catchall_0
    move-exception v2

    #@2b
    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 587
    throw v2
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 625
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 627
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 629
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 630
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 631
    if-eqz p4, :cond_0

    #@1a
    const/4 v2, 0x1

    #@1b
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 632
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0xb

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 622
    return-void

    #@30
    .line 635
    :catchall_0
    move-exception v2

    #@31
    .line 636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 635
    throw v2
.end method

.method public setSystemUiVisibility(IILjava/lang/String;)V
    .locals 5
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "cause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 867
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 868
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 869
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 870
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 871
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x19

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 862
    return-void

    #@29
    .line 874
    :catchall_0
    move-exception v2

    #@2a
    .line 875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 874
    throw v2
.end method

.method public setWindowState(II)V
    .locals 5
    .param p1, "window"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 886
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 887
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x1a

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 888
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 879
    return-void

    #@26
    .line 890
    :catchall_0
    move-exception v2

    #@27
    .line 891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 890
    throw v2
.end method

.method public showRecentApps(Z)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 901
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 902
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x1b

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 903
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 895
    return-void

    #@27
    .line 905
    :catchall_0
    move-exception v2

    #@28
    .line 906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 905
    throw v2
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1030
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1032
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1033
    if-eqz p1, :cond_0

    #@10
    .line 1034
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1035
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1040
    :goto_0
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x23

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1041
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1027
    return-void

    #@2a
    .line 1038
    :cond_0
    const/4 v2, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 1043
    :catchall_0
    move-exception v2

    #@30
    .line 1044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1043
    throw v2
.end method

.method public toggleRecentApps()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 929
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 931
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.statusbar.IStatusBarService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 932
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x1d

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 926
    return-void

    #@20
    .line 935
    :catchall_0
    move-exception v2

    #@21
    .line 936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 935
    throw v2
.end method

.method public topAppWindowChanged(Z)V
    .locals 5
    .param p1, "menuVisible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 610
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 612
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.statusbar.IStatusBarService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 613
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 614
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0xa

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 607
    return-void

    #@27
    .line 617
    :catchall_0
    move-exception v2

    #@28
    .line 618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 617
    throw v2
.end method

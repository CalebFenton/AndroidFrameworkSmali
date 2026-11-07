.class Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar$Stub;
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

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    iput-object p1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1554
    return-void
.end method


# virtual methods
.method public blacklist abortTransient(II)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "types"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2370
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2372
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2374
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2375
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x39

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2379
    nop

    .line 2380
    return-void

    .line 2378
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2379
    throw v1
.end method

.method public greylist-max-o addQsTile(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "tile"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2061
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2063
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2064
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2065
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x25

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 2068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2069
    nop

    .line 2070
    return-void

    .line 2068
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2069
    throw v1
.end method

.method public blacklist addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "tile"    # Landroid/content/ComponentName;
    .param p2, "end"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2078
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2080
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2081
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2082
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2083
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x26

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 2086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2087
    nop

    .line 2088
    return-void

    .line 2086
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2087
    throw v1
.end method

.method public greylist-max-o animateCollapsePanels()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1639
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1641
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1642
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1646
    nop

    .line 1647
    return-void

    .line 1645
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1646
    throw v1
.end method

.method public greylist-max-o animateExpandNotificationsPanel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1616
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1618
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1619
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1623
    nop

    .line 1624
    return-void

    .line 1622
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1623
    throw v1
.end method

.method public greylist-max-o animateExpandSettingsPanel(Ljava/lang/String;)V
    .registers 7
    .param p1, "subPanel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1627
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1629
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1631
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 1634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    nop

    .line 1636
    return-void

    .line 1634
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    throw v1
.end method

.method public blacklist appTransitionCancelled(I)V
    .registers 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1882
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1884
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1886
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x19

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1890
    nop

    .line 1891
    return-void

    .line 1889
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1890
    throw v1
.end method

.method public blacklist appTransitionFinished(I)V
    .registers 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1922
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1924
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1926
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1930
    nop

    .line 1931
    return-void

    .line 1929
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1930
    throw v1
.end method

.method public blacklist appTransitionPending(I)V
    .registers 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1865
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1867
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1869
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    nop

    .line 1874
    return-void

    .line 1872
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    throw v1
.end method

.method public blacklist appTransitionStarting(IJJ)V
    .registers 11
    .param p1, "displayId"    # I
    .param p2, "statusBarAnimationsStartTime"    # J
    .param p4, "statusBarAnimationsDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1903
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1905
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1908
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1909
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 1912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1913
    nop

    .line 1914
    return-void

    .line 1912
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1913
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1557
    iget-object v0, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o cancelPreloadRecentApps()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1779
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1781
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1782
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1786
    nop

    .line 1787
    return-void

    .line 1785
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1786
    throw v1
.end method

.method public blacklist cancelRequestAddTile(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2596
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2598
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2599
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2600
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x47

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2604
    nop

    .line 2605
    return-void

    .line 2603
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2604
    throw v1
.end method

.method public greylist-max-o clickQsTile(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "tile"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2115
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2117
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2118
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2119
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x29

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 2122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2123
    nop

    .line 2124
    return-void

    .line 2122
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2123
    throw v1
.end method

.method public blacklist confirmImmersivePrompt()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1807
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1809
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1810
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1814
    nop

    .line 1815
    return-void

    .line 1813
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1814
    throw v1
.end method

.method public blacklist disable(III)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "state1"    # I
    .param p3, "state2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1590
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1592
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1595
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1596
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    nop

    .line 1601
    return-void

    .line 1599
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    throw v1
.end method

.method public blacklist disableForAllDisplays(Lcom/android/internal/statusbar/DisableStates;)V
    .registers 7
    .param p1, "disableStates"    # Lcom/android/internal/statusbar/DisableStates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1604
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1606
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1607
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1608
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1612
    nop

    .line 1613
    return-void

    .line 1611
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1612
    throw v1
.end method

.method public blacklist dismissInattentiveSleepWarning(Z)V
    .registers 7
    .param p1, "animated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2396
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2398
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2400
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2404
    nop

    .line 2405
    return-void

    .line 2403
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2404
    throw v1
.end method

.method public greylist-max-o dismissKeyboardShortcutsMenu()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1836
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1838
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1839
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x16

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1843
    nop

    .line 1844
    return-void

    .line 1842
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1843
    throw v1
.end method

.method public blacklist dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2672
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2674
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2676
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2677
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x4c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 2680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2681
    nop

    .line 2682
    return-void

    .line 2680
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2681
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1561
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    return-object v0
.end method

.method public blacklist handleSystemKey(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "key"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2127
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2129
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2130
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2131
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 2134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2135
    nop

    .line 2136
    return-void

    .line 2134
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2135
    throw v1
.end method

.method public blacklist hideAuthenticationDialog(J)V
    .registers 8
    .param p1, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2240
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2242
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2244
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2248
    nop

    .line 2249
    return-void

    .line 2247
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2248
    throw v1
.end method

.method public greylist-max-o hideRecentApps(ZZ)V
    .registers 8
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1722
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1724
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1726
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1727
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    nop

    .line 1732
    return-void

    .line 1730
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    throw v1
.end method

.method public blacklist hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2435
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2437
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2439
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2440
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2444
    nop

    .line 2445
    return-void

    .line 2443
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2444
    throw v1
.end method

.method public blacklist immersiveModeChanged(IZI)V
    .registers 9
    .param p1, "rootDisplayAreaId"    # I
    .param p2, "isImmersiveMode"    # Z
    .param p3, "windowType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1822
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1824
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1826
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1827
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1828
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 1831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1832
    nop

    .line 1833
    return-void

    .line 1831
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1832
    throw v1
.end method

.method public blacklist moveFocusedTaskToDesktop(I)V
    .registers 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2775
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2777
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2778
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x52

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2783
    nop

    .line 2784
    return-void

    .line 2782
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2783
    throw v1
.end method

.method public blacklist moveFocusedTaskToFullscreen(I)V
    .registers 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2703
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2705
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2707
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x4e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2711
    nop

    .line 2712
    return-void

    .line 2710
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2711
    throw v1
.end method

.method public blacklist moveFocusedTaskToStageSplit(IZ)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "leftOrTop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2721
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2723
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2724
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2725
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2726
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x4f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2730
    nop

    .line 2731
    return-void

    .line 2729
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2730
    throw v1
.end method

.method public blacklist onBiometricAuthenticated(I)V
    .registers 7
    .param p1, "modality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2198
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2200
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2202
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2206
    nop

    .line 2207
    return-void

    .line 2205
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2206
    throw v1
.end method

.method public blacklist onBiometricError(III)V
    .registers 9
    .param p1, "modality"    # I
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2225
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2227
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2229
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2230
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2231
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x31

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 2234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2235
    nop

    .line 2236
    return-void

    .line 2234
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2235
    throw v1
.end method

.method public blacklist onBiometricHelp(ILjava/lang/String;)V
    .registers 8
    .param p1, "modality"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2211
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2213
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2215
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2216
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x30

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2220
    nop

    .line 2221
    return-void

    .line 2219
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2220
    throw v1
.end method

.method public greylist-max-o onCameraLaunchGestureDetected(I)V
    .registers 7
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1962
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1964
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1965
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1966
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1970
    nop

    .line 1971
    return-void

    .line 1969
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1970
    throw v1
.end method

.method public blacklist onDisplayAddSystemDecorations(I)V
    .registers 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2279
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2281
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2283
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x35

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2287
    nop

    .line 2288
    return-void

    .line 2286
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2287
    throw v1
.end method

.method public blacklist onDisplayRemoveSystemDecorations(I)V
    .registers 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2292
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2294
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x36

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2300
    nop

    .line 2301
    return-void

    .line 2299
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2300
    throw v1
.end method

.method public blacklist onEmergencyActionLaunchGestureDetected()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1991
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1993
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1994
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1998
    nop

    .line 1999
    return-void

    .line 1997
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1998
    throw v1
.end method

.method public greylist-max-o onProposedRotationChanged(IZ)V
    .registers 8
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2027
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2029
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2031
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2032
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x23

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2036
    nop

    .line 2037
    return-void

    .line 2035
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2036
    throw v1
.end method

.method public blacklist onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "appearance"    # I
    .param p3, "appearanceRegions"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p4, "navbarColorManagedByIme"    # Z
    .param p5, "behavior"    # I
    .param p6, "requestedVisibleTypes"    # I
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "letterboxDetails"    # [Lcom/android/internal/statusbar/LetterboxDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2320
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2322
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2324
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2325
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2326
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2327
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2329
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2330
    invoke-virtual {v0, p8, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2331
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x37

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_34

    .line 2334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2335
    nop

    .line 2336
    return-void

    .line 2334
    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2335
    throw v1
.end method

.method public blacklist onWalletLaunchGestureDetected()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1975
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1977
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1978
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1982
    nop

    .line 1983
    return-void

    .line 1981
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1982
    throw v1
.end method

.method public blacklist passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2510
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2512
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2514
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2515
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x42

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 2518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2519
    nop

    .line 2520
    return-void

    .line 2518
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2519
    throw v1
.end method

.method public greylist-max-o preloadRecentApps()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1768
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1770
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1771
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1775
    nop

    .line 1776
    return-void

    .line 1774
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1775
    throw v1
.end method

.method public blacklist registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .registers 7
    .param p1, "provider"    # Landroid/media/INearbyMediaDevicesProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2646
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2648
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2650
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x4a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2654
    nop

    .line 2655
    return-void

    .line 2653
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2654
    throw v1
.end method

.method public greylist-max-o remQsTile(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "tile"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2091
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2093
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2094
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2095
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x27

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2099
    nop

    .line 2100
    return-void

    .line 2098
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2099
    throw v1
.end method

.method public greylist-max-o removeIcon(Ljava/lang/String;)V
    .registers 7
    .param p1, "slot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1578
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1580
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1582
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 1585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1586
    nop

    .line 1587
    return-void

    .line 1585
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1586
    throw v1
.end method

.method public blacklist requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "appName"    # Ljava/lang/CharSequence;
    .param p4, "label"    # Ljava/lang/CharSequence;
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "callback"    # Lcom/android/internal/statusbar/IAddTileResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2567
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2569
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2571
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2572
    const/4 v2, 0x1

    if-eqz p3, :cond_1e

    .line 2573
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2574
    invoke-static {p3, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_21

    .line 2577
    :cond_1e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2579
    :goto_21
    if-eqz p4, :cond_2a

    .line 2580
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2581
    invoke-static {p4, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_2d

    .line 2584
    :cond_2a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2586
    :goto_2d
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2587
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2588
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_40

    .line 2591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2592
    nop

    .line 2593
    return-void

    .line 2591
    :catchall_40
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2592
    throw v1
.end method

.method public blacklist requestMagnificationConnection(Z)V
    .registers 7
    .param p1, "connect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2494
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2496
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2498
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x41

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2502
    nop

    .line 2503
    return-void

    .line 2501
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2502
    throw v1
.end method

.method public blacklist requestTileServiceListeningState(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2555
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2557
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2558
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2559
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x45

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 2562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2563
    nop

    .line 2564
    return-void

    .line 2562
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2563
    throw v1
.end method

.method public blacklist runGcForTest()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2543
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2545
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2546
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x44

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 2549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2550
    nop

    .line 2551
    return-void

    .line 2549
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2550
    throw v1
.end method

.method public blacklist setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/biometrics/IBiometricContextListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2253
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2255
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2257
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x33

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2261
    nop

    .line 2262
    return-void

    .line 2260
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2261
    throw v1
.end method

.method public greylist-max-o setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 7
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1567
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1569
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1570
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 1573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1574
    nop

    .line 1575
    return-void

    .line 1573
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1574
    throw v1
.end method

.method public blacklist setImeWindowStatus(IIIZ)V
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1681
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1683
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1685
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1686
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1687
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1688
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 1691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1692
    nop

    .line 1693
    return-void

    .line 1691
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1692
    throw v1
.end method

.method public blacklist setNavigationBarLumaSamplingEnabled(IZ)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2529
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2531
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2533
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2534
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x43

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2538
    nop

    .line 2539
    return-void

    .line 2537
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2538
    throw v1
.end method

.method public blacklist setQsTiles([Ljava/lang/String;)V
    .registers 7
    .param p1, "tiles"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2103
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2105
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2107
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x28

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2111
    nop

    .line 2112
    return-void

    .line 2110
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2111
    throw v1
.end method

.method public blacklist setSplitscreenFocus(Z)V
    .registers 7
    .param p1, "leftOrTop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2738
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2740
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2742
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x50

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2746
    nop

    .line 2747
    return-void

    .line 2745
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2746
    throw v1
.end method

.method public greylist-max-o setTopAppHidesStatusBar(Z)V
    .registers 7
    .param p1, "hidesStatusBar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2045
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2047
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2048
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2049
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x24

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2053
    nop

    .line 2054
    return-void

    .line 2052
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2053
    throw v1
.end method

.method public blacklist setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2266
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2268
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2270
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x34

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2274
    nop

    .line 2275
    return-void

    .line 2273
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2274
    throw v1
.end method

.method public blacklist setWindowState(III)V
    .registers 9
    .param p1, "display"    # I
    .param p2, "window"    # I
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1696
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1698
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1700
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1701
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1702
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 1705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1706
    nop

    .line 1707
    return-void

    .line 1705
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1706
    throw v1
.end method

.method public greylist-max-o showAssistDisclosure()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1934
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1936
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1937
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1941
    nop

    .line 1942
    return-void

    .line 1940
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1941
    throw v1
.end method

.method public blacklist showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V
    .registers 28
    .param p1, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p2, "sysuiReceiver"    # Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .param p3, "sensorIds"    # [I
    .param p4, "credentialAllowed"    # Z
    .param p5, "requireConfirmation"    # Z
    .param p6, "userId"    # I
    .param p7, "operationId"    # J
    .param p9, "opPackageName"    # Ljava/lang/String;
    .param p10, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2177
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 2179
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2180
    const/4 v0, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_6d

    .line 2181
    move-object/from16 v3, p2

    :try_start_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_69

    .line 2182
    move-object/from16 v4, p3

    :try_start_1a
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeIntArray([I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_65

    .line 2183
    move/from16 v5, p4

    :try_start_1f
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_61

    .line 2184
    move/from16 v6, p5

    :try_start_24
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_5d

    .line 2185
    move/from16 v7, p6

    :try_start_29
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_59

    .line 2186
    move-wide/from16 v8, p7

    :try_start_2e
    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_55

    .line 2187
    move-object/from16 v10, p9

    :try_start_33
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_51

    .line 2188
    move-wide/from16 v11, p10

    :try_start_38
    invoke-virtual {v1, v11, v12}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_4d

    .line 2189
    move-object/from16 v13, p0

    :try_start_3d
    iget-object v0, v13, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v2, 0x2e

    invoke-interface {v0, v2, v1, v14, v15}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_4b

    .line 2192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2193
    nop

    .line 2194
    return-void

    .line 2192
    :catchall_4b
    move-exception v0

    goto :goto_80

    :catchall_4d
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_80

    :catchall_51
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_7e

    :catchall_55
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_7c

    :catchall_59
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_7a

    :catchall_5d
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_78

    :catchall_61
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_76

    :catchall_65
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_74

    :catchall_69
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_72

    :catchall_6d
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v3, p2

    :goto_72
    move-object/from16 v4, p3

    :goto_74
    move/from16 v5, p4

    :goto_76
    move/from16 v6, p5

    :goto_78
    move/from16 v7, p6

    :goto_7a
    move-wide/from16 v8, p7

    :goto_7c
    move-object/from16 v10, p9

    :goto_7e
    move-wide/from16 v11, p10

    :goto_80
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2193
    throw v0
.end method

.method public greylist-max-o showGlobalActionsMenu()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2015
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2017
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2018
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x22

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 2021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2022
    nop

    .line 2023
    return-void

    .line 2021
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2022
    throw v1
.end method

.method public blacklist showInattentiveSleepWarning()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2384
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2386
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2387
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 2390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2391
    nop

    .line 2392
    return-void

    .line 2390
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2391
    throw v1
.end method

.method public blacklist showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "targetUserHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2757
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2759
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2761
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2762
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x51

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 2765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2766
    nop

    .line 2767
    return-void

    .line 2765
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2766
    throw v1
.end method

.method public greylist-max-o showPictureInPictureMenu()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2003
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2005
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2006
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 2009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2010
    nop

    .line 2011
    return-void

    .line 2009
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2010
    throw v1
.end method

.method public greylist-max-o showPinningEnterExitToast(Z)V
    .registers 7
    .param p1, "entering"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2140
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2142
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2144
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2148
    nop

    .line 2149
    return-void

    .line 2147
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2148
    throw v1
.end method

.method public greylist-max-o showPinningEscapeToast()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2152
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2154
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2155
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 2158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2159
    nop

    .line 2160
    return-void

    .line 2158
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2159
    throw v1
.end method

.method public blacklist showRearDisplayDialog(I)V
    .registers 7
    .param p1, "currentBaseState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2686
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2688
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2690
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x4d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2694
    nop

    .line 2695
    return-void

    .line 2693
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2694
    throw v1
.end method

.method public greylist-max-o showRecentApps(Z)V
    .registers 7
    .param p1, "triggeredFromAltTab"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1710
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1712
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1714
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1718
    nop

    .line 1719
    return-void

    .line 1717
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1718
    throw v1
.end method

.method public greylist-max-o showScreenPinningRequest(I)V
    .registers 7
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1790
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1792
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1794
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1798
    nop

    .line 1799
    return-void

    .line 1797
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1798
    throw v1
.end method

.method public greylist-max-o showShutdownUi(ZLjava/lang/String;)V
    .registers 8
    .param p1, "isReboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2163
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2165
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2167
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2168
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2172
    nop

    .line 2173
    return-void

    .line 2171
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2172
    throw v1
.end method

.method public blacklist showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "text"    # Ljava/lang/CharSequence;
    .param p5, "windowToken"    # Landroid/os/IBinder;
    .param p6, "duration"    # I
    .param p7, "callback"    # Landroid/app/ITransientNotificationCallback;
    .param p8, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2409
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2411
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2414
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2415
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_21

    .line 2416
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2417
    invoke-static {p4, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_24

    .line 2420
    :cond_21
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2422
    :goto_24
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2423
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2425
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2426
    iget-object v2, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_3d

    .line 2429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2430
    nop

    .line 2431
    return-void

    .line 2429
    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2430
    throw v1
.end method

.method public blacklist showTransient(IIZ)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "types"    # I
    .param p3, "isGestureOnSystemBar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2348
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2350
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2351
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2353
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2354
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x38

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 2357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2358
    nop

    .line 2359
    return-void

    .line 2357
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2358
    throw v1
.end method

.method public greylist-max-o showWirelessChargingAnimation(I)V
    .registers 7
    .param p1, "batteryLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1661
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1663
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1669
    nop

    .line 1670
    return-void

    .line 1668
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1669
    throw v1
.end method

.method public greylist-max-o startAssist(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1945
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1947
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1948
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1949
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1953
    nop

    .line 1954
    return-void

    .line 1952
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1953
    throw v1
.end method

.method public blacklist startTracing()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2449
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2451
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2452
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 2455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2456
    nop

    .line 2457
    return-void

    .line 2455
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2456
    throw v1
.end method

.method public blacklist stopTracing()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2461
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2463
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2464
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 2467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2468
    nop

    .line 2469
    return-void

    .line 2467
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2468
    throw v1
.end method

.method public blacklist suppressAmbientDisplay(Z)V
    .registers 7
    .param p1, "suppress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2476
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2478
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2480
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x40

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2484
    nop

    .line 2485
    return-void

    .line 2483
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2484
    throw v1
.end method

.method public greylist-max-o toggleKeyboardShortcutsMenu(I)V
    .registers 7
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1847
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1849
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1851
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x17

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1855
    nop

    .line 1856
    return-void

    .line 1854
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1855
    throw v1
.end method

.method public blacklist toggleNotificationsPanel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1650
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1652
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1653
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1657
    nop

    .line 1658
    return-void

    .line 1656
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1657
    throw v1
.end method

.method public greylist-max-o toggleRecentApps()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1735
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1737
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1738
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1742
    nop

    .line 1743
    return-void

    .line 1741
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1742
    throw v1
.end method

.method public greylist-max-o toggleSplitScreen()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1757
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1759
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1760
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    nop

    .line 1765
    return-void

    .line 1763
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    throw v1
.end method

.method public blacklist toggleTaskbar()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1746
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1748
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1749
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1753
    nop

    .line 1754
    return-void

    .line 1752
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1753
    throw v1
.end method

.method public blacklist unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .registers 7
    .param p1, "provider"    # Landroid/media/INearbyMediaDevicesProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2659
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2661
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2663
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x4b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2667
    nop

    .line 2668
    return-void

    .line 2666
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2667
    throw v1
.end method

.method public blacklist updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "appIcon"    # Landroid/graphics/drawable/Icon;
    .param p4, "appName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2624
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2626
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2627
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2628
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2629
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2630
    const/4 v2, 0x1

    if-eqz p4, :cond_21

    .line 2631
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2632
    invoke-static {p4, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_24

    .line 2635
    :cond_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2637
    :goto_24
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_31

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2641
    nop

    .line 2642
    return-void

    .line 2640
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2641
    throw v1
.end method

.method public blacklist updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    .registers 9
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "undoCallback"    # Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2609
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2611
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2613
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2614
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2615
    iget-object v1, p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x48

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 2618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2619
    nop

    .line 2620
    return-void

    .line 2618
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2619
    throw v1
.end method

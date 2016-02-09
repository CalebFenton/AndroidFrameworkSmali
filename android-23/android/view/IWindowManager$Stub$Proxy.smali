.class Landroid/view/IWindowManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager$Stub;
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
    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 965
    iput-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 963
    return-void
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V
    .locals 5
    .param p1, "addPos"    # I
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "groupId"    # I
    .param p4, "stackId"    # I
    .param p5, "requestedOrientation"    # I
    .param p6, "fullscreen"    # Z
    .param p7, "showWhenLocked"    # Z
    .param p8, "userId"    # I
    .param p9, "configChanges"    # I
    .param p10, "voiceInteraction"    # Z
    .param p11, "launchTaskBehind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1332
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1333
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1334
    if-eqz p2, :cond_0

    #@13
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v2

    #@17
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 1335
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1336
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1337
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 1338
    if-eqz p6, :cond_1

    #@25
    const/4 v2, 0x1

    #@26
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 1339
    if-eqz p7, :cond_2

    #@2b
    const/4 v2, 0x1

    #@2c
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1340
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 1341
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 1342
    if-eqz p10, :cond_3

    #@37
    const/4 v2, 0x1

    #@38
    :goto_3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 1343
    if-eqz p11, :cond_4

    #@3d
    const/4 v2, 0x1

    #@3e
    :goto_4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 1344
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@43
    const/16 v3, 0x15

    #@45
    const/4 v4, 0x0

    #@46
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@49
    .line 1345
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 1348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4f
    .line 1349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 1327
    return-void

    #@53
    .line 1334
    :cond_0
    const/4 v2, 0x0

    #@54
    goto :goto_0

    #@55
    .line 1338
    :cond_1
    const/4 v2, 0x0

    #@56
    goto :goto_1

    #@57
    .line 1339
    :cond_2
    const/4 v2, 0x0

    #@58
    goto :goto_2

    #@59
    .line 1342
    :cond_3
    const/4 v2, 0x0

    #@5a
    goto :goto_3

    #@5b
    .line 1343
    :cond_4
    const/4 v2, 0x0

    #@5c
    goto :goto_4

    #@5d
    .line 1347
    :catchall_0
    move-exception v2

    #@5e
    .line 1348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@61
    .line 1349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@64
    .line 1347
    throw v2
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1303
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1304
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x13

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1296
    return-void

    #@26
    .line 1307
    :catchall_0
    move-exception v2

    #@27
    .line 1308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1307
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 969
    iget-object v0, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public clearForcedDisplayDensity(I)V
    .locals 5
    .param p1, "displayId"    # I
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
    .line 1202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1204
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xd

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1197
    return-void

    #@23
    .line 1207
    :catchall_0
    move-exception v2

    #@24
    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1207
    throw v2
.end method

.method public clearForcedDisplaySize(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1135
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1137
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x9

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1130
    return-void

    #@23
    .line 1140
    :catchall_0
    move-exception v2

    #@24
    .line 1141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1140
    throw v2
.end method

.method public clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 2424
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x4e

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 2425
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 2426
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
    .line 2429
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2432
    return v2

    #@2a
    .line 2426
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2c
    .line 2428
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2d
    .line 2429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 2430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 2428
    throw v3
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1922
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1923
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x35

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1924
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1916
    return-void

    #@23
    .line 1926
    :catchall_0
    move-exception v2

    #@24
    .line 1927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1926
    throw v2
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1792
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1794
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1796
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1797
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x2d

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1789
    return-void

    #@26
    .line 1800
    :catchall_0
    move-exception v2

    #@27
    .line 1801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1800
    throw v2
.end method

.method public dismissKeyguard()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1889
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1891
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1892
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x33

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1893
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1896
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1886
    return-void

    #@20
    .line 1895
    :catchall_0
    move-exception v2

    #@21
    .line 1896
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1895
    throw v2
.end method

.method public enableScreenIfNeeded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2402
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x4d

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 2406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 2407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 2396
    return-void

    #@20
    .line 2405
    :catchall_0
    move-exception v2

    #@21
    .line 2406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 2407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 2405
    throw v2
.end method

.method public executeAppTransition()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1578
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1579
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x22

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1573
    return-void

    #@20
    .line 1582
    :catchall_0
    move-exception v2

    #@21
    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1582
    throw v2
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 5
    .param p1, "callback"    # Landroid/view/IOnKeyguardExitResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1823
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1825
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1826
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IOnKeyguardExitResult;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1827
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x2f

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1828
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1820
    return-void

    #@2a
    .line 1830
    :catchall_0
    move-exception v2

    #@2b
    .line 1831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1830
    throw v2
.end method

.method public freezeRotation(I)V
    .locals 5
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 2216
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x44

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 2217
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 2220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 2209
    return-void

    #@23
    .line 2219
    :catchall_0
    move-exception v2

    #@24
    .line 2220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 2219
    throw v2
.end method

.method public getAnimationScale(I)F
    .locals 6
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1936
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1939
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1941
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x36

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1946
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1949
    return v2

    #@27
    .line 1945
    .end local v2    # "_result":F
    :catchall_0
    move-exception v3

    #@28
    .line 1946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1945
    throw v3
.end method

.method public getAnimationScales()[F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1954
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1957
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1958
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x37

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1959
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1960
    invoke-virtual {v1}, Landroid/os/Parcel;->createFloatArray()[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 1963
    .local v2, "_result":[F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1966
    return-object v2

    #@24
    .line 1962
    .end local v2    # "_result":[F
    :catchall_0
    move-exception v3

    #@25
    .line 1963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1962
    throw v3
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .locals 6
    .param p1, "token"    # Landroid/view/IApplicationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1391
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1392
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x18

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1393
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 1397
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1400
    return v2

    #@2e
    .line 1396
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2f
    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1396
    throw v3
.end method

.method public getBaseDisplayDensity(I)I
    .locals 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1169
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1171
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xb

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1173
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1176
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1179
    return v2

    #@27
    .line 1175
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1175
    throw v3
.end method

.method public getBaseDisplaySize(ILandroid/graphics/Point;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "size"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1098
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1100
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1102
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x7

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 1103
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 1104
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 1105
    invoke-virtual {p2, v1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 1109
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1095
    return-void

    #@2b
    .line 1108
    :catchall_0
    move-exception v2

    #@2c
    .line 1109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1108
    throw v2
.end method

.method public getCurrentAnimatorScale()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2005
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2006
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x3a

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2007
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 2008
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 2011
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2014
    return v2

    #@24
    .line 2010
    .end local v2    # "_result":F
    :catchall_0
    move-exception v3

    #@25
    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 2010
    throw v3
.end method

.method public getInitialDisplayDensity(I)I
    .locals 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1148
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1151
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1153
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0xa

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 1155
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 1158
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1161
    return v2

    #@27
    .line 1157
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@28
    .line 1158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1157
    throw v3
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "size"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1082
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1083
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1084
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x6

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 1086
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 1087
    invoke-virtual {p2, v1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 1091
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1077
    return-void

    #@2b
    .line 1090
    :catchall_0
    move-exception v2

    #@2c
    .line 1091
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1090
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 973
    const-string/jumbo v0, "android.view.IWindowManager"

    #@3
    return-object v0
.end method

.method public getPendingAppTransition()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1437
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1440
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1441
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x1b

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1443
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 1446
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 1447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1449
    return v2

    #@24
    .line 1445
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 1446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1445
    throw v3
.end method

.method public getPreferredOptionsPanelGravity()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2193
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x43

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 2195
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 2198
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 2199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2201
    return v2

    #@24
    .line 2197
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 2198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 2199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 2197
    throw v3
.end method

.method public getRotation()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2126
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2130
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x40

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2131
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 2132
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 2135
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2138
    return v2

    #@24
    .line 2134
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 2135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 2134
    throw v3
.end method

.method public getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 2448
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x4f

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 2449
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 2450
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 2451
    sget-object v3, Landroid/view/WindowContentFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/view/WindowContentFrameStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 2458
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 2459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 2461
    return-object v2

    #@31
    .line 2454
    :cond_0
    const/4 v2, 0x0

    #@32
    .local v2, "_result":Landroid/view/WindowContentFrameStats;
    goto :goto_0

    #@33
    .line 2457
    .end local v2    # "_result":Landroid/view/WindowContentFrameStats;
    :catchall_0
    move-exception v3

    #@34
    .line 2458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 2459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 2457
    throw v3
.end method

.method public hasNavigationBar()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2339
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x4a

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2340
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 2344
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2347
    return v2

    #@27
    .line 2341
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 2343
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 2344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 2343
    throw v3
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1872
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1875
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1876
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x32

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1877
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1878
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1881
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1884
    return v2

    #@27
    .line 1878
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1880
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1880
    throw v3
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1062
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1065
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1066
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1067
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x5

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1068
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 1069
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    .line 1072
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1075
    return v2

    #@30
    .line 1069
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@31
    .restart local v2    # "_result":Z
    goto :goto_0

    #@32
    .line 1071
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@33
    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 1071
    throw v3
.end method

.method public isKeyguardLocked()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1838
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1841
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1842
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x30

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1843
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1844
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1847
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1850
    return v2

    #@27
    .line 1844
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1846
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1846
    throw v3
.end method

.method public isKeyguardSecure()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1855
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1858
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1859
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x31

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 1861
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 1864
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1867
    return v2

    #@27
    .line 1861
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 1863
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 1864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1863
    throw v3
.end method

.method public isRotationFrozen()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2254
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x46

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 2256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 2259
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2262
    return v2

    #@27
    .line 2256
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 2258
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 2259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 2260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 2258
    throw v3
.end method

.method public isSafeModeEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2379
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2383
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x4c

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 2385
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 2388
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2391
    return v2

    #@27
    .line 2385
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 2387
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 2388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 2389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 2387
    throw v3
.end method

.method public isViewServerRunning()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1026
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1027
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x3

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 1028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 1032
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1035
    return v2

    #@26
    .line 1029
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 1031
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1031
    throw v3
.end method

.method public keyguardGoingAway(ZZ)V
    .locals 5
    .param p1, "disableWindowAnimations"    # Z
    .param p2, "keyguardGoingToNotificationShade"    # Z
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
    .line 1902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1903
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1905
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1906
    if-eqz p1, :cond_0

    #@12
    move v4, v2

    #@13
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1907
    if-eqz p2, :cond_1

    #@18
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1908
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x34

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1909
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1900
    return-void

    #@2d
    :cond_0
    move v4, v3

    #@2e
    .line 1906
    goto :goto_0

    #@2f
    :cond_1
    move v2, v3

    #@30
    .line 1907
    goto :goto_1

    #@31
    .line 1911
    :catchall_0
    move-exception v2

    #@32
    .line 1912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 1913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 1911
    throw v2
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2358
    if-eqz p1, :cond_0

    #@10
    .line 2359
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2360
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 2365
    :goto_0
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x4b

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 2366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 2369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2352
    return-void

    #@2a
    .line 2363
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
    .line 2368
    :catchall_0
    move-exception v2

    #@30
    .line 2369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 2370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2368
    throw v2
.end method

.method public openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .locals 6
    .param p1, "callback"    # Landroid/view/IWindowSessionCallback;
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1042
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1045
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1046
    if-eqz p1, :cond_1

    #@11
    invoke-interface {p1}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v4

    #@15
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1047
    if-eqz p2, :cond_2

    #@1a
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v4

    #@1e
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 1048
    if-eqz p3, :cond_0

    #@23
    invoke-interface {p3}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    #@26
    move-result-object v3

    #@27
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2a
    .line 1049
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2c
    const/4 v4, 0x4

    #@2d
    const/4 v5, 0x0

    #@2e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    .line 1050
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@34
    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@37
    move-result-object v3

    #@38
    invoke-static {v3}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    move-result-object v2

    #@3c
    .line 1054
    .local v2, "_result":Landroid/view/IWindowSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 1055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 1057
    return-object v2

    #@43
    .end local v2    # "_result":Landroid/view/IWindowSession;
    :cond_1
    move-object v4, v3

    #@44
    .line 1046
    goto :goto_0

    #@45
    :cond_2
    move-object v4, v3

    #@46
    .line 1047
    goto :goto_1

    #@47
    .line 1053
    :catchall_0
    move-exception v3

    #@48
    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 1055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 1053
    throw v3
.end method

.method public overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1458
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1459
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1460
    if-eqz p4, :cond_0

    #@1a
    invoke-interface {p4}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@21
    .line 1461
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/16 v3, 0x1c

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 1462
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 1465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 1451
    return-void

    #@33
    .line 1464
    :catchall_0
    move-exception v2

    #@34
    .line 1465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1464
    throw v2
.end method

.method public overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 6
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 1533
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 1535
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.view.IWindowManager"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 1536
    if-eqz p1, :cond_1

    #@13
    .line 1537
    const/4 v5, 0x1

    #@14
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1538
    const/4 v5, 0x0

    #@18
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1543
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1544
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1545
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1546
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 1547
    if-eqz p6, :cond_0

    #@29
    invoke-interface {p6}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@2c
    move-result-object v4

    #@2d
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@30
    .line 1548
    if-eqz p7, :cond_2

    #@32
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 1549
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@37
    const/16 v3, 0x20

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3d
    .line 1550
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 1553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 1530
    return-void

    #@47
    .line 1541
    :cond_1
    const/4 v5, 0x0

    #@48
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 1552
    :catchall_0
    move-exception v2

    #@4d
    .line 1553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@50
    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@53
    .line 1552
    throw v2

    #@54
    :cond_2
    move v2, v3

    #@55
    .line 1548
    goto :goto_1
.end method

.method public overridePendingAppTransitionClipReveal(IIII)V
    .locals 5
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1492
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1494
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1495
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1496
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1497
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x1e

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 1498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 1501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1487
    return-void

    #@2c
    .line 1500
    :catchall_0
    move-exception v2

    #@2d
    .line 1501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1500
    throw v2
.end method

.method public overridePendingAppTransitionInPlace(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1560
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1562
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 1564
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1565
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x21

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1557
    return-void

    #@26
    .line 1568
    :catchall_0
    move-exception v2

    #@27
    .line 1569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1568
    throw v2
.end method

.method public overridePendingAppTransitionScaleUp(IIII)V
    .locals 5
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1472
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1476
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1477
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1478
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1479
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v3, 0x1d

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 1480
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1469
    return-void

    #@2c
    .line 1482
    :catchall_0
    move-exception v2

    #@2d
    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1482
    throw v2
.end method

.method public overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 6
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 1508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v1

    #@b
    .line 1510
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.view.IWindowManager"

    #@e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@11
    .line 1511
    if-eqz p1, :cond_1

    #@13
    .line 1512
    const/4 v5, 0x1

    #@14
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1513
    const/4 v5, 0x0

    #@18
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 1518
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1519
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 1520
    if-eqz p4, :cond_0

    #@23
    invoke-interface {p4}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    #@26
    move-result-object v4

    #@27
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2a
    .line 1521
    if-eqz p5, :cond_2

    #@2c
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1522
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@31
    const/16 v3, 0x1f

    #@33
    const/4 v4, 0x0

    #@34
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@37
    .line 1523
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 1526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1505
    return-void

    #@41
    .line 1516
    :cond_1
    const/4 v5, 0x0

    #@42
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 1525
    :catchall_0
    move-exception v2

    #@47
    .line 1526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 1527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 1525
    throw v2

    #@4e
    :cond_2
    move v2, v3

    #@4f
    .line 1521
    goto :goto_1
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1254
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1258
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x10

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1259
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1251
    return-void

    #@23
    .line 1261
    :catchall_0
    move-exception v2

    #@24
    .line 1262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1261
    throw v2
.end method

.method public prepareAppTransition(IZ)V
    .locals 5
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1421
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1425
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1426
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x1a

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1418
    return-void

    #@2a
    .line 1429
    :catchall_0
    move-exception v2

    #@2b
    .line 1430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1429
    throw v2
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1812
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x2e

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1813
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1805
    return-void

    #@23
    .line 1815
    :catchall_0
    move-exception v2

    #@24
    .line 1816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1815
    throw v2
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1690
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1692
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1693
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1694
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x28

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1687
    return-void

    #@23
    .line 1697
    :catchall_0
    move-exception v2

    #@24
    .line 1698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1697
    throw v2
.end method

.method public removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .locals 5
    .param p1, "watcher"    # Landroid/view/IRotationWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 2169
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 2171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 2172
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 2173
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x42

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 2174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 2177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2166
    return-void

    #@2a
    .line 2176
    :catchall_0
    move-exception v2

    #@2b
    .line 2177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 2178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 2176
    throw v2
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1319
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x14

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1312
    return-void

    #@23
    .line 1322
    :catchall_0
    move-exception v2

    #@24
    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1322
    throw v2
.end method

.method public requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z
    .locals 6
    .param p1, "receiver"    # Lcom/android/internal/app/IAssistScreenshotReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 2270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 2273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 2274
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Lcom/android/internal/app/IAssistScreenshotReceiver;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 2275
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x47

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 2276
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 2277
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
    .line 2280
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 2281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 2283
    return v2

    #@31
    .line 2277
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@32
    .restart local v2    # "_result":Z
    goto :goto_0

    #@33
    .line 2279
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@34
    .line 2280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 2281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 2279
    throw v3
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1271
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1272
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1273
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x11

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1266
    return-void

    #@23
    .line 1276
    :catchall_0
    move-exception v2

    #@24
    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1276
    throw v2
.end method

.method public screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 2296
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 2297
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 2298
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 2299
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v4, 0x48

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 2300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 2301
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_0

    #@2b
    .line 2302
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 2309
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 2312
    return-object v2

    #@3a
    .line 2305
    :cond_0
    const/4 v2, 0x0

    #@3b
    .local v2, "_result":Landroid/graphics/Bitmap;
    goto :goto_0

    #@3c
    .line 2308
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    #@3d
    .line 2309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 2308
    throw v3
.end method

.method public setAnimationScale(IF)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1975
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    .line 1976
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x38

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1977
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1968
    return-void

    #@26
    .line 1979
    :catchall_0
    move-exception v2

    #@27
    .line 1980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1979
    throw v2
.end method

.method public setAnimationScales([F)V
    .locals 5
    .param p1, "scales"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1987
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1989
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1990
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@11
    .line 1991
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x39

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1984
    return-void

    #@23
    .line 1994
    :catchall_0
    move-exception v2

    #@24
    .line 1995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1994
    throw v2
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .locals 5
    .param p1, "token"    # Landroid/view/IApplicationToken;
    .param p2, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1371
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1373
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1374
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 1375
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1376
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x17

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1368
    return-void

    #@2d
    .line 1379
    :catchall_0
    move-exception v2

    #@2e
    .line 1380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 1379
    throw v2
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "transferFrom"    # Landroid/os/IBinder;
    .param p11, "createIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1590
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1592
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 1595
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1596
    if-eqz p4, :cond_0

    #@19
    .line 1597
    const/4 v2, 0x1

    #@1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1598
    const/4 v2, 0x0

    #@1e
    invoke-virtual {p4, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 1603
    :goto_0
    if-eqz p5, :cond_1

    #@23
    .line 1604
    const/4 v2, 0x1

    #@24
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 1605
    const/4 v2, 0x0

    #@28
    invoke-static {p5, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2b
    .line 1610
    :goto_1
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1611
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 1612
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 1613
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 1614
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@3a
    .line 1615
    if-eqz p11, :cond_2

    #@3c
    const/4 v2, 0x1

    #@3d
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 1616
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@42
    const/16 v3, 0x23

    #@44
    const/4 v4, 0x0

    #@45
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@48
    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 1620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 1621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 1587
    return-void

    #@52
    .line 1601
    :cond_0
    const/4 v2, 0x0

    #@53
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    goto :goto_0

    #@57
    .line 1619
    :catchall_0
    move-exception v2

    #@58
    .line 1620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@5b
    .line 1621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@5e
    .line 1619
    throw v2

    #@5f
    .line 1608
    :cond_1
    const/4 v2, 0x0

    #@60
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    goto :goto_1

    #@64
    .line 1615
    :cond_2
    const/4 v2, 0x0

    #@65
    goto :goto_2
.end method

.method public setAppTask(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1360
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x16

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1352
    return-void

    #@26
    .line 1363
    :catchall_0
    move-exception v2

    #@27
    .line 1364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1363
    throw v2
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
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
    .line 1641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1642
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1644
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 1646
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1647
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x25

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1648
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1639
    return-void

    #@2a
    .line 1650
    :catchall_0
    move-exception v2

    #@2b
    .line 1651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1650
    throw v2
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1627
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1629
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1631
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x24

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1632
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1624
    return-void

    #@23
    .line 1634
    :catchall_0
    move-exception v2

    #@24
    .line 1635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1634
    throw v2
.end method

.method public setEventDispatching(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1286
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1287
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1288
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x12

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 1289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1281
    return-void

    #@27
    .line 1291
    :catchall_0
    move-exception v2

    #@28
    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1291
    throw v2
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "moveFocusNow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1405
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1407
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 1409
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1410
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x19

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1411
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1402
    return-void

    #@2a
    .line 1413
    :catchall_0
    move-exception v2

    #@2b
    .line 1414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1413
    throw v2
.end method

.method public setForcedDisplayDensity(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1184
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1188
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1189
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xc

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1190
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1181
    return-void

    #@26
    .line 1192
    :catchall_0
    move-exception v2

    #@27
    .line 1193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1192
    throw v2
.end method

.method public setForcedDisplayScalingMode(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1215
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1218
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1219
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1220
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0xe

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1212
    return-void

    #@26
    .line 1223
    :catchall_0
    move-exception v2

    #@27
    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1223
    throw v2
.end method

.method public setForcedDisplaySize(III)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1116
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1118
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1120
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1121
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1122
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x8

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1113
    return-void

    #@29
    .line 1125
    :catchall_0
    move-exception v2

    #@2a
    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 1125
    throw v2
.end method

.method public setInTouchMode(Z)V
    .locals 5
    .param p1, "showFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 2021
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 2023
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 2024
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 2025
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x3b

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 2026
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2018
    return-void

    #@27
    .line 2028
    :catchall_0
    move-exception v2

    #@28
    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 2028
    throw v2
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1739
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1742
    if-eqz p1, :cond_0

    #@10
    .line 1743
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1744
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1749
    :goto_0
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x2a

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1736
    return-void

    #@2a
    .line 1747
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
    .line 1752
    :catchall_0
    move-exception v2

    #@30
    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1752
    throw v2
.end method

.method public setOverscan(IIIII)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1235
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1238
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 1239
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1240
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1241
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/16 v3, 0xf

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 1242
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 1245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1230
    return-void

    #@2f
    .line 1244
    :catchall_0
    move-exception v2

    #@30
    .line 1245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 1244
    throw v2
.end method

.method public setScreenCaptureDisabled(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 2080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 2082
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 2083
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 2084
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 2085
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x3e

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 2086
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 2089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2077
    return-void

    #@2a
    .line 2088
    :catchall_0
    move-exception v2

    #@2b
    .line 2089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 2090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 2088
    throw v2
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .locals 5
    .param p1, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2062
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2064
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2065
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 2066
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x3d

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 2067
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 2070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 2059
    return-void

    #@23
    .line 2069
    :catchall_0
    move-exception v2

    #@24
    .line 2070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 2069
    throw v2
.end method

.method public showStrictModeViolation(Z)V
    .locals 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 2042
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 2044
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 2045
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 2046
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/16 v3, 0x3c

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 2039
    return-void

    #@27
    .line 2049
    :catchall_0
    move-exception v2

    #@28
    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 2049
    throw v2
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1658
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1660
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 1662
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1663
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x26

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1664
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1655
    return-void

    #@26
    .line 1666
    :catchall_0
    move-exception v2

    #@27
    .line 1667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1666
    throw v2
.end method

.method public startFreezingScreen(II)V
    .locals 5
    .param p1, "exitAnim"    # I
    .param p2, "enterAnim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1760
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1764
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1765
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x2b

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1766
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1757
    return-void

    #@26
    .line 1768
    :catchall_0
    move-exception v2

    #@27
    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 1768
    throw v2
.end method

.method public startViewServer(I)Z
    .locals 6
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 984
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 987
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 989
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 991
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    const/4 v2, 0x1

    #@22
    .line 994
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 997
    return v2

    #@29
    .line 991
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 993
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 993
    throw v3
.end method

.method public statusBarVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2321
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindowManager"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 2322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 2323
    iget-object v1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x49

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 2326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 2317
    return-void

    #@1a
    .line 2325
    :catchall_0
    move-exception v1

    #@1b
    .line 2326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 2325
    throw v1
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 1676
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 1677
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 1678
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1679
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v3, 0x27

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 1671
    return-void

    #@2a
    .line 1682
    :catchall_0
    move-exception v2

    #@2b
    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 1682
    throw v2
.end method

.method public stopFreezingScreen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1776
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1779
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x2c

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1780
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1773
    return-void

    #@20
    .line 1782
    :catchall_0
    move-exception v2

    #@21
    .line 1783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 1784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 1782
    throw v2
.end method

.method public stopViewServer()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1004
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1007
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1008
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 1009
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 1010
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 1013
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 1016
    return v2

    #@26
    .line 1010
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 1012
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 1012
    throw v3
.end method

.method public thawRotation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 2231
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 2233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 2234
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x45

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 2235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 2238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 2239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 2228
    return-void

    #@20
    .line 2237
    :catchall_0
    move-exception v2

    #@21
    .line 2238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 2239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 2237
    throw v2
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 6
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "freezeThisOneIfNeeded"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1709
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 1712
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 1713
    if-eqz p1, :cond_0

    #@10
    .line 1714
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1715
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1720
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 1721
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v4, 0x29

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 1722
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@26
    .line 1723
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 1724
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 1731
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 1734
    return-object v2

    #@3b
    .line 1718
    :cond_0
    const/4 v3, 0x0

    #@3c
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 1730
    :catchall_0
    move-exception v3

    #@41
    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 1730
    throw v3

    #@48
    .line 1727
    :cond_1
    const/4 v2, 0x0

    #@49
    .local v2, "_result":Landroid/content/res/Configuration;
    goto :goto_1
.end method

.method public updateRotation(ZZ)V
    .locals 5
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z
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
    .line 2105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 2106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 2108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 2109
    if-eqz p1, :cond_0

    #@12
    move v4, v2

    #@13
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 2110
    if-eqz p2, :cond_1

    #@18
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 2111
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x3f

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 2112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 2115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 2116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 2103
    return-void

    #@2d
    :cond_0
    move v4, v3

    #@2e
    .line 2109
    goto :goto_0

    #@2f
    :cond_1
    move v2, v3

    #@30
    .line 2110
    goto :goto_1

    #@31
    .line 2114
    :catchall_0
    move-exception v2

    #@32
    .line 2115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 2116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 2114
    throw v2
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .locals 6
    .param p1, "watcher"    # Landroid/view/IRotationWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 2147
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 2150
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 2151
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 2152
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0x41

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 2153
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 2154
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 2157
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 2158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 2160
    return v2

    #@2e
    .line 2156
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2f
    .line 2157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 2158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 2156
    throw v3
.end method

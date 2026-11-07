.class Landroid/app/IApplicationThread$Stub$Proxy;
.super Ljava/lang/Object;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread$Stub;
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

    .line 1556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1557
    iput-object p1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1558
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1561
    iget-object v0, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o attachAgent(Ljava/lang/String;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2256
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2258
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2260
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2264
    nop

    .line 2265
    return-void

    .line 2263
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2264
    throw v1
.end method

.method public blacklist attachStartupAgents(Ljava/lang/String;)V
    .registers 7
    .param p1, "dataDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2268
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2270
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2272
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x33

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2276
    nop

    .line 2277
    return-void

    .line 2275
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2276
    throw v1
.end method

.method public blacklist bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[J[JLandroid/os/SharedMemory;Ljava/io/FileDescriptor;JJ)V
    .registers 48
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "sdkSandboxClientAppVolumeUuid"    # Ljava/lang/String;
    .param p4, "sdkSandboxClientAppPackage"    # Ljava/lang/String;
    .param p5, "isSdkInSandbox"    # Z
    .param p6, "providerList"    # Landroid/content/pm/ProviderInfoList;
    .param p7, "testName"    # Landroid/content/ComponentName;
    .param p8, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p9, "testArguments"    # Landroid/os/Bundle;
    .param p10, "testWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p11, "uiAutomationConnection"    # Landroid/app/IUiAutomationConnection;
    .param p12, "debugMode"    # I
    .param p13, "enableBinderTracking"    # Z
    .param p14, "trackAllocation"    # Z
    .param p15, "restrictedBackupMode"    # Z
    .param p16, "persistent"    # Z
    .param p17, "config"    # Landroid/content/res/Configuration;
    .param p18, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p19, "services"    # Ljava/util/Map;
    .param p20, "coreSettings"    # Landroid/os/Bundle;
    .param p21, "buildSerial"    # Ljava/lang/String;
    .param p22, "autofillOptions"    # Landroid/content/AutofillOptions;
    .param p23, "contentCaptureOptions"    # Landroid/content/ContentCaptureOptions;
    .param p24, "disabledCompatChanges"    # [J
    .param p25, "loggableCompatChanges"    # [J
    .param p26, "serializedSystemFontMap"    # Landroid/os/SharedMemory;
    .param p27, "applicationSharedMemoryFd"    # Ljava/io/FileDescriptor;
    .param p28, "startRequestedElapsedTime"    # J
    .param p30, "startRequestedUptime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1631
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 1633
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1634
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1635
    const/4 v0, 0x0

    move-object/from16 v3, p2

    invoke-virtual {v1, v3, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1636
    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_c4

    .line 1637
    move-object/from16 v5, p4

    :try_start_1f
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_c2

    .line 1638
    move/from16 v6, p5

    :try_start_24
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_c0

    .line 1639
    move-object/from16 v7, p6

    :try_start_29
    invoke-virtual {v1, v7, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_be

    .line 1640
    move-object/from16 v8, p7

    :try_start_2e
    invoke-virtual {v1, v8, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_bc

    .line 1641
    move-object/from16 v9, p8

    :try_start_33
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_ba

    .line 1642
    move-object/from16 v10, p9

    :try_start_38
    invoke-virtual {v1, v10, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_b8

    .line 1643
    move-object/from16 v11, p10

    :try_start_3d
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_b6

    .line 1644
    move-object/from16 v12, p11

    :try_start_42
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_b4

    .line 1645
    move/from16 v13, p12

    :try_start_47
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_b2

    .line 1646
    move/from16 v14, p13

    :try_start_4c
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_b0

    .line 1647
    move/from16 v15, p14

    :try_start_51
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1648
    move/from16 v2, p15

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1649
    move/from16 v2, p16

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1650
    move-object/from16 v2, p17

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1651
    move-object/from16 v2, p18

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1652
    move-object/from16 v2, p19

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1653
    move-object/from16 v2, p20

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1654
    move-object/from16 v2, p21

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1655
    move-object/from16 v2, p22

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1656
    move-object/from16 v2, p23

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1657
    move-object/from16 v2, p24

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1658
    move-object/from16 v2, p25

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1659
    move-object/from16 v2, p26

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1660
    move-object/from16 v2, p27

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1661
    move-wide/from16 v2, p28

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1662
    move-wide/from16 v2, p30

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1663
    move-object/from16 v2, p0

    iget-object v0, v2, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x5

    invoke-interface {v0, v4, v1, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_a9
    .catchall {:try_start_51 .. :try_end_a9} :catchall_ae

    .line 1666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1667
    nop

    .line 1668
    return-void

    .line 1666
    :catchall_ae
    move-exception v0

    goto :goto_db

    :catchall_b0
    move-exception v0

    goto :goto_d9

    :catchall_b2
    move-exception v0

    goto :goto_d7

    :catchall_b4
    move-exception v0

    goto :goto_d5

    :catchall_b6
    move-exception v0

    goto :goto_d3

    :catchall_b8
    move-exception v0

    goto :goto_d1

    :catchall_ba
    move-exception v0

    goto :goto_cf

    :catchall_bc
    move-exception v0

    goto :goto_cd

    :catchall_be
    move-exception v0

    goto :goto_cb

    :catchall_c0
    move-exception v0

    goto :goto_c9

    :catchall_c2
    move-exception v0

    goto :goto_c7

    :catchall_c4
    move-exception v0

    move-object/from16 v5, p4

    :goto_c7
    move/from16 v6, p5

    :goto_c9
    move-object/from16 v7, p6

    :goto_cb
    move-object/from16 v8, p7

    :goto_cd
    move-object/from16 v9, p8

    :goto_cf
    move-object/from16 v10, p9

    :goto_d1
    move-object/from16 v11, p10

    :goto_d3
    move-object/from16 v12, p11

    :goto_d5
    move/from16 v13, p12

    :goto_d7
    move/from16 v14, p13

    :goto_d9
    move/from16 v15, p14

    :goto_db
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1667
    throw v0
.end method

.method public greylist-max-o clearDnsCache()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1958
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1960
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1961
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1965
    nop

    .line 1966
    return-void

    .line 1964
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1965
    throw v1
.end method

.method public greylist-max-o dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1885
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1887
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1889
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1890
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x16

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 1893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1894
    nop

    .line 1895
    return-void

    .line 1893
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1894
    throw v1
.end method

.method public greylist-max-o dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1930
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1932
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1933
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1934
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1935
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1937
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x19

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 1940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1941
    nop

    .line 1942
    return-void

    .line 1940
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1941
    throw v1
.end method

.method public blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2068
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2070
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2071
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2072
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2073
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x23

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 2076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2077
    nop

    .line 2078
    return-void

    .line 2076
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2077
    throw v1
.end method

.method public greylist-max-o dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2095
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2097
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2098
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2099
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2100
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x25

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 2103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2104
    nop

    .line 2105
    return-void

    .line 2103
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2104
    throw v1
.end method

.method public greylist-max-o dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2055
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2057
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2058
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2059
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2060
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x22

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 2063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2064
    nop

    .line 2065
    return-void

    .line 2063
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2064
    throw v1
.end method

.method public blacklist dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 13
    .param p1, "managed"    # Z
    .param p2, "mallocInfo"    # Z
    .param p3, "runGc"    # Z
    .param p4, "dumpBitmaps"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "finishCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1912
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1914
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1916
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1917
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1918
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1920
    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1921
    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1922
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_31

    .line 1925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1926
    nop

    .line 1927
    return-void

    .line 1925
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1926
    throw v1
.end method

.method public blacklist dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "dumpAllocatorLogs"    # Z
    .param p9, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2017
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2019
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2020
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2021
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2022
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2023
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2024
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2025
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2026
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2027
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2028
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2029
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_37

    .line 2032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2033
    nop

    .line 2034
    return-void

    .line 2032
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2033
    throw v1
.end method

.method public greylist-max-o dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z
    .param p7, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2037
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2039
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2040
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2041
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2042
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2043
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2044
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2045
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2046
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2047
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_31

    .line 2050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2051
    nop

    .line 2052
    return-void

    .line 2050
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2051
    throw v1
.end method

.method public greylist-max-o dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2081
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2083
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2084
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2085
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2086
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2087
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x24

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 2090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2091
    nop

    .line 2092
    return-void

    .line 2090
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2091
    throw v1
.end method

.method public blacklist dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "finishCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1945
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1947
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1948
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1949
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1950
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1954
    nop

    .line 1955
    return-void

    .line 1953
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1954
    throw v1
.end method

.method public greylist-max-o dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1759
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1761
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1762
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1763
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1764
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1765
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1769
    nop

    .line 1770
    return-void

    .line 1768
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1769
    throw v1
.end method

.method public blacklist getExecutableMethodFileOffsets(Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
    .registers 8
    .param p1, "methodDescriptor"    # Landroid/os/instrumentation/MethodDescriptor;
    .param p2, "resultCallback"    # Landroid/os/instrumentation/IOffsetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2447
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2449
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2450
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2452
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x40

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 2455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2456
    nop

    .line 2457
    return-void

    .line 2455
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2456
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1565
    const-string v0, "android.app.IApplicationThread"

    return-object v0
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2245
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2247
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2248
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x31

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 2251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2252
    nop

    .line 2253
    return-void

    .line 2251
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2252
    throw v1
.end method

.method public blacklist instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V
    .registers 11
    .param p1, "instrumentationName"    # Landroid/content/ComponentName;
    .param p2, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p3, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p4, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p5, "targetInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2375
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2377
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2378
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2379
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2380
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2381
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2382
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2383
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2b

    .line 2386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2387
    nop

    .line 2388
    return-void

    .line 2386
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2387
    throw v1
.end method

.method public greylist-max-o notifyCleartextNetwork([B)V
    .registers 7
    .param p1, "firstPacket"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2197
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2199
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2201
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2205
    nop

    .line 2206
    return-void

    .line 2204
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2205
    throw v1
.end method

.method public blacklist notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V
    .registers 10
    .param p1, "holder"    # Landroid/app/ContentProviderHolder;
    .param p2, "authorities"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "published"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2360
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2362
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2363
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2364
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2366
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2367
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 2370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2371
    nop

    .line 2372
    return-void

    .line 2370
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2371
    throw v1
.end method

.method public blacklist performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 11
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "actionId"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p5, "resultCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2344
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2346
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2348
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2349
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2350
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2351
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2352
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x39

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2b

    .line 2355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2356
    nop

    .line 2357
    return-void

    .line 2355
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2356
    throw v1
.end method

.method public greylist-max-o processInBackground()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1719
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1721
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1722
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1726
    nop

    .line 1727
    return-void

    .line 1725
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1726
    throw v1
.end method

.method public greylist-max-o profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .registers 9
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1807
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1809
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1811
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1812
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1817
    nop

    .line 1818
    return-void

    .line 1816
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1817
    throw v1
.end method

.method public greylist-max-o requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .registers 11
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .param p4, "sessionId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2120
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2122
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2125
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2127
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x27

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2a

    .line 2131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2132
    nop

    .line 2133
    return-void

    .line 2131
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2132
    throw v1
.end method

.method public blacklist requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 10
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "intractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2329
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2331
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2333
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2334
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2335
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2336
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x38

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 2339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2340
    nop

    .line 2341
    return-void

    .line 2339
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2340
    throw v1
.end method

.method public greylist-max-o runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1671
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1673
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1676
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 1679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1680
    nop

    .line 1681
    return-void

    .line 1679
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1680
    throw v1
.end method

.method public greylist-max-o scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2280
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2282
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2283
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2284
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x34

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 2287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2288
    nop

    .line 2289
    return-void

    .line 2287
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2288
    throw v1
.end method

.method public blacklist scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I
    .param p5, "bindSeq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1730
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1732
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1734
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1735
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1736
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 1738
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2b

    .line 1741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1742
    nop

    .line 1743
    return-void

    .line 1741
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1742
    throw v1
.end method

.method public blacklist scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 9
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1898
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1900
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1903
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1904
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x17

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 1907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1908
    nop

    .line 1909
    return-void

    .line 1907
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1908
    throw v1
.end method

.method public blacklist scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;III)V
    .registers 10
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backupMode"    # I
    .param p3, "userId"    # I
    .param p4, "operationType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1833
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1835
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1836
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1837
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1838
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 1843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    nop

    .line 1845
    return-void

    .line 1843
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    throw v1
.end method

.method public greylist-max-o scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1604
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1606
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1608
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1609
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1610
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1611
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_27

    .line 1614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1615
    nop

    .line 1616
    return-void

    .line 1614
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1615
    throw v1
.end method

.method public blacklist scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;I)V
    .registers 8
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1848
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1850
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1851
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1852
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1853
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1857
    nop

    .line 1858
    return-void

    .line 1856
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1857
    throw v1
.end method

.method public greylist-max-o scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2185
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2187
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2189
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    nop

    .line 2194
    return-void

    .line 2192
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    throw v1
.end method

.method public greylist-max-o scheduleExit()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1684
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1686
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1687
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 1690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1691
    nop

    .line 1692
    return-void

    .line 1690
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1691
    throw v1
.end method

.method public greylist-max-o scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .registers 7
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2161
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2163
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2164
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2165
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2169
    nop

    .line 2170
    return-void

    .line 2168
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2169
    throw v1
.end method

.method public greylist-max-o scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2232
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2234
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2237
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x30

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2241
    nop

    .line 2242
    return-void

    .line 2240
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2241
    throw v1
.end method

.method public greylist-max-o scheduleLowMemory()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1796
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1798
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1799
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1803
    nop

    .line 1804
    return-void

    .line 1802
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1803
    throw v1
.end method

.method public blacklist scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/app/ActivityOptions$SceneTransitionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1861
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1863
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1865
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1866
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    nop

    .line 1871
    return-void

    .line 1869
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    throw v1
.end method

.method public blacklist schedulePing(Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "pong"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2435
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2437
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2438
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2439
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2443
    nop

    .line 2444
    return-void

    .line 2442
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2443
    throw v1
.end method

.method public blacklist scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .registers 29
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "ordered"    # Z
    .param p8, "assumeDelivered"    # Z
    .param p9, "sendingUser"    # I
    .param p10, "processState"    # I
    .param p11, "sentFromUid"    # I
    .param p12, "sentFromPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1569
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 1571
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1572
    const/4 v0, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_86

    .line 1573
    move-object/from16 v3, p2

    :try_start_15
    invoke-virtual {v1, v3, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_82

    .line 1574
    move-object/from16 v4, p3

    :try_start_1a
    invoke-virtual {v1, v4, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_7e

    .line 1575
    move/from16 v5, p4

    :try_start_1f
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_7a

    .line 1576
    move-object/from16 v6, p5

    :try_start_24
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_76

    .line 1577
    move-object/from16 v7, p6

    :try_start_29
    invoke-virtual {v1, v7, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_72

    .line 1578
    move/from16 v8, p7

    :try_start_2e
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_6e

    .line 1579
    move/from16 v9, p8

    :try_start_33
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_6a

    .line 1580
    move/from16 v10, p9

    :try_start_38
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_66

    .line 1581
    move/from16 v11, p10

    :try_start_3d
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_62

    .line 1582
    move/from16 v12, p11

    :try_start_42
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_5e

    .line 1583
    move-object/from16 v13, p12

    :try_start_47
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5a

    .line 1584
    move-object/from16 v14, p0

    :try_start_4c
    iget-object v0, v14, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_58

    .line 1587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1588
    nop

    .line 1589
    return-void

    .line 1587
    :catchall_58
    move-exception v0

    goto :goto_9f

    :catchall_5a
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9f

    :catchall_5e
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9d

    :catchall_62
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9b

    :catchall_66
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_99

    :catchall_6a
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_97

    :catchall_6e
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_95

    :catchall_72
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_93

    :catchall_76
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_91

    :catchall_7a
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8f

    :catchall_7e
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8d

    :catchall_82
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8b

    :catchall_86
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v3, p2

    :goto_8b
    move-object/from16 v4, p3

    :goto_8d
    move/from16 v5, p4

    :goto_8f
    move-object/from16 v6, p5

    :goto_91
    move-object/from16 v7, p6

    :goto_93
    move/from16 v8, p7

    :goto_95
    move/from16 v9, p8

    :goto_97
    move/from16 v10, p9

    :goto_99
    move/from16 v11, p10

    :goto_9b
    move/from16 v12, p11

    :goto_9d
    move-object/from16 v13, p12

    :goto_9f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1588
    throw v0
.end method

.method public blacklist scheduleReceiverList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ReceiverInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1592
    .local p1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ReceiverInfo;>;"
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1594
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1595
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1596
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    nop

    .line 1601
    return-void

    .line 1599
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    throw v1
.end method

.method public blacklist scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .registers 29
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "assumeDelivered"    # Z
    .param p9, "sendingUser"    # I
    .param p10, "processState"    # I
    .param p11, "sentFromUid"    # I
    .param p12, "sentFromPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1773
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 1775
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1776
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1777
    const/4 v0, 0x0

    move-object/from16 v3, p2

    invoke-virtual {v1, v3, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_84

    .line 1778
    move/from16 v4, p3

    :try_start_1a
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_80

    .line 1779
    move-object/from16 v5, p4

    :try_start_1f
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_7c

    .line 1780
    move-object/from16 v6, p5

    :try_start_24
    invoke-virtual {v1, v6, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_78

    .line 1781
    move/from16 v7, p6

    :try_start_29
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_74

    .line 1782
    move/from16 v8, p7

    :try_start_2e
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_70

    .line 1783
    move/from16 v9, p8

    :try_start_33
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_6c

    .line 1784
    move/from16 v10, p9

    :try_start_38
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_68

    .line 1785
    move/from16 v11, p10

    :try_start_3d
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_64

    .line 1786
    move/from16 v12, p11

    :try_start_42
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_60

    .line 1787
    move-object/from16 v13, p12

    :try_start_47
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5c

    .line 1788
    move-object/from16 v14, p0

    :try_start_4c
    iget-object v0, v14, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xe

    invoke-interface {v0, v3, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_5a

    .line 1791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1792
    nop

    .line 1793
    return-void

    .line 1791
    :catchall_5a
    move-exception v0

    goto :goto_9b

    :catchall_5c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9b

    :catchall_60
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_99

    :catchall_64
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_97

    :catchall_68
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_95

    :catchall_6c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_93

    :catchall_70
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_91

    :catchall_74
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8f

    :catchall_78
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8d

    :catchall_7c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8b

    :catchall_80
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_89

    :catchall_84
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v4, p3

    :goto_89
    move-object/from16 v5, p4

    :goto_8b
    move-object/from16 v6, p5

    :goto_8d
    move/from16 v7, p6

    :goto_8f
    move/from16 v8, p7

    :goto_91
    move/from16 v9, p8

    :goto_93
    move/from16 v10, p9

    :goto_95
    move/from16 v11, p10

    :goto_97
    move/from16 v12, p11

    :goto_99
    move-object/from16 v13, p12

    :goto_9b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1792
    throw v0
.end method

.method public greylist-max-o scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1695
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1697
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1699
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1700
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1704
    nop

    .line 1705
    return-void

    .line 1703
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1704
    throw v1
.end method

.method public greylist-max-o scheduleStopService(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1621
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1623
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 1626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1627
    nop

    .line 1628
    return-void

    .line 1626
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1627
    throw v1
.end method

.method public greylist-max-o scheduleSuicide()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1874
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1876
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1877
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1881
    nop

    .line 1882
    return-void

    .line 1880
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1881
    throw v1
.end method

.method public blacklist scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V
    .registers 8
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "transaction"    # Landroid/window/TaskFragmentTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2316
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2318
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2320
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2321
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x37

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 2324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2325
    nop

    .line 2326
    return-void

    .line 2324
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2325
    throw v1
.end method

.method public blacklist scheduleTimeoutService(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2408
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2410
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2412
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2417
    nop

    .line 2418
    return-void

    .line 2416
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2417
    throw v1
.end method

.method public blacklist scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startId"    # I
    .param p3, "fgsType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2421
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2423
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2425
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2426
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2427
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 2430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2431
    nop

    .line 2432
    return-void

    .line 2430
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2431
    throw v1
.end method

.method public greylist-max-o scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 7
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2304
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2306
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2307
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2308
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x36

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 2311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2312
    nop

    .line 2313
    return-void

    .line 2311
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2312
    throw v1
.end method

.method public greylist-max-o scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2136
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2138
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2140
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2141
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x28

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2145
    nop

    .line 2146
    return-void

    .line 2144
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2145
    throw v1
.end method

.method public greylist-max-o scheduleTrimMemory(I)V
    .registers 7
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2005
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2007
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2009
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2013
    nop

    .line 2014
    return-void

    .line 2012
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2013
    throw v1
.end method

.method public greylist-max-o scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1746
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1748
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1750
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1751
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1755
    nop

    .line 1756
    return-void

    .line 1754
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1755
    throw v1
.end method

.method public greylist-max-o setCoreSettings(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1980
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1982
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1983
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1984
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 1987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1988
    nop

    .line 1989
    return-void

    .line 1987
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1988
    throw v1
.end method

.method public greylist-max-o setNetworkBlockSeq(J)V
    .registers 8
    .param p1, "procStateSeq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2292
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2294
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2296
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x35

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

.method public greylist-max-o setProcessState(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2149
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2151
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x29

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2157
    nop

    .line 2158
    return-void

    .line 2156
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2157
    throw v1
.end method

.method public greylist-max-o setSchedulingGroup(I)V
    .registers 7
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1821
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1823
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1824
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1825
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1829
    nop

    .line 1830
    return-void

    .line 1828
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1829
    throw v1
.end method

.method public greylist-max-o startBinderTracking()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2209
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2211
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2212
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 2215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2216
    nop

    .line 2217
    return-void

    .line 2215
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2216
    throw v1
.end method

.method public greylist-max-o stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2220
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2222
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2223
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2224
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 2227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2228
    nop

    .line 2229
    return-void

    .line 2227
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2228
    throw v1
.end method

.method public greylist-max-o unstableProviderDied(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "provider"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2108
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2110
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2112
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x26

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2116
    nop

    .line 2117
    return-void

    .line 2115
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2116
    throw v1
.end method

.method public blacklist updateHttpProxy()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1969
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1971
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1972
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1976
    nop

    .line 1977
    return-void

    .line 1975
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1976
    throw v1
.end method

.method public greylist-max-o updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1992
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1994
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1996
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1997
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 2000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2001
    nop

    .line 2002
    return-void

    .line 2000
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2001
    throw v1
.end method

.method public greylist-max-o updateTimePrefs(I)V
    .registers 7
    .param p1, "timeFormatPreference"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2173
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2175
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2177
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2b

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2181
    nop

    .line 2182
    return-void

    .line 2180
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2181
    throw v1
.end method

.method public greylist-max-o updateTimeZone()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1708
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1710
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1711
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    nop

    .line 1716
    return-void

    .line 1714
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    throw v1
.end method

.method public blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 12
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p6, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2391
    .local p5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2393
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2395
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2396
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2397
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2398
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2399
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2400
    iget-object v1, p0, Landroid/app/IApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2e

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2404
    nop

    .line 2405
    return-void

    .line 2403
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2404
    throw v1
.end method

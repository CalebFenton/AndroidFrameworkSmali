.class Landroid/app/ApplicationThreadProxy;
.super Ljava/lang/Object;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# instance fields
.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 711
    iput-object p1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 710
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 715
    iget-object v0, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "testName"    # Landroid/content/ComponentName;
    .param p5, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p6, "testArgs"    # Landroid/os/Bundle;
    .param p7, "testWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p8, "uiAutomationConnection"    # Landroid/app/IUiAutomationConnection;
    .param p9, "debugMode"    # I
    .param p10, "openGlTrace"    # Z
    .param p11, "restrictedBackupMode"    # Z
    .param p12, "persistent"    # Z
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p16, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 997
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p15, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 998
    .local v1, "data":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 999
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 1000
    const/4 v2, 0x0

    #@e
    invoke-virtual {p2, v1, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@11
    .line 1001
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@14
    .line 1002
    if-nez p4, :cond_0

    #@16
    .line 1003
    const/4 v2, 0x0

    #@17
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1008
    :goto_0
    if-eqz p5, :cond_1

    #@1c
    .line 1009
    const/4 v2, 0x1

    #@1d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1010
    const/4 v2, 0x1

    #@21
    invoke-virtual {p5, v1, v2}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 1014
    :goto_1
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@27
    .line 1015
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    #@2a
    .line 1016
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    #@2d
    .line 1017
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 1018
    if-eqz p10, :cond_2

    #@32
    const/4 v2, 0x1

    #@33
    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 1019
    if-eqz p11, :cond_3

    #@38
    const/4 v2, 0x1

    #@39
    :goto_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 1020
    if-eqz p12, :cond_4

    #@3e
    const/4 v2, 0x1

    #@3f
    :goto_4
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 1021
    const/4 v2, 0x0

    #@43
    move-object/from16 v0, p13

    #@45
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@48
    .line 1022
    const/4 v2, 0x0

    #@49
    move-object/from16 v0, p14

    #@4b
    invoke-virtual {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@4e
    .line 1023
    move-object/from16 v0, p15

    #@50
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@53
    .line 1024
    move-object/from16 v0, p16

    #@55
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@58
    .line 1025
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@5a
    const/16 v3, 0xd

    #@5c
    const/4 v4, 0x0

    #@5d
    .line 1026
    const/4 v5, 0x1

    #@5e
    .line 1025
    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@61
    .line 1027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@64
    .line 996
    return-void

    #@65
    .line 1005
    :cond_0
    const/4 v2, 0x1

    #@66
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@69
    .line 1006
    const/4 v2, 0x0

    #@6a
    invoke-virtual {p4, v1, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@6d
    goto :goto_0

    #@6e
    .line 1012
    :cond_1
    const/4 v2, 0x0

    #@6f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    goto :goto_1

    #@73
    .line 1018
    :cond_2
    const/4 v2, 0x0

    #@74
    goto :goto_2

    #@75
    .line 1019
    :cond_3
    const/4 v2, 0x0

    #@76
    goto :goto_3

    #@77
    .line 1020
    :cond_4
    const/4 v2, 0x0

    #@78
    goto :goto_4
.end method

.method public clearDnsCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1066
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1067
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x26

    #@e
    const/4 v3, 0x0

    #@f
    .line 1068
    const/4 v4, 0x1

    #@10
    .line 1067
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@13
    .line 1069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 1064
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1188
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 1190
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@10
    .line 1191
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x22

    #@14
    const/4 v3, 0x0

    #@15
    .line 1192
    const/4 v4, 0x1

    #@16
    .line 1191
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1186
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1225
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@d
    .line 1227
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    .line 1228
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 1229
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@16
    .line 1230
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/16 v2, 0x25

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1223
    return-void
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1289
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@d
    .line 1291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@10
    .line 1292
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x2e

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1287
    return-void
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1280
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@d
    .line 1282
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@10
    .line 1283
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x2c

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1278
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "managed"    # Z
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 1207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 1208
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 1209
    if-eqz p1, :cond_0

    #@f
    move v1, v2

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 1211
    if-eqz p3, :cond_1

    #@18
    .line 1212
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1213
    invoke-virtual {p3, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 1217
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x24

    #@22
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 1219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1206
    return-void

    #@29
    :cond_0
    move v1, v3

    #@2a
    .line 1209
    goto :goto_0

    #@2b
    .line 1215
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    goto :goto_1
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1263
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 1264
    .local v1, "reply":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IApplicationThread"

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 1265
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@13
    .line 1266
    invoke-virtual {p2, v0, v4}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 1267
    if-eqz p3, :cond_0

    #@18
    move v2, v3

    #@19
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1268
    if-eqz p4, :cond_1

    #@1e
    move v2, v3

    #@1f
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 1269
    if-eqz p5, :cond_2

    #@24
    move v2, v3

    #@25
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 1270
    if-eqz p6, :cond_3

    #@2a
    :goto_3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 1271
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@30
    .line 1272
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@32
    const/16 v3, 0x2b

    #@34
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@37
    .line 1273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3a
    .line 1274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 1275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 1261
    return-void

    #@41
    :cond_0
    move v2, v4

    #@42
    .line 1267
    goto :goto_0

    #@43
    :cond_1
    move v2, v4

    #@44
    .line 1268
    goto :goto_1

    #@45
    :cond_2
    move v2, v4

    #@46
    .line 1269
    goto :goto_2

    #@47
    :cond_3
    move v3, v4

    #@48
    .line 1270
    goto :goto_3
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1106
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@d
    .line 1108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    .line 1109
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@13
    .line 1110
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0x2d

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1104
    return-void
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1095
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1096
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@d
    .line 1097
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    .line 1098
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@13
    .line 1099
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0x16

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1093
    return-void
.end method

.method public notifyCleartextNetwork([B)V
    .locals 5
    .param p1, "firstPacket"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1402
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@d
    .line 1404
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x38

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 1400
    return-void
.end method

.method public processInBackground()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1086
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1087
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x13

    #@e
    const/4 v3, 0x0

    #@f
    .line 1088
    const/4 v4, 0x1

    #@10
    .line 1087
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@13
    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 1084
    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 5
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 1162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 1163
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 1164
    if-eqz p1, :cond_0

    #@f
    move v1, v2

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1165
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1166
    if-eqz p2, :cond_1

    #@18
    .line 1167
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1168
    invoke-virtual {p2, v0, v2}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 1172
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v3, 0x1c

    #@22
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 1161
    return-void

    #@29
    :cond_0
    move v1, v3

    #@2a
    .line 1164
    goto :goto_0

    #@2b
    .line 1170
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    goto :goto_1
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1309
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 1311
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    .line 1312
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1313
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0x30

    #@17
    const/4 v3, 0x0

    #@18
    .line 1314
    const/4 v4, 0x1

    #@19
    .line 1313
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1307
    return-void
.end method

.method public final scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 1146
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 1147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    .line 1148
    if-eqz p2, :cond_0

    #@12
    .line 1149
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1150
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 1154
    :goto_0
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v2, 0x19

    #@1c
    invoke-interface {v1, v2, v0, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 1156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 1144
    return-void

    #@23
    .line 1152
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    goto :goto_0
.end method

.method public scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1382
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 1383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 1384
    if-eqz p2, :cond_0

    #@10
    move v1, v2

    #@11
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1385
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x36

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1380
    return-void

    #@20
    .line 1384
    :cond_0
    const/4 v1, 0x0

    #@21
    goto :goto_0
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 940
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IApplicationThread"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@f
    .line 942
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 943
    if-eqz p3, :cond_0

    #@14
    move v1, v2

    #@15
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 944
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 945
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0x14

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 938
    return-void
.end method

.method public scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1372
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 1374
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x35

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 1370
    return-void
.end method

.method public final scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1049
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1050
    const/4 v1, 0x0

    #@b
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 1051
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v2, 0x10

    #@12
    const/4 v3, 0x0

    #@13
    .line 1052
    const/4 v4, 0x1

    #@14
    .line 1051
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@17
    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 1047
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1198
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 1200
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x23

    #@11
    const/4 v3, 0x0

    #@12
    .line 1201
    const/4 v4, 0x1

    #@13
    .line 1200
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 1196
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 899
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 900
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 901
    invoke-virtual {p2, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@11
    .line 902
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 903
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v2, 0x1e

    #@18
    const/4 v3, 0x0

    #@19
    .line 904
    const/4 v4, 0x1

    #@1a
    .line 903
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1d
    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 897
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 922
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 924
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@11
    .line 925
    invoke-virtual {p3, v0, v3}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 926
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 928
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0xb

    #@1b
    const/4 v4, 0x0

    #@1c
    .line 929
    const/4 v5, 0x1

    #@1d
    .line 928
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 920
    return-void

    #@24
    .line 930
    :catch_0
    move-exception v1

    #@25
    .line 931
    .local v1, "e":Landroid/os/TransactionTooLargeException;
    const-string/jumbo v2, "CREATE_SERVICE"

    #@28
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v4, "Binder failure starting service; service="

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 932
    throw v1
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 868
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 869
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 870
    if-eqz p2, :cond_0

    #@10
    move v1, v2

    #@11
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 871
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 872
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x9

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 866
    return-void

    #@23
    .line 870
    :cond_0
    const/4 v1, 0x0

    #@24
    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 911
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 912
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 913
    invoke-virtual {p2, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@11
    .line 914
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v2, 0x1f

    #@15
    const/4 v3, 0x0

    #@16
    .line 915
    const/4 v4, 0x1

    #@17
    .line 914
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1a
    .line 916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 909
    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1393
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 1395
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x37

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 1391
    return-void
.end method

.method public final scheduleExit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1032
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1033
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0xe

    #@e
    const/4 v3, 0x0

    #@f
    .line 1034
    const/4 v4, 0x1

    #@10
    .line 1033
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@13
    .line 1035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 1030
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 5
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1354
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1355
    const/4 v1, 0x0

    #@b
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 1356
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v2, 0x33

    #@12
    const/4 v3, 0x0

    #@13
    const/4 v4, 0x1

    #@14
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@17
    .line 1357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 1352
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "ident"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "curConfig"    # Landroid/content/res/Configuration;
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "referrer"    # Ljava/lang/String;
    .param p9, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p10, "procState"    # I
    .param p11, "state"    # Landroid/os/Bundle;
    .param p12, "persistentState"    # Landroid/os/PersistableBundle;
    .param p15, "notResumed"    # Z
    .param p16, "isForward"    # Z
    .param p17, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;ZZ",
            "Landroid/app/ProfilerInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 797
    .local p13, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p14, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 798
    .local v1, "data":Landroid/os/Parcel;
    const-string/jumbo v2, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 799
    const/4 v2, 0x0

    #@b
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 800
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 801
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 802
    const/4 v2, 0x0

    #@15
    invoke-virtual {p4, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 803
    const/4 v2, 0x0

    #@19
    invoke-virtual {p5, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c
    .line 804
    if-eqz p6, :cond_0

    #@1e
    .line 805
    const/4 v2, 0x1

    #@1f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 806
    const/4 v2, 0x0

    #@23
    invoke-virtual {p6, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 810
    :goto_0
    const/4 v2, 0x0

    #@27
    invoke-virtual {p7, v1, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 811
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2d
    .line 812
    if-eqz p9, :cond_1

    #@2f
    invoke-interface {p9}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    #@32
    move-result-object v2

    #@33
    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@36
    .line 813
    move/from16 v0, p10

    #@38
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 814
    move-object/from16 v0, p11

    #@3d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@40
    .line 815
    move-object/from16 v0, p12

    #@42
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    #@45
    .line 816
    move-object/from16 v0, p13

    #@47
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@4a
    .line 817
    move-object/from16 v0, p14

    #@4c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@4f
    .line 818
    if-eqz p15, :cond_2

    #@51
    const/4 v2, 0x1

    #@52
    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 819
    if-eqz p16, :cond_3

    #@57
    const/4 v2, 0x1

    #@58
    :goto_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 820
    if-eqz p17, :cond_4

    #@5d
    .line 821
    const/4 v2, 0x1

    #@5e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    .line 822
    const/4 v2, 0x1

    #@62
    move-object/from16 v0, p17

    #@64
    invoke-virtual {v0, v1, v2}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@67
    .line 826
    :goto_4
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@69
    const/4 v3, 0x7

    #@6a
    const/4 v4, 0x0

    #@6b
    .line 827
    const/4 v5, 0x1

    #@6c
    .line 826
    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6f
    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@72
    .line 796
    return-void

    #@73
    .line 808
    :cond_0
    const/4 v2, 0x0

    #@74
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@77
    goto :goto_0

    #@78
    .line 812
    :cond_1
    const/4 v2, 0x0

    #@79
    goto :goto_1

    #@7a
    .line 818
    :cond_2
    const/4 v2, 0x0

    #@7b
    goto :goto_2

    #@7c
    .line 819
    :cond_3
    const/4 v2, 0x0

    #@7d
    goto :goto_3

    #@7e
    .line 824
    :cond_4
    const/4 v2, 0x0

    #@7f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@82
    goto :goto_4
.end method

.method public final scheduleLowMemory()V
    .locals 5
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
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1137
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x18

    #@e
    const/4 v3, 0x0

    #@f
    .line 1138
    const/4 v4, 0x1

    #@10
    .line 1137
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@13
    .line 1139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 1134
    return-void
.end method

.method public scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 5
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 856
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 857
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d
    .line 859
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    .line 860
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x8

    #@14
    const/4 v3, 0x0

    #@15
    .line 861
    const/4 v4, 0x1

    #@16
    .line 860
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 855
    return-void
.end method

.method public scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1334
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 1335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 1336
    if-nez p2, :cond_0

    #@10
    move-object v1, v2

    #@11
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@14
    .line 1337
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x20

    #@18
    .line 1338
    const/4 v4, 0x1

    #@19
    .line 1337
    invoke-interface {v1, v3, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1332
    return-void

    #@20
    .line 1336
    :cond_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@23
    move-result-object v1

    #@24
    goto :goto_0
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 721
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@f
    .line 723
    if-eqz p2, :cond_1

    #@11
    move v1, v2

    #@12
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 724
    if-eqz p3, :cond_2

    #@17
    move v1, v2

    #@18
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 725
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 726
    if-eqz p5, :cond_0

    #@20
    move v3, v2

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 727
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v3, 0x0

    #@27
    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 719
    return-void

    #@2e
    :cond_1
    move v1, v3

    #@2f
    .line 723
    goto :goto_0

    #@30
    :cond_2
    move v1, v3

    #@31
    .line 724
    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Ljava/lang/String;
    .param p6, "map"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 881
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.app.IApplicationThread"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 882
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@f
    .line 883
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 884
    invoke-virtual {p3, v0, v1}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 885
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 886
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 887
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1e
    .line 888
    if-eqz p7, :cond_0

    #@20
    move v1, v2

    #@21
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 889
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 890
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 891
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@2c
    const/16 v3, 0xa

    #@2e
    const/4 v4, 0x0

    #@2f
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    .line 893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 879
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 5
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
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
    .line 1117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 1118
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 1119
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@13
    .line 1120
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 1121
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1122
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 1123
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1f
    .line 1124
    if-eqz p6, :cond_1

    #@21
    move v1, v2

    #@22
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 1125
    if-eqz p7, :cond_0

    #@27
    move v3, v2

    #@28
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 1126
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1127
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 1128
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@33
    const/16 v3, 0x17

    #@35
    const/4 v4, 0x0

    #@36
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@39
    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 1116
    return-void

    #@3d
    :cond_1
    move v1, v3

    #@3e
    .line 1124
    goto :goto_0
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 836
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 837
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    .line 838
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@13
    .line 839
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@16
    .line 840
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 841
    if-eqz p5, :cond_0

    #@1b
    move v1, v2

    #@1c
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 842
    invoke-virtual {p6, v0, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 843
    if-eqz p7, :cond_1

    #@24
    .line 844
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 845
    invoke-virtual {p7, v0, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 849
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@2c
    const/16 v3, 0x1a

    #@2e
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@31
    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 834
    return-void

    #@35
    :cond_0
    move v1, v3

    #@36
    .line 841
    goto :goto_0

    #@37
    .line 847
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    goto :goto_1
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "procState"    # I
    .param p3, "isForward"    # Z
    .param p4, "resumeArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 770
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 771
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 772
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 773
    if-eqz p3, :cond_0

    #@13
    move v1, v2

    #@14
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 774
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1a
    .line 775
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v3, 0x5

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 768
    return-void

    #@25
    .line 773
    :cond_0
    const/4 v1, 0x0

    #@26
    goto :goto_0
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
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
    .line 782
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 783
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 785
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@10
    .line 786
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x6

    #@13
    const/4 v3, 0x0

    #@14
    .line 787
    const/4 v4, 0x1

    #@15
    .line 786
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 781
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskRemoved"    # Z
    .param p3, "startId"    # I
    .param p4, "flags"    # I
    .param p5, "args"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 964
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 965
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    .line 966
    if-eqz p2, :cond_0

    #@12
    move v1, v2

    #@13
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 967
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 968
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 969
    if-eqz p5, :cond_1

    #@1e
    .line 970
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 971
    invoke-virtual {p5, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 975
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v3, 0x11

    #@28
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 962
    return-void

    #@2f
    :cond_0
    move v1, v3

    #@30
    .line 966
    goto :goto_0

    #@31
    .line 973
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    goto :goto_1
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 758
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 759
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 760
    if-eqz p2, :cond_0

    #@10
    move v1, v2

    #@11
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 761
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x1b

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 756
    return-void

    #@20
    .line 760
    :cond_0
    const/4 v1, 0x0

    #@21
    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z
    .param p3, "configChanges"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 735
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 737
    if-eqz p2, :cond_0

    #@10
    move v1, v2

    #@11
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 738
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 739
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x3

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 733
    return-void

    #@22
    .line 737
    :cond_0
    const/4 v1, 0x0

    #@23
    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 983
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 984
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 985
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0xc

    #@11
    const/4 v3, 0x0

    #@12
    .line 986
    const/4 v4, 0x1

    #@13
    .line 985
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 981
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1040
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1041
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x21

    #@e
    const/4 v3, 0x0

    #@f
    .line 1042
    const/4 v4, 0x1

    #@10
    .line 1041
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@13
    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 1038
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1322
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 1323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 1324
    if-eqz p2, :cond_0

    #@10
    move v1, v2

    #@11
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1325
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x31

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 1327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 1320
    return-void

    #@20
    .line 1324
    :cond_0
    const/4 v1, 0x0

    #@21
    goto :goto_0
.end method

.method public scheduleTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1253
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 1255
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x2a

    #@11
    const/4 v3, 0x0

    #@12
    .line 1256
    const/4 v4, 0x1

    #@13
    .line 1255
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 1251
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 953
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 954
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 955
    const/4 v1, 0x0

    #@e
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@11
    .line 956
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v2, 0x15

    #@15
    const/4 v3, 0x0

    #@16
    .line 957
    const/4 v4, 0x1

    #@17
    .line 956
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1a
    .line 958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 951
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 747
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 749
    if-eqz p2, :cond_0

    #@10
    move v1, v2

    #@11
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 750
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x4

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 745
    return-void

    #@1f
    .line 749
    :cond_0
    const/4 v1, 0x0

    #@20
    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1236
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@d
    .line 1238
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x28

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1234
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "proxy"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "pacFileUrl"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1075
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1076
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 1077
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 1078
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 1079
    const/4 v1, 0x0

    #@14
    invoke-virtual {p4, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 1080
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v2, 0x27

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 1073
    return-void
.end method

.method public setProcessState(I)V
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1345
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 1347
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x32

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 1343
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 5
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1179
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 1181
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x1d

    #@11
    const/4 v3, 0x0

    #@12
    .line 1182
    const/4 v4, 0x1

    #@13
    .line 1181
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 1177
    return-void
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "provider"    # Landroid/os/IBinder;
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
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 1301
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x2f

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 1302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 1297
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1244
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 1246
    const/4 v1, 0x0

    #@e
    invoke-virtual {p2, v0, v1}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@11
    .line 1247
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v2, 0x29

    #@15
    const/4 v3, 0x0

    #@16
    .line 1248
    const/4 v4, 0x1

    #@17
    .line 1247
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1a
    .line 1242
    return-void
.end method

.method public updateTimePrefs(Z)V
    .locals 5
    .param p1, "is24Hour"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 1363
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 1364
    if-eqz p1, :cond_0

    #@d
    move v1, v2

    #@e
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@11
    .line 1365
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x34

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 1361
    return-void

    #@1d
    .line 1364
    :cond_0
    const/4 v1, 0x0

    #@1e
    goto :goto_0
.end method

.method public updateTimeZone()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 1058
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v1, "android.app.IApplicationThread"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 1059
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x12

    #@e
    const/4 v3, 0x0

    #@f
    .line 1060
    const/4 v4, 0x1

    #@10
    .line 1059
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@13
    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 1056
    return-void
.end method

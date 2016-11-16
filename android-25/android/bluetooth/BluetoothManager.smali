.class public final Landroid/bluetooth/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothManager"

.field private static final VDBG:Z = true


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object p1

    #@7
    .line 63
    if-nez p1, :cond_0

    #@9
    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    .line 65
    const-string/jumbo v1, "context not associated with any application (using a mock context?)"

    #@e
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 68
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@18
    .line 61
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@2
    return-object v0
.end method

.method public getConnectedDevices(I)Ljava/util/List;
    .locals 7
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 128
    const-string/jumbo v4, "BluetoothManager"

    #@3
    const-string/jumbo v5, "getConnectedDevices"

    #@6
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 129
    const/4 v4, 0x7

    #@a
    if-eq p1, v4, :cond_0

    #@c
    const/16 v4, 0x8

    #@e
    if-eq p1, v4, :cond_0

    #@10
    .line 130
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v5, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v6, "Profile not supported: "

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v4

    #@2a
    .line 133
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2f
    .line 136
    .local v0, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@31
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@34
    move-result-object v3

    #@35
    .line 137
    .local v3, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    #@38
    move-result-object v2

    #@39
    .line 138
    .local v2, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v2, :cond_1

    #@3b
    return-object v0

    #@3c
    .line 141
    :cond_1
    const/4 v4, 0x1

    #@3d
    new-array v4, v4, [I

    #@3f
    const/4 v5, 0x2

    #@40
    const/4 v6, 0x0

    #@41
    aput v5, v4, v6

    #@43
    .line 140
    invoke-interface {v2, v4}, Landroid/bluetooth/IBluetoothGatt;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    move-result-object v0

    #@47
    .line 146
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :goto_0
    return-object v0

    #@48
    .line 142
    :catch_0
    move-exception v1

    #@49
    .line 143
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BluetoothManager"

    #@4c
    const-string/jumbo v5, ""

    #@4f
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@52
    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I

    #@0
    .prologue
    .line 99
    const-string/jumbo v3, "BluetoothManager"

    #@3
    const-string/jumbo v4, "getConnectionState()"

    #@6
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 101
    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    #@c
    move-result-object v2

    #@d
    .line 102
    .local v2, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "connectedDevice$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@1d
    .line 103
    .local v0, "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 104
    const/4 v3, 0x2

    #@24
    return v3

    #@25
    .line 108
    .end local v0    # "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const/4 v3, 0x0

    #@26
    return v3
.end method

.method public getDevicesMatchingConnectionStates(I[I)Ljava/util/List;
    .locals 7
    .param p1, "profile"    # I
    .param p2, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    const-string/jumbo v4, "BluetoothManager"

    #@3
    const-string/jumbo v5, "getDevicesMatchingConnectionStates"

    #@6
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 175
    const/4 v4, 0x7

    #@a
    if-eq p1, v4, :cond_0

    #@c
    const/16 v4, 0x8

    #@e
    if-eq p1, v4, :cond_0

    #@10
    .line 176
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v5, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v6, "Profile not supported: "

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v4

    #@2a
    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2f
    .line 182
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@31
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@34
    move-result-object v3

    #@35
    .line 183
    .local v3, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    #@38
    move-result-object v2

    #@39
    .line 184
    .local v2, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v2, :cond_1

    #@3b
    return-object v0

    #@3c
    .line 185
    :cond_1
    invoke-interface {v2, p2}, Landroid/bluetooth/IBluetoothGatt;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    move-result-object v0

    #@40
    .line 190
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :goto_0
    return-object v0

    #@41
    .line 186
    :catch_0
    move-exception v1

    #@42
    .line 187
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BluetoothManager"

    #@45
    const-string/jumbo v5, ""

    #@48
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    goto :goto_0
.end method

.method public openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;

    #@0
    .prologue
    .line 206
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;I)Landroid/bluetooth/BluetoothGattServer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;I)Landroid/bluetooth/BluetoothGattServer;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;
    .param p3, "transport"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 225
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 226
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v6, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v7, "null parameter: "

    #@f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    const-string/jumbo v7, " "

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v5

    #@2a
    .line 233
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    #@2c
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    #@2f
    move-result-object v3

    #@30
    .line 234
    .local v3, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    #@33
    move-result-object v1

    #@34
    .line 235
    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v1, :cond_2

    #@36
    .line 236
    const-string/jumbo v6, "BluetoothManager"

    #@39
    const-string/jumbo v7, "Fail to get GATT Server connection"

    #@3c
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 237
    return-object v5

    #@40
    .line 239
    :cond_2
    new-instance v2, Landroid/bluetooth/BluetoothGattServer;

    #@42
    invoke-direct {v2, v1, p3}, Landroid/bluetooth/BluetoothGattServer;-><init>(Landroid/bluetooth/IBluetoothGatt;I)V

    #@45
    .line 240
    .local v2, "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGattServer;->registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;)Z

    #@48
    move-result v6

    #@49
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4c
    move-result-object v4

    #@4d
    .line 241
    .local v4, "regStatus":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    move-result v6

    #@51
    if-eqz v6, :cond_3

    #@53
    .end local v2    # "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    :goto_0
    return-object v2

    #@54
    .restart local v2    # "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    :cond_3
    move-object v2, v5

    #@55
    goto :goto_0

    #@56
    .line 242
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v2    # "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    .end local v4    # "regStatus":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    #@57
    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "BluetoothManager"

    #@5a
    const-string/jumbo v7, ""

    #@5d
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@60
    .line 244
    return-object v5
.end method

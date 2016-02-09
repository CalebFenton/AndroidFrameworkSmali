.class final Lcom/android/server/midi/MidiService$Client;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Client"
.end annotation


# instance fields
.field private final mDeviceConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$DeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/midi/IMidiDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPid:I

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/midi/MidiService;
    .param p2, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 129
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 128
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    #@c
    .line 132
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    .line 131
    iput-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    #@13
    .line 135
    iput-object p2, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    #@15
    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    #@1b
    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Lcom/android/server/midi/MidiService$Client;->mPid:I

    #@21
    .line 134
    return-void
.end method

.method private close()V
    .locals 5

    #@0
    .prologue
    .line 222
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    #@2
    invoke-static {v2}, Lcom/android/server/midi/MidiService;->-get2(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    #@9
    invoke-static {v2}, Lcom/android/server/midi/MidiService;->-get2(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    #@c
    move-result-object v2

    #@d
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    #@f
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 224
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v3

    #@19
    .line 227
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v1

    #@23
    .local v1, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_0

    #@29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    #@2f
    .line 228
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, v0}, Lcom/android/server/midi/MidiService$Device;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    #@36
    goto :goto_0

    #@37
    .line 222
    .end local v0    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    .end local v1    # "connection$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@38
    monitor-exit v3

    #@39
    throw v2

    #@3a
    .line 221
    .restart local v1    # "connection$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 3
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    #@0
    .prologue
    .line 156
    new-instance v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    #@2
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    #@4
    invoke-direct {v0, v1, p1, p0, p2}, Lcom/android/server/midi/MidiService$DeviceConnection;-><init>(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;Lcom/android/server/midi/MidiService$Client;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    #@7
    .line 157
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    #@9
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getToken()Landroid/os/IBinder;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 158
    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    #@13
    .line 155
    return-void
.end method

.method public addListener(Landroid/media/midi/IMidiDeviceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 144
    return-void
.end method

.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 234
    const-string/jumbo v0, "MidiService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Client died: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 235
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    #@1d
    .line 233
    return-void
.end method

.method public deviceAdded(Lcom/android/server/midi/MidiService$Device;)V
    .locals 6
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    #@0
    .prologue
    .line 182
    iget v4, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    #@2
    invoke-virtual {p1, v4}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    return-void

    #@9
    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    #@c
    move-result-object v0

    #@d
    .line 186
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    #@f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/media/midi/IMidiDeviceListener;

    #@1f
    .line 187
    .local v2, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v2, v0}, Landroid/media/midi/IMidiDeviceListener;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    goto :goto_0

    #@23
    .line 189
    .end local v2    # "listener":Landroid/media/midi/IMidiDeviceListener;
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@24
    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MidiService"

    #@27
    const-string/jumbo v5, "remote exception"

    #@2a
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    .line 180
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method public deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V
    .locals 6
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    #@0
    .prologue
    .line 196
    iget v4, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    #@2
    invoke-virtual {p1, v4}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    return-void

    #@9
    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    #@c
    move-result-object v0

    #@d
    .line 200
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    #@f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/media/midi/IMidiDeviceListener;

    #@1f
    .line 201
    .local v2, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v2, v0}, Landroid/media/midi/IMidiDeviceListener;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    goto :goto_0

    #@23
    .line 203
    .end local v2    # "listener":Landroid/media/midi/IMidiDeviceListener;
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@24
    .line 204
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MidiService"

    #@27
    const-string/jumbo v5, "remote exception"

    #@2a
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    .line 194
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method public deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 5
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    #@0
    .prologue
    .line 210
    iget v3, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    #@2
    invoke-virtual {p1, v3}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    return-void

    #@9
    .line 213
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/media/midi/IMidiDeviceListener;

    #@1b
    .line 214
    .local v1, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v1, p2}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    goto :goto_0

    #@1f
    .line 216
    .end local v1    # "listener":Landroid/media/midi/IMidiDeviceListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@20
    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MidiService"

    #@23
    const-string/jumbo v4, "remote exception"

    #@26
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    .line 208
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 141
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    #@2
    return v0
.end method

.method public removeDeviceConnection(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    #@8
    .line 164
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    if-eqz v0, :cond_0

    #@a
    .line 165
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, v0}, Lcom/android/server/midi/MidiService$Device;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    #@11
    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_1

    #@21
    .line 168
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    #@24
    .line 162
    :cond_1
    return-void
.end method

.method public removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .locals 2
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->getToken()Landroid/os/IBinder;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 175
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    #@13
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_0

    #@19
    .line 176
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    #@1c
    .line 173
    :cond_0
    return-void
.end method

.method public removeListener(Landroid/media/midi/IMidiDeviceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 150
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    #@f
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 151
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    #@18
    .line 148
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v3, "Client: UID: "

    #@5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 241
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d
    .line 242
    const-string/jumbo v3, " PID: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 243
    iget v3, p0, Lcom/android/server/midi/MidiService$Client;->mPid:I

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    .line 244
    const-string/jumbo v3, " listener count: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 245
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    .line 246
    const-string/jumbo v3, " Device Connections:"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 247
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    #@2f
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@32
    move-result-object v3

    #@33
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v1

    #@37
    .local v1, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_0

    #@3d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    #@43
    .line 248
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    const-string/jumbo v3, " <device "

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 249
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    #@54
    move-result v3

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    .line 250
    const-string/jumbo v3, ">"

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    goto :goto_0

    #@5f
    .line 252
    .end local v0    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    return-object v3
.end method

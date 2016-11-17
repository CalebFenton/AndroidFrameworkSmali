.class Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiNanEventListener.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanEventListener$Stub;
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
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    iput-object p1, p0, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 98
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 108
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanEventListener"

    #@3
    return-object v0
.end method

.method public onConfigCompleted(Landroid/net/wifi/nan/ConfigRequest;)V
    .locals 5
    .param p1, "completedConfig"    # Landroid/net/wifi/nan/ConfigRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 114
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanEventListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 115
    if-eqz p1, :cond_0

    #@c
    .line 116
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 117
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/nan/ConfigRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 122
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x1

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 110
    return-void

    #@20
    .line 120
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 124
    :catchall_0
    move-exception v1

    #@26
    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 124
    throw v1
.end method

.method public onConfigFailed(Landroid/net/wifi/nan/ConfigRequest;I)V
    .locals 5
    .param p1, "failedConfig"    # Landroid/net/wifi/nan/ConfigRequest;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanEventListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 133
    if-eqz p1, :cond_0

    #@c
    .line 134
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 135
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/nan/ConfigRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 140
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 141
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x2

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 128
    return-void

    #@23
    .line 138
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 143
    :catchall_0
    move-exception v1

    #@29
    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 143
    throw v1
.end method

.method public onIdentityChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 163
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanEventListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 164
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x4

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 159
    return-void

    #@16
    .line 166
    :catchall_0
    move-exception v1

    #@17
    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 166
    throw v1
.end method

.method public onNanDown(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 151
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanEventListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 153
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x3

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 147
    return-void

    #@19
    .line 155
    :catchall_0
    move-exception v1

    #@1a
    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 155
    throw v1
.end method

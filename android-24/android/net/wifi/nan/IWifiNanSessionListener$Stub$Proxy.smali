.class Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiNanSessionListener.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;
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
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    iput-object p1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 134
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 144
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    #@3
    return-object v0
.end method

.method public onMatch(I[BI[BI)V
    .locals 5
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "serviceSpecificInfoLength"    # I
    .param p4, "matchFilter"    # [B
    .param p5, "matchFilterLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 198
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 200
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@10
    .line 201
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 202
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    #@16
    .line 203
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 204
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1b
    const/4 v2, 0x5

    #@1c
    const/4 v3, 0x0

    #@1d
    const/4 v4, 0x1

    #@1e
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 194
    return-void

    #@25
    .line 206
    :catchall_0
    move-exception v1

    #@26
    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 206
    throw v1
.end method

.method public onMessageReceived(I[BI)V
    .locals 5
    .param p1, "peerId"    # I
    .param p2, "message"    # [B
    .param p3, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 239
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 241
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@10
    .line 242
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 243
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0x8

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 235
    return-void

    #@20
    .line 245
    :catchall_0
    move-exception v1

    #@21
    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 245
    throw v1
.end method

.method public onMessageSendFail(II)V
    .locals 5
    .param p1, "messageId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 228
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 229
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x7

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 222
    return-void

    #@1c
    .line 231
    :catchall_0
    move-exception v1

    #@1d
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 231
    throw v1
.end method

.method public onMessageSendSuccess(I)V
    .locals 5
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 214
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 216
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x6

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 210
    return-void

    #@19
    .line 218
    :catchall_0
    move-exception v1

    #@1a
    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 218
    throw v1
.end method

.method public onPublishFail(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 152
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x1

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 146
    return-void

    #@19
    .line 154
    :catchall_0
    move-exception v1

    #@1a
    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 154
    throw v1
.end method

.method public onPublishTerminated(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 164
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x2

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 158
    return-void

    #@19
    .line 166
    :catchall_0
    move-exception v1

    #@1a
    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 166
    throw v1
.end method

.method public onSubscribeFail(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 174
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 176
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 170
    return-void

    #@19
    .line 178
    :catchall_0
    move-exception v1

    #@1a
    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 178
    throw v1
.end method

.method public onSubscribeTerminated(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 186
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 188
    iget-object v1, p0, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x4

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 182
    return-void

    #@19
    .line 190
    :catchall_0
    move-exception v1

    #@1a
    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 190
    throw v1
.end method

.class Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarrierMessagingCallback.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingCallback$Stub;
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
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 104
    iput-object p1, p0, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 102
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 112
    const-string/jumbo v0, "android.service.carrier.ICarrierMessagingCallback"

    #@3
    return-object v0
.end method

.method public onDownloadMmsComplete(I)V
    .locals 5
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 169
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.carrier.ICarrierMessagingCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 171
    iget-object v1, p0, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x5

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 165
    return-void

    #@19
    .line 173
    :catchall_0
    move-exception v1

    #@1a
    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 173
    throw v1
.end method

.method public onFilterComplete(Z)V
    .locals 5
    .param p1, "keepMessage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.carrier.ICarrierMessagingCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 119
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 120
    iget-object v1, p0, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 114
    return-void

    #@1c
    .line 119
    :cond_0
    const/4 v1, 0x0

    #@1d
    goto :goto_0

    #@1e
    .line 122
    :catchall_0
    move-exception v1

    #@1f
    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 122
    throw v1
.end method

.method public onSendMmsComplete(I[B)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.carrier.ICarrierMessagingCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 158
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@10
    .line 159
    iget-object v1, p0, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x4

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 152
    return-void

    #@1c
    .line 161
    :catchall_0
    move-exception v1

    #@1d
    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 161
    throw v1
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 143
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.carrier.ICarrierMessagingCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 145
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@10
    .line 146
    iget-object v1, p0, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x3

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 139
    return-void

    #@1c
    .line 148
    :catchall_0
    move-exception v1

    #@1d
    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 148
    throw v1
.end method

.method public onSendSmsComplete(II)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "messageRef"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 130
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.carrier.ICarrierMessagingCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 132
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 133
    iget-object v1, p0, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x2

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 126
    return-void

    #@1c
    .line 135
    :catchall_0
    move-exception v1

    #@1d
    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 135
    throw v1
.end method

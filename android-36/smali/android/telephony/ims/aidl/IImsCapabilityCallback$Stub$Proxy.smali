.class Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsCapabilityCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsCapabilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 146
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 153
    const-string v0, "android.telephony.ims.aidl.IImsCapabilityCallback"

    return-object v0
.end method

.method public blacklist onCapabilitiesStatusChanged(I)V
    .registers 7
    .param p1, "config"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 187
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCapabilityCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v1, p0, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    nop

    .line 194
    return-void

    .line 192
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    throw v1
.end method

.method public blacklist onChangeCapabilityConfigurationError(III)V
    .registers 9
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 173
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCapabilityCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v1, p0, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    nop

    .line 182
    return-void

    .line 180
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw v1
.end method

.method public blacklist onQueryCapabilityConfiguration(IIZ)V
    .registers 8
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 159
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.IImsCapabilityCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 163
    iget-object v1, p0, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    nop

    .line 168
    return-void

    .line 166
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw v1
.end method

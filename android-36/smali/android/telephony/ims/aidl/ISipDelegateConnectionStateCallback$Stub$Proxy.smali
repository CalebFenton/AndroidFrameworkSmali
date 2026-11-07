.class Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISipDelegateConnectionStateCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;
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

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 170
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 177
    const-string v0, "android.telephony.ims.aidl.ISipDelegateConnectionStateCallback"

    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .registers 7
    .param p1, "registeredSipConfig"    # Landroid/telephony/ims/SipDelegateConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.ISipDelegateConnectionStateCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 222
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    nop

    .line 227
    return-void

    .line 225
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    throw v1
.end method

.method public blacklist onCreated(Landroid/telephony/ims/aidl/ISipDelegate;)V
    .registers 6
    .param p1, "c"    # Landroid/telephony/ims/aidl/ISipDelegate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 183
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.ISipDelegateConnectionStateCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 185
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1c

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    nop

    .line 190
    return-void

    .line 188
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    throw v1
.end method

.method public blacklist onDestroyed(I)V
    .registers 7
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 232
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.ISipDelegateConnectionStateCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    nop

    .line 239
    return-void

    .line 237
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v1
.end method

.method public blacklist onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V
    .registers 8
    .param p1, "registrationState"    # Landroid/telephony/ims/DelegateRegistrationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/DelegateRegistrationState;",
            "Ljava/util/List<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    .local p2, "deniedFeatureTags":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/FeatureTagState;>;"
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 195
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.ISipDelegateConnectionStateCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 197
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 198
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    nop

    .line 203
    return-void

    .line 201
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw v1
.end method

.method public blacklist onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .registers 7
    .param p1, "registeredSipConfig"    # Landroid/telephony/ims/SipDelegateImsConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 208
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.telephony.ims.aidl.ISipDelegateConnectionStateCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 210
    iget-object v1, p0, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    nop

    .line 215
    return-void

    .line 213
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw v1
.end method

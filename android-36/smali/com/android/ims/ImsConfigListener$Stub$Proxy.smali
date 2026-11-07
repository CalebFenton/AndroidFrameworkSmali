.class Lcom/android/ims/ImsConfigListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ImsConfigListener.java"

# interfaces
.implements Lcom/android/ims/ImsConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsConfigListener$Stub;
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

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 209
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 216
    const-string v0, "com.android.ims.ImsConfigListener"

    return-object v0
.end method

.method public greylist-max-o onGetFeatureResponse(IIII)V
    .registers 9
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 232
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.ims.ImsConfigListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v1, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    nop

    .line 242
    return-void

    .line 240
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    throw v1
.end method

.method public greylist-max-o onGetVideoQuality(II)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 285
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.ims.ImsConfigListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v1, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    throw v1
.end method

.method public greylist-max-o onSetFeatureResponse(IIII)V
    .registers 10
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 261
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.ims.ImsConfigListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v1, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    nop

    .line 271
    return-void

    .line 269
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    throw v1
.end method

.method public greylist-max-o onSetVideoQuality(I)V
    .registers 7
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.ims.ImsConfigListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v1, p0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    nop

    .line 314
    return-void

    .line 312
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    throw v1
.end method

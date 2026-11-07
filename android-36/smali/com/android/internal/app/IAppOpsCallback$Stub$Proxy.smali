.class Lcom/android/internal/app/IAppOpsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppOpsCallback.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsCallback$Stub;
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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/internal/app/IAppOpsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/internal/app/IAppOpsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 97
    const-string v0, "com.android.internal.app.IAppOpsCallback"

    return-object v0
.end method

.method public blacklist opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "persistentDeviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 103
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "com.android.internal.app.IAppOpsCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/app/IAppOpsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    nop

    .line 113
    return-void

    .line 111
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    throw v1
.end method

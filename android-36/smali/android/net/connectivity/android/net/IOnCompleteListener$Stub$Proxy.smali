.class Landroid/net/connectivity/android/net/IOnCompleteListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnCompleteListener.java"

# interfaces
.implements Landroid/net/connectivity/android/net/IOnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/IOnCompleteListener$Stub;
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

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/net/connectivity/android/net/IOnCompleteListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 102
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/net/connectivity/android/net/IOnCompleteListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 109
    const-string v0, "android.net.connectivity.android.net.IOnCompleteListener"

    return-object v0
.end method

.method public blacklist onComplete()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 115
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.connectivity.android.net.IOnCompleteListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Landroid/net/connectivity/android/net/IOnCompleteListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    nop

    .line 121
    return-void

    .line 119
    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    throw v1
.end method

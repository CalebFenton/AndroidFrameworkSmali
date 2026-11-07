.class Landroid/app/IUidFrozenStateChangedCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUidFrozenStateChangedCallback.java"

# interfaces
.implements Landroid/app/IUidFrozenStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUidFrozenStateChangedCallback$Stub;
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

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/app/IUidFrozenStateChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 108
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/app/IUidFrozenStateChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 115
    const-string v0, "android.app.IUidFrozenStateChangedCallback"

    return-object v0
.end method

.method public blacklist onUidFrozenStateChanged([I[I)V
    .registers 7
    .param p1, "uids"    # [I
    .param p2, "frozenStates"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Landroid/app/IUidFrozenStateChangedCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 122
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.app.IUidFrozenStateChangedCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 125
    iget-object v1, p0, Landroid/app/IUidFrozenStateChangedCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    nop

    .line 130
    return-void

    .line 128
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    throw v1
.end method

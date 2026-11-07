.class Landroid/service/controls/IControlsActionCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IControlsActionCallback.java"

# interfaces
.implements Landroid/service/controls/IControlsActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/IControlsActionCallback$Stub;
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

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroid/service/controls/IControlsActionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 109
    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "controlId"    # Ljava/lang/String;
    .param p3, "response"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Landroid/service/controls/IControlsActionCallback$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 122
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.service.controls.IControlsActionCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v1, p0, Landroid/service/controls/IControlsActionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    nop

    .line 131
    return-void

    .line 129
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/service/controls/IControlsActionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 116
    const-string v0, "android.service.controls.IControlsActionCallback"

    return-object v0
.end method

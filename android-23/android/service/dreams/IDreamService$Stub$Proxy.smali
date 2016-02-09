.class Landroid/service/dreams/IDreamService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDreamService.java"

# interfaces
.implements Landroid/service/dreams/IDreamService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamService$Stub;
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
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    iput-object p1, p0, Landroid/service/dreams/IDreamService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 76
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/service/dreams/IDreamService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public attach(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 92
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.dreams.IDreamService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 93
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 94
    if-eqz p2, :cond_0

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 95
    iget-object v1, p0, Landroid/service/dreams/IDreamService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x1

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 88
    return-void

    #@1f
    .line 94
    :cond_0
    const/4 v1, 0x0

    #@20
    goto :goto_0

    #@21
    .line 97
    :catchall_0
    move-exception v1

    #@22
    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 97
    throw v1
.end method

.method public detach()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 105
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.dreams.IDreamService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 106
    iget-object v1, p0, Landroid/service/dreams/IDreamService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x2

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 101
    return-void

    #@16
    .line 108
    :catchall_0
    move-exception v1

    #@17
    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 108
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "android.service.dreams.IDreamService"

    #@3
    return-object v0
.end method

.method public wakeUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 116
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.service.dreams.IDreamService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 117
    iget-object v1, p0, Landroid/service/dreams/IDreamService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x3

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 112
    return-void

    #@16
    .line 119
    :catchall_0
    move-exception v1

    #@17
    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 119
    throw v1
.end method

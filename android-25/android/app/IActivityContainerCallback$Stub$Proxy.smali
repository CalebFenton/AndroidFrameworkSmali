.class Landroid/app/IActivityContainerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IActivityContainerCallback.java"

# interfaces
.implements Landroid/app/IActivityContainerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityContainerCallback$Stub;
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
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    iput-object p1, p0, Landroid/app/IActivityContainerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/app/IActivityContainerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    const-string/jumbo v0, "android.app.IActivityContainerCallback"

    #@3
    return-object v0
.end method

.method public onAllActivitiesComplete(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "container"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 99
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.app.IActivityContainerCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 101
    iget-object v1, p0, Landroid/app/IActivityContainerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 95
    return-void

    #@19
    .line 103
    :catchall_0
    move-exception v1

    #@1a
    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 103
    throw v1
.end method

.method public setVisible(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "container"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 86
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IActivityContainerCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 87
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 88
    if-eqz p2, :cond_0

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 89
    iget-object v1, p0, Landroid/app/IActivityContainerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 82
    return-void

    #@1f
    .line 88
    :cond_0
    const/4 v1, 0x0

    #@20
    goto :goto_0

    #@21
    .line 91
    :catchall_0
    move-exception v1

    #@22
    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 91
    throw v1
.end method

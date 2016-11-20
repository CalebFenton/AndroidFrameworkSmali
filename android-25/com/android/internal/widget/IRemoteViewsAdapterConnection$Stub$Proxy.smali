.class Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteViewsAdapterConnection.java"

# interfaces
.implements Lcom/android/internal/widget/IRemoteViewsAdapterConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;
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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-object p1, p0, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 66
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
    const-string/jumbo v0, "com.android.internal.widget.IRemoteViewsAdapterConnection"

    #@3
    return-object v0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 82
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.widget.IRemoteViewsAdapterConnection"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 83
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@d
    .line 84
    iget-object v1, p0, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x1

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 78
    return-void

    #@19
    .line 86
    :catchall_0
    move-exception v1

    #@1a
    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 86
    throw v1
.end method

.method public onServiceDisconnected()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 94
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.widget.IRemoteViewsAdapterConnection"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 95
    iget-object v1, p0, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 90
    return-void

    #@16
    .line 97
    :catchall_0
    move-exception v1

    #@17
    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 97
    throw v1
.end method

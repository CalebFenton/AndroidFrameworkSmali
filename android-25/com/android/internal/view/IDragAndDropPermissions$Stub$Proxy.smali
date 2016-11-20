.class Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDragAndDropPermissions.java"

# interfaces
.implements Lcom/android/internal/view/IDragAndDropPermissions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IDragAndDropPermissions$Stub;
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
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    iput-object p1, p0, Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 80
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 90
    const-string/jumbo v0, "com.android.internal.view.IDragAndDropPermissions"

    #@3
    return-object v0
.end method

.method public release()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 125
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 127
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IDragAndDropPermissions"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 128
    iget-object v2, p0, Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x3

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 122
    return-void

    #@1f
    .line 131
    :catchall_0
    move-exception v2

    #@20
    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 131
    throw v2
.end method

.method public take(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 95
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 97
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IDragAndDropPermissions"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 98
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 99
    iget-object v2, p0, Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x1

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 92
    return-void

    #@22
    .line 102
    :catchall_0
    move-exception v2

    #@23
    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 102
    throw v2
.end method

.method public takeTransient(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "permissionOwnerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 110
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 112
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IDragAndDropPermissions"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 114
    iget-object v2, p0, Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 107
    return-void

    #@22
    .line 117
    :catchall_0
    move-exception v2

    #@23
    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 117
    throw v2
.end method

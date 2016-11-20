.class Landroid/app/backup/IRestoreObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRestoreObserver.java"

# interfaces
.implements Landroid/app/backup/IRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreObserver$Stub;
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
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    iput-object p1, p0, Landroid/app/backup/IRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 90
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/app/backup/IRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    const-string/jumbo v0, "android.app.backup.IRestoreObserver"

    #@3
    return-object v0
.end method

.method public onUpdate(ILjava/lang/String;)V
    .locals 5
    .param p1, "nowBeingRestored"    # I
    .param p2, "curentPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 155
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.app.backup.IRestoreObserver"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 157
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 158
    iget-object v1, p0, Landroid/app/backup/IRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x3

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 151
    return-void

    #@1c
    .line 160
    :catchall_0
    move-exception v1

    #@1d
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 160
    throw v1
.end method

.method public restoreFinished(I)V
    .locals 5
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 174
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.app.backup.IRestoreObserver"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 176
    iget-object v1, p0, Landroid/app/backup/IRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x4

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 170
    return-void

    #@19
    .line 178
    :catchall_0
    move-exception v1

    #@1a
    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 178
    throw v1
.end method

.method public restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 5
    .param p1, "result"    # [Landroid/app/backup/RestoreSet;
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
    const-string/jumbo v1, "android.app.backup.IRestoreObserver"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 117
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@e
    .line 118
    iget-object v1, p0, Landroid/app/backup/IRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v2, 0x1

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 112
    return-void

    #@1a
    .line 120
    :catchall_0
    move-exception v1

    #@1b
    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 120
    throw v1
.end method

.method public restoreStarting(I)V
    .locals 5
    .param p1, "numPackages"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 134
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.app.backup.IRestoreObserver"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 135
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 136
    iget-object v1, p0, Landroid/app/backup/IRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 130
    return-void

    #@19
    .line 138
    :catchall_0
    move-exception v1

    #@1a
    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 138
    throw v1
.end method

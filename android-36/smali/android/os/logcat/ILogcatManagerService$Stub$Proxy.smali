.class Landroid/os/logcat/ILogcatManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILogcatManagerService.java"

# interfaces
.implements Landroid/os/logcat/ILogcatManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/logcat/ILogcatManagerService$Stub;
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

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Landroid/os/logcat/ILogcatManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 150
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/os/logcat/ILogcatManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist finishThread(IIII)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .param p3, "pid"    # I
    .param p4, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Landroid/os/logcat/ILogcatManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 196
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.os.logcat.ILogcatManagerService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v1, p0, Landroid/os/logcat/ILogcatManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_26

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    nop

    .line 206
    return-void

    .line 204
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 157
    const-string v0, "android.os.logcat.ILogcatManagerService"

    return-object v0
.end method

.method public blacklist startThread(IIII)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .param p3, "pid"    # I
    .param p4, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Landroid/os/logcat/ILogcatManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 172
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.os.logcat.ILogcatManagerService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v1, p0, Landroid/os/logcat/ILogcatManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    nop

    .line 182
    return-void

    .line 180
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw v1
.end method

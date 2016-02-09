.class Landroid/os/IProcessInfoService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IProcessInfoService.java"

# interfaces
.implements Landroid/os/IProcessInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProcessInfoService$Stub;
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
    iput-object p1, p0, Landroid/os/IProcessInfoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iget-object v0, p0, Landroid/os/IProcessInfoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    const-string/jumbo v0, "android.os.IProcessInfoService"

    #@3
    return-object v0
.end method

.method public getProcessStatesFromPids([I[I)V
    .locals 5
    .param p1, "pids"    # [I
    .param p2, "states"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 90
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 92
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IProcessInfoService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 93
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@11
    .line 94
    if-nez p2, :cond_0

    #@13
    .line 95
    const/4 v2, -0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 100
    :goto_0
    iget-object v2, p0, Landroid/os/IProcessInfoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x1

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 102
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 87
    return-void

    #@2b
    .line 98
    :cond_0
    :try_start_1
    array-length v2, p2

    #@2c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 104
    :catchall_0
    move-exception v2

    #@31
    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 104
    throw v2
.end method

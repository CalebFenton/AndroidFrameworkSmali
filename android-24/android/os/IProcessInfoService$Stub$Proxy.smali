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
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    iput-object p1, p0, Landroid/os/IProcessInfoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 97
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/os/IProcessInfoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    const-string/jumbo v0, "android.os.IProcessInfoService"

    #@3
    return-object v0
.end method

.method public getProcessStatesAndOomScoresFromPids([I[I[I)V
    .locals 5
    .param p1, "pids"    # [I
    .param p2, "states"    # [I
    .param p3, "scores"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 146
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IProcessInfoService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@11
    .line 148
    if-nez p2, :cond_0

    #@13
    .line 149
    const/4 v2, -0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 154
    :goto_0
    if-nez p3, :cond_1

    #@19
    .line 155
    const/4 v2, -0x1

    #@1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 160
    :goto_1
    iget-object v2, p0, Landroid/os/IProcessInfoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v3, 0x2

    #@20
    const/4 v4, 0x0

    #@21
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@27
    .line 162
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readIntArray([I)V

    #@2a
    .line 163
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 141
    return-void

    #@34
    .line 152
    :cond_0
    :try_start_1
    array-length v2, p2

    #@35
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 165
    :catchall_0
    move-exception v2

    #@3a
    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 165
    throw v2

    #@41
    .line 158
    :cond_1
    :try_start_2
    array-length v2, p3

    #@42
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_1
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
    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 117
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 119
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.IProcessInfoService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@11
    .line 121
    if-nez p2, :cond_0

    #@13
    .line 122
    const/4 v2, -0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 127
    :goto_0
    iget-object v2, p0, Landroid/os/IProcessInfoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x1

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@21
    .line 129
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 114
    return-void

    #@2b
    .line 125
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
    .line 131
    :catchall_0
    move-exception v2

    #@31
    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 131
    throw v2
.end method

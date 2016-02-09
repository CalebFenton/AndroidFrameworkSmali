.class Landroid/content/ISyncContext$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISyncContext.java"

# interfaces
.implements Landroid/content/ISyncContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ISyncContext$Stub;
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
    iput-object p1, p0, Landroid/content/ISyncContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iget-object v0, p0, Landroid/content/ISyncContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "android.content.ISyncContext"

    #@3
    return-object v0
.end method

.method public onFinished(Landroid/content/SyncResult;)V
    .locals 5
    .param p1, "result"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 114
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 116
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.ISyncContext"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 117
    if-eqz p1, :cond_0

    #@10
    .line 118
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 119
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/content/SyncResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 124
    :goto_0
    iget-object v2, p0, Landroid/content/ISyncContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 111
    return-void

    #@29
    .line 122
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 127
    :catchall_0
    move-exception v2

    #@2f
    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 127
    throw v2
.end method

.method public sendHeartbeat()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 96
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 98
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.content.ISyncContext"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 99
    iget-object v2, p0, Landroid/content/ISyncContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 93
    return-void

    #@1f
    .line 102
    :catchall_0
    move-exception v2

    #@20
    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 102
    throw v2
.end method

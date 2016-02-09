.class Landroid/app/job/IJobService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IJobService.java"

# interfaces
.implements Landroid/app/job/IJobService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobService$Stub;
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Landroid/app/job/IJobService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 83
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/job/IJobService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    const-string/jumbo v0, "android.app.job.IJobService"

    #@3
    return-object v0
.end method

.method public startJob(Landroid/app/job/JobParameters;)V
    .locals 5
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 100
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.app.job.IJobService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 101
    if-eqz p1, :cond_0

    #@c
    .line 102
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 103
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobParameters;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 108
    :goto_0
    iget-object v1, p0, Landroid/app/job/IJobService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x1

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 96
    return-void

    #@20
    .line 106
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 110
    :catchall_0
    move-exception v1

    #@26
    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 110
    throw v1
.end method

.method public stopJob(Landroid/app/job/JobParameters;)V
    .locals 5
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 119
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.app.job.IJobService"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 120
    if-eqz p1, :cond_0

    #@c
    .line 121
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 122
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobParameters;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 127
    :goto_0
    iget-object v1, p0, Landroid/app/job/IJobService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x2

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 115
    return-void

    #@20
    .line 125
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 129
    :catchall_0
    move-exception v1

    #@26
    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 129
    throw v1
.end method

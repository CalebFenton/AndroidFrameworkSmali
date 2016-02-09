.class Landroid/app/job/IJobCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IJobCallback.java"

# interfaces
.implements Landroid/app/job/IJobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobCallback$Stub;
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
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    iput-object p1, p0, Landroid/app/job/IJobCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 94
    return-void
.end method


# virtual methods
.method public acknowledgeStartMessage(IZ)V
    .locals 5
    .param p1, "jobId"    # I
    .param p2, "ongoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 116
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 118
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.app.job.IJobCallback"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 120
    if-eqz p2, :cond_0

    #@15
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 121
    iget-object v2, p0, Landroid/app/job/IJobCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x1

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 113
    return-void

    #@29
    :cond_0
    move v2, v3

    #@2a
    .line 120
    goto :goto_0

    #@2b
    .line 124
    :catchall_0
    move-exception v2

    #@2c
    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 124
    throw v2
.end method

.method public acknowledgeStopMessage(IZ)V
    .locals 5
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.job.IJobCallback"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 142
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 143
    iget-object v2, p0, Landroid/app/job/IJobCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 135
    return-void

    #@29
    .line 146
    :catchall_0
    move-exception v2

    #@2a
    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 146
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/app/job/IJobCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "android.app.job.IJobCallback"

    #@3
    return-object v0
.end method

.method public jobFinished(IZ)V
    .locals 5
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 161
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 163
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.job.IJobCallback"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 165
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 166
    iget-object v2, p0, Landroid/app/job/IJobCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 158
    return-void

    #@29
    .line 169
    :catchall_0
    move-exception v2

    #@2a
    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 169
    throw v2
.end method

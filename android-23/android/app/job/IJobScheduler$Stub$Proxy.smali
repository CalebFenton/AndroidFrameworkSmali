.class Landroid/app/job/IJobScheduler$Stub$Proxy;
.super Ljava/lang/Object;
.source "IJobScheduler.java"

# interfaces
.implements Landroid/app/job/IJobScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobScheduler$Stub;
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
    iput-object p1, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 94
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public cancel(I)V
    .locals 5
    .param p1, "jobId"    # I
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
    .line 133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 135
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.job.IJobScheduler"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 137
    iget-object v2, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 130
    return-void

    #@22
    .line 140
    :catchall_0
    move-exception v2

    #@23
    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 140
    throw v2
.end method

.method public cancelAll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 148
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 150
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.job.IJobScheduler"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 151
    iget-object v2, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x3

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 145
    return-void

    #@1f
    .line 154
    :catchall_0
    move-exception v2

    #@20
    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 154
    throw v2
.end method

.method public getAllPendingJobs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 165
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.job.IJobScheduler"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 166
    iget-object v3, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 168
    sget-object v3, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v2

    #@1e
    .line 171
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 174
    return-object v2

    #@25
    .line 170
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :catchall_0
    move-exception v3

    #@26
    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 170
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "android.app.job.IJobScheduler"

    #@3
    return-object v0
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .locals 6
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 109
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 112
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.job.IJobScheduler"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 113
    if-eqz p1, :cond_0

    #@10
    .line 114
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 115
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/app/job/JobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 120
    :goto_0
    iget-object v3, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x1

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 125
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 128
    return v2

    #@2d
    .line 118
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 124
    :catchall_0
    move-exception v3

    #@33
    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 124
    throw v3
.end method

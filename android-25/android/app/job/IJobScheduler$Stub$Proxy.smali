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
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 133
    iput-object p1, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 131
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 137
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
    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.job.IJobScheduler"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 201
    iget-object v2, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 194
    return-void

    #@22
    .line 204
    :catchall_0
    move-exception v2

    #@23
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 204
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
    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.job.IJobScheduler"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 215
    iget-object v2, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x4

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 209
    return-void

    #@1f
    .line 218
    :catchall_0
    move-exception v2

    #@20
    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 218
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
    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 229
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.job.IJobScheduler"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 230
    iget-object v3, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 232
    sget-object v3, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v2

    #@1e
    .line 235
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 238
    return-object v2

    #@25
    .line 234
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :catchall_0
    move-exception v3

    #@26
    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 234
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 141
    const-string/jumbo v0, "android.app.job.IJobScheduler"

    #@3
    return-object v0
.end method

.method public getPendingJob(I)Landroid/app/job/JobInfo;
    .locals 6
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 246
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.job.IJobScheduler"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 248
    iget-object v3, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 251
    sget-object v3, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/app/job/JobInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 258
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 261
    return-object v2

    #@30
    .line 254
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_result":Landroid/app/job/JobInfo;
    goto :goto_0

    #@32
    .line 257
    .end local v2    # "_result":Landroid/app/job/JobInfo;
    :catchall_0
    move-exception v3

    #@33
    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 257
    throw v3
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
    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 146
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 149
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.job.IJobScheduler"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 150
    if-eqz p1, :cond_0

    #@10
    .line 151
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 152
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/app/job/JobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 157
    :goto_0
    iget-object v3, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x1

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 162
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 165
    return v2

    #@2d
    .line 155
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
    .line 161
    :catchall_0
    move-exception v3

    #@33
    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 161
    throw v3
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 173
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.job.IJobScheduler"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 174
    if-eqz p1, :cond_0

    #@10
    .line 175
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 176
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/app/job/JobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 181
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 182
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 183
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 184
    iget-object v3, p0, Landroid/app/job/IJobScheduler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v4, 0x2

    #@24
    const/4 v5, 0x0

    #@25
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2b
    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result v2

    #@2f
    .line 189
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 192
    return v2

    #@36
    .line 179
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 188
    :catchall_0
    move-exception v3

    #@3c
    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 188
    throw v3
.end method

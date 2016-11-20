.class Landroid/app/IAppTask$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppTask.java"

# interfaces
.implements Landroid/app/IAppTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAppTask$Stub;
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
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 119
    iput-object p1, p0, Landroid/app/IAppTask$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 117
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/app/IAppTask$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public finishAndRemoveTask()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IAppTask"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 135
    iget-object v2, p0, Landroid/app/IAppTask$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 129
    return-void

    #@1f
    .line 138
    :catchall_0
    move-exception v2

    #@20
    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 138
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 127
    const-string/jumbo v0, "android.app.IAppTask"

    #@3
    return-object v0
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 6
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
    const-string/jumbo v3, "android.app.IAppTask"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 150
    iget-object v3, p0, Landroid/app/IAppTask$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x2

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 153
    sget-object v3, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 160
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 163
    return-object v2

    #@2d
    .line 156
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    goto :goto_0

    #@2f
    .line 159
    .end local v2    # "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    :catchall_0
    move-exception v3

    #@30
    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 159
    throw v3
.end method

.method public moveToFront()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 170
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.app.IAppTask"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 171
    iget-object v2, p0, Landroid/app/IAppTask$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x3

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 165
    return-void

    #@1f
    .line 174
    :catchall_0
    move-exception v2

    #@20
    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 174
    throw v2
.end method

.method public setExcludeFromRecents(Z)V
    .locals 5
    .param p1, "exclude"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAppTask"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 219
    if-eqz p1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 220
    iget-object v2, p0, Landroid/app/IAppTask$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x5

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 213
    return-void

    #@26
    .line 223
    :catchall_0
    move-exception v2

    #@27
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 223
    throw v2
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 6
    .param p1, "whoThread"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 185
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.app.IAppTask"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 188
    if-eqz p3, :cond_0

    #@16
    .line 189
    const/4 v3, 0x1

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 190
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 195
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 196
    if-eqz p5, :cond_1

    #@23
    .line 197
    const/4 v3, 0x1

    #@24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 198
    const/4 v3, 0x0

    #@28
    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    .line 203
    :goto_1
    iget-object v3, p0, Landroid/app/IAppTask$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v4, 0x4

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@35
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v2

    #@39
    .line 208
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 211
    return v2

    #@40
    .line 193
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@41
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 207
    :catchall_0
    move-exception v3

    #@46
    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 207
    throw v3

    #@4d
    .line 201
    :cond_1
    const/4 v3, 0x0

    #@4e
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1
.end method

.class Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnAppsChangedListener.java"

# interfaces
.implements Landroid/content/pm/IOnAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOnAppsChangedListener$Stub;
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
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 135
    iput-object p1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 133
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 143
    const-string/jumbo v0, "android.content.pm.IOnAppsChangedListener"

    #@3
    return-object v0
.end method

.method public onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 168
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.content.pm.IOnAppsChangedListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 169
    if-eqz p1, :cond_0

    #@c
    .line 170
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 171
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 176
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 177
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x2

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 164
    return-void

    #@23
    .line 174
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 179
    :catchall_0
    move-exception v1

    #@29
    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 179
    throw v1
.end method

.method public onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 187
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.content.pm.IOnAppsChangedListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 188
    if-eqz p1, :cond_0

    #@c
    .line 189
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 190
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 195
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 196
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x3

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 183
    return-void

    #@23
    .line 193
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 198
    :catchall_0
    move-exception v1

    #@29
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 198
    throw v1
.end method

.method public onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
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
    .line 149
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.content.pm.IOnAppsChangedListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 150
    if-eqz p1, :cond_0

    #@c
    .line 151
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 152
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 157
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 158
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x1

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 145
    return-void

    #@23
    .line 155
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 160
    :catchall_0
    move-exception v1

    #@29
    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 160
    throw v1
.end method

.method public onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 206
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IOnAppsChangedListener"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 207
    if-eqz p1, :cond_0

    #@e
    .line 208
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 209
    const/4 v3, 0x0

    #@13
    invoke-virtual {p1, v0, v3}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 214
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@19
    .line 215
    if-eqz p3, :cond_1

    #@1b
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 216
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x4

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 202
    return-void

    #@2a
    .line 212
    :cond_0
    const/4 v3, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 218
    :catchall_0
    move-exception v1

    #@30
    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 218
    throw v1

    #@34
    :cond_1
    move v1, v2

    #@35
    .line 215
    goto :goto_1
.end method

.method public onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IOnAppsChangedListener"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 227
    if-eqz p1, :cond_0

    #@e
    .line 228
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 229
    const/4 v3, 0x0

    #@13
    invoke-virtual {p1, v0, v3}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 234
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@19
    .line 235
    if-eqz p3, :cond_1

    #@1b
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 236
    iget-object v1, p0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x5

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 222
    return-void

    #@2a
    .line 232
    :cond_0
    const/4 v3, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 238
    :catchall_0
    move-exception v1

    #@30
    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 238
    throw v1

    #@34
    :cond_1
    move v1, v2

    #@35
    .line 235
    goto :goto_1
.end method

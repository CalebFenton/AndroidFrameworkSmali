.class Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRuntimePermissionPresenter.java"

# interfaces
.implements Landroid/content/pm/permission/IRuntimePermissionPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;
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
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    iput-object p1, p0, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 86
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 102
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.content.pm.permission.IRuntimePermissionPresenter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 104
    if-eqz p2, :cond_0

    #@f
    .line 105
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 106
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 111
    :goto_0
    iget-object v1, p0, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 98
    return-void

    #@23
    .line 109
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
    .line 113
    :catchall_0
    move-exception v1

    #@29
    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 113
    throw v1
.end method

.method public getAppsUsingPermissions(ZLandroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "system"    # Z
    .param p2, "callback"    # Landroid/os/RemoteCallback;
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
    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 121
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.permission.IRuntimePermissionPresenter"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 122
    if-eqz p1, :cond_0

    #@e
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 123
    if-eqz p2, :cond_1

    #@13
    .line 124
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 125
    const/4 v1, 0x0

    #@18
    invoke-virtual {p2, v0, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 130
    :goto_1
    iget-object v1, p0, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v2, 0x2

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x1

    #@20
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 117
    return-void

    #@27
    :cond_0
    move v1, v2

    #@28
    .line 122
    goto :goto_0

    #@29
    .line 128
    :cond_1
    const/4 v1, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_1

    #@2e
    .line 132
    :catchall_0
    move-exception v1

    #@2f
    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 132
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    const-string/jumbo v0, "android.content.pm.permission.IRuntimePermissionPresenter"

    #@3
    return-object v0
.end method

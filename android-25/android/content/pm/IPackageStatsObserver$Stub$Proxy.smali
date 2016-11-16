.class Landroid/content/pm/IPackageStatsObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageStatsObserver.java"

# interfaces
.implements Landroid/content/pm/IPackageStatsObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageStatsObserver$Stub;
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
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput-object p1, p0, Landroid/content/pm/IPackageStatsObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 72
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/content/pm/IPackageStatsObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    const-string/jumbo v0, "android.content.pm.IPackageStatsObserver"

    #@3
    return-object v0
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 5
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 88
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.content.pm.IPackageStatsObserver"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 89
    if-eqz p1, :cond_0

    #@e
    .line 90
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 91
    const/4 v3, 0x0

    #@13
    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@16
    .line 96
    :goto_0
    if-eqz p2, :cond_1

    #@18
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 97
    iget-object v1, p0, Landroid/content/pm/IPackageStatsObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v2, 0x1

    #@1e
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x1

    #@20
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 84
    return-void

    #@27
    .line 94
    :cond_0
    const/4 v3, 0x0

    #@28
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 99
    :catchall_0
    move-exception v1

    #@2d
    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 99
    throw v1

    #@31
    :cond_1
    move v1, v2

    #@32
    .line 96
    goto :goto_1
.end method

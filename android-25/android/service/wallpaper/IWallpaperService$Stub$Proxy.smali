.class Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWallpaperService.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperService$Stub;
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
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput-object p1, p0, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 79
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "connection"    # Landroid/service/wallpaper/IWallpaperConnection;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "windowType"    # I
    .param p4, "isPreview"    # Z
    .param p5, "reqWidth"    # I
    .param p6, "reqHeight"    # I
    .param p7, "padding"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    .line 95
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.service.wallpaper.IWallpaperService"

    #@a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 96
    if-eqz p1, :cond_0

    #@f
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperConnection;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v3

    #@13
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 97
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 98
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 99
    if-eqz p4, :cond_1

    #@1e
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 100
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 101
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 102
    if-eqz p7, :cond_2

    #@29
    .line 103
    const/4 v1, 0x1

    #@2a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 104
    const/4 v1, 0x0

    #@2e
    invoke-virtual {p7, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@31
    .line 109
    :goto_1
    iget-object v1, p0, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@33
    const/4 v2, 0x1

    #@34
    const/4 v3, 0x0

    #@35
    const/4 v4, 0x1

    #@36
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 91
    return-void

    #@3d
    :cond_1
    move v1, v2

    #@3e
    .line 99
    goto :goto_0

    #@3f
    .line 107
    :cond_2
    const/4 v1, 0x0

    #@40
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_1

    #@44
    .line 111
    :catchall_0
    move-exception v1

    #@45
    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 111
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    const-string/jumbo v0, "android.service.wallpaper.IWallpaperService"

    #@3
    return-object v0
.end method

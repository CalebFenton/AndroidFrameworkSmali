.class public Landroid/service/wallpaper/IWallpaperService$Default;
.super Ljava/lang/Object;
.source "IWallpaperService.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;IILandroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V
    .registers 12
    .param p1, "connection"    # Landroid/service/wallpaper/IWallpaperConnection;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "windowType"    # I
    .param p4, "isPreview"    # Z
    .param p5, "reqWidth"    # I
    .param p6, "reqHeight"    # I
    .param p7, "padding"    # Landroid/graphics/Rect;
    .param p8, "displayId"    # I
    .param p9, "which"    # I
    .param p10, "info"    # Landroid/app/WallpaperInfo;
    .param p11, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist detach(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

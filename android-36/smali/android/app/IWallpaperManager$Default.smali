.class public Landroid/app/IWallpaperManager$Default;
.super Ljava/lang/Object;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
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
.method public blacklist addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 6
    .param p1, "callback"    # Landroid/app/ILocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearWallpaper(Ljava/lang/String;II)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public blacklist getBitmapCrop(Landroid/graphics/Point;[ILjava/util/List;)Landroid/graphics/Rect;
    .registers 5
    .param p1, "bitmapSize"    # Landroid/graphics/Point;
    .param p2, "screenOrientations"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "[I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    .local p3, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitmapCrops(Ljava/util/List;IZI)Ljava/util/List;
    .registers 6
    .param p2, "which"    # I
    .param p3, "originalBitmap"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;IZI)",
            "Ljava/util/List;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    .local p1, "displaySizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentBitmapCrops(II)Landroid/os/Bundle;
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFutureBitmapCrops(Landroid/graphics/Point;Ljava/util/List;[ILjava/util/List;)Ljava/util/List;
    .registers 6
    .param p1, "bitmapSize"    # Landroid/graphics/Point;
    .param p3, "screenOrientations"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;[I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    .local p2, "displaySizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p4, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHeightHint(I)I
    .registers 3
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p3, "which"    # I
    .param p4, "outParams"    # Landroid/os/Bundle;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperColors(III)Landroid/app/WallpaperColors;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperDimAmount()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWallpaperIdForUser(II)I
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperInfoFile(I)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperInstance(II)Landroid/app/wallpaper/WallpaperInstance;
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p4, "which"    # I
    .param p5, "outParams"    # Landroid/os/Bundle;
    .param p6, "userId"    # I
    .param p7, "getCropped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWidthHint(I)I
    .registers 3
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSetWallpaperAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isStaticWallpaper(I)Z
    .registers 3
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWallpaperBackupEligible(II)Z
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWallpaperSupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockScreenWallpaperExists()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyGoingToSleep(IILandroid/os/Bundle;)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    return-void
.end method

.method public blacklist notifyWakingUp(IILandroid/os/Bundle;)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    return-void
.end method

.method public blacklist registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 4
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    return-void
.end method

.method public blacklist removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 6
    .param p1, "callback"    # Landroid/app/ILocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    .local p2, "area":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    return-void
.end method

.method public blacklist setDimensionHints(IILjava/lang/String;I)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public blacklist setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .registers 4
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    return-void
.end method

.method public blacklist setInAmbientMode(ZJ)V
    .registers 4
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    return-void
.end method

.method public blacklist setWallpaper(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "screenOrientations"    # [I
    .param p5, "allowBackup"    # Z
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "which"    # I
    .param p8, "completion"    # Landroid/app/IWallpaperManagerCallback;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;Z",
            "Landroid/os/Bundle;",
            "I",
            "Landroid/app/IWallpaperManagerCallback;",
            "I)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    .local p4, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist setWallpaperComponentChecked(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)V
    .registers 5
    .param p1, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist setWallpaperDimAmount(F)V
    .registers 2
    .param p1, "dimAmount"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    return-void
.end method

.method public blacklist settingsRestored()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    return-void
.end method

.method public blacklist unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 4
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    return-void
.end method

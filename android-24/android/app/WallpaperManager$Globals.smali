.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# instance fields
.field private mCachedWallpaper:Landroid/graphics/Bitmap;

.field private mCachedWallpaperUserId:I

.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;


# direct methods
.method static synthetic -get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 273
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    #@3
    .line 274
    const-string/jumbo v1, "wallpaper"

    #@6
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 275
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@10
    .line 276
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    #@13
    .line 273
    return-void
.end method

.method private getCurrentWallpaperLocked(I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 338
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 339
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    const-string/jumbo v6, "WallpaperService not running"

    #@c
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 340
    return-object v7

    #@10
    .line 344
    :cond_0
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    #@12
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@15
    .line 345
    .local v4, "params":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@17
    const/4 v6, 0x1

    #@18
    invoke-interface {v5, p0, v6, v4, p1}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    move-result-object v2

    #@1c
    .line 347
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    #@1e
    .line 349
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    #@20
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@23
    .line 351
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@26
    move-result-object v5

    #@27
    const/4 v6, 0x0

    #@28
    .line 350
    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result-object v5

    #@2c
    .line 355
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@2f
    .line 350
    return-object v5

    #@30
    .line 352
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    #@31
    .line 353
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    const-string/jumbo v6, "Can\'t decode file"

    #@38
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3b
    .line 355
    :try_start_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3e
    .line 361
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    return-object v7

    #@3f
    .line 354
    :catchall_0
    move-exception v5

    #@40
    .line 355
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@43
    .line 354
    throw v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@44
    .line 358
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "params":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    #@45
    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@48
    move-result-object v5

    #@49
    throw v5
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 365
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    #@4
    move-result-object v1

    #@5
    .line 366
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    #@7
    .line 368
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    #@9
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@c
    .line 369
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    #@d
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v3

    #@11
    .line 373
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@14
    .line 369
    return-object v3

    #@15
    .line 370
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    #@16
    .line 371
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, "Can\'t decode stream"

    #@1d
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 373
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23
    .line 376
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    return-object v5

    #@24
    .line 372
    :catchall_0
    move-exception v3

    #@25
    .line 373
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@28
    .line 372
    throw v3
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 1

    #@0
    .prologue
    .line 330
    monitor-enter p0

    #@1
    .line 331
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    #@4
    .line 332
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    #@7
    .line 333
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 329
    return-void

    #@c
    .line 330
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 0

    #@0
    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    #@3
    .line 279
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I

    #@0
    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZII)Landroid/graphics/Bitmap;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZII)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 295
    monitor-enter p0

    #@2
    .line 296
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 298
    :try_start_1
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@8
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, v3}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    monitor-exit p0

    #@13
    .line 299
    return-object v4

    #@14
    .line 301
    :catch_0
    move-exception v0

    #@15
    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@18
    move-result-object v2

    #@19
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    .line 295
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit p0

    #@1c
    throw v2

    #@1d
    .line 305
    :cond_0
    :try_start_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    #@1f
    if-eqz v2, :cond_1

    #@21
    iget v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    #@23
    if-ne v2, p4, :cond_1

    #@25
    .line 306
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@27
    monitor-exit p0

    #@28
    return-object v2

    #@29
    .line 308
    :cond_1
    const/4 v2, 0x0

    #@2a
    :try_start_4
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    #@2c
    .line 309
    const/4 v2, 0x0

    #@2d
    iput v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2f
    .line 311
    :try_start_5
    invoke-direct {p0, p4}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(I)Landroid/graphics/Bitmap;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    #@35
    .line 312
    iput p4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@37
    .line 316
    :goto_0
    :try_start_6
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    #@39
    if-eqz v2, :cond_2

    #@3b
    .line 317
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@3d
    monitor-exit p0

    #@3e
    return-object v2

    #@3f
    .line 313
    :catch_1
    move-exception v1

    #@40
    .line 314
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    const-string/jumbo v3, "No memory load current wallpaper"

    #@47
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    goto :goto_0

    #@4b
    .line 319
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    if-eqz p2, :cond_4

    #@4d
    .line 320
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    #@4f
    if-nez v2, :cond_3

    #@51
    .line 321
    invoke-direct {p0, p1, p3}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    #@54
    move-result-object v2

    #@55
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    #@57
    .line 323
    :cond_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    return-object v2

    #@5b
    :cond_4
    monitor-exit p0

    #@5c
    .line 325
    return-object v4
.end method

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

.field private final mService:Landroid/app/IWallpaperManager;


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
    .line 275
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    #@3
    .line 276
    const-string/jumbo v1, "wallpaper"

    #@6
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 277
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@10
    .line 278
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    #@13
    .line 275
    return-void
.end method

.method private getCurrentWallpaperLocked(I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 344
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 345
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    const-string/jumbo v6, "WallpaperService not running"

    #@c
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 346
    return-object v7

    #@10
    .line 350
    :cond_0
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    #@12
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@15
    .line 351
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
    .line 353
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    #@1e
    .line 355
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    #@20
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@23
    .line 357
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@26
    move-result-object v5

    #@27
    const/4 v6, 0x0

    #@28
    .line 356
    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result-object v5

    #@2c
    .line 361
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@2f
    .line 356
    return-object v5

    #@30
    .line 358
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    #@31
    .line 359
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
    .line 361
    :try_start_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3e
    .line 367
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    return-object v7

    #@3f
    .line 360
    :catchall_0
    move-exception v5

    #@40
    .line 361
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@43
    .line 360
    throw v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@44
    .line 364
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "params":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    #@45
    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@48
    move-result-object v5

    #@49
    throw v5
.end method

.method private getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 371
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    #@4
    move-result-object v1

    #@5
    .line 372
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    #@7
    .line 374
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    #@9
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@c
    .line 375
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
    .line 379
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@14
    .line 375
    return-object v3

    #@15
    .line 376
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    #@16
    .line 377
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
    .line 379
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23
    .line 382
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    return-object v5

    #@24
    .line 378
    :catchall_0
    move-exception v3

    #@25
    .line 379
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@28
    .line 378
    throw v3
.end method


# virtual methods
.method forgetLoadedWallpaper()V
    .locals 1

    #@0
    .prologue
    .line 336
    monitor-enter p0

    #@1
    .line 337
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    #@4
    .line 338
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    #@7
    .line 339
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 335
    return-void

    #@c
    .line 336
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
    .line 287
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    #@3
    .line 281
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I

    #@0
    .prologue
    .line 292
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
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 297
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 299
    :try_start_0
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@7
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 300
    return-object v5

    #@12
    .line 302
    :catch_0
    move-exception v1

    #@13
    .line 303
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v3

    #@17
    throw v3

    #@18
    .line 306
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    monitor-enter p0

    #@19
    .line 307
    :try_start_1
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    #@1b
    if-eqz v3, :cond_1

    #@1d
    iget v3, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    #@1f
    if-ne v3, p4, :cond_1

    #@21
    .line 308
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit p0

    #@24
    return-object v3

    #@25
    .line 310
    :cond_1
    const/4 v3, 0x0

    #@26
    :try_start_2
    iput-object v3, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    #@28
    .line 311
    const/4 v3, 0x0

    #@29
    iput v3, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    .line 313
    :try_start_3
    invoke-direct {p0, p4}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(I)Landroid/graphics/Bitmap;

    #@2e
    move-result-object v3

    #@2f
    iput-object v3, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    #@31
    .line 314
    iput p4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@33
    .line 318
    :goto_0
    :try_start_4
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    #@35
    if-eqz v3, :cond_2

    #@37
    .line 319
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@39
    monitor-exit p0

    #@3a
    return-object v3

    #@3b
    .line 315
    :catch_1
    move-exception v2

    #@3c
    .line 316
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    const-string/jumbo v4, "No memory load current wallpaper"

    #@43
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 306
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    #@48
    monitor-exit p0

    #@49
    throw v3

    #@4a
    :cond_2
    monitor-exit p0

    #@4b
    .line 322
    if-eqz p2, :cond_4

    #@4d
    .line 323
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    #@4f
    .line 324
    .local v0, "defaultWallpaper":Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    #@51
    .line 325
    invoke-direct {p0, p1, p3}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    #@54
    move-result-object v0

    #@55
    .line 326
    monitor-enter p0

    #@56
    .line 327
    :try_start_6
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@58
    monitor-exit p0

    #@59
    .line 330
    :cond_3
    return-object v0

    #@5a
    .line 326
    :catchall_1
    move-exception v3

    #@5b
    monitor-exit p0

    #@5c
    throw v3

    #@5d
    .line 332
    .end local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    :cond_4
    return-object v5
.end method

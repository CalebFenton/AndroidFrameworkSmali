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


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


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
    .line 236
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    #@3
    .line 237
    const-string/jumbo v1, "wallpaper"

    #@6
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 238
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@10
    .line 236
    return-void
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 296
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 297
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    #@8
    move-result-object v6

    #@9
    const-string/jumbo v7, "WallpaperService not running"

    #@c
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 298
    return-object v8

    #@10
    .line 302
    :cond_0
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    #@12
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@15
    .line 303
    .local v5, "params":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    #@17
    invoke-interface {v6, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    #@1a
    move-result-object v3

    #@1b
    .line 304
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_1

    #@1d
    .line 306
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    #@1f
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@22
    .line 308
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@25
    move-result-object v6

    #@26
    const/4 v7, 0x0

    #@27
    .line 307
    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result-object v6

    #@2b
    .line 313
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    #@2e
    .line 307
    :goto_0
    return-object v6

    #@2f
    .line 314
    :catch_0
    move-exception v1

    #@30
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@31
    .line 309
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    #@32
    .line 310
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    const-string/jumbo v7, "Can\'t decode file"

    #@39
    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    .line 313
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    #@3f
    .line 322
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "params":Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-object v8

    #@40
    .line 314
    .restart local v2    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v1

    #@41
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    #@42
    .line 311
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    #@43
    .line 313
    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    #@46
    .line 311
    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    #@47
    .line 319
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "params":Landroid/os/Bundle;
    :catch_3
    move-exception v0

    #@48
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@49
    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "params":Landroid/os/Bundle;
    :catch_4
    move-exception v1

    #@4a
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 326
    invoke-static {p1}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    #@4
    move-result-object v2

    #@5
    .line 327
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    #@7
    .line 329
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    #@9
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@c
    .line 330
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    #@d
    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v4

    #@11
    .line 335
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@14
    .line 330
    :goto_0
    return-object v4

    #@15
    .line 336
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@17
    .line 331
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    #@18
    .line 332
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, "Can\'t decode stream"

    #@1f
    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    .line 335
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@25
    .line 341
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    :goto_1
    return-object v6

    #@26
    .line 336
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    #@27
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    #@28
    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    #@29
    .line 335
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@2c
    .line 333
    :goto_2
    throw v4

    #@2d
    .line 336
    :catch_3
    move-exception v0

    #@2e
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 1

    #@0
    .prologue
    .line 289
    monitor-enter p0

    #@1
    .line 290
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    #@4
    .line 291
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 288
    return-void

    #@9
    .line 289
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 1

    #@0
    .prologue
    .line 247
    monitor-enter p0

    #@1
    .line 248
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    #@4
    .line 249
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 241
    return-void

    #@9
    .line 247
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 254
    monitor-enter p0

    #@2
    .line 255
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 257
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
    .line 258
    return-object v4

    #@14
    .line 260
    :catch_0
    move-exception v0

    #@15
    .line 264
    :cond_0
    :try_start_2
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 265
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    return-object v2

    #@1d
    .line 267
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 268
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@23
    monitor-exit p0

    #@24
    return-object v2

    #@25
    .line 270
    :cond_2
    const/4 v2, 0x0

    #@26
    :try_start_4
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@28
    .line 272
    :try_start_5
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@2e
    .line 276
    :goto_0
    if-eqz p2, :cond_4

    #@30
    .line 277
    :try_start_6
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    #@32
    if-nez v2, :cond_3

    #@34
    .line 278
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    #@37
    move-result-object v2

    #@38
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    #@3a
    .line 279
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@3c
    monitor-exit p0

    #@3d
    return-object v2

    #@3e
    .line 273
    :catch_1
    move-exception v1

    #@3f
    .line 274
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    const-string/jumbo v3, "No memory load current wallpaper"

    #@46
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 254
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    #@4b
    monitor-exit p0

    #@4c
    throw v2

    #@4d
    .line 281
    :cond_3
    const/4 v2, 0x0

    #@4e
    :try_start_8
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    #@50
    .line 284
    :cond_4
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@52
    monitor-exit p0

    #@53
    return-object v2
.end method

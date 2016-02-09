.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation


# instance fields
.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field height:I

.field imageWallpaperPending:Z

.field lastDiedTime:J

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field final padding:Landroid/graphics/Rect;

.field userId:I

.field wallpaperComponent:Landroid/content/ComponentName;

.field wallpaperFile:Ljava/io/File;

.field wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

.field wallpaperUpdating:Z

.field width:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    #@2
    return-object v0
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 196
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@a
    .line 217
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@c
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@f
    .line 216
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    #@11
    .line 219
    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@13
    .line 220
    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@15
    .line 222
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1a
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@1c
    .line 225
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@1e
    .line 226
    new-instance v0, Ljava/io/File;

    #@20
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap0(I)Ljava/io/File;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, "wallpaper"

    #@27
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2a
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@2c
    .line 224
    return-void
.end method

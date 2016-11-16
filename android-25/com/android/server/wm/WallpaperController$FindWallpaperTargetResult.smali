.class final Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindWallpaperTargetResult"
.end annotation


# instance fields
.field topWallpaper:Lcom/android/server/wm/WindowState;

.field topWallpaperIndex:I

.field wallpaperTarget:Lcom/android/server/wm/WindowState;

.field wallpaperTargetIndex:I


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 943
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    #@7
    .line 944
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    #@9
    .line 945
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    #@b
    .line 946
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    #@d
    .line 942
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 959
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    #@4
    .line 960
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    #@6
    .line 961
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    #@8
    .line 962
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    #@a
    .line 958
    return-void
.end method

.method setTopWallpaper(Lcom/android/server/wm/WindowState;I)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    #@2
    .line 950
    iput p2, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    #@4
    .line 948
    return-void
.end method

.method setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 954
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    #@2
    .line 955
    iput p2, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    #@4
    .line 953
    return-void
.end method

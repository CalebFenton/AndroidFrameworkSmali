.class public abstract Landroid/service/wallpaper/WallpaperService;
.super Landroid/app/Service;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$WallpaperCommand;,
        Landroid/service/wallpaper/WallpaperService$Engine;,
        Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;,
        Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DO_ATTACH:I = 0xa

.field private static final DO_DETACH:I = 0x14

.field private static final DO_SET_DESIRED_SIZE:I = 0x1e

.field private static final DO_SET_DISPLAY_PADDING:I = 0x28

.field private static final MSG_TOUCH_EVENT:I = 0x2738

.field private static final MSG_UPDATE_SURFACE:I = 0x2710

.field private static final MSG_VISIBILITY_CHANGED:I = 0x271a

.field private static final MSG_WALLPAPER_COMMAND:I = 0x2729

.field private static final MSG_WALLPAPER_OFFSETS:I = 0x2724

.field private static final MSG_WINDOW_MOVED:I = 0x2733

.field private static final MSG_WINDOW_RESIZED:I = 0x272e

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpaper.WallpaperService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.service.wallpaper"

.field static final TAG:Ljava/lang/String; = "WallpaperService"


# instance fields
.field private final mActiveEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/wallpaper/WallpaperService$Engine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 109
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 108
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    #@a
    .line 73
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1279
    const-string/jumbo v2, "State of wallpaper "

    #@3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@9
    const-string/jumbo v2, ":"

    #@c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 1280
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v2

    #@16
    if-ge v1, v2, :cond_0

    #@18
    .line 1281
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/service/wallpaper/WallpaperService$Engine;

    #@20
    .line 1282
    .local v0, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    const-string/jumbo v2, "  Engine "

    #@23
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@29
    const-string/jumbo v2, ":"

    #@2c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f
    .line 1283
    const-string/jumbo v2, "    "

    #@32
    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@35
    .line 1280
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1278
    .end local v0    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    :cond_0
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1266
    new-instance v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;

    #@2
    invoke-direct {v0, p0, p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V

    #@5
    return-object v0
.end method

.method public onCreate()V
    .locals 0

    #@0
    .prologue
    .line 1248
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@3
    .line 1247
    return-void
.end method

.method public abstract onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
.end method

.method public onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 1253
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #@3
    .line 1254
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 1255
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/service/wallpaper/WallpaperService$Engine;

    #@14
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    #@17
    .line 1254
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1257
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@1f
    .line 1252
    return-void
.end method

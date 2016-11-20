.class Lcom/android/server/wallpaper/WallpaperManagerService$3;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "val$userId"    # I

    #@0
    .prologue
    .line 997
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    #@2
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->val$userId:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 1000
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->val$userId:I

    #@2
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap0(I)Ljava/io/File;

    #@5
    move-result-object v2

    #@6
    .line 1001
    .local v2, "wallpaperDir":Ljava/io/File;
    sget-object v4, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    array-length v5, v4

    #@a
    :goto_0
    if-ge v3, v5, :cond_1

    #@c
    aget-object v1, v4, v3

    #@e
    .line 1002
    .local v1, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    #@10
    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    .line 1003
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_0

    #@19
    .line 1004
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@1c
    .line 1001
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 999
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "filename":Ljava/lang/String;
    :cond_1
    return-void
.end method

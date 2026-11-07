.class final Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WallpaperCommand"
.end annotation


# instance fields
.field greylist-max-o action:Ljava/lang/String;

.field greylist-max-o extras:Landroid/os/Bundle;

.field greylist-max-o sync:Z

.field greylist-max-o x:I

.field greylist-max-o y:I

.field greylist-max-o z:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

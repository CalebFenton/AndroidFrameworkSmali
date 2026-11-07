.class public interface abstract Landroid/app/WallpaperManager$OnColorsChangedListener;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnColorsChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onColorsChanged(Landroid/app/WallpaperColors;I)V
.end method

.method public greylist-max-o onColorsChanged(Landroid/app/WallpaperColors;II)V
    .registers 4
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 3616
    invoke-interface {p0, p1, p2}, Landroid/app/WallpaperManager$OnColorsChangedListener;->onColorsChanged(Landroid/app/WallpaperColors;I)V

    .line 3617
    return-void
.end method

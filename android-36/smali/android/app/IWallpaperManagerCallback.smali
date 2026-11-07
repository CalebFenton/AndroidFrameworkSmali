.class public interface abstract Landroid/app/IWallpaperManagerCallback;
.super Ljava/lang/Object;
.source "IWallpaperManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManagerCallback$Stub;,
        Landroid/app/IWallpaperManagerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onWallpaperChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

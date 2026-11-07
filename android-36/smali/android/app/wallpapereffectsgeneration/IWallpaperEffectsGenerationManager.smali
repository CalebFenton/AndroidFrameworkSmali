.class public interface abstract Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;
.super Ljava/lang/Object;
.source "IWallpaperEffectsGenerationManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;,
        Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.wallpapereffectsgeneration.IWallpaperEffectsGenerationManager"


# virtual methods
.method public abstract blacklist generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

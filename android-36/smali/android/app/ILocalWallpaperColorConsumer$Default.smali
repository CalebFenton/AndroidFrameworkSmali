.class public Landroid/app/ILocalWallpaperColorConsumer$Default;
.super Ljava/lang/Object;
.source "ILocalWallpaperColorConsumer.java"

# interfaces
.implements Landroid/app/ILocalWallpaperColorConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ILocalWallpaperColorConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .registers 3
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "colors"    # Landroid/app/WallpaperColors;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

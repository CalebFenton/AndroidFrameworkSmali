.class public final synthetic Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/wallpaper/WallpaperDescription;

.field public final synthetic blacklist f$1:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda0;->f$0:Landroid/app/wallpaper/WallpaperDescription;

    iput-object p2, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda0;->f$1:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda0;->f$0:Landroid/app/wallpaper/WallpaperDescription;

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda0;->f$1:Landroid/os/Parcel;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, p1}, Landroid/app/wallpaper/WallpaperDescription;->$r8$lambda$SJjydMtP7lVlIyL2p9b8fQyzjFc(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;Landroid/util/Pair;)V

    return-void
.end method

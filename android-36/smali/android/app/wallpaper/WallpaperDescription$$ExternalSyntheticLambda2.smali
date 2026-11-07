.class public final synthetic Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/wallpaper/WallpaperDescription;

.field public final synthetic blacklist f$1:Landroid/os/Parcel;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;->f$0:Landroid/app/wallpaper/WallpaperDescription;

    iput-object p2, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;->f$1:Landroid/os/Parcel;

    iput p3, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;->f$0:Landroid/app/wallpaper/WallpaperDescription;

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;->f$1:Landroid/os/Parcel;

    iget v2, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;->f$2:I

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, v2, p1}, Landroid/app/wallpaper/WallpaperDescription;->$r8$lambda$qLyMJewk5i-jk61el0hS27e3fpQ(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;ILandroid/util/Pair;)V

    return-void
.end method

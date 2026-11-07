.class public final synthetic Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic blacklist f$0:Z

.field public final synthetic blacklist f$1:Landroid/app/WallpaperManager$ColorManagementProxy;


# direct methods
.method public synthetic constructor blacklist <init>(ZLandroid/app/WallpaperManager$ColorManagementProxy;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;->f$1:Landroid/app/WallpaperManager$ColorManagementProxy;

    return-void
.end method


# virtual methods
.method public final whitelist onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 6

    .line 0
    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;->f$1:Landroid/app/WallpaperManager$ColorManagementProxy;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/app/WallpaperManager$Globals;->lambda$getCurrentWallpaperLocked$2(ZLandroid/app/WallpaperManager$ColorManagementProxy;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

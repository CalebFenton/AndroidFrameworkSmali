.class public final synthetic Landroid/app/WallpaperManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/SparseArray;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/WallpaperManager$$ExternalSyntheticLambda1;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/WallpaperManager$$ExternalSyntheticLambda1;->f$0:Landroid/util/SparseArray;

    check-cast p1, Landroid/graphics/Point;

    check-cast p2, Landroid/graphics/Rect;

    invoke-static {v0, p1, p2}, Landroid/app/WallpaperManager;->lambda$setStreamWithCrops$3(Landroid/util/SparseArray;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method

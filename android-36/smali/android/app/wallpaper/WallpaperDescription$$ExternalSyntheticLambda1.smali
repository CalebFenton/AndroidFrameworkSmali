.class public final synthetic Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/modules/utils/TypedXmlPullParser;

.field public final synthetic blacklist f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda1;->f$0:Lcom/android/modules/utils/TypedXmlPullParser;

    iput-object p2, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda1;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda1;->f$0:Lcom/android/modules/utils/TypedXmlPullParser;

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda1;->f$1:Landroid/util/SparseArray;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, p1}, Landroid/app/wallpaper/WallpaperDescription;->lambda$restoreFromXml$0(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;Landroid/util/Pair;)V

    return-void
.end method

.class Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;
.super Landroid/os/AsyncTask;
.source "ColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/ColorExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadWallpaperColors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/WallpaperManager;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mLockColors:Landroid/app/WallpaperColors;

.field private blacklist mSystemColors:Landroid/app/WallpaperColors;

.field final synthetic blacklist this$0:Lcom/android/internal/colorextraction/ColorExtractor;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/colorextraction/ColorExtractor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->this$0:Lcom/android/internal/colorextraction/ColorExtractor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/colorextraction/ColorExtractor;Lcom/android/internal/colorextraction/ColorExtractor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;-><init>(Lcom/android/internal/colorextraction/ColorExtractor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 93
    check-cast p1, [Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->doInBackground([Landroid/app/WallpaperManager;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Landroid/app/WallpaperManager;)Ljava/lang/Void;
    .registers 5
    .param p1, "params"    # [Landroid/app/WallpaperManager;

    .line 98
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->mSystemColors:Landroid/app/WallpaperColors;

    .line 99
    aget-object v0, p1, v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->mLockColors:Landroid/app/WallpaperColors;

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 93
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "b"    # Ljava/lang/Void;

    .line 104
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->this$0:Lcom/android/internal/colorextraction/ColorExtractor;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->mSystemColors:Landroid/app/WallpaperColors;

    iput-object v1, v0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    .line 105
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->this$0:Lcom/android/internal/colorextraction/ColorExtractor;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->mLockColors:Landroid/app/WallpaperColors;

    iput-object v1, v0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    .line 106
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->this$0:Lcom/android/internal/colorextraction/ColorExtractor;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor;->extractWallpaperColors()V

    .line 107
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->this$0:Lcom/android/internal/colorextraction/ColorExtractor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->triggerColorsChanged(I)V

    .line 108
    return-void
.end method

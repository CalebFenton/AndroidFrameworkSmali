.class public Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
.super Ljava/lang/Object;
.source "DownloadSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/DownloadSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDownloadId:I

.field private final blacklist mMainType:I

.field private blacklist mUseDownloadId:Z


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "mainType"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mUseDownloadId:Z

    .line 78
    iput p1, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mMainType:I

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/media/tv/tuner/filter/DownloadSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/filter/DownloadSettings;
    .registers 6

    .line 116
    new-instance v0, Landroid/media/tv/tuner/filter/DownloadSettings;

    iget v1, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mMainType:I

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mUseDownloadId:Z

    iget v3, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mDownloadId:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/tuner/filter/DownloadSettings;-><init>(IZILandroid/media/tv/tuner/filter/DownloadSettings-IA;)V

    return-object v0
.end method

.method public whitelist setDownloadId(I)Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
    .registers 2
    .param p1, "downloadId"    # I

    .line 107
    iput p1, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mDownloadId:I

    .line 108
    return-object p0
.end method

.method public whitelist setUseDownloadId(Z)Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
    .registers 4
    .param p1, "useDownloadId"    # Z

    .line 95
    const/high16 v0, 0x20000

    const-string/jumbo v1, "setUseDownloadId"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 97
    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mUseDownloadId:Z

    .line 99
    :cond_d
    return-object p0
.end method

.class public Landroid/media/tv/tuner/filter/DownloadSettings;
.super Landroid/media/tv/tuner/filter/Settings;
.source "DownloadSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mDownloadId:I

.field private final blacklist mUseDownloadId:Z


# direct methods
.method private constructor blacklist <init>(IZI)V
    .registers 5
    .param p1, "mainType"    # I
    .param p2, "useDownloadId"    # Z
    .param p3, "downloadId"    # I

    .line 35
    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/filter/Settings;-><init>(I)V

    .line 36
    iput-boolean p2, p0, Landroid/media/tv/tuner/filter/DownloadSettings;->mUseDownloadId:Z

    .line 37
    iput p3, p0, Landroid/media/tv/tuner/filter/DownloadSettings;->mDownloadId:I

    .line 38
    return-void
.end method

.method synthetic constructor blacklist <init>(IZILandroid/media/tv/tuner/filter/DownloadSettings-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/filter/DownloadSettings;-><init>(IZI)V

    return-void
.end method

.method public static whitelist builder(I)Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
    .registers 3
    .param p0, "mainType"    # I

    .line 66
    new-instance v0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;-><init>(ILandroid/media/tv/tuner/filter/DownloadSettings-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getDownloadId()I
    .registers 2

    .line 44
    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadSettings;->mDownloadId:I

    return v0
.end method

.method public whitelist useDownloadId()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/DownloadSettings;->mUseDownloadId:Z

    return v0
.end method

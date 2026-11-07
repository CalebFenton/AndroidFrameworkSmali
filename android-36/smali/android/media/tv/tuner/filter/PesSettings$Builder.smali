.class public Landroid/media/tv/tuner/filter/PesSettings$Builder;
.super Ljava/lang/Object;
.source "PesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/PesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsRaw:Z

.field private final blacklist mMainType:I

.field private blacklist mStreamId:I


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 2
    .param p1, "mainType"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Landroid/media/tv/tuner/filter/PesSettings$Builder;->mMainType:I

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/media/tv/tuner/filter/PesSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/PesSettings$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/filter/PesSettings;
    .registers 6

    .line 106
    new-instance v0, Landroid/media/tv/tuner/filter/PesSettings;

    iget v1, p0, Landroid/media/tv/tuner/filter/PesSettings$Builder;->mMainType:I

    iget v2, p0, Landroid/media/tv/tuner/filter/PesSettings$Builder;->mStreamId:I

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/PesSettings$Builder;->mIsRaw:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/tuner/filter/PesSettings;-><init>(IIZLandroid/media/tv/tuner/filter/PesSettings-IA;)V

    return-object v0
.end method

.method public whitelist setRaw(Z)Landroid/media/tv/tuner/filter/PesSettings$Builder;
    .registers 2
    .param p1, "isRaw"    # Z

    .line 97
    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/PesSettings$Builder;->mIsRaw:Z

    .line 98
    return-object p0
.end method

.method public whitelist setStreamId(I)Landroid/media/tv/tuner/filter/PesSettings$Builder;
    .registers 2
    .param p1, "streamId"    # I

    .line 85
    iput p1, p0, Landroid/media/tv/tuner/filter/PesSettings$Builder;->mStreamId:I

    .line 86
    return-object p0
.end method

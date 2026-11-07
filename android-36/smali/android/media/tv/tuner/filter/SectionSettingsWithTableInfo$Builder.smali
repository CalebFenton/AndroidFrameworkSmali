.class public Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
.super Landroid/media/tv/tuner/filter/SectionSettings$Builder;
.source "SectionSettingsWithTableInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/tv/tuner/filter/SectionSettings$Builder<",
        "Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mTableId:I

.field private blacklist mVersion:I


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "mainType"    # I

    .line 77
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SectionSettings$Builder;-><init>(I)V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mVersion:I

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/media/tv/tuner/filter/SectionSettingsWithTableInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;
    .registers 10

    .line 102
    new-instance v0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;

    iget v1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mMainType:I

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mCrcEnabled:Z

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mIsRepeat:Z

    iget-boolean v4, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mIsRaw:Z

    iget v5, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mBitWidthOfLengthField:I

    iget v6, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mTableId:I

    iget v7, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mVersion:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;-><init>(IZZZIIILandroid/media/tv/tuner/filter/SectionSettingsWithTableInfo-IA;)V

    return-object v0
.end method

.method bridge synthetic blacklist self()Landroid/media/tv/tuner/filter/SectionSettings$Builder;
    .registers 2

    .line 72
    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->self()Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist self()Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
    .registers 1

    .line 108
    return-object p0
.end method

.method public whitelist setTableId(I)Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
    .registers 2
    .param p1, "tableId"    # I

    .line 85
    iput p1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mTableId:I

    .line 86
    return-object p0
.end method

.method public whitelist setVersion(I)Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
    .registers 2
    .param p1, "version"    # I

    .line 93
    iput p1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mVersion:I

    .line 94
    return-object p0
.end method

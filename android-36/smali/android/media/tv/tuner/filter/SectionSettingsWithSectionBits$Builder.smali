.class public Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
.super Landroid/media/tv/tuner/filter/SectionSettings$Builder;
.source "SectionSettingsWithSectionBits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/tv/tuner/filter/SectionSettings$Builder<",
        "Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mFilter:[B

.field private blacklist mMask:[B

.field private blacklist mMode:[B


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 4
    .param p1, "mainType"    # I

    .line 89
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SectionSettings$Builder;-><init>(I)V

    .line 84
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mFilter:[B

    .line 85
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMask:[B

    .line 86
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMode:[B

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/media/tv/tuner/filter/SectionSettingsWithSectionBits-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;
    .registers 11

    .line 128
    new-instance v0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;

    iget v1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMainType:I

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mCrcEnabled:Z

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mIsRepeat:Z

    iget-boolean v4, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mIsRaw:Z

    iget v5, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mBitWidthOfLengthField:I

    iget-object v6, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mFilter:[B

    iget-object v7, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMask:[B

    iget-object v8, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMode:[B

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;-><init>(IZZZI[B[B[BLandroid/media/tv/tuner/filter/SectionSettingsWithSectionBits-IA;)V

    return-object v0
.end method

.method bridge synthetic blacklist self()Landroid/media/tv/tuner/filter/SectionSettings$Builder;
    .registers 2

    .line 83
    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->self()Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist self()Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    .registers 1

    .line 134
    return-object p0
.end method

.method public whitelist setFilter([B)Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    .registers 2
    .param p1, "filter"    # [B

    .line 99
    iput-object p1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mFilter:[B

    .line 100
    return-object p0
.end method

.method public whitelist setMask([B)Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    .registers 2
    .param p1, "mask"    # [B

    .line 109
    iput-object p1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMask:[B

    .line 110
    return-object p0
.end method

.method public whitelist setMode([B)Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    .registers 2
    .param p1, "mode"    # [B

    .line 119
    iput-object p1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMode:[B

    .line 120
    return-object p0
.end method

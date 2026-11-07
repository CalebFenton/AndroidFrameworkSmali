.class public Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;
.super Ljava/lang/Object;
.source "Atsc3PlpSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCodeRate:I

.field private final blacklist mFec:I

.field private final blacklist mInterleaveMode:I

.field private final blacklist mModulation:I

.field private final blacklist mPlpId:I


# direct methods
.method private constructor blacklist <init>(IIIII)V
    .registers 6
    .param p1, "plpId"    # I
    .param p2, "modulation"    # I
    .param p3, "interleaveMode"    # I
    .param p4, "codeRate"    # I
    .param p5, "fec"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mPlpId:I

    .line 37
    iput p2, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mModulation:I

    .line 38
    iput p3, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mInterleaveMode:I

    .line 39
    iput p4, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mCodeRate:I

    .line 40
    iput p5, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mFec:I

    .line 41
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/media/tv/tuner/frontend/Atsc3PlpSettings-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;-><init>(IIIII)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .registers 2

    .line 83
    new-instance v0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/Atsc3PlpSettings-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getCodeRate()I
    .registers 2

    .line 68
    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mCodeRate:I

    return v0
.end method

.method public whitelist getFec()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mFec:I

    return v0
.end method

.method public whitelist getInterleaveMode()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mInterleaveMode:I

    return v0
.end method

.method public whitelist getModulation()I
    .registers 2

    .line 54
    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mModulation:I

    return v0
.end method

.method public whitelist getPlpId()I
    .registers 2

    .line 47
    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mPlpId:I

    return v0
.end method

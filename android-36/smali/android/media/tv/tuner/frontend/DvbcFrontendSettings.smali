.class public Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "DvbcFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Bandwidth;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$TimeInterleaveMode;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$SpectralInversion;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Annex;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$OuterFec;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Modulation;
    }
.end annotation


# static fields
.field public static final whitelist ANNEX_A:I = 0x1

.field public static final whitelist ANNEX_B:I = 0x2

.field public static final whitelist ANNEX_C:I = 0x4

.field public static final whitelist ANNEX_UNDEFINED:I = 0x0

.field public static final whitelist BANDWIDTH_5MHZ:I = 0x1

.field public static final whitelist BANDWIDTH_6MHZ:I = 0x2

.field public static final whitelist BANDWIDTH_7MHZ:I = 0x4

.field public static final whitelist BANDWIDTH_8MHZ:I = 0x8

.field public static final whitelist BANDWIDTH_UNDEFINED:I = 0x0

.field public static final whitelist MODULATION_AUTO:I = 0x1

.field public static final whitelist MODULATION_MOD_128QAM:I = 0x10

.field public static final whitelist MODULATION_MOD_16QAM:I = 0x2

.field public static final whitelist MODULATION_MOD_256QAM:I = 0x20

.field public static final whitelist MODULATION_MOD_32QAM:I = 0x4

.field public static final whitelist MODULATION_MOD_64QAM:I = 0x8

.field public static final whitelist MODULATION_UNDEFINED:I = 0x0

.field public static final whitelist OUTER_FEC_OUTER_FEC_NONE:I = 0x1

.field public static final whitelist OUTER_FEC_OUTER_FEC_RS:I = 0x2

.field public static final whitelist OUTER_FEC_UNDEFINED:I = 0x0

.field public static final whitelist SPECTRAL_INVERSION_INVERTED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SPECTRAL_INVERSION_NORMAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SPECTRAL_INVERSION_UNDEFINED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TIME_INTERLEAVE_MODE_128_1_0:I = 0x2

.field public static final whitelist TIME_INTERLEAVE_MODE_128_1_1:I = 0x4

.field public static final whitelist TIME_INTERLEAVE_MODE_128_2:I = 0x80

.field public static final whitelist TIME_INTERLEAVE_MODE_128_3:I = 0x100

.field public static final whitelist TIME_INTERLEAVE_MODE_128_4:I = 0x200

.field public static final whitelist TIME_INTERLEAVE_MODE_16_8:I = 0x20

.field public static final whitelist TIME_INTERLEAVE_MODE_32_4:I = 0x10

.field public static final whitelist TIME_INTERLEAVE_MODE_64_2:I = 0x8

.field public static final whitelist TIME_INTERLEAVE_MODE_8_16:I = 0x40

.field public static final whitelist TIME_INTERLEAVE_MODE_AUTO:I = 0x1

.field public static final whitelist TIME_INTERLEAVE_MODE_UNDEFINED:I


# instance fields
.field private final blacklist mAnnex:I

.field private final blacklist mBandwidth:I

.field private final blacklist mInnerFec:J

.field private final blacklist mInterleaveMode:I

.field private final blacklist mModulation:I

.field private final blacklist mOuterFec:I

.field private final blacklist mSpectralInversion:I

.field private final blacklist mSymbolRate:I


# direct methods
.method private constructor blacklist <init>(JIJIIIIII)V
    .registers 12
    .param p1, "frequency"    # J
    .param p3, "modulation"    # I
    .param p4, "innerFec"    # J
    .param p6, "symbolRate"    # I
    .param p7, "outerFec"    # I
    .param p8, "annex"    # I
    .param p9, "spectralInversion"    # I
    .param p10, "interleaveMode"    # I
    .param p11, "bandwidth"    # I

    .line 267
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    .line 268
    iput p3, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mModulation:I

    .line 269
    iput-wide p4, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mInnerFec:J

    .line 270
    iput p6, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSymbolRate:I

    .line 271
    iput p7, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mOuterFec:I

    .line 272
    iput p8, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mAnnex:I

    .line 273
    iput p9, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSpectralInversion:I

    .line 274
    iput p10, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mInterleaveMode:I

    .line 275
    iput p11, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mBandwidth:I

    .line 276
    return-void
.end method

.method synthetic constructor blacklist <init>(JIJIIIIIILandroid/media/tv/tuner/frontend/DvbcFrontendSettings-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;-><init>(JIJIIIIII)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    .line 339
    new-instance v0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/DvbcFrontendSettings-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getAnnex()I
    .registers 2

    .line 310
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mAnnex:I

    return v0
.end method

.method public whitelist getBandwidth()I
    .registers 2

    .line 331
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mBandwidth:I

    return v0
.end method

.method public whitelist getInnerFec()J
    .registers 3

    .line 290
    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mInnerFec:J

    return-wide v0
.end method

.method public whitelist getModulation()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mModulation:I

    return v0
.end method

.method public whitelist getOuterFec()I
    .registers 2

    .line 303
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mOuterFec:I

    return v0
.end method

.method public whitelist getSpectralInversion()I
    .registers 2

    .line 317
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSpectralInversion:I

    return v0
.end method

.method public whitelist getSymbolRate()I
    .registers 2

    .line 296
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSymbolRate:I

    return v0
.end method

.method public whitelist getTimeInterleaveMode()I
    .registers 2

    .line 324
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mInterleaveMode:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 491
    const/4 v0, 0x4

    return v0
.end method

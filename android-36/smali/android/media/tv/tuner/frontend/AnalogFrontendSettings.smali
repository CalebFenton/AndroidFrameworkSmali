.class public Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "AnalogFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$AftFlag;,
        Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$SifStandard;,
        Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$SignalType;
    }
.end annotation


# static fields
.field public static final whitelist AFT_FLAG_FALSE:I = 0x2

.field public static final whitelist AFT_FLAG_TRUE:I = 0x1

.field public static final whitelist AFT_FLAG_UNDEFINED:I = 0x0

.field public static final whitelist SIF_AUTO:I = 0x1

.field public static final whitelist SIF_BG:I = 0x2

.field public static final whitelist SIF_BG_A2:I = 0x4

.field public static final whitelist SIF_BG_NICAM:I = 0x8

.field public static final whitelist SIF_DK:I = 0x20

.field public static final whitelist SIF_DK1_A2:I = 0x40

.field public static final whitelist SIF_DK2_A2:I = 0x80

.field public static final whitelist SIF_DK3_A2:I = 0x100

.field public static final whitelist SIF_DK_NICAM:I = 0x200

.field public static final whitelist SIF_I:I = 0x10

.field public static final whitelist SIF_I_NICAM:I = 0x8000

.field public static final whitelist SIF_L:I = 0x400

.field public static final whitelist SIF_L_NICAM:I = 0x10000

.field public static final whitelist SIF_L_PRIME:I = 0x20000

.field public static final whitelist SIF_M:I = 0x800

.field public static final whitelist SIF_M_A2:I = 0x2000

.field public static final whitelist SIF_M_BTSC:I = 0x1000

.field public static final whitelist SIF_M_EIAJ:I = 0x4000

.field public static final whitelist SIF_UNDEFINED:I = 0x0

.field public static final whitelist SIGNAL_TYPE_AUTO:I = 0x1

.field public static final whitelist SIGNAL_TYPE_NTSC:I = 0x20

.field public static final whitelist SIGNAL_TYPE_NTSC_443:I = 0x40

.field public static final whitelist SIGNAL_TYPE_PAL:I = 0x2

.field public static final whitelist SIGNAL_TYPE_PAL_60:I = 0x10

.field public static final whitelist SIGNAL_TYPE_PAL_M:I = 0x4

.field public static final whitelist SIGNAL_TYPE_PAL_N:I = 0x8

.field public static final whitelist SIGNAL_TYPE_SECAM:I = 0x80

.field public static final whitelist SIGNAL_TYPE_UNDEFINED:I


# instance fields
.field private final blacklist mAftFlag:I

.field private final blacklist mSifStandard:I

.field private final blacklist mSignalType:I


# direct methods
.method private constructor blacklist <init>(JIII)V
    .registers 6
    .param p1, "frequency"    # J
    .param p3, "signalType"    # I
    .param p4, "sifStandard"    # I
    .param p5, "aftFlag"    # I

    .line 231
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    .line 232
    iput p3, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;->mSignalType:I

    .line 233
    iput p4, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;->mSifStandard:I

    .line 234
    iput p5, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;->mAftFlag:I

    .line 235
    return-void
.end method

.method synthetic constructor blacklist <init>(JIIILandroid/media/tv/tuner/frontend/AnalogFrontendSettings-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;-><init>(JIII)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 2

    .line 227
    new-instance v0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/AnalogFrontendSettings-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getAftFlag()I
    .registers 2

    .line 219
    iget v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;->mAftFlag:I

    return v0
.end method

.method public whitelist getSifStandard()I
    .registers 2

    .line 211
    iget v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;->mSifStandard:I

    return v0
.end method

.method public whitelist getSignalType()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;->mSignalType:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 194
    const/4 v0, 0x1

    return v0
.end method

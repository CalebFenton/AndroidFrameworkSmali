.class public Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "DvbsFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$VcmMode;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Standard;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Pilot;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Rolloff;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Modulation;,
        Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$ScanType;
    }
.end annotation


# static fields
.field public static final whitelist MODULATION_AUTO:I = 0x1

.field public static final whitelist MODULATION_MOD_128APSK:I = 0x800

.field public static final whitelist MODULATION_MOD_16APSK:I = 0x100

.field public static final whitelist MODULATION_MOD_16PSK:I = 0x10

.field public static final whitelist MODULATION_MOD_16QAM:I = 0x8

.field public static final whitelist MODULATION_MOD_256APSK:I = 0x1000

.field public static final whitelist MODULATION_MOD_32APSK:I = 0x200

.field public static final whitelist MODULATION_MOD_32PSK:I = 0x20

.field public static final whitelist MODULATION_MOD_64APSK:I = 0x400

.field public static final whitelist MODULATION_MOD_8APSK:I = 0x80

.field public static final whitelist MODULATION_MOD_8PSK:I = 0x4

.field public static final whitelist MODULATION_MOD_ACM:I = 0x40

.field public static final whitelist MODULATION_MOD_QPSK:I = 0x2

.field public static final whitelist MODULATION_MOD_RESERVED:I = 0x2000

.field public static final whitelist MODULATION_UNDEFINED:I = 0x0

.field public static final whitelist PILOT_AUTO:I = 0x3

.field public static final whitelist PILOT_OFF:I = 0x2

.field public static final whitelist PILOT_ON:I = 0x1

.field public static final whitelist PILOT_UNDEFINED:I = 0x0

.field public static final whitelist ROLLOFF_0_10:I = 0x5

.field public static final whitelist ROLLOFF_0_15:I = 0x4

.field public static final whitelist ROLLOFF_0_20:I = 0x3

.field public static final whitelist ROLLOFF_0_25:I = 0x2

.field public static final whitelist ROLLOFF_0_35:I = 0x1

.field public static final whitelist ROLLOFF_0_5:I = 0x6

.field public static final whitelist ROLLOFF_UNDEFINED:I = 0x0

.field public static final whitelist SCAN_TYPE_DIRECT:I = 0x1

.field public static final whitelist SCAN_TYPE_DISEQC:I = 0x2

.field public static final whitelist SCAN_TYPE_JESS:I = 0x4

.field public static final whitelist SCAN_TYPE_UNDEFINED:I = 0x0

.field public static final whitelist SCAN_TYPE_UNICABLE:I = 0x3

.field public static final whitelist STANDARD_AUTO:I = 0x1

.field public static final whitelist STANDARD_S:I = 0x2

.field public static final whitelist STANDARD_S2:I = 0x4

.field public static final whitelist STANDARD_S2X:I = 0x8

.field public static final whitelist VCM_MODE_AUTO:I = 0x1

.field public static final whitelist VCM_MODE_MANUAL:I = 0x2

.field public static final whitelist VCM_MODE_UNDEFINED:I


# instance fields
.field private final blacklist mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

.field private final blacklist mInputStreamId:I

.field private final blacklist mIsDiseqcRxMessage:Z

.field private final blacklist mModulation:I

.field private final blacklist mPilot:I

.field private final blacklist mRolloff:I

.field private final blacklist mScanType:I

.field private final blacklist mStandard:I

.field private final blacklist mSymbolRate:I

.field private final blacklist mVcmMode:I


# direct methods
.method private constructor blacklist <init>(JILandroid/media/tv/tuner/frontend/DvbsCodeRate;IIIIIIIZ)V
    .registers 13
    .param p1, "frequency"    # J
    .param p3, "modulation"    # I
    .param p4, "codeRate"    # Landroid/media/tv/tuner/frontend/DvbsCodeRate;
    .param p5, "symbolRate"    # I
    .param p6, "rolloff"    # I
    .param p7, "pilot"    # I
    .param p8, "inputStreamId"    # I
    .param p9, "standard"    # I
    .param p10, "vcm"    # I
    .param p11, "scanType"    # I
    .param p12, "isDiseqcRxMessage"    # Z

    .line 266
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    .line 267
    iput p3, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mModulation:I

    .line 268
    iput-object p4, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    .line 269
    iput p5, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mSymbolRate:I

    .line 270
    iput p6, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mRolloff:I

    .line 271
    iput p7, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mPilot:I

    .line 272
    iput p8, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mInputStreamId:I

    .line 273
    iput p9, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mStandard:I

    .line 274
    iput p10, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mVcmMode:I

    .line 275
    iput p11, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mScanType:I

    .line 276
    iput-boolean p12, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mIsDiseqcRxMessage:Z

    .line 277
    return-void
.end method

.method synthetic constructor blacklist <init>(JILandroid/media/tv/tuner/frontend/DvbsCodeRate;IIIIIIIZLandroid/media/tv/tuner/frontend/DvbsFrontendSettings-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;-><init>(JILandroid/media/tv/tuner/frontend/DvbsCodeRate;IIIIIIIZ)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2

    .line 356
    new-instance v0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/DvbsFrontendSettings-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist canHandleDiseqcRxMessage()Z
    .registers 2

    .line 348
    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mIsDiseqcRxMessage:Z

    return v0
.end method

.method public whitelist getCodeRate()Landroid/media/tv/tuner/frontend/DvbsCodeRate;
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    return-object v0
.end method

.method public whitelist getInputStreamId()I
    .registers 2

    .line 317
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mInputStreamId:I

    return v0
.end method

.method public whitelist getModulation()I
    .registers 2

    .line 284
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mModulation:I

    return v0
.end method

.method public whitelist getPilot()I
    .registers 2

    .line 311
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mPilot:I

    return v0
.end method

.method public whitelist getRolloff()I
    .registers 2

    .line 304
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mRolloff:I

    return v0
.end method

.method public whitelist getScanType()I
    .registers 2

    .line 338
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mScanType:I

    return v0
.end method

.method public whitelist getStandard()I
    .registers 2

    .line 324
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mStandard:I

    return v0
.end method

.method public whitelist getSymbolRate()I
    .registers 2

    .line 297
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mSymbolRate:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 532
    const/4 v0, 0x5

    return v0
.end method

.method public whitelist getVcmMode()I
    .registers 2

    .line 331
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;->mVcmMode:I

    return v0
.end method

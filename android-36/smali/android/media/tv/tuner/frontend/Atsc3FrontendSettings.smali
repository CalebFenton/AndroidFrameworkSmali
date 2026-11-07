.class public Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "Atsc3FrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$DemodOutputFormat;,
        Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Fec;,
        Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$CodeRate;,
        Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$TimeInterleaveMode;,
        Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Modulation;,
        Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Bandwidth;
    }
.end annotation


# static fields
.field public static final whitelist BANDWIDTH_AUTO:I = 0x1

.field public static final whitelist BANDWIDTH_BANDWIDTH_6MHZ:I = 0x2

.field public static final whitelist BANDWIDTH_BANDWIDTH_7MHZ:I = 0x4

.field public static final whitelist BANDWIDTH_BANDWIDTH_8MHZ:I = 0x8

.field public static final whitelist BANDWIDTH_UNDEFINED:I = 0x0

.field public static final whitelist CODERATE_10_15:I = 0x200

.field public static final whitelist CODERATE_11_15:I = 0x400

.field public static final whitelist CODERATE_12_15:I = 0x800

.field public static final whitelist CODERATE_13_15:I = 0x1000

.field public static final whitelist CODERATE_2_15:I = 0x2

.field public static final whitelist CODERATE_3_15:I = 0x4

.field public static final whitelist CODERATE_4_15:I = 0x8

.field public static final whitelist CODERATE_5_15:I = 0x10

.field public static final whitelist CODERATE_6_15:I = 0x20

.field public static final whitelist CODERATE_7_15:I = 0x40

.field public static final whitelist CODERATE_8_15:I = 0x80

.field public static final whitelist CODERATE_9_15:I = 0x100

.field public static final whitelist CODERATE_AUTO:I = 0x1

.field public static final whitelist CODERATE_UNDEFINED:I = 0x0

.field public static final whitelist DEMOD_OUTPUT_FORMAT_ATSC3_LINKLAYER_PACKET:I = 0x1

.field public static final whitelist DEMOD_OUTPUT_FORMAT_BASEBAND_PACKET:I = 0x2

.field public static final whitelist DEMOD_OUTPUT_FORMAT_UNDEFINED:I = 0x0

.field public static final whitelist FEC_AUTO:I = 0x1

.field public static final whitelist FEC_BCH_LDPC_16K:I = 0x2

.field public static final whitelist FEC_BCH_LDPC_64K:I = 0x4

.field public static final whitelist FEC_CRC_LDPC_16K:I = 0x8

.field public static final whitelist FEC_CRC_LDPC_64K:I = 0x10

.field public static final whitelist FEC_LDPC_16K:I = 0x20

.field public static final whitelist FEC_LDPC_64K:I = 0x40

.field public static final whitelist FEC_UNDEFINED:I = 0x0

.field public static final whitelist MODULATION_AUTO:I = 0x1

.field public static final whitelist MODULATION_MOD_1024QAM:I = 0x20

.field public static final whitelist MODULATION_MOD_16QAM:I = 0x4

.field public static final whitelist MODULATION_MOD_256QAM:I = 0x10

.field public static final whitelist MODULATION_MOD_4096QAM:I = 0x40

.field public static final whitelist MODULATION_MOD_64QAM:I = 0x8

.field public static final whitelist MODULATION_MOD_QPSK:I = 0x2

.field public static final whitelist MODULATION_UNDEFINED:I = 0x0

.field public static final whitelist TIME_INTERLEAVE_MODE_AUTO:I = 0x1

.field public static final whitelist TIME_INTERLEAVE_MODE_CTI:I = 0x2

.field public static final whitelist TIME_INTERLEAVE_MODE_HTI:I = 0x4

.field public static final whitelist TIME_INTERLEAVE_MODE_UNDEFINED:I


# instance fields
.field private final blacklist mBandwidth:I

.field private final blacklist mDemodOutputFormat:I

.field private final blacklist mPlpSettings:[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;


# direct methods
.method private constructor blacklist <init>(JII[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;)V
    .registers 6
    .param p1, "frequency"    # J
    .param p3, "bandwidth"    # I
    .param p4, "demodOutputFormat"    # I
    .param p5, "plpSettings"    # [Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    .line 275
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    .line 276
    iput p3, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;->mBandwidth:I

    .line 277
    iput p4, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;->mDemodOutputFormat:I

    .line 278
    iput-object p5, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;->mPlpSettings:[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    .line 279
    return-void
.end method

.method synthetic constructor blacklist <init>(JII[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;-><init>(JII[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
    .registers 2

    .line 309
    new-instance v0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getBandwidth()I
    .registers 2

    .line 286
    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;->mBandwidth:I

    return v0
.end method

.method public whitelist getDemodOutputFormat()I
    .registers 2

    .line 293
    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;->mDemodOutputFormat:I

    return v0
.end method

.method public whitelist getPlpSettings()[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;->mPlpSettings:[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 392
    const/4 v0, 0x3

    return v0
.end method

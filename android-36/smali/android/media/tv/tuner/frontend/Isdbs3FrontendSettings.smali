.class public Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "Isdbs3FrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Rolloff;,
        Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$CodeRate;,
        Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Modulation;
    }
.end annotation


# static fields
.field public static final whitelist CODERATE_1_2:I = 0x8

.field public static final whitelist CODERATE_1_3:I = 0x2

.field public static final whitelist CODERATE_2_3:I = 0x20

.field public static final whitelist CODERATE_2_5:I = 0x4

.field public static final whitelist CODERATE_3_4:I = 0x40

.field public static final whitelist CODERATE_3_5:I = 0x10

.field public static final whitelist CODERATE_4_5:I = 0x100

.field public static final whitelist CODERATE_5_6:I = 0x200

.field public static final whitelist CODERATE_7_8:I = 0x400

.field public static final whitelist CODERATE_7_9:I = 0x80

.field public static final whitelist CODERATE_9_10:I = 0x800

.field public static final whitelist CODERATE_AUTO:I = 0x1

.field public static final whitelist CODERATE_UNDEFINED:I = 0x0

.field public static final whitelist MODULATION_AUTO:I = 0x1

.field public static final whitelist MODULATION_MOD_16APSK:I = 0x10

.field public static final whitelist MODULATION_MOD_32APSK:I = 0x20

.field public static final whitelist MODULATION_MOD_8PSK:I = 0x8

.field public static final whitelist MODULATION_MOD_BPSK:I = 0x2

.field public static final whitelist MODULATION_MOD_QPSK:I = 0x4

.field public static final whitelist MODULATION_UNDEFINED:I = 0x0

.field public static final whitelist ROLLOFF_0_03:I = 0x1

.field public static final whitelist ROLLOFF_UNDEFINED:I


# instance fields
.field private final blacklist mCodeRate:I

.field private final blacklist mModulation:I

.field private final blacklist mRolloff:I

.field private final blacklist mStreamId:I

.field private final blacklist mStreamIdType:I

.field private final blacklist mSymbolRate:I


# direct methods
.method private constructor blacklist <init>(JIIIIII)V
    .registers 9
    .param p1, "frequency"    # J
    .param p3, "streamId"    # I
    .param p4, "streamIdType"    # I
    .param p5, "modulation"    # I
    .param p6, "codeRate"    # I
    .param p7, "symbolRate"    # I
    .param p8, "rolloff"    # I

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    .line 162
    iput p3, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mStreamId:I

    .line 163
    iput p4, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mStreamIdType:I

    .line 164
    iput p5, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mModulation:I

    .line 165
    iput p6, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mCodeRate:I

    .line 166
    iput p7, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mSymbolRate:I

    .line 167
    iput p8, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mRolloff:I

    .line 168
    return-void
.end method

.method synthetic constructor blacklist <init>(JIIIIIILandroid/media/tv/tuner/frontend/Isdbs3FrontendSettings-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;-><init>(JIIIIII)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2

    .line 216
    new-instance v0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getCodeRate()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mCodeRate:I

    return v0
.end method

.method public whitelist getModulation()I
    .registers 2

    .line 188
    iget v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mModulation:I

    return v0
.end method

.method public whitelist getRolloff()I
    .registers 2

    .line 208
    iget v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mRolloff:I

    return v0
.end method

.method public whitelist getStreamId()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mStreamId:I

    return v0
.end method

.method public whitelist getStreamIdType()I
    .registers 2

    .line 181
    iget v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mStreamIdType:I

    return v0
.end method

.method public whitelist getSymbolRate()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;->mSymbolRate:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 332
    const/16 v0, 0x8

    return v0
.end method

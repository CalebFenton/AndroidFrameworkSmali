.class public Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "IsdbtFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$TimeInterleaveMode;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$PartialReceptionFlag;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Bandwidth;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Mode;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Modulation;
    }
.end annotation


# static fields
.field public static final whitelist BANDWIDTH_6MHZ:I = 0x8

.field public static final whitelist BANDWIDTH_7MHZ:I = 0x4

.field public static final whitelist BANDWIDTH_8MHZ:I = 0x2

.field public static final whitelist BANDWIDTH_AUTO:I = 0x1

.field public static final whitelist BANDWIDTH_UNDEFINED:I = 0x0

.field public static final whitelist MODE_1:I = 0x2

.field public static final whitelist MODE_2:I = 0x4

.field public static final whitelist MODE_3:I = 0x8

.field public static final whitelist MODE_AUTO:I = 0x1

.field public static final whitelist MODE_UNDEFINED:I = 0x0

.field public static final whitelist MODULATION_AUTO:I = 0x1

.field public static final whitelist MODULATION_MOD_16QAM:I = 0x8

.field public static final whitelist MODULATION_MOD_64QAM:I = 0x10

.field public static final whitelist MODULATION_MOD_DQPSK:I = 0x2

.field public static final whitelist MODULATION_MOD_QPSK:I = 0x4

.field public static final whitelist MODULATION_UNDEFINED:I = 0x0

.field public static final whitelist PARTIAL_RECEPTION_FLAG_FALSE:I = 0x2

.field public static final whitelist PARTIAL_RECEPTION_FLAG_TRUE:I = 0x4

.field public static final whitelist PARTIAL_RECEPTION_FLAG_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IsdbtFrontendSettings"

.field public static final whitelist TIME_INTERLEAVE_MODE_1_0:I = 0x2

.field public static final whitelist TIME_INTERLEAVE_MODE_1_16:I = 0x10

.field public static final whitelist TIME_INTERLEAVE_MODE_1_4:I = 0x4

.field public static final whitelist TIME_INTERLEAVE_MODE_1_8:I = 0x8

.field public static final whitelist TIME_INTERLEAVE_MODE_2_0:I = 0x20

.field public static final whitelist TIME_INTERLEAVE_MODE_2_2:I = 0x40

.field public static final whitelist TIME_INTERLEAVE_MODE_2_4:I = 0x80

.field public static final whitelist TIME_INTERLEAVE_MODE_2_8:I = 0x100

.field public static final whitelist TIME_INTERLEAVE_MODE_3_0:I = 0x200

.field public static final whitelist TIME_INTERLEAVE_MODE_3_1:I = 0x400

.field public static final whitelist TIME_INTERLEAVE_MODE_3_2:I = 0x800

.field public static final whitelist TIME_INTERLEAVE_MODE_3_4:I = 0x1000

.field public static final whitelist TIME_INTERLEAVE_MODE_AUTO:I = 0x1

.field public static final whitelist TIME_INTERLEAVE_MODE_UNDEFINED:I


# instance fields
.field private final blacklist mBandwidth:I

.field private final blacklist mGuardInterval:I

.field private final blacklist mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

.field private final blacklist mMode:I

.field private final blacklist mPartialReceptionFlag:I

.field private final blacklist mServiceAreaId:I


# direct methods
.method private constructor blacklist <init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;I)V
    .registers 12
    .param p1, "frequency"    # J
    .param p3, "bandwidth"    # I
    .param p4, "mode"    # I
    .param p5, "guardInterval"    # I
    .param p6, "serviceAreaId"    # I
    .param p7, "layerSettings"    # [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;
    .param p8, "partialReceptionFlag"    # I

    .line 242
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    .line 243
    iput p3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mBandwidth:I

    .line 244
    iput p4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mMode:I

    .line 245
    iput p5, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mGuardInterval:I

    .line 246
    iput p6, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mServiceAreaId:I

    .line 247
    array-length v0, p7

    new-array v0, v0, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v1, p7

    if-ge v0, v1, :cond_1d

    .line 249
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object v2, p7, v0

    aput-object v2, v1, v0

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 251
    .end local v0    # "i":I
    :cond_1d
    iput p8, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mPartialReceptionFlag:I

    .line 252
    return-void
.end method

.method synthetic constructor blacklist <init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;ILandroid/media/tv/tuner/frontend/IsdbtFrontendSettings-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;-><init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;I)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 2

    .line 345
    new-instance v0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getBandwidth()I
    .registers 2

    .line 276
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mBandwidth:I

    return v0
.end method

.method public whitelist getCodeRate()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    const/high16 v0, 0x20000

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 298
    return v1

    .line 300
    :cond_a
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v0, v0

    if-lez v0, :cond_18

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getCodeRate()I

    move-result v1

    goto :goto_19

    .line 301
    :cond_18
    nop

    .line 300
    :goto_19
    return v1
.end method

.method public whitelist getGuardInterval()I
    .registers 2

    .line 308
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mGuardInterval:I

    return v0
.end method

.method public whitelist getLayerSettings()[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;
    .registers 2

    .line 326
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    return-object v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mMode:I

    return v0
.end method

.method public whitelist getModulation()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    const/high16 v0, 0x20000

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 267
    return v1

    .line 269
    :cond_a
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v0, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getModulation()I

    move-result v1

    :cond_17
    return v1
.end method

.method public whitelist getPartialReceptionFlag()I
    .registers 2

    .line 337
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mPartialReceptionFlag:I

    return v0
.end method

.method public whitelist getServiceAreaId()I
    .registers 2

    .line 314
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mServiceAreaId:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 533
    const/16 v0, 0x9

    return v0
.end method

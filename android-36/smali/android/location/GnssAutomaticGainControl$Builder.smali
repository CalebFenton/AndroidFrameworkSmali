.class public final Landroid/location/GnssAutomaticGainControl$Builder;
.super Ljava/lang/Object;
.source "GnssAutomaticGainControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAutomaticGainControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierFrequencyHz:J

.field private blacklist mConstellationType:I

.field private blacklist mLevelDb:D


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/GnssAutomaticGainControl;)V
    .registers 4
    .param p1, "agc"    # Landroid/location/GnssAutomaticGainControl;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p1}, Landroid/location/GnssAutomaticGainControl;->getLevelDb()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mLevelDb:D

    .line 177
    invoke-virtual {p1}, Landroid/location/GnssAutomaticGainControl;->getConstellationType()I

    move-result v0

    iput v0, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mConstellationType:I

    .line 178
    invoke-virtual {p1}, Landroid/location/GnssAutomaticGainControl;->getCarrierFrequencyHz()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mCarrierFrequencyHz:J

    .line 179
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssAutomaticGainControl;
    .registers 8

    .line 212
    new-instance v0, Landroid/location/GnssAutomaticGainControl;

    iget-wide v1, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mLevelDb:D

    iget v3, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mConstellationType:I

    iget-wide v4, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mCarrierFrequencyHz:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssAutomaticGainControl;-><init>(DIJLandroid/location/GnssAutomaticGainControl-IA;)V

    return-object v0
.end method

.method public whitelist setCarrierFrequencyHz(J)Landroid/location/GnssAutomaticGainControl$Builder;
    .registers 3
    .param p1, "carrierFrequencyHz"    # J

    .line 204
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 205
    iput-wide p1, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mCarrierFrequencyHz:J

    .line 206
    return-object p0
.end method

.method public whitelist setConstellationType(I)Landroid/location/GnssAutomaticGainControl$Builder;
    .registers 2
    .param p1, "constellationType"    # I

    .line 196
    iput p1, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mConstellationType:I

    .line 197
    return-object p0
.end method

.method public whitelist setLevelDb(D)Landroid/location/GnssAutomaticGainControl$Builder;
    .registers 5
    .param p1, "levelDb"    # D

    .line 186
    const-wide v0, -0x3f3c780000000000L    # -10000.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_14

    const-wide v0, 0x40c3880000000000L    # 10000.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 187
    iput-wide p1, p0, Landroid/location/GnssAutomaticGainControl$Builder;->mLevelDb:D

    .line 188
    return-object p0
.end method

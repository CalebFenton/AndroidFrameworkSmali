.class public Landroid/media/tv/tuner/dvr/DvrSettings;
.super Ljava/lang/Object;
.source "DvrSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/dvr/DvrSettings$Builder;,
        Landroid/media/tv/tuner/dvr/DvrSettings$DataFormat;
    }
.end annotation


# static fields
.field public static final whitelist DATA_FORMAT_ES:I = 0x2

.field public static final whitelist DATA_FORMAT_PES:I = 0x1

.field public static final whitelist DATA_FORMAT_SHV_TLV:I = 0x3

.field public static final whitelist DATA_FORMAT_TS:I


# instance fields
.field private final blacklist mDataFormat:I

.field private final blacklist mHighThreshold:J

.field private final blacklist mLowThreshold:J

.field private final blacklist mPacketSize:J

.field private final blacklist mStatusMask:I


# direct methods
.method private constructor blacklist <init>(IJJJI)V
    .registers 9
    .param p1, "statusMask"    # I
    .param p2, "lowThreshold"    # J
    .param p4, "highThreshold"    # J
    .param p6, "packetSize"    # J
    .param p8, "dataFormat"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mStatusMask:I

    .line 75
    iput-wide p2, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mLowThreshold:J

    .line 76
    iput-wide p4, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mHighThreshold:J

    .line 77
    iput-wide p6, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mPacketSize:J

    .line 78
    iput p8, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mDataFormat:I

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(IJJJILandroid/media/tv/tuner/dvr/DvrSettings-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/tuner/dvr/DvrSettings;-><init>(IJJJI)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .registers 1

    .line 126
    new-instance v0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;

    invoke-direct {v0}, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist getDataFormat()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mDataFormat:I

    return v0
.end method

.method public whitelist getHighThreshold()J
    .registers 3

    .line 102
    iget-wide v0, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mHighThreshold:J

    return-wide v0
.end method

.method public whitelist getLowThreshold()J
    .registers 3

    .line 94
    iget-wide v0, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mLowThreshold:J

    return-wide v0
.end method

.method public whitelist getPacketSize()J
    .registers 3

    .line 110
    iget-wide v0, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mPacketSize:J

    return-wide v0
.end method

.method public whitelist getStatusMask()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/media/tv/tuner/dvr/DvrSettings;->mStatusMask:I

    return v0
.end method

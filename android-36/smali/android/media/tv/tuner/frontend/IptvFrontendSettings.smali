.class public final Landroid/media/tv/tuner/frontend/IptvFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "IptvFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Igmp;,
        Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Protocol;
    }
.end annotation


# static fields
.field public static final whitelist IGMP_UNDEFINED:I = 0x0

.field public static final whitelist IGMP_V1:I = 0x1

.field public static final whitelist IGMP_V2:I = 0x2

.field public static final whitelist IGMP_V3:I = 0x4

.field public static final whitelist PROTOCOL_RTP:I = 0x2

.field public static final whitelist PROTOCOL_UDP:I = 0x1

.field public static final whitelist PROTOCOL_UNDEFINED:I


# instance fields
.field private final blacklist mBitrate:J

.field private final blacklist mContentUrl:Ljava/lang/String;

.field private final blacklist mDstIpAddress:[B

.field private final blacklist mDstPort:I

.field private final blacklist mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

.field private final blacklist mIgmp:I

.field private final blacklist mProtocol:I

.field private final blacklist mSrcIpAddress:[B

.field private final blacklist mSrcPort:I


# direct methods
.method private constructor blacklist <init>([B[BIILandroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;IIJLjava/lang/String;)V
    .registers 13
    .param p1, "srcIpAddress"    # [B
    .param p2, "dstIpAddress"    # [B
    .param p3, "srcPort"    # I
    .param p4, "dstPort"    # I
    .param p5, "fec"    # Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;
    .param p6, "protocol"    # I
    .param p7, "igmp"    # I
    .param p8, "bitrate"    # J
    .param p10, "contentUrl"    # Ljava/lang/String;

    .line 98
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    .line 99
    iput-object p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mSrcIpAddress:[B

    .line 100
    iput-object p2, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mDstIpAddress:[B

    .line 101
    iput p3, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mSrcPort:I

    .line 102
    iput p4, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mDstPort:I

    .line 103
    iput-object p5, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    .line 104
    iput p6, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mProtocol:I

    .line 105
    iput p7, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mIgmp:I

    .line 106
    iput-wide p8, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mBitrate:J

    .line 107
    iput-object p10, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mContentUrl:Ljava/lang/String;

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>([B[BIILandroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;IIJLjava/lang/String;Landroid/media/tv/tuner/frontend/IptvFrontendSettings-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;-><init>([B[BIILandroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist getBitrate()J
    .registers 3

    .line 171
    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mBitrate:J

    return-wide v0
.end method

.method public whitelist getContentUrl()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mContentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDstIpAddress()[B
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mDstIpAddress:[B

    return-object v0
.end method

.method public whitelist getDstPort()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mDstPort:I

    return v0
.end method

.method public whitelist getFec()Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    return-object v0
.end method

.method public whitelist getIgmp()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mIgmp:I

    return v0
.end method

.method public whitelist getProtocol()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mProtocol:I

    return v0
.end method

.method public whitelist getSrcIpAddress()[B
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mSrcIpAddress:[B

    return-object v0
.end method

.method public whitelist getSrcPort()I
    .registers 2

    .line 132
    iget v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mSrcPort:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 311
    const/16 v0, 0xb

    return v0
.end method

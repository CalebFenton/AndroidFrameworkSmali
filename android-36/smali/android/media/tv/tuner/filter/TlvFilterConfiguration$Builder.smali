.class public final Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
.super Ljava/lang/Object;
.source "TlvFilterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/TlvFilterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsCompressedIpPacket:Z

.field private blacklist mPacketType:I

.field private blacklist mPassthrough:Z

.field private blacklist mSettings:Landroid/media/tv/tuner/filter/Settings;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/16 v0, 0xff

    iput v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPacketType:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mIsCompressedIpPacket:Z

    .line 108
    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPassthrough:Z

    .line 112
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/filter/TlvFilterConfiguration-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/filter/TlvFilterConfiguration;
    .registers 7

    .line 160
    new-instance v0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;

    iget-object v1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    iget v2, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPacketType:I

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mIsCompressedIpPacket:Z

    iget-boolean v4, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPassthrough:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;IZZLandroid/media/tv/tuner/filter/TlvFilterConfiguration-IA;)V

    return-object v0
.end method

.method public whitelist setCompressedIpPacket(Z)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .registers 2
    .param p1, "isCompressedIpPacket"    # Z

    .line 132
    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mIsCompressedIpPacket:Z

    .line 133
    return-object p0
.end method

.method public whitelist setPacketType(I)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .registers 2
    .param p1, "packetType"    # I

    .line 122
    iput p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPacketType:I

    .line 123
    return-object p0
.end method

.method public whitelist setPassthrough(Z)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .registers 2
    .param p1, "passthrough"    # Z

    .line 142
    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPassthrough:Z

    .line 143
    return-object p0
.end method

.method public whitelist setSettings(Landroid/media/tv/tuner/filter/Settings;)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .registers 2
    .param p1, "settings"    # Landroid/media/tv/tuner/filter/Settings;

    .line 151
    iput-object p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    .line 152
    return-object p0
.end method

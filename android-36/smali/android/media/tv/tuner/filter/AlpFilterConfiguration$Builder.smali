.class public final Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
.super Ljava/lang/Object;
.source "AlpFilterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/AlpFilterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLengthType:I

.field private blacklist mPacketType:I

.field private blacklist mSettings:Landroid/media/tv/tuner/filter/Settings;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mPacketType:I

    .line 122
    iput v0, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mLengthType:I

    .line 126
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/filter/AlpFilterConfiguration-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/filter/AlpFilterConfiguration;
    .registers 6

    .line 164
    new-instance v0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration;

    iget-object v1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    iget v2, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mPacketType:I

    iget v3, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mLengthType:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/tuner/filter/AlpFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;IILandroid/media/tv/tuner/filter/AlpFilterConfiguration-IA;)V

    return-object v0
.end method

.method public whitelist setLengthType(I)Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
    .registers 2
    .param p1, "lengthType"    # I

    .line 146
    iput p1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mLengthType:I

    .line 147
    return-object p0
.end method

.method public whitelist setPacketType(I)Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
    .registers 2
    .param p1, "packetType"    # I

    .line 136
    iput p1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mPacketType:I

    .line 137
    return-object p0
.end method

.method public whitelist setSettings(Landroid/media/tv/tuner/filter/Settings;)Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
    .registers 2
    .param p1, "settings"    # Landroid/media/tv/tuner/filter/Settings;

    .line 155
    iput-object p1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    .line 156
    return-object p0
.end method

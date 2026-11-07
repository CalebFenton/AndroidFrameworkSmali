.class public final Landroid/media/tv/tuner/filter/MmtpFilterConfiguration;
.super Landroid/media/tv/tuner/filter/FilterConfiguration;
.source "MmtpFilterConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/MmtpFilterConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mMmtpPid:I


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/tuner/filter/Settings;I)V
    .registers 3
    .param p1, "settings"    # Landroid/media/tv/tuner/filter/Settings;
    .param p2, "mmtpPid"    # I

    .line 34
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;)V

    .line 35
    iput p2, p0, Landroid/media/tv/tuner/filter/MmtpFilterConfiguration;->mMmtpPid:I

    .line 36
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/filter/Settings;ILandroid/media/tv/tuner/filter/MmtpFilterConfiguration-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/filter/MmtpFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;I)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/filter/MmtpFilterConfiguration$Builder;
    .registers 2

    .line 57
    new-instance v0, Landroid/media/tv/tuner/filter/MmtpFilterConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/filter/MmtpFilterConfiguration$Builder;-><init>(Landroid/media/tv/tuner/filter/MmtpFilterConfiguration-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getMmtpPacketId()I
    .registers 2

    .line 49
    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpFilterConfiguration;->mMmtpPid:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 40
    const/4 v0, 0x2

    return v0
.end method

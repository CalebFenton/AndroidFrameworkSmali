.class public final Landroid/media/tv/tuner/filter/TsFilterConfiguration;
.super Landroid/media/tv/tuner/filter/FilterConfiguration;
.source "TsFilterConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mTpid:I


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/tuner/filter/Settings;I)V
    .registers 3
    .param p1, "settings"    # Landroid/media/tv/tuner/filter/Settings;
    .param p2, "tpid"    # I

    .line 33
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;)V

    .line 34
    iput p2, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration;->mTpid:I

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/filter/Settings;ILandroid/media/tv/tuner/filter/TsFilterConfiguration-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/filter/TsFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;I)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;
    .registers 2

    .line 54
    new-instance v0, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;-><init>(Landroid/media/tv/tuner/filter/TsFilterConfiguration-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getTpid()I
    .registers 2

    .line 46
    iget v0, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration;->mTpid:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 39
    const/4 v0, 0x1

    return v0
.end method

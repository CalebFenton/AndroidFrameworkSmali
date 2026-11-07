.class public final Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;
.super Ljava/lang/Object;
.source "TsFilterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/TsFilterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mSettings:Landroid/media/tv/tuner/filter/Settings;

.field private blacklist mTpid:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;->mTpid:I

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/filter/TsFilterConfiguration-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/filter/TsFilterConfiguration;
    .registers 5

    .line 94
    new-instance v0, Landroid/media/tv/tuner/filter/TsFilterConfiguration;

    iget-object v1, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    iget v2, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;->mTpid:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/tv/tuner/filter/TsFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;ILandroid/media/tv/tuner/filter/TsFilterConfiguration-IA;)V

    return-object v0
.end method

.method public whitelist setSettings(Landroid/media/tv/tuner/filter/Settings;)Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;
    .registers 2
    .param p1, "settings"    # Landroid/media/tv/tuner/filter/Settings;

    .line 85
    iput-object p1, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    .line 86
    return-object p0
.end method

.method public whitelist setTpid(I)Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;
    .registers 2
    .param p1, "tpid"    # I

    .line 76
    iput p1, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;->mTpid:I

    .line 77
    return-object p0
.end method

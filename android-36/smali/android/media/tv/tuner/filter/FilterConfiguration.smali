.class public abstract Landroid/media/tv/tuner/filter/FilterConfiguration;
.super Ljava/lang/Object;
.source "FilterConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field final blacklist mSettings:Landroid/media/tv/tuner/filter/Settings;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/tuner/filter/Settings;)V
    .registers 2
    .param p1, "settings"    # Landroid/media/tv/tuner/filter/Settings;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/media/tv/tuner/filter/FilterConfiguration;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist getSettings()Landroid/media/tv/tuner/filter/Settings;
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/media/tv/tuner/filter/FilterConfiguration;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    return-object v0
.end method

.method public abstract whitelist getType()I
.end method

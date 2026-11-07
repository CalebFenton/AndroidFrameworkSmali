.class public final Landroid/media/tv/tuner/filter/ScramblingStatusEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "ScramblingStatusEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mScramblingStatus:I


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 2
    .param p1, "scramblingStatus"    # I

    .line 33
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    .line 34
    iput p1, p0, Landroid/media/tv/tuner/filter/ScramblingStatusEvent;->mScramblingStatus:I

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist getScramblingStatus()I
    .registers 2

    .line 45
    iget v0, p0, Landroid/media/tv/tuner/filter/ScramblingStatusEvent;->mScramblingStatus:I

    return v0
.end method

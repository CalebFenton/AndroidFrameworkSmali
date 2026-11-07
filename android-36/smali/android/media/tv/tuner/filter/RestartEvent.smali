.class public final Landroid/media/tv/tuner/filter/RestartEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "RestartEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist NEW_FILTER_FIRST_START_ID:I


# instance fields
.field private final blacklist mStartId:I


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 2
    .param p1, "startId"    # I

    .line 48
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    .line 49
    iput p1, p0, Landroid/media/tv/tuner/filter/RestartEvent;->mStartId:I

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist getStartId()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/media/tv/tuner/filter/RestartEvent;->mStartId:I

    return v0
.end method

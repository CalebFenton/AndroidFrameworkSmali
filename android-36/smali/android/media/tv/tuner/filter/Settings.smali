.class public abstract Landroid/media/tv/tuner/filter/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/media/tv/tuner/filter/Settings;->mType:I

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist getType()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/media/tv/tuner/filter/Settings;->mType:I

    return v0
.end method

.class public Landroid/media/tv/tuner/filter/IpPayloadEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "IpPayloadEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDataLength:I


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 2
    .param p1, "dataLength"    # I

    .line 31
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    .line 32
    iput p1, p0, Landroid/media/tv/tuner/filter/IpPayloadEvent;->mDataLength:I

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist getDataLength()I
    .registers 2

    .line 39
    iget v0, p0, Landroid/media/tv/tuner/filter/IpPayloadEvent;->mDataLength:I

    return v0
.end method

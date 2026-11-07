.class public Landroid/media/tv/tuner/DemuxInfo;
.super Ljava/lang/Object;
.source "DemuxInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mFilterTypes:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "filterTypes"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Landroid/media/tv/tuner/DemuxInfo;->setFilterTypes(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist getFilterTypes()I
    .registers 2

    .line 43
    iget v0, p0, Landroid/media/tv/tuner/DemuxInfo;->mFilterTypes:I

    return v0
.end method

.method public whitelist setFilterTypes(I)V
    .registers 2
    .param p1, "filterTypes"    # I

    .line 52
    iput p1, p0, Landroid/media/tv/tuner/DemuxInfo;->mFilterTypes:I

    .line 53
    return-void
.end method

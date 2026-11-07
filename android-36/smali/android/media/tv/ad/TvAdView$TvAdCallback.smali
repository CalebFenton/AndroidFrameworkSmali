.class public abstract Landroid/media/tv/ad/TvAdView$TvAdCallback;
.super Ljava/lang/Object;
.source "TvAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvAdCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRequestCurrentChannelUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 909
    return-void
.end method

.method public whitelist onRequestCurrentTvInputId(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 925
    return-void
.end method

.method public whitelist onRequestCurrentVideoBounds(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 900
    return-void
.end method

.method public whitelist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "signingId"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .line 941
    return-void
.end method

.method public whitelist onRequestTrackInfoList(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 917
    return-void
.end method

.method public whitelist onStateChanged(Ljava/lang/String;II)V
    .registers 4
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "err"    # I

    .line 956
    return-void
.end method

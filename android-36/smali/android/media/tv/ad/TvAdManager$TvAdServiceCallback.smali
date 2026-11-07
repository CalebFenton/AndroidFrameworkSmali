.class public abstract Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;
.super Ljava/lang/Object;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvAdServiceCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAdServiceAdded(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 1247
    return-void
.end method

.method public whitelist onAdServiceRemoved(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 1258
    return-void
.end method

.method public whitelist onAdServiceUpdated(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 1269
    return-void
.end method

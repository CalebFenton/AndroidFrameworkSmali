.class public interface abstract Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;
.super Ljava/lang/Object;
.source "Spatializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnHeadTrackingModeChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onDesiredHeadTrackingModeChanged(Landroid/media/Spatializer;I)V
.end method

.method public abstract whitelist onHeadTrackingModeChanged(Landroid/media/Spatializer;I)V
.end method

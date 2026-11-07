.class public interface abstract Landroid/location/GpsNavigationMessageEvent$Listener;
.super Ljava/lang/Object;
.source "GpsNavigationMessageEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsNavigationMessageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract whitelist onGpsNavigationMessageReceived(Landroid/location/GpsNavigationMessageEvent;)V
.end method

.method public abstract whitelist onStatusChanged(I)V
.end method

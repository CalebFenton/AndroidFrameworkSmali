.class public interface abstract Landroid/provider/DeviceConfig$MonitorCallback;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MonitorCallback"
.end annotation


# virtual methods
.method public abstract whitelist onDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onNamespaceUpdate(Ljava/lang/String;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

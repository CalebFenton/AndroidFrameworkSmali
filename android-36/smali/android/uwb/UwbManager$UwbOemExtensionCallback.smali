.class public interface abstract Landroid/uwb/UwbManager$UwbOemExtensionCallback;
.super Ljava/lang/Object;
.source "UwbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/UwbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UwbOemExtensionCallback"
.end annotation


# virtual methods
.method public abstract whitelist onCheckPointedTarget(Landroid/os/PersistableBundle;)Z
.end method

.method public abstract whitelist onDeviceStatusNotificationReceived(Landroid/os/PersistableBundle;)V
.end method

.method public abstract whitelist onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;
.end method

.method public abstract whitelist onSessionConfigurationComplete(Landroid/os/PersistableBundle;)I
.end method

.method public abstract whitelist onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V
.end method

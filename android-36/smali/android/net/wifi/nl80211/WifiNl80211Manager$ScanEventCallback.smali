.class public interface abstract Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;
.super Ljava/lang/Object;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScanEventCallback"
.end annotation


# virtual methods
.method public abstract whitelist onScanFailed()V
.end method

.method public whitelist onScanFailed(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 155
    return-void
.end method

.method public abstract whitelist onScanResultReady()V
.end method

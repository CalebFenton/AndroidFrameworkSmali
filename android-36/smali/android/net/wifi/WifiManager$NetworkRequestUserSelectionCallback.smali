.class public interface abstract Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkRequestUserSelectionCallback"
.end annotation


# virtual methods
.method public whitelist reject()V
    .registers 1

    .line 3107
    return-void
.end method

.method public whitelist select(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .line 3101
    return-void
.end method

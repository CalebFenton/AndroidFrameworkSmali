.class public interface abstract Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;
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
    name = "WifiNetworkStateChangedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener$WifiNetworkState;,
        Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener$WifiClientModeRole;
    }
.end annotation


# static fields
.field public static final whitelist WIFI_NETWORK_STATUS_AUTHENTICATING:I = 0x4

.field public static final whitelist WIFI_NETWORK_STATUS_CONNECTED:I = 0x6

.field public static final whitelist WIFI_NETWORK_STATUS_CONNECTING:I = 0x3

.field public static final whitelist WIFI_NETWORK_STATUS_DISCONNECTED:I = 0x7

.field public static final whitelist WIFI_NETWORK_STATUS_FAILED:I = 0x8

.field public static final whitelist WIFI_NETWORK_STATUS_IDLE:I = 0x1

.field public static final whitelist WIFI_NETWORK_STATUS_OBTAINING_IPADDR:I = 0x5

.field public static final whitelist WIFI_NETWORK_STATUS_SCANNING:I = 0x2

.field public static final whitelist WIFI_ROLE_CLIENT_PRIMARY:I = 0x1

.field public static final whitelist WIFI_ROLE_CLIENT_SECONDARY_INTERNET:I = 0x2

.field public static final whitelist WIFI_ROLE_CLIENT_SECONDARY_LOCAL_ONLY:I = 0x3


# virtual methods
.method public abstract whitelist onWifiNetworkStateChanged(II)V
.end method

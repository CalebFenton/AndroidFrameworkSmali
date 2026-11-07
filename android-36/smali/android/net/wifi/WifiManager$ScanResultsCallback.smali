.class public abstract Landroid/net/wifi/WifiManager$ScanResultsCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ScanResultsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;
    }
.end annotation


# instance fields
.field private final blacklist mScanResultsCallbackProxy:Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 9865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9866
    new-instance v0, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;

    invoke-direct {v0}, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback;->mScanResultsCallbackProxy:Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;

    .line 9867
    return-void
.end method


# virtual methods
.method blacklist getProxy()Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;
    .registers 2

    .line 9876
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ScanResultsCallback;->mScanResultsCallbackProxy:Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;

    return-object v0
.end method

.method public abstract whitelist onScanResultsAvailable()V
.end method

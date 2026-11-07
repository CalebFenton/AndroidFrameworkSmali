.class public final Landroid/net/wifi/p2p/WifiP2pExtListenParams$Builder;
.super Ljava/lang/Object;
.source "WifiP2pExtListenParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pExtListenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pExtListenParams$Builder;->mVendorData:Ljava/util/List;

    .line 116
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/p2p/WifiP2pExtListenParams;
    .registers 4

    .line 146
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pExtListenParams;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pExtListenParams$Builder;->mVendorData:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pExtListenParams;-><init>(Ljava/util/List;Landroid/net/wifi/p2p/WifiP2pExtListenParams-IA;)V

    return-object v0
.end method

.method public whitelist setVendorData(Ljava/util/List;)Landroid/net/wifi/p2p/WifiP2pExtListenParams$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)",
            "Landroid/net/wifi/p2p/WifiP2pExtListenParams$Builder;"
        }
    .end annotation

    .line 130
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 133
    if-eqz p1, :cond_b

    .line 136
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pExtListenParams$Builder;->mVendorData:Ljava/util/List;

    .line 137
    return-object p0

    .line 134
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

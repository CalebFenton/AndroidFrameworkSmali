.class final Lcom/android/server/wifi/WifiConfigManager$2;
.super Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1062
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;-><init>(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)V

    #@4
    return-void
.end method


# virtual methods
.method public compareConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1066
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    #@7
    move-result v0

    #@8
    .line 1068
    .local v0, "isConfigALastSeen":Z
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    #@f
    move-result v1

    #@10
    .line 1069
    .local v1, "isConfigBLastSeen":Z
    if-eq v0, v1, :cond_0

    #@12
    .line 1070
    invoke-static {v1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 1072
    :cond_0
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@19
    int-to-long v2, v2

    #@1a
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@1c
    int-to-long v4, v4

    #@1d
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    #@20
    move-result v2

    #@21
    return v2
.end method

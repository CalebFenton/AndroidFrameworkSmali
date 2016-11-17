.class Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PnoListComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field public final ENABLED_NETWORK_SCORE:I

.field public final PERMANENTLY_DISABLED_NETWORK_SCORE:I

.field public final TEMPORARY_DISABLED_NETWORK_SCORE:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 997
    const/4 v0, 0x3

    #@4
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->ENABLED_NETWORK_SCORE:I

    #@6
    .line 998
    const/4 v0, 0x2

    #@7
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->TEMPORARY_DISABLED_NETWORK_SCORE:I

    #@9
    .line 999
    const/4 v0, 0x1

    #@a
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->PERMANENTLY_DISABLED_NETWORK_SCORE:I

    #@c
    .line 995
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;-><init>()V

    #@3
    return-void
.end method

.method private getPnoNetworkSortScore(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1023
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1024
    const/4 v0, 0x3

    #@b
    return v0

    #@c
    .line 1025
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1026
    const/4 v0, 0x2

    #@17
    return v0

    #@18
    .line 1028
    :cond_1
    const/4 v0, 0x1

    #@19
    return v0
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1003
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->getPnoNetworkSortScore(Landroid/net/wifi/WifiConfiguration;)I

    #@3
    move-result v0

    #@4
    .line 1004
    .local v0, "configAScore":I
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->getPnoNetworkSortScore(Landroid/net/wifi/WifiConfiguration;)I

    #@7
    move-result v1

    #@8
    .line 1005
    .local v1, "configBScore":I
    if-ne v0, v1, :cond_0

    #@a
    .line 1006
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->compareConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 1008
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    #@12
    move-result v2

    #@13
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1002
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    #@2
    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    #@4
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compareConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1014
    const/4 v0, 0x0

    #@1
    return v0
.end method

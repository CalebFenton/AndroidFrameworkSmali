.class final Lcom/android/server/wifi/WifiConfigManager$1;
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
    .line 1029
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;-><init>(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)V

    #@4
    return-void
.end method


# virtual methods
.method public compareConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1032
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@2
    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 1033
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@8
    int-to-long v0, v0

    #@9
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@b
    int-to-long v2, v2

    #@c
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 1035
    :cond_0
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@13
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@15
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    #@18
    move-result v0

    #@19
    return v0
.end method

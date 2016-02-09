.class Lcom/android/server/wifi/ScanDetailCache$2;
.super Ljava/lang/Object;
.source "ScanDetailCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ScanDetailCache;->sort()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ScanDetailCache;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScanDetailCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/ScanDetailCache;

    #@0
    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetailCache$2;->this$0:Lcom/android/server/wifi/ScanDetailCache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, -0x1

    #@2
    .line 120
    check-cast p1, Lcom/android/server/wifi/ScanDetail;

    #@4
    .end local p1    # "o1":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@7
    move-result-object v0

    #@8
    .line 121
    .local v0, "a":Landroid/net/wifi/ScanResult;
    check-cast p2, Lcom/android/server/wifi/ScanDetail;

    #@a
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@d
    move-result-object v1

    #@e
    .line 122
    .local v1, "b":Landroid/net/wifi/ScanResult;
    iget v2, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@10
    iget v3, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@12
    if-le v2, v3, :cond_0

    #@14
    .line 123
    return v7

    #@15
    .line 125
    :cond_0
    iget v2, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@17
    iget v3, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@19
    if-ge v2, v3, :cond_1

    #@1b
    .line 126
    return v6

    #@1c
    .line 128
    :cond_1
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    #@1e
    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    #@20
    cmp-long v2, v2, v4

    #@22
    if-lez v2, :cond_2

    #@24
    .line 129
    return v6

    #@25
    .line 131
    :cond_2
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    #@27
    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    #@29
    cmp-long v2, v2, v4

    #@2b
    if-gez v2, :cond_3

    #@2d
    .line 132
    return v7

    #@2e
    .line 134
    :cond_3
    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    #@30
    iget v3, v1, Landroid/net/wifi/ScanResult;->level:I

    #@32
    if-le v2, v3, :cond_4

    #@34
    .line 135
    return v6

    #@35
    .line 137
    :cond_4
    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    #@37
    iget v3, v1, Landroid/net/wifi/ScanResult;->level:I

    #@39
    if-ge v2, v3, :cond_5

    #@3b
    .line 138
    return v7

    #@3c
    .line 140
    :cond_5
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@3e
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@43
    move-result v2

    #@44
    return v2
.end method

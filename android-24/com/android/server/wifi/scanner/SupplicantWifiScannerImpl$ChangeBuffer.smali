.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeBuffer"
.end annotation


# static fields
.field public static EVENT_FOUND:I

.field public static EVENT_LOST:I

.field public static EVENT_NONE:I

.field public static STATE_FOUND:I


# instance fields
.field private mApLostThreshold:I

.field private mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

.field private mFiredEvents:Z

.field private mLostCount:[I

.field private mMinEvents:I

.field private mMostRecentResult:[Landroid/net/wifi/ScanResult;

.field private mPendingEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 867
    sput v1, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    #@3
    .line 868
    const/4 v0, 0x1

    #@4
    sput v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    #@6
    .line 869
    const/4 v0, 0x2

    #@7
    sput v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    #@9
    .line 871
    sput v1, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->STATE_FOUND:I

    #@b
    .line 866
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 873
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@6
    .line 876
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@8
    .line 877
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMostRecentResult:[Landroid/net/wifi/ScanResult;

    #@a
    .line 878
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@c
    .line 879
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mFiredEvents:Z

    #@f
    .line 866
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;-><init>()V

    #@3
    return-void
.end method

.method private static findResult(Ljava/util/List;Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    #@0
    .prologue
    .line 882
    .local p0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 883
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/net/wifi/ScanResult;

    #@d
    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 884
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/net/wifi/ScanResult;

    #@1b
    return-object v1

    #@1c
    .line 882
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 887
    :cond_1
    const/4 v1, 0x0

    #@20
    return-object v1
.end method


# virtual methods
.method public clearSettings()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 913
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->setSettings([Landroid/net/wifi/WifiScanner$BssidInfo;II)V

    #@5
    .line 912
    return-void
.end method

.method public getLastResults(I)[Landroid/net/wifi/ScanResult;
    .locals 3
    .param p1, "event"    # I

    #@0
    .prologue
    .line 921
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 922
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@8
    array-length v2, v2

    #@9
    if-ge v0, v2, :cond_1

    #@b
    .line 923
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@d
    aget v2, v2, v0

    #@f
    if-ne v2, p1, :cond_0

    #@11
    .line 924
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMostRecentResult:[Landroid/net/wifi/ScanResult;

    #@13
    aget-object v2, v2, v0

    #@15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 922
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 927
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v2

    #@1f
    new-array v2, v2, [Landroid/net/wifi/ScanResult;

    #@21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, [Landroid/net/wifi/ScanResult;

    #@27
    return-object v2
.end method

.method public processScan(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 936
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@2
    if-nez v5, :cond_0

    #@4
    .line 937
    sget v5, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    #@6
    return v5

    #@7
    .line 941
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mFiredEvents:Z

    #@9
    if-eqz v5, :cond_1

    #@b
    .line 942
    const/4 v5, 0x0

    #@c
    iput-boolean v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mFiredEvents:Z

    #@e
    .line 943
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@11
    array-length v5, v5

    #@12
    if-ge v2, v5, :cond_1

    #@14
    .line 944
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@16
    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    #@18
    aput v6, v5, v2

    #@1a
    .line 943
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 948
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    #@1e
    .line 949
    .local v0, "eventCount":I
    sget v1, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    #@20
    .line 950
    .local v1, "eventType":I
    const/4 v2, 0x0

    #@21
    .restart local v2    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@23
    array-length v5, v5

    #@24
    if-ge v2, v5, :cond_9

    #@26
    .line 951
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@28
    aget-object v5, v5, v2

    #@2a
    iget-object v5, v5, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@2c
    invoke-static {p1, v5}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->findResult(Ljava/util/List;Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    #@2f
    move-result-object v3

    #@30
    .line 952
    .local v3, "result":Landroid/net/wifi/ScanResult;
    const/high16 v4, -0x80000000

    #@32
    .line 953
    .local v4, "rssi":I
    if-eqz v3, :cond_2

    #@34
    .line 954
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMostRecentResult:[Landroid/net/wifi/ScanResult;

    #@36
    aput-object v3, v5, v2

    #@38
    .line 955
    iget v4, v3, Landroid/net/wifi/ScanResult;->level:I

    #@3a
    .line 958
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@3c
    aget-object v5, v5, v2

    #@3e
    iget v5, v5, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    #@40
    if-ge v4, v5, :cond_6

    #@42
    .line 959
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@44
    aget v5, v5, v2

    #@46
    iget v6, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    #@48
    if-ge v5, v6, :cond_3

    #@4a
    .line 960
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@4c
    aget v6, v5, v2

    #@4e
    add-int/lit8 v6, v6, 0x1

    #@50
    aput v6, v5, v2

    #@52
    .line 962
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@54
    aget v5, v5, v2

    #@56
    iget v6, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    #@58
    if-lt v5, v6, :cond_3

    #@5a
    .line 963
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@5c
    aget v5, v5, v2

    #@5e
    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    #@60
    if-ne v5, v6, :cond_5

    #@62
    .line 964
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@64
    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    #@66
    aput v6, v5, v2

    #@68
    .line 984
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@6a
    aget v5, v5, v2

    #@6c
    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    #@6e
    if-eq v5, v6, :cond_4

    #@70
    .line 985
    add-int/lit8 v0, v0, 0x1

    #@72
    .line 986
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@74
    aget v5, v5, v2

    #@76
    or-int/2addr v1, v5

    #@77
    .line 950
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@79
    goto :goto_1

    #@7a
    .line 966
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@7c
    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    #@7e
    aput v6, v5, v2

    #@80
    goto :goto_2

    #@81
    .line 971
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@83
    aget v5, v5, v2

    #@85
    iget v6, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    #@87
    if-lt v5, v6, :cond_7

    #@89
    .line 972
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@8b
    aget v5, v5, v2

    #@8d
    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    #@8f
    if-ne v5, v6, :cond_8

    #@91
    .line 973
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@93
    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    #@95
    aput v6, v5, v2

    #@97
    .line 978
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@99
    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->STATE_FOUND:I

    #@9b
    aput v6, v5, v2

    #@9d
    goto :goto_2

    #@9e
    .line 975
    :cond_8
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@a0
    sget v6, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    #@a2
    aput v6, v5, v2

    #@a4
    goto :goto_3

    #@a5
    .line 990
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "rssi":I
    :cond_9
    iget v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMinEvents:I

    #@a7
    if-lt v0, v5, :cond_a

    #@a9
    .line 991
    const/4 v5, 0x1

    #@aa
    iput-boolean v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mFiredEvents:Z

    #@ac
    .line 992
    return v1

    #@ad
    .line 994
    :cond_a
    sget v5, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_NONE:I

    #@af
    return v5
.end method

.method public setSettings([Landroid/net/wifi/WifiScanner$BssidInfo;II)V
    .locals 3
    .param p1, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;
    .param p2, "apLostThreshold"    # I
    .param p3, "minEvents"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 892
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mBssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@4
    .line 893
    if-gtz p2, :cond_0

    #@6
    .line 894
    const/4 v0, 0x1

    #@7
    iput v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    #@9
    .line 898
    :goto_0
    iput p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMinEvents:I

    #@b
    .line 899
    if-eqz p1, :cond_1

    #@d
    .line 900
    array-length v0, p1

    #@e
    new-array v0, v0, [I

    #@10
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@12
    .line 901
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@14
    iget v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    #@16
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@19
    .line 902
    array-length v0, p1

    #@1a
    new-array v0, v0, [Landroid/net/wifi/ScanResult;

    #@1c
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMostRecentResult:[Landroid/net/wifi/ScanResult;

    #@1e
    .line 903
    array-length v0, p1

    #@1f
    new-array v0, v0, [I

    #@21
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@23
    .line 904
    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mFiredEvents:Z

    #@25
    .line 891
    :goto_1
    return-void

    #@26
    .line 896
    :cond_0
    iput p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mApLostThreshold:I

    #@28
    goto :goto_0

    #@29
    .line 906
    :cond_1
    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mLostCount:[I

    #@2b
    .line 907
    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mMostRecentResult:[Landroid/net/wifi/ScanResult;

    #@2d
    .line 908
    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->mPendingEvent:[I

    #@2f
    goto :goto_1
.end method

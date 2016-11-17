.class public Lcom/android/server/wifi/WifiNetworkHistory;
.super Ljava/lang/Object;
.source "WifiNetworkHistory.java"


# static fields
.field private static final AUTH_KEY:Ljava/lang/String; = "AUTH"

.field private static final BSSID_KEY:Ljava/lang/String; = "BSSID"

.field private static final BSSID_KEY_END:Ljava/lang/String; = "/BSSID"

.field private static final BSSID_STATUS_KEY:Ljava/lang/String; = "BSSID_STATUS"

.field private static final CHOICE_KEY:Ljava/lang/String; = "CHOICE"

.field private static final CHOICE_TIME_KEY:Ljava/lang/String; = "CHOICE_TIME"

.field private static final CONFIG_BSSID_KEY:Ljava/lang/String; = "CONFIG_BSSID"

.field static final CONFIG_KEY:Ljava/lang/String; = "CONFIG"

.field private static final CONNECT_UID_KEY:Ljava/lang/String; = "CONNECT_UID_KEY"

.field private static final CREATION_TIME_KEY:Ljava/lang/String; = "CREATION_TIME"

.field private static final CREATOR_NAME_KEY:Ljava/lang/String; = "CREATOR_NAME"

.field static final CREATOR_UID_KEY:Ljava/lang/String; = "CREATOR_UID_KEY"

.field private static final DATE_KEY:Ljava/lang/String; = "DATE"

.field private static final DBG:Z = true

.field private static final DEFAULT_GW_KEY:Ljava/lang/String; = "DEFAULT_GW"

.field private static final DELETED_EPHEMERAL_KEY:Ljava/lang/String; = "DELETED_EPHEMERAL"

.field private static final DID_SELF_ADD_KEY:Ljava/lang/String; = "DID_SELF_ADD"

.field private static final EPHEMERAL_KEY:Ljava/lang/String; = "EPHEMERAL"

.field private static final FAILURE_KEY:Ljava/lang/String; = "FAILURE"

.field private static final FQDN_KEY:Ljava/lang/String; = "FQDN"

.field private static final FREQ_KEY:Ljava/lang/String; = "FREQ"

.field private static final HAS_EVER_CONNECTED_KEY:Ljava/lang/String; = "HAS_EVER_CONNECTED"

.field private static final LINK_KEY:Ljava/lang/String; = "LINK"

.field private static final METERED_HINT_KEY:Ljava/lang/String; = "METERED_HINT"

.field private static final MILLI_KEY:Ljava/lang/String; = "MILLI"

.field static final NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

.field private static final NETWORK_ID_KEY:Ljava/lang/String; = "ID"

.field private static final NETWORK_SELECTION_DISABLE_REASON_KEY:Ljava/lang/String; = "NETWORK_SELECTION_DISABLE_REASON"

.field private static final NETWORK_SELECTION_STATUS_KEY:Ljava/lang/String; = "NETWORK_SELECTION_STATUS"

.field private static final NL:Ljava/lang/String; = "\n"

.field private static final NO_INTERNET_ACCESS_EXPECTED_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_EXPECTED"

.field private static final NO_INTERNET_ACCESS_REPORTS_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_REPORTS"

.field private static final NUM_ASSOCIATION_KEY:Ljava/lang/String; = "NUM_ASSOCIATION"

.field private static final PEER_CONFIGURATION_KEY:Ljava/lang/String; = "PEER_CONFIGURATION"

.field private static final PRIORITY_KEY:Ljava/lang/String; = "PRIORITY"

.field private static final RSSI_KEY:Ljava/lang/String; = "RSSI"

.field private static final SCORER_OVERRIDE_AND_SWITCH_KEY:Ljava/lang/String; = "SCORER_OVERRIDE_AND_SWITCH"

.field private static final SCORER_OVERRIDE_KEY:Ljava/lang/String; = "SCORER_OVERRIDE"

.field private static final SELF_ADDED_KEY:Ljava/lang/String; = "SELF_ADDED"

.field private static final SEPARATOR:Ljava/lang/String; = ":  "

.field static final SHARED_KEY:Ljava/lang/String; = "SHARED"

.field private static final SSID_KEY:Ljava/lang/String; = "SSID"

.field public static final TAG:Ljava/lang/String; = "WifiNetworkHistory"

.field private static final UPDATE_NAME_KEY:Ljava/lang/String; = "UPDATE_NAME"

.field private static final UPDATE_TIME_KEY:Ljava/lang/String; = "UPDATE_TIME"

.field private static final UPDATE_UID_KEY:Ljava/lang/String; = "UPDATE_UID"

.field private static final USER_APPROVED_KEY:Ljava/lang/String; = "USER_APPROVED"

.field private static final USE_EXTERNAL_SCORES_KEY:Ljava/lang/String; = "USE_EXTERNAL_SCORES"

.field private static final VALIDATED_INTERNET_ACCESS_KEY:Ljava/lang/String; = "VALIDATED_INTERNET_ACCESS"

.field private static final VDBG:Z = true


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLocalLog:Landroid/util/LocalLog;

.field mLostConfigsDbg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/WifiNetworkHistory;Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanDetailCaches"    # Ljava/util/concurrent/ConcurrentHashMap;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiNetworkHistory;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    .line 59
    const-string/jumbo v1, "/misc/wifi/networkHistory.txt"

    #@10
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    sput-object v0, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    #@1a
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/LocalLog;Lcom/android/server/net/DelayedDiskWrite;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "localLog"    # Landroid/util/LocalLog;
    .param p3, "writer"    # Lcom/android/server/net/DelayedDiskWrite;

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 117
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLostConfigsDbg:Ljava/util/HashSet;

    #@a
    .line 120
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mContext:Landroid/content/Context;

    #@c
    .line 121
    iput-object p3, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@e
    .line 122
    iput-object p2, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLocalLog:Landroid/util/LocalLog;

    #@10
    .line 119
    return-void
.end method

.method private getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;)",
            "Lcom/android/server/wifi/ScanDetailCache;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "scanDetailCaches":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    const/4 v1, 0x0

    #@1
    .line 630
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    :cond_0
    return-object v1

    #@6
    .line 631
    :cond_1
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    #@12
    .line 632
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_2

    #@14
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@16
    const/4 v2, -0x1

    #@17
    if-eq v1, v2, :cond_2

    #@19
    .line 633
    new-instance v0, Lcom/android/server/wifi/ScanDetailCache;

    #@1b
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-direct {v0, p1}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@1e
    .line 634
    .restart local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 636
    :cond_2
    return-object v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLocalLog:Landroid/util/LocalLog;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 624
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLocalLog:Landroid/util/LocalLog;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@9
    .line 622
    :cond_0
    return-void
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 580
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 581
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    #@7
    .line 585
    .local v1, "nextSetBit":I
    array-length v2, p1

    #@8
    invoke-virtual {p0, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    #@b
    move-result-object p0

    #@c
    .line 587
    :goto_0
    add-int/lit8 v2, v1, 0x1

    #@e
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, -0x1

    #@13
    if-eq v1, v2, :cond_0

    #@15
    .line 588
    aget-object v2, p1, v1

    #@17
    const/16 v3, 0x5f

    #@19
    const/16 v4, 0x2d

    #@1b
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    move-result-object v2

    #@23
    const/16 v3, 0x20

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@28
    goto :goto_0

    #@29
    .line 592
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    #@2c
    move-result v2

    #@2d
    if-lez v2, :cond_1

    #@2f
    .line 593
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@32
    move-result v2

    #@33
    add-int/lit8 v2, v2, -0x1

    #@35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    #@38
    .line 596
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    return-object v2
.end method


# virtual methods
.method public isValid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 561
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 562
    return v2

    #@8
    .line 564
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@a
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@d
    move-result v0

    #@e
    if-le v0, v3, :cond_3

    #@10
    .line 565
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@12
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@15
    move-result v0

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 566
    return v2

    #@19
    .line 568
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@1b
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 569
    return v2

    #@22
    .line 571
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@24
    const/4 v1, 0x3

    #@25
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_3

    #@2b
    .line 572
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@2d
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_4

    #@33
    .line 576
    :cond_3
    return v3

    #@34
    .line 573
    :cond_4
    return v2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 606
    const-string/jumbo v0, "WifiNetworkHistory"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 605
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 603
    const-string/jumbo v0, "WifiNetworkHistory"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 602
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 609
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiNetworkHistory;->loge(Ljava/lang/String;Z)V

    #@4
    .line 608
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    #@0
    .prologue
    .line 612
    if-eqz p2, :cond_0

    #@2
    .line 613
    const-string/jumbo v0, "WifiNetworkHistory"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, " stack:"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x2

    #@1e
    aget-object v2, v2, v3

    #@20
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 614
    const-string/jumbo v2, " - "

    #@2b
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 614
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@36
    move-result-object v2

    #@37
    const/4 v3, 0x3

    #@38
    aget-object v2, v2, v3

    #@3a
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 615
    const-string/jumbo v2, " - "

    #@45
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 615
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@50
    move-result-object v2

    #@51
    const/4 v3, 0x4

    #@52
    aget-object v2, v2, v3

    #@54
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 616
    const-string/jumbo v2, " - "

    #@5f
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 616
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@6a
    move-result-object v2

    #@6b
    const/4 v3, 0x5

    #@6c
    aget-object v2, v2, v3

    #@6e
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 611
    :goto_0
    return-void

    #@7e
    .line 618
    :cond_0
    const-string/jumbo v0, "WifiNetworkHistory"

    #@81
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    goto :goto_0
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 600
    const-string/jumbo v0, "WifiNetworkHistory"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 599
    return-void
.end method

.method public readNetworkHistory(Ljava/util/Map;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 327
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "scanDetailCaches":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    .local p3, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v9, "readNetworkHistory() path:"

    #@8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v8

    #@c
    sget-object v9, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    #@e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v8

    #@12
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v8

    #@16
    move-object/from16 v0, p0

    #@18
    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiNetworkHistory;->localLog(Ljava/lang/String;)V

    #@1b
    .line 329
    const/16 v26, 0x0

    #@1d
    const/16 v17, 0x0

    #@1f
    .line 330
    .local v17, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v18, Ljava/io/DataInputStream;

    #@21
    new-instance v8, Ljava/io/BufferedInputStream;

    #@23
    .line 331
    new-instance v9, Ljava/io/FileInputStream;

    #@25
    sget-object v27, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    #@27
    move-object/from16 v0, v27

    #@29
    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@2c
    .line 330
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@2f
    move-object/from16 v0, v18

    #@31
    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@34
    .line 333
    .end local v17    # "in":Ljava/io/DataInputStream;
    .local v18, "in":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    #@35
    .line 334
    .local v4, "bssid":Ljava/lang/String;
    const/16 v23, 0x0

    #@37
    .line 336
    .local v23, "ssid":Ljava/lang/String;
    const/4 v7, 0x0

    #@38
    .line 337
    .local v7, "freq":I
    const/16 v24, 0x0

    #@3a
    .line 338
    .local v24, "status":I
    const-wide/16 v10, 0x0

    #@3c
    .line 339
    .local v10, "seen":J
    :try_start_1
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@3e
    .line 340
    .local v6, "rssi":I
    const/4 v5, 0x0

    #@3f
    .line 342
    .local v5, "caps":Ljava/lang/String;
    const/4 v13, 0x0

    #@40
    .line 344
    .end local v5    # "caps":Ljava/lang/String;
    .end local v23    # "ssid":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@43
    move-result-object v20

    #@44
    .line 345
    .local v20, "line":Ljava/lang/String;
    if-nez v20, :cond_2

    #@46
    .line 552
    if-eqz v18, :cond_1

    #@48
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    #@4b
    :cond_1
    :goto_1
    if-eqz v26, :cond_31

    #@4d
    :try_start_3
    throw v26
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    #@4e
    .line 546
    :catch_0
    move-exception v16

    #@4f
    .local v16, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v17, v18

    #@51
    .line 547
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v20    # "line":Ljava/lang/String;
    .end local v24    # "status":I
    :goto_2
    const-string/jumbo v8, "WifiNetworkHistory"

    #@54
    new-instance v9, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v26, "readNetworkHistory: failed to read, revert to default, "

    #@5c
    move-object/from16 v0, v26

    #@5e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    move-object/from16 v0, v16

    #@64
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    move-object/from16 v0, v16

    #@6e
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@71
    .line 326
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    return-void

    #@72
    .line 348
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "line":Ljava/lang/String;
    .restart local v24    # "status":I
    :cond_2
    const/16 v8, 0x3a

    #@74
    :try_start_4
    move-object/from16 v0, v20

    #@76
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    #@79
    move-result v12

    #@7a
    .line 349
    .local v12, "colon":I
    if-ltz v12, :cond_0

    #@7c
    .line 353
    const/4 v8, 0x0

    #@7d
    move-object/from16 v0, v20

    #@7f
    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@82
    move-result-object v8

    #@83
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@86
    move-result-object v19

    #@87
    .line 354
    .local v19, "key":Ljava/lang/String;
    add-int/lit8 v8, v12, 0x1

    #@89
    move-object/from16 v0, v20

    #@8b
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@92
    move-result-object v25

    #@93
    .line 356
    .local v25, "value":Ljava/lang/String;
    const-string/jumbo v8, "CONFIG"

    #@96
    move-object/from16 v0, v19

    #@98
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v8

    #@9c
    if-eqz v8, :cond_6

    #@9e
    .line 357
    move-object/from16 v0, p1

    #@a0
    move-object/from16 v1, v25

    #@a2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a5
    move-result-object v13

    #@a6
    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    #@a8
    .line 361
    .local v13, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v13, :cond_4

    #@aa
    .line 362
    new-instance v8, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v9, "readNetworkHistory didnt find netid for hash="

    #@b2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v8

    #@b6
    .line 363
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->hashCode()I

    #@b9
    move-result v9

    #@ba
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@bd
    move-result-object v9

    #@be
    .line 362
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v8

    #@c2
    .line 364
    const-string/jumbo v9, " key: "

    #@c5
    .line 362
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v8

    #@c9
    move-object/from16 v0, v25

    #@cb
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v8

    #@cf
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v8

    #@d3
    move-object/from16 v0, p0

    #@d5
    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiNetworkHistory;->localLog(Ljava/lang/String;)V

    #@d8
    .line 365
    move-object/from16 v0, p0

    #@da
    iget-object v8, v0, Lcom/android/server/wifi/WifiNetworkHistory;->mLostConfigsDbg:Ljava/util/HashSet;

    #@dc
    move-object/from16 v0, v25

    #@de
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@e1
    goto/16 :goto_0

    #@e3
    .line 552
    .end local v6    # "rssi":I
    .end local v12    # "colon":I
    .end local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v19    # "key":Ljava/lang/String;
    .end local v20    # "line":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :catch_1
    move-exception v8

    #@e4
    move-object/from16 v17, v18

    #@e6
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v24    # "status":I
    :goto_4
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@e7
    :catchall_0
    move-exception v9

    #@e8
    move-object/from16 v28, v9

    #@ea
    move-object v9, v8

    #@eb
    move-object/from16 v8, v28

    #@ed
    :goto_5
    if-eqz v17, :cond_3

    #@ef
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    #@f2
    :cond_3
    :goto_6
    if-eqz v9, :cond_33

    #@f4
    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    #@f5
    .line 546
    :catch_2
    move-exception v16

    #@f6
    .restart local v16    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    #@f8
    .line 369
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v12    # "colon":I
    .restart local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v20    # "line":Ljava/lang/String;
    .restart local v24    # "status":I
    .restart local v25    # "value":Ljava/lang/String;
    :cond_4
    :try_start_8
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@fa
    if-eqz v8, :cond_5

    #@fc
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@fe
    if-nez v8, :cond_0

    #@100
    .line 371
    :cond_5
    move-object/from16 v0, p0

    #@102
    iget-object v8, v0, Lcom/android/server/wifi/WifiNetworkHistory;->mContext:Landroid/content/Context;

    #@104
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@107
    move-result-object v8

    #@108
    const/16 v9, 0x3e8

    #@10a
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@10d
    move-result-object v8

    #@10e
    .line 370
    iput-object v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@110
    .line 372
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@112
    iput-object v8, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@114
    .line 375
    const-string/jumbo v8, "WifiNetworkHistory"

    #@117
    new-instance v9, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v27, "Upgrading network "

    #@11f
    move-object/from16 v0, v27

    #@121
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v9

    #@125
    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@127
    move/from16 v27, v0

    #@129
    move/from16 v0, v27

    #@12b
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v9

    #@12f
    .line 376
    const-string/jumbo v27, " to "

    #@132
    .line 375
    move-object/from16 v0, v27

    #@134
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v9

    #@138
    .line 376
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@13a
    move-object/from16 v27, v0

    #@13c
    .line 375
    move-object/from16 v0, v27

    #@13e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v9

    #@142
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v9

    #@146
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@149
    goto/16 :goto_0

    #@14b
    .line 552
    .end local v6    # "rssi":I
    .end local v12    # "colon":I
    .end local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v19    # "key":Ljava/lang/String;
    .end local v20    # "line":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v8

    #@14c
    move-object/from16 v9, v26

    #@14e
    move-object/from16 v17, v18

    #@150
    .end local v18    # "in":Ljava/io/DataInputStream;
    .local v17, "in":Ljava/io/DataInputStream;
    goto :goto_5

    #@151
    .line 380
    .end local v17    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "rssi":I
    .restart local v12    # "colon":I
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v20    # "line":Ljava/lang/String;
    .restart local v25    # "value":Ljava/lang/String;
    :cond_6
    if-eqz v13, :cond_0

    #@153
    .line 381
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@156
    move-result-object v21

    #@157
    .line 382
    .local v21, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const-string/jumbo v8, "SSID"

    #@15a
    move-object/from16 v0, v19

    #@15c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15f
    move-result v8

    #@160
    if-eqz v8, :cond_8

    #@162
    .line 384
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@165
    move-result v8

    #@166
    if-nez v8, :cond_0

    #@168
    .line 387
    move-object/from16 v23, v25

    #@16a
    .line 388
    .local v23, "ssid":Ljava/lang/String;
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@16c
    if-eqz v8, :cond_7

    #@16e
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@170
    move-object/from16 v0, v25

    #@172
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@175
    move-result v8

    #@176
    if-eqz v8, :cond_2f

    #@178
    .line 393
    :cond_7
    move-object/from16 v0, v25

    #@17a
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@17c
    goto/16 :goto_0

    #@17e
    .line 382
    .end local v23    # "ssid":Ljava/lang/String;
    :cond_8
    const-string/jumbo v8, "CONFIG_BSSID"

    #@181
    move-object/from16 v0, v19

    #@183
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@186
    move-result v8

    #@187
    if-eqz v8, :cond_a

    #@189
    .line 397
    const-string/jumbo v8, "null"

    #@18c
    move-object/from16 v0, v25

    #@18e
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@191
    move-result v8

    #@192
    if-eqz v8, :cond_9

    #@194
    const/16 v25, 0x0

    #@196
    .end local v25    # "value":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v25

    #@198
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@19a
    goto/16 :goto_0

    #@19c
    .line 382
    .restart local v25    # "value":Ljava/lang/String;
    :cond_a
    const-string/jumbo v8, "FQDN"

    #@19f
    move-object/from16 v0, v19

    #@1a1
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a4
    move-result v8

    #@1a5
    if-eqz v8, :cond_c

    #@1a7
    .line 401
    const-string/jumbo v8, "null"

    #@1aa
    move-object/from16 v0, v25

    #@1ac
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1af
    move-result v8

    #@1b0
    if-eqz v8, :cond_b

    #@1b2
    const/16 v25, 0x0

    #@1b4
    .end local v25    # "value":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v25

    #@1b6
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@1b8
    goto/16 :goto_0

    #@1ba
    .line 382
    .restart local v25    # "value":Ljava/lang/String;
    :cond_c
    const-string/jumbo v8, "DEFAULT_GW"

    #@1bd
    move-object/from16 v0, v19

    #@1bf
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c2
    move-result v8

    #@1c3
    if-eqz v8, :cond_d

    #@1c5
    .line 404
    move-object/from16 v0, v25

    #@1c7
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@1c9
    goto/16 :goto_0

    #@1cb
    .line 382
    :cond_d
    const-string/jumbo v8, "SELF_ADDED"

    #@1ce
    move-object/from16 v0, v19

    #@1d0
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d3
    move-result v8

    #@1d4
    if-eqz v8, :cond_e

    #@1d6
    .line 407
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1d9
    move-result v8

    #@1da
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@1dc
    goto/16 :goto_0

    #@1de
    .line 382
    :cond_e
    const-string/jumbo v8, "DID_SELF_ADD"

    #@1e1
    move-object/from16 v0, v19

    #@1e3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e6
    move-result v8

    #@1e7
    if-eqz v8, :cond_f

    #@1e9
    .line 410
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1ec
    move-result v8

    #@1ed
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@1ef
    goto/16 :goto_0

    #@1f1
    .line 382
    :cond_f
    const-string/jumbo v8, "NO_INTERNET_ACCESS_REPORTS"

    #@1f4
    move-object/from16 v0, v19

    #@1f6
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f9
    move-result v8

    #@1fa
    if-eqz v8, :cond_10

    #@1fc
    .line 413
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1ff
    move-result v8

    #@200
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@202
    goto/16 :goto_0

    #@204
    .line 382
    :cond_10
    const-string/jumbo v8, "VALIDATED_INTERNET_ACCESS"

    #@207
    move-object/from16 v0, v19

    #@209
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20c
    move-result v8

    #@20d
    if-eqz v8, :cond_11

    #@20f
    .line 416
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@212
    move-result v8

    #@213
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@215
    goto/16 :goto_0

    #@217
    .line 382
    :cond_11
    const-string/jumbo v8, "NO_INTERNET_ACCESS_EXPECTED"

    #@21a
    move-object/from16 v0, v19

    #@21c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21f
    move-result v8

    #@220
    if-eqz v8, :cond_12

    #@222
    .line 419
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@225
    move-result v8

    #@226
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@228
    goto/16 :goto_0

    #@22a
    .line 382
    :cond_12
    const-string/jumbo v8, "CREATION_TIME"

    #@22d
    move-object/from16 v0, v19

    #@22f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@232
    move-result v8

    #@233
    if-eqz v8, :cond_13

    #@235
    .line 422
    move-object/from16 v0, v25

    #@237
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@239
    goto/16 :goto_0

    #@23b
    .line 382
    :cond_13
    const-string/jumbo v8, "UPDATE_TIME"

    #@23e
    move-object/from16 v0, v19

    #@240
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@243
    move-result v8

    #@244
    if-eqz v8, :cond_14

    #@246
    .line 425
    move-object/from16 v0, v25

    #@248
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@24a
    goto/16 :goto_0

    #@24c
    .line 382
    :cond_14
    const-string/jumbo v8, "EPHEMERAL"

    #@24f
    move-object/from16 v0, v19

    #@251
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@254
    move-result v8

    #@255
    if-eqz v8, :cond_15

    #@257
    .line 428
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@25a
    move-result v8

    #@25b
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@25d
    goto/16 :goto_0

    #@25f
    .line 382
    :cond_15
    const-string/jumbo v8, "METERED_HINT"

    #@262
    move-object/from16 v0, v19

    #@264
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@267
    move-result v8

    #@268
    if-eqz v8, :cond_16

    #@26a
    .line 431
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@26d
    move-result v8

    #@26e
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@270
    goto/16 :goto_0

    #@272
    .line 382
    :cond_16
    const-string/jumbo v8, "USE_EXTERNAL_SCORES"

    #@275
    move-object/from16 v0, v19

    #@277
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27a
    move-result v8

    #@27b
    if-eqz v8, :cond_17

    #@27d
    .line 434
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@280
    move-result v8

    #@281
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@283
    goto/16 :goto_0

    #@285
    .line 382
    :cond_17
    const-string/jumbo v8, "CREATOR_UID_KEY"

    #@288
    move-object/from16 v0, v19

    #@28a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28d
    move-result v8

    #@28e
    if-eqz v8, :cond_18

    #@290
    .line 437
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@293
    move-result v8

    #@294
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@296
    goto/16 :goto_0

    #@298
    .line 382
    :cond_18
    const-string/jumbo v8, "SCORER_OVERRIDE"

    #@29b
    move-object/from16 v0, v19

    #@29d
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a0
    move-result v8

    #@2a1
    if-eqz v8, :cond_19

    #@2a3
    .line 440
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a6
    move-result v8

    #@2a7
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@2a9
    goto/16 :goto_0

    #@2ab
    .line 382
    :cond_19
    const-string/jumbo v8, "SCORER_OVERRIDE_AND_SWITCH"

    #@2ae
    move-object/from16 v0, v19

    #@2b0
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b3
    move-result v8

    #@2b4
    if-eqz v8, :cond_1a

    #@2b6
    .line 443
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2b9
    move-result v8

    #@2ba
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@2bc
    goto/16 :goto_0

    #@2be
    .line 382
    :cond_1a
    const-string/jumbo v8, "NUM_ASSOCIATION"

    #@2c1
    move-object/from16 v0, v19

    #@2c3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c6
    move-result v8

    #@2c7
    if-eqz v8, :cond_1b

    #@2c9
    .line 446
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2cc
    move-result v8

    #@2cd
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@2cf
    goto/16 :goto_0

    #@2d1
    .line 382
    :cond_1b
    const-string/jumbo v8, "CONNECT_UID_KEY"

    #@2d4
    move-object/from16 v0, v19

    #@2d6
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d9
    move-result v8

    #@2da
    if-eqz v8, :cond_1c

    #@2dc
    .line 449
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2df
    move-result v8

    #@2e0
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@2e2
    goto/16 :goto_0

    #@2e4
    .line 382
    :cond_1c
    const-string/jumbo v8, "UPDATE_UID"

    #@2e7
    move-object/from16 v0, v19

    #@2e9
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2ec
    move-result v8

    #@2ed
    if-eqz v8, :cond_1d

    #@2ef
    .line 452
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f2
    move-result v8

    #@2f3
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@2f5
    goto/16 :goto_0

    #@2f7
    .line 382
    :cond_1d
    const-string/jumbo v8, "FAILURE"

    #@2fa
    move-object/from16 v0, v19

    #@2fc
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2ff
    move-result v8

    #@300
    if-eqz v8, :cond_1e

    #@302
    .line 455
    move-object/from16 v0, v25

    #@304
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@306
    goto/16 :goto_0

    #@308
    .line 382
    :cond_1e
    const-string/jumbo v8, "PEER_CONFIGURATION"

    #@30b
    move-object/from16 v0, v19

    #@30d
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@310
    move-result v8

    #@311
    if-eqz v8, :cond_1f

    #@313
    .line 458
    move-object/from16 v0, v25

    #@315
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@317
    goto/16 :goto_0

    #@319
    .line 382
    :cond_1f
    const-string/jumbo v8, "NETWORK_SELECTION_STATUS"

    #@31c
    move-object/from16 v0, v19

    #@31e
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@321
    move-result v8

    #@322
    if-eqz v8, :cond_21

    #@324
    .line 461
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@327
    move-result v22

    #@328
    .line 464
    .local v22, "networkStatusValue":I
    const/4 v8, 0x1

    #@329
    .line 463
    move/from16 v0, v22

    #@32b
    if-ne v0, v8, :cond_20

    #@32d
    .line 466
    const/16 v22, 0x0

    #@32f
    .line 468
    :cond_20
    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    #@332
    goto/16 :goto_0

    #@334
    .line 382
    .end local v22    # "networkStatusValue":I
    :cond_21
    const-string/jumbo v8, "NETWORK_SELECTION_DISABLE_REASON"

    #@337
    move-object/from16 v0, v19

    #@339
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33c
    move-result v8

    #@33d
    if-eqz v8, :cond_22

    #@33f
    .line 471
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@342
    move-result v8

    #@343
    move-object/from16 v0, v21

    #@345
    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    #@348
    goto/16 :goto_0

    #@34a
    .line 382
    :cond_22
    const-string/jumbo v8, "CHOICE"

    #@34d
    move-object/from16 v0, v19

    #@34f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@352
    move-result v8

    #@353
    if-eqz v8, :cond_23

    #@355
    .line 474
    move-object/from16 v0, v21

    #@357
    move-object/from16 v1, v25

    #@359
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    #@35c
    goto/16 :goto_0

    #@35e
    .line 382
    :cond_23
    const-string/jumbo v8, "CHOICE_TIME"

    #@361
    move-object/from16 v0, v19

    #@363
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@366
    move-result v8

    #@367
    if-eqz v8, :cond_24

    #@369
    .line 477
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@36c
    move-result-wide v8

    #@36d
    move-object/from16 v0, v21

    #@36f
    invoke-virtual {v0, v8, v9}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    #@372
    goto/16 :goto_0

    #@374
    .line 382
    :cond_24
    const-string/jumbo v8, "LINK"

    #@377
    move-object/from16 v0, v19

    #@379
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37c
    move-result v8

    #@37d
    if-eqz v8, :cond_25

    #@37f
    .line 480
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@381
    if-nez v8, :cond_30

    #@383
    .line 481
    new-instance v8, Ljava/util/HashMap;

    #@385
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@388
    iput-object v8, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@38a
    goto/16 :goto_0

    #@38c
    .line 382
    :cond_25
    const-string/jumbo v8, "BSSID"

    #@38f
    move-object/from16 v0, v19

    #@391
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@394
    move-result v8

    #@395
    if-eqz v8, :cond_26

    #@397
    .line 487
    const/16 v24, 0x0

    #@399
    .line 488
    const/16 v23, 0x0

    #@39b
    .line 489
    .local v23, "ssid":Ljava/lang/String;
    const/4 v4, 0x0

    #@39c
    .line 490
    const/4 v7, 0x0

    #@39d
    .line 491
    const-wide/16 v10, 0x0

    #@39f
    .line 492
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@3a1
    .line 493
    const-string/jumbo v5, ""

    #@3a4
    .local v5, "caps":Ljava/lang/String;
    goto/16 :goto_0

    #@3a6
    .line 382
    .end local v5    # "caps":Ljava/lang/String;
    .end local v23    # "ssid":Ljava/lang/String;
    :cond_26
    const-string/jumbo v8, "RSSI"

    #@3a9
    move-object/from16 v0, v19

    #@3ab
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3ae
    move-result v8

    #@3af
    if-eqz v8, :cond_27

    #@3b1
    .line 496
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3b4
    move-result v6

    #@3b5
    goto/16 :goto_0

    #@3b7
    .line 382
    :cond_27
    const-string/jumbo v8, "FREQ"

    #@3ba
    move-object/from16 v0, v19

    #@3bc
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3bf
    move-result v8

    #@3c0
    if-eqz v8, :cond_28

    #@3c2
    .line 499
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3c5
    move-result v7

    #@3c6
    goto/16 :goto_0

    #@3c8
    .line 382
    :cond_28
    const-string/jumbo v8, "DATE"

    #@3cb
    move-object/from16 v0, v19

    #@3cd
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d0
    move-result v8

    #@3d1
    if-nez v8, :cond_0

    #@3d3
    const-string/jumbo v8, "/BSSID"

    #@3d6
    move-object/from16 v0, v19

    #@3d8
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3db
    move-result v8

    #@3dc
    if-eqz v8, :cond_29

    #@3de
    .line 514
    const/4 v8, 0x0

    #@3df
    if-eqz v8, :cond_0

    #@3e1
    if-eqz v23, :cond_0

    #@3e3
    .line 515
    move-object/from16 v0, p0

    #@3e5
    move-object/from16 v1, p2

    #@3e7
    invoke-direct {v0, v13, v1}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    #@3ea
    move-result-object v8

    #@3eb
    if-eqz v8, :cond_0

    #@3ed
    .line 516
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@3f0
    move-result-object v3

    #@3f1
    .line 517
    .local v3, "wssid":Landroid/net/wifi/WifiSsid;
    new-instance v2, Lcom/android/server/wifi/ScanDetail;

    #@3f3
    .line 518
    const-wide/16 v8, 0x0

    #@3f5
    .line 517
    invoke-direct/range {v2 .. v11}, Lcom/android/server/wifi/ScanDetail;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    #@3f8
    .line 519
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    #@3fa
    move-object/from16 v1, p2

    #@3fc
    invoke-direct {v0, v13, v1}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    #@3ff
    move-result-object v8

    #@400
    invoke-virtual {v8, v2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    #@403
    goto/16 :goto_0

    #@405
    .line 382
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "wssid":Landroid/net/wifi/WifiSsid;
    :cond_29
    const-string/jumbo v8, "DELETED_EPHEMERAL"

    #@408
    move-object/from16 v0, v19

    #@40a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40d
    move-result v8

    #@40e
    if-eqz v8, :cond_2a

    #@410
    .line 524
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@413
    move-result v8

    #@414
    if-nez v8, :cond_0

    #@416
    .line 525
    move-object/from16 v0, p3

    #@418
    move-object/from16 v1, v25

    #@41a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@41d
    goto/16 :goto_0

    #@41f
    .line 382
    :cond_2a
    const-string/jumbo v8, "CREATOR_NAME"

    #@422
    move-object/from16 v0, v19

    #@424
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@427
    move-result v8

    #@428
    if-eqz v8, :cond_2b

    #@42a
    .line 529
    move-object/from16 v0, v25

    #@42c
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@42e
    goto/16 :goto_0

    #@430
    .line 382
    :cond_2b
    const-string/jumbo v8, "UPDATE_NAME"

    #@433
    move-object/from16 v0, v19

    #@435
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@438
    move-result v8

    #@439
    if-eqz v8, :cond_2c

    #@43b
    .line 532
    move-object/from16 v0, v25

    #@43d
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@43f
    goto/16 :goto_0

    #@441
    .line 382
    :cond_2c
    const-string/jumbo v8, "USER_APPROVED"

    #@444
    move-object/from16 v0, v19

    #@446
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@449
    move-result v8

    #@44a
    if-eqz v8, :cond_2d

    #@44c
    .line 535
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@44f
    move-result v8

    #@450
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@452
    goto/16 :goto_0

    #@454
    .line 382
    :cond_2d
    const-string/jumbo v8, "SHARED"

    #@457
    move-object/from16 v0, v19

    #@459
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45c
    move-result v8

    #@45d
    if-eqz v8, :cond_2e

    #@45f
    .line 538
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@462
    move-result v8

    #@463
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@465
    goto/16 :goto_0

    #@467
    .line 382
    :cond_2e
    const-string/jumbo v8, "HAS_EVER_CONNECTED"

    #@46a
    move-object/from16 v0, v19

    #@46c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46f
    move-result v8

    #@470
    if-eqz v8, :cond_0

    #@472
    .line 541
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@475
    move-result v8

    #@476
    move-object/from16 v0, v21

    #@478
    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    #@47b
    goto/16 :goto_0

    #@47d
    .line 389
    .local v23, "ssid":Ljava/lang/String;
    :cond_2f
    const-string/jumbo v8, "Error parsing network history file, mismatched SSIDs"

    #@480
    move-object/from16 v0, p0

    #@482
    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiNetworkHistory;->loge(Ljava/lang/String;)V

    #@485
    .line 390
    const/4 v13, 0x0

    #@486
    .line 391
    .local v13, "config":Landroid/net/wifi/WifiConfiguration;
    const/16 v23, 0x0

    #@488
    .local v23, "ssid":Ljava/lang/String;
    goto/16 :goto_0

    #@48a
    .line 483
    .end local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v23    # "ssid":Ljava/lang/String;
    :cond_30
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@48c
    const/4 v9, -0x1

    #@48d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@490
    move-result-object v9

    #@491
    move-object/from16 v0, v25

    #@493
    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@496
    goto/16 :goto_0

    #@498
    .line 552
    .end local v12    # "colon":I
    .end local v19    # "key":Ljava/lang/String;
    .end local v21    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v25    # "value":Ljava/lang/String;
    :catch_3
    move-exception v26

    #@499
    goto/16 :goto_1

    #@49b
    :cond_31
    move-object/from16 v17, v18

    #@49d
    .end local v18    # "in":Ljava/io/DataInputStream;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_3

    #@49f
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v20    # "line":Ljava/lang/String;
    .end local v24    # "status":I
    :catch_4
    move-exception v26

    #@4a0
    if-nez v9, :cond_32

    #@4a2
    move-object/from16 v9, v26

    #@4a4
    goto/16 :goto_6

    #@4a6
    :cond_32
    move-object/from16 v0, v26

    #@4a8
    if-eq v9, v0, :cond_3

    #@4aa
    :try_start_9
    move-object/from16 v0, v26

    #@4ac
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@4af
    goto/16 :goto_6

    #@4b1
    .line 548
    :catch_5
    move-exception v14

    #@4b2
    .local v14, "e":Ljava/io/EOFException;
    goto/16 :goto_3

    #@4b4
    .line 552
    .end local v14    # "e":Ljava/io/EOFException;
    :cond_33
    throw v8
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    #@4b5
    .line 550
    :catch_6
    move-exception v15

    #@4b6
    .line 551
    .local v15, "e":Ljava/io/IOException;
    :goto_7
    const-string/jumbo v8, "WifiNetworkHistory"

    #@4b9
    new-instance v9, Ljava/lang/StringBuilder;

    #@4bb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4be
    const-string/jumbo v26, "readNetworkHistory: No config file, revert to default, "

    #@4c1
    move-object/from16 v0, v26

    #@4c3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c6
    move-result-object v9

    #@4c7
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4ca
    move-result-object v9

    #@4cb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ce
    move-result-object v9

    #@4cf
    invoke-static {v8, v9, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d2
    goto/16 :goto_3

    #@4d4
    .line 548
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "line":Ljava/lang/String;
    .restart local v24    # "status":I
    :catch_7
    move-exception v14

    #@4d5
    .restart local v14    # "e":Ljava/io/EOFException;
    move-object/from16 v17, v18

    #@4d7
    .end local v18    # "in":Ljava/io/DataInputStream;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_3

    #@4d9
    .line 550
    .end local v14    # "e":Ljava/io/EOFException;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    :catch_8
    move-exception v15

    #@4da
    .restart local v15    # "e":Ljava/io/IOException;
    move-object/from16 v17, v18

    #@4dc
    .end local v18    # "in":Ljava/io/DataInputStream;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    goto :goto_7

    #@4dd
    .line 552
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v15    # "e":Ljava/io/IOException;
    .end local v20    # "line":Ljava/lang/String;
    .end local v24    # "status":I
    .local v17, "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v8

    #@4de
    move-object/from16 v9, v26

    #@4e0
    goto/16 :goto_5

    #@4e2
    :catch_9
    move-exception v8

    #@4e3
    goto/16 :goto_4
.end method

.method public writeKnownNetworkHistory(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 141
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "scanDetailCaches":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    .local p3, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@2
    sget-object v1, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    #@4
    new-instance v2, Lcom/android/server/wifi/WifiNetworkHistory$1;

    #@6
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/wifi/WifiNetworkHistory$1;-><init>(Lcom/android/server/wifi/WifiNetworkHistory;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V

    #@9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    #@c
    .line 132
    return-void
.end method

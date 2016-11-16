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
    .line 59
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
    .line 60
    const-string/jumbo v1, "/misc/wifi/networkHistory.txt"

    #@10
    .line 59
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
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/LocalLog;Lcom/android/server/net/DelayedDiskWrite;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "localLog"    # Landroid/util/LocalLog;
    .param p3, "writer"    # Lcom/android/server/net/DelayedDiskWrite;

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLostConfigsDbg:Ljava/util/HashSet;

    #@a
    .line 121
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mContext:Landroid/content/Context;

    #@c
    .line 122
    iput-object p3, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@e
    .line 123
    iput-object p2, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLocalLog:Landroid/util/LocalLog;

    #@10
    .line 120
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
    .line 633
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    :cond_0
    return-object v1

    #@6
    .line 634
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
    .line 635
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_2

    #@14
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@16
    const/4 v2, -0x1

    #@17
    if-eq v1, v2, :cond_2

    #@19
    .line 636
    new-instance v0, Lcom/android/server/wifi/ScanDetailCache;

    #@1b
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-direct {v0, p1}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@1e
    .line 637
    .restart local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 639
    :cond_2
    return-object v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLocalLog:Landroid/util/LocalLog;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 627
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLocalLog:Landroid/util/LocalLog;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@9
    .line 625
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
    .line 583
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 584
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    #@7
    .line 588
    .local v1, "nextSetBit":I
    array-length v2, p1

    #@8
    invoke-virtual {p0, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    #@b
    move-result-object p0

    #@c
    .line 590
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
    .line 591
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
    .line 595
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    #@2c
    move-result v2

    #@2d
    if-lez v2, :cond_1

    #@2f
    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@32
    move-result v2

    #@33
    add-int/lit8 v2, v2, -0x1

    #@35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    #@38
    .line 599
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
    .line 564
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 565
    return v2

    #@8
    .line 567
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@a
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@d
    move-result v0

    #@e
    if-le v0, v3, :cond_3

    #@10
    .line 568
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@12
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@15
    move-result v0

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 569
    return v2

    #@19
    .line 571
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@1b
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 572
    return v2

    #@22
    .line 574
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
    .line 575
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@2d
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_4

    #@33
    .line 579
    :cond_3
    return v3

    #@34
    .line 576
    :cond_4
    return v2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 609
    const-string/jumbo v0, "WifiNetworkHistory"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 608
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
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

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 612
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiNetworkHistory;->loge(Ljava/lang/String;Z)V

    #@4
    .line 611
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    #@0
    .prologue
    .line 615
    if-eqz p2, :cond_0

    #@2
    .line 616
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
    .line 617
    const-string/jumbo v2, " - "

    #@2b
    .line 616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 617
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
    .line 616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 618
    const-string/jumbo v2, " - "

    #@45
    .line 616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 618
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
    .line 616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 619
    const-string/jumbo v2, " - "

    #@5f
    .line 616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 619
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
    .line 616
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
    .line 614
    :goto_0
    return-void

    #@7e
    .line 621
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
    .line 603
    const-string/jumbo v0, "WifiNetworkHistory"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 602
    return-void
.end method

.method public readNetworkHistory(Ljava/util/Map;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V
    .locals 30
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
    .line 328
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
    .line 330
    const/16 v27, 0x0

    #@1d
    const/16 v18, 0x0

    #@1f
    .line 331
    .local v18, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v19, Ljava/io/DataInputStream;

    #@21
    new-instance v8, Ljava/io/BufferedInputStream;

    #@23
    .line 332
    new-instance v9, Ljava/io/FileInputStream;

    #@25
    sget-object v28, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    #@27
    move-object/from16 v0, v28

    #@29
    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@2c
    .line 331
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@2f
    move-object/from16 v0, v19

    #@31
    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@34
    .line 334
    .end local v18    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    #@35
    .line 335
    .local v4, "bssid":Ljava/lang/String;
    const/16 v24, 0x0

    #@37
    .line 337
    .local v24, "ssid":Ljava/lang/String;
    const/4 v7, 0x0

    #@38
    .line 338
    .local v7, "freq":I
    const/16 v25, 0x0

    #@3a
    .line 339
    .local v25, "status":I
    const-wide/16 v10, 0x0

    #@3c
    .line 340
    .local v10, "seen":J
    :try_start_1
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@3e
    .line 341
    .local v6, "rssi":I
    const/4 v5, 0x0

    #@3f
    .line 343
    .local v5, "caps":Ljava/lang/String;
    const/4 v13, 0x0

    #@40
    .line 345
    .end local v5    # "caps":Ljava/lang/String;
    .end local v24    # "ssid":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@43
    move-result-object v21

    #@44
    .line 346
    .local v21, "line":Ljava/lang/String;
    if-nez v21, :cond_2

    #@46
    .line 555
    if-eqz v19, :cond_1

    #@48
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    #@4b
    :cond_1
    :goto_1
    if-eqz v27, :cond_31

    #@4d
    :try_start_3
    throw v27
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    #@4e
    .line 547
    :catch_0
    move-exception v14

    #@4f
    .local v14, "e":Ljava/io/EOFException;
    move-object/from16 v18, v19

    #@51
    .line 327
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v14    # "e":Ljava/io/EOFException;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v21    # "line":Ljava/lang/String;
    .end local v25    # "status":I
    :goto_2
    return-void

    #@52
    .line 349
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v25    # "status":I
    :cond_2
    const/16 v8, 0x3a

    #@54
    :try_start_4
    move-object/from16 v0, v21

    #@56
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    #@59
    move-result v12

    #@5a
    .line 350
    .local v12, "colon":I
    if-ltz v12, :cond_0

    #@5c
    .line 354
    const/4 v8, 0x0

    #@5d
    move-object/from16 v0, v21

    #@5f
    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@62
    move-result-object v8

    #@63
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@66
    move-result-object v20

    #@67
    .line 355
    .local v20, "key":Ljava/lang/String;
    add-int/lit8 v8, v12, 0x1

    #@69
    move-object/from16 v0, v21

    #@6b
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@72
    move-result-object v26

    #@73
    .line 357
    .local v26, "value":Ljava/lang/String;
    const-string/jumbo v8, "CONFIG"

    #@76
    move-object/from16 v0, v20

    #@78
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v8

    #@7c
    if-eqz v8, :cond_6

    #@7e
    .line 358
    move-object/from16 v0, p1

    #@80
    move-object/from16 v1, v26

    #@82
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    move-result-object v13

    #@86
    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    #@88
    .line 362
    .local v13, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v13, :cond_4

    #@8a
    .line 363
    new-instance v8, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v9, "readNetworkHistory didnt find netid for hash="

    #@92
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v8

    #@96
    .line 364
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->hashCode()I

    #@99
    move-result v9

    #@9a
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9d
    move-result-object v9

    #@9e
    .line 363
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v8

    #@a2
    .line 365
    const-string/jumbo v9, " key: "

    #@a5
    .line 363
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v8

    #@a9
    move-object/from16 v0, v26

    #@ab
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v8

    #@af
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v8

    #@b3
    move-object/from16 v0, p0

    #@b5
    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiNetworkHistory;->localLog(Ljava/lang/String;)V

    #@b8
    .line 366
    move-object/from16 v0, p0

    #@ba
    iget-object v8, v0, Lcom/android/server/wifi/WifiNetworkHistory;->mLostConfigsDbg:Ljava/util/HashSet;

    #@bc
    move-object/from16 v0, v26

    #@be
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@c1
    goto/16 :goto_0

    #@c3
    .line 555
    .end local v6    # "rssi":I
    .end local v12    # "colon":I
    .end local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "key":Ljava/lang/String;
    .end local v21    # "line":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :catch_1
    move-exception v8

    #@c4
    move-object/from16 v18, v19

    #@c6
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v25    # "status":I
    :goto_3
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@c7
    :catchall_0
    move-exception v9

    #@c8
    move-object/from16 v29, v9

    #@ca
    move-object v9, v8

    #@cb
    move-object/from16 v8, v29

    #@cd
    :goto_4
    if-eqz v18, :cond_3

    #@cf
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    #@d2
    :cond_3
    :goto_5
    if-eqz v9, :cond_33

    #@d4
    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    #@d5
    .line 547
    :catch_2
    move-exception v14

    #@d6
    .restart local v14    # "e":Ljava/io/EOFException;
    goto/16 :goto_2

    #@d8
    .line 370
    .end local v14    # "e":Ljava/io/EOFException;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v12    # "colon":I
    .restart local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "key":Ljava/lang/String;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v25    # "status":I
    .restart local v26    # "value":Ljava/lang/String;
    :cond_4
    :try_start_8
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@da
    if-eqz v8, :cond_5

    #@dc
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@de
    if-nez v8, :cond_0

    #@e0
    .line 372
    :cond_5
    move-object/from16 v0, p0

    #@e2
    iget-object v8, v0, Lcom/android/server/wifi/WifiNetworkHistory;->mContext:Landroid/content/Context;

    #@e4
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@e7
    move-result-object v8

    #@e8
    const/16 v9, 0x3e8

    #@ea
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@ed
    move-result-object v8

    #@ee
    .line 371
    iput-object v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@f0
    .line 373
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@f2
    iput-object v8, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@f4
    .line 376
    const-string/jumbo v8, "WifiNetworkHistory"

    #@f7
    new-instance v9, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v28, "Upgrading network "

    #@ff
    move-object/from16 v0, v28

    #@101
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v9

    #@105
    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@107
    move/from16 v28, v0

    #@109
    move/from16 v0, v28

    #@10b
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v9

    #@10f
    .line 377
    const-string/jumbo v28, " to "

    #@112
    .line 376
    move-object/from16 v0, v28

    #@114
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v9

    #@118
    .line 377
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@11a
    move-object/from16 v28, v0

    #@11c
    .line 376
    move-object/from16 v0, v28

    #@11e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v9

    #@122
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v9

    #@126
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@129
    goto/16 :goto_0

    #@12b
    .line 555
    .end local v6    # "rssi":I
    .end local v12    # "colon":I
    .end local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "key":Ljava/lang/String;
    .end local v21    # "line":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v8

    #@12c
    move-object/from16 v9, v27

    #@12e
    move-object/from16 v18, v19

    #@130
    .end local v19    # "in":Ljava/io/DataInputStream;
    .local v18, "in":Ljava/io/DataInputStream;
    goto :goto_4

    #@131
    .line 381
    .end local v18    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "rssi":I
    .restart local v12    # "colon":I
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "key":Ljava/lang/String;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v26    # "value":Ljava/lang/String;
    :cond_6
    if-eqz v13, :cond_0

    #@133
    .line 382
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@136
    move-result-object v22

    #@137
    .line 383
    .local v22, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const-string/jumbo v8, "SSID"

    #@13a
    move-object/from16 v0, v20

    #@13c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13f
    move-result v8

    #@140
    if-eqz v8, :cond_8

    #@142
    .line 385
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@145
    move-result v8

    #@146
    if-nez v8, :cond_0

    #@148
    .line 388
    move-object/from16 v24, v26

    #@14a
    .line 389
    .local v24, "ssid":Ljava/lang/String;
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@14c
    if-eqz v8, :cond_7

    #@14e
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@150
    move-object/from16 v0, v26

    #@152
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@155
    move-result v8

    #@156
    if-eqz v8, :cond_2f

    #@158
    .line 394
    :cond_7
    move-object/from16 v0, v26

    #@15a
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@15c
    goto/16 :goto_0

    #@15e
    .line 383
    .end local v24    # "ssid":Ljava/lang/String;
    :cond_8
    const-string/jumbo v8, "CONFIG_BSSID"

    #@161
    move-object/from16 v0, v20

    #@163
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@166
    move-result v8

    #@167
    if-eqz v8, :cond_a

    #@169
    .line 398
    const-string/jumbo v8, "null"

    #@16c
    move-object/from16 v0, v26

    #@16e
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@171
    move-result v8

    #@172
    if-eqz v8, :cond_9

    #@174
    const/16 v26, 0x0

    #@176
    .end local v26    # "value":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v26

    #@178
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@17a
    goto/16 :goto_0

    #@17c
    .line 383
    .restart local v26    # "value":Ljava/lang/String;
    :cond_a
    const-string/jumbo v8, "FQDN"

    #@17f
    move-object/from16 v0, v20

    #@181
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@184
    move-result v8

    #@185
    if-eqz v8, :cond_c

    #@187
    .line 402
    const-string/jumbo v8, "null"

    #@18a
    move-object/from16 v0, v26

    #@18c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18f
    move-result v8

    #@190
    if-eqz v8, :cond_b

    #@192
    const/16 v26, 0x0

    #@194
    .end local v26    # "value":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v26

    #@196
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@198
    goto/16 :goto_0

    #@19a
    .line 383
    .restart local v26    # "value":Ljava/lang/String;
    :cond_c
    const-string/jumbo v8, "DEFAULT_GW"

    #@19d
    move-object/from16 v0, v20

    #@19f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a2
    move-result v8

    #@1a3
    if-eqz v8, :cond_d

    #@1a5
    .line 405
    move-object/from16 v0, v26

    #@1a7
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@1a9
    goto/16 :goto_0

    #@1ab
    .line 383
    :cond_d
    const-string/jumbo v8, "SELF_ADDED"

    #@1ae
    move-object/from16 v0, v20

    #@1b0
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b3
    move-result v8

    #@1b4
    if-eqz v8, :cond_e

    #@1b6
    .line 408
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1b9
    move-result v8

    #@1ba
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@1bc
    goto/16 :goto_0

    #@1be
    .line 383
    :cond_e
    const-string/jumbo v8, "DID_SELF_ADD"

    #@1c1
    move-object/from16 v0, v20

    #@1c3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c6
    move-result v8

    #@1c7
    if-eqz v8, :cond_f

    #@1c9
    .line 411
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1cc
    move-result v8

    #@1cd
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@1cf
    goto/16 :goto_0

    #@1d1
    .line 383
    :cond_f
    const-string/jumbo v8, "NO_INTERNET_ACCESS_REPORTS"

    #@1d4
    move-object/from16 v0, v20

    #@1d6
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d9
    move-result v8

    #@1da
    if-eqz v8, :cond_10

    #@1dc
    .line 414
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1df
    move-result v8

    #@1e0
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@1e2
    goto/16 :goto_0

    #@1e4
    .line 383
    :cond_10
    const-string/jumbo v8, "VALIDATED_INTERNET_ACCESS"

    #@1e7
    move-object/from16 v0, v20

    #@1e9
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ec
    move-result v8

    #@1ed
    if-eqz v8, :cond_11

    #@1ef
    .line 417
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1f2
    move-result v8

    #@1f3
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@1f5
    goto/16 :goto_0

    #@1f7
    .line 383
    :cond_11
    const-string/jumbo v8, "NO_INTERNET_ACCESS_EXPECTED"

    #@1fa
    move-object/from16 v0, v20

    #@1fc
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ff
    move-result v8

    #@200
    if-eqz v8, :cond_12

    #@202
    .line 420
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@205
    move-result v8

    #@206
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@208
    goto/16 :goto_0

    #@20a
    .line 383
    :cond_12
    const-string/jumbo v8, "CREATION_TIME"

    #@20d
    move-object/from16 v0, v20

    #@20f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@212
    move-result v8

    #@213
    if-eqz v8, :cond_13

    #@215
    .line 423
    move-object/from16 v0, v26

    #@217
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@219
    goto/16 :goto_0

    #@21b
    .line 383
    :cond_13
    const-string/jumbo v8, "UPDATE_TIME"

    #@21e
    move-object/from16 v0, v20

    #@220
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@223
    move-result v8

    #@224
    if-eqz v8, :cond_14

    #@226
    .line 426
    move-object/from16 v0, v26

    #@228
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@22a
    goto/16 :goto_0

    #@22c
    .line 383
    :cond_14
    const-string/jumbo v8, "EPHEMERAL"

    #@22f
    move-object/from16 v0, v20

    #@231
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@234
    move-result v8

    #@235
    if-eqz v8, :cond_15

    #@237
    .line 429
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@23a
    move-result v8

    #@23b
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@23d
    goto/16 :goto_0

    #@23f
    .line 383
    :cond_15
    const-string/jumbo v8, "METERED_HINT"

    #@242
    move-object/from16 v0, v20

    #@244
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@247
    move-result v8

    #@248
    if-eqz v8, :cond_16

    #@24a
    .line 432
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@24d
    move-result v8

    #@24e
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@250
    goto/16 :goto_0

    #@252
    .line 383
    :cond_16
    const-string/jumbo v8, "USE_EXTERNAL_SCORES"

    #@255
    move-object/from16 v0, v20

    #@257
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25a
    move-result v8

    #@25b
    if-eqz v8, :cond_17

    #@25d
    .line 435
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@260
    move-result v8

    #@261
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@263
    goto/16 :goto_0

    #@265
    .line 383
    :cond_17
    const-string/jumbo v8, "CREATOR_UID_KEY"

    #@268
    move-object/from16 v0, v20

    #@26a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26d
    move-result v8

    #@26e
    if-eqz v8, :cond_18

    #@270
    .line 438
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@273
    move-result v8

    #@274
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@276
    goto/16 :goto_0

    #@278
    .line 383
    :cond_18
    const-string/jumbo v8, "SCORER_OVERRIDE"

    #@27b
    move-object/from16 v0, v20

    #@27d
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@280
    move-result v8

    #@281
    if-eqz v8, :cond_19

    #@283
    .line 441
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@286
    move-result v8

    #@287
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@289
    goto/16 :goto_0

    #@28b
    .line 383
    :cond_19
    const-string/jumbo v8, "SCORER_OVERRIDE_AND_SWITCH"

    #@28e
    move-object/from16 v0, v20

    #@290
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@293
    move-result v8

    #@294
    if-eqz v8, :cond_1a

    #@296
    .line 444
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@299
    move-result v8

    #@29a
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@29c
    goto/16 :goto_0

    #@29e
    .line 383
    :cond_1a
    const-string/jumbo v8, "NUM_ASSOCIATION"

    #@2a1
    move-object/from16 v0, v20

    #@2a3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a6
    move-result v8

    #@2a7
    if-eqz v8, :cond_1b

    #@2a9
    .line 447
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2ac
    move-result v8

    #@2ad
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@2af
    goto/16 :goto_0

    #@2b1
    .line 383
    :cond_1b
    const-string/jumbo v8, "CONNECT_UID_KEY"

    #@2b4
    move-object/from16 v0, v20

    #@2b6
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b9
    move-result v8

    #@2ba
    if-eqz v8, :cond_1c

    #@2bc
    .line 450
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2bf
    move-result v8

    #@2c0
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@2c2
    goto/16 :goto_0

    #@2c4
    .line 383
    :cond_1c
    const-string/jumbo v8, "UPDATE_UID"

    #@2c7
    move-object/from16 v0, v20

    #@2c9
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2cc
    move-result v8

    #@2cd
    if-eqz v8, :cond_1d

    #@2cf
    .line 453
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2d2
    move-result v8

    #@2d3
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@2d5
    goto/16 :goto_0

    #@2d7
    .line 383
    :cond_1d
    const-string/jumbo v8, "FAILURE"

    #@2da
    move-object/from16 v0, v20

    #@2dc
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2df
    move-result v8

    #@2e0
    if-eqz v8, :cond_1e

    #@2e2
    .line 456
    move-object/from16 v0, v26

    #@2e4
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@2e6
    goto/16 :goto_0

    #@2e8
    .line 383
    :cond_1e
    const-string/jumbo v8, "PEER_CONFIGURATION"

    #@2eb
    move-object/from16 v0, v20

    #@2ed
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f0
    move-result v8

    #@2f1
    if-eqz v8, :cond_1f

    #@2f3
    .line 459
    move-object/from16 v0, v26

    #@2f5
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@2f7
    goto/16 :goto_0

    #@2f9
    .line 383
    :cond_1f
    const-string/jumbo v8, "NETWORK_SELECTION_STATUS"

    #@2fc
    move-object/from16 v0, v20

    #@2fe
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@301
    move-result v8

    #@302
    if-eqz v8, :cond_21

    #@304
    .line 462
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@307
    move-result v23

    #@308
    .line 465
    .local v23, "networkStatusValue":I
    const/4 v8, 0x1

    #@309
    .line 464
    move/from16 v0, v23

    #@30b
    if-ne v0, v8, :cond_20

    #@30d
    .line 467
    const/16 v23, 0x0

    #@30f
    .line 469
    :cond_20
    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    #@312
    goto/16 :goto_0

    #@314
    .line 383
    .end local v23    # "networkStatusValue":I
    :cond_21
    const-string/jumbo v8, "NETWORK_SELECTION_DISABLE_REASON"

    #@317
    move-object/from16 v0, v20

    #@319
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31c
    move-result v8

    #@31d
    if-eqz v8, :cond_22

    #@31f
    .line 472
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@322
    move-result v8

    #@323
    move-object/from16 v0, v22

    #@325
    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    #@328
    goto/16 :goto_0

    #@32a
    .line 383
    :cond_22
    const-string/jumbo v8, "CHOICE"

    #@32d
    move-object/from16 v0, v20

    #@32f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@332
    move-result v8

    #@333
    if-eqz v8, :cond_23

    #@335
    .line 475
    move-object/from16 v0, v22

    #@337
    move-object/from16 v1, v26

    #@339
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    #@33c
    goto/16 :goto_0

    #@33e
    .line 383
    :cond_23
    const-string/jumbo v8, "CHOICE_TIME"

    #@341
    move-object/from16 v0, v20

    #@343
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@346
    move-result v8

    #@347
    if-eqz v8, :cond_24

    #@349
    .line 478
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@34c
    move-result-wide v8

    #@34d
    move-object/from16 v0, v22

    #@34f
    invoke-virtual {v0, v8, v9}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    #@352
    goto/16 :goto_0

    #@354
    .line 383
    :cond_24
    const-string/jumbo v8, "LINK"

    #@357
    move-object/from16 v0, v20

    #@359
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35c
    move-result v8

    #@35d
    if-eqz v8, :cond_25

    #@35f
    .line 481
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@361
    if-nez v8, :cond_30

    #@363
    .line 482
    new-instance v8, Ljava/util/HashMap;

    #@365
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@368
    iput-object v8, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@36a
    goto/16 :goto_0

    #@36c
    .line 383
    :cond_25
    const-string/jumbo v8, "BSSID"

    #@36f
    move-object/from16 v0, v20

    #@371
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@374
    move-result v8

    #@375
    if-eqz v8, :cond_26

    #@377
    .line 488
    const/16 v25, 0x0

    #@379
    .line 489
    const/16 v24, 0x0

    #@37b
    .line 490
    .local v24, "ssid":Ljava/lang/String;
    const/4 v4, 0x0

    #@37c
    .line 491
    const/4 v7, 0x0

    #@37d
    .line 492
    const-wide/16 v10, 0x0

    #@37f
    .line 493
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@381
    .line 494
    const-string/jumbo v5, ""

    #@384
    .local v5, "caps":Ljava/lang/String;
    goto/16 :goto_0

    #@386
    .line 383
    .end local v5    # "caps":Ljava/lang/String;
    .end local v24    # "ssid":Ljava/lang/String;
    :cond_26
    const-string/jumbo v8, "RSSI"

    #@389
    move-object/from16 v0, v20

    #@38b
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38e
    move-result v8

    #@38f
    if-eqz v8, :cond_27

    #@391
    .line 497
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@394
    move-result v6

    #@395
    goto/16 :goto_0

    #@397
    .line 383
    :cond_27
    const-string/jumbo v8, "FREQ"

    #@39a
    move-object/from16 v0, v20

    #@39c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39f
    move-result v8

    #@3a0
    if-eqz v8, :cond_28

    #@3a2
    .line 500
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3a5
    move-result v7

    #@3a6
    goto/16 :goto_0

    #@3a8
    .line 383
    :cond_28
    const-string/jumbo v8, "DATE"

    #@3ab
    move-object/from16 v0, v20

    #@3ad
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b0
    move-result v8

    #@3b1
    if-nez v8, :cond_0

    #@3b3
    const-string/jumbo v8, "/BSSID"

    #@3b6
    move-object/from16 v0, v20

    #@3b8
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3bb
    move-result v8

    #@3bc
    if-eqz v8, :cond_29

    #@3be
    .line 515
    const/4 v8, 0x0

    #@3bf
    if-eqz v8, :cond_0

    #@3c1
    if-eqz v24, :cond_0

    #@3c3
    .line 516
    move-object/from16 v0, p0

    #@3c5
    move-object/from16 v1, p2

    #@3c7
    invoke-direct {v0, v13, v1}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    #@3ca
    move-result-object v8

    #@3cb
    if-eqz v8, :cond_0

    #@3cd
    .line 517
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@3d0
    move-result-object v3

    #@3d1
    .line 518
    .local v3, "wssid":Landroid/net/wifi/WifiSsid;
    new-instance v2, Lcom/android/server/wifi/ScanDetail;

    #@3d3
    .line 519
    const-wide/16 v8, 0x0

    #@3d5
    .line 518
    invoke-direct/range {v2 .. v11}, Lcom/android/server/wifi/ScanDetail;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    #@3d8
    .line 520
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    #@3da
    move-object/from16 v1, p2

    #@3dc
    invoke-direct {v0, v13, v1}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    #@3df
    move-result-object v8

    #@3e0
    invoke-virtual {v8, v2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    #@3e3
    goto/16 :goto_0

    #@3e5
    .line 383
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "wssid":Landroid/net/wifi/WifiSsid;
    :cond_29
    const-string/jumbo v8, "DELETED_EPHEMERAL"

    #@3e8
    move-object/from16 v0, v20

    #@3ea
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3ed
    move-result v8

    #@3ee
    if-eqz v8, :cond_2a

    #@3f0
    .line 525
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3f3
    move-result v8

    #@3f4
    if-nez v8, :cond_0

    #@3f6
    .line 526
    move-object/from16 v0, p3

    #@3f8
    move-object/from16 v1, v26

    #@3fa
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3fd
    goto/16 :goto_0

    #@3ff
    .line 383
    :cond_2a
    const-string/jumbo v8, "CREATOR_NAME"

    #@402
    move-object/from16 v0, v20

    #@404
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@407
    move-result v8

    #@408
    if-eqz v8, :cond_2b

    #@40a
    .line 530
    move-object/from16 v0, v26

    #@40c
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@40e
    goto/16 :goto_0

    #@410
    .line 383
    :cond_2b
    const-string/jumbo v8, "UPDATE_NAME"

    #@413
    move-object/from16 v0, v20

    #@415
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@418
    move-result v8

    #@419
    if-eqz v8, :cond_2c

    #@41b
    .line 533
    move-object/from16 v0, v26

    #@41d
    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@41f
    goto/16 :goto_0

    #@421
    .line 383
    :cond_2c
    const-string/jumbo v8, "USER_APPROVED"

    #@424
    move-object/from16 v0, v20

    #@426
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@429
    move-result v8

    #@42a
    if-eqz v8, :cond_2d

    #@42c
    .line 536
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@42f
    move-result v8

    #@430
    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@432
    goto/16 :goto_0

    #@434
    .line 383
    :cond_2d
    const-string/jumbo v8, "SHARED"

    #@437
    move-object/from16 v0, v20

    #@439
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43c
    move-result v8

    #@43d
    if-eqz v8, :cond_2e

    #@43f
    .line 539
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@442
    move-result v8

    #@443
    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@445
    goto/16 :goto_0

    #@447
    .line 383
    :cond_2e
    const-string/jumbo v8, "HAS_EVER_CONNECTED"

    #@44a
    move-object/from16 v0, v20

    #@44c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44f
    move-result v8

    #@450
    if-eqz v8, :cond_0

    #@452
    .line 542
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@455
    move-result v8

    #@456
    move-object/from16 v0, v22

    #@458
    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    #@45b
    goto/16 :goto_0

    #@45d
    .line 390
    .local v24, "ssid":Ljava/lang/String;
    :cond_2f
    const-string/jumbo v8, "Error parsing network history file, mismatched SSIDs"

    #@460
    move-object/from16 v0, p0

    #@462
    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiNetworkHistory;->loge(Ljava/lang/String;)V

    #@465
    .line 391
    const/4 v13, 0x0

    #@466
    .line 392
    .local v13, "config":Landroid/net/wifi/WifiConfiguration;
    const/16 v24, 0x0

    #@468
    .local v24, "ssid":Ljava/lang/String;
    goto/16 :goto_0

    #@46a
    .line 484
    .end local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v24    # "ssid":Ljava/lang/String;
    :cond_30
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@46c
    const/4 v9, -0x1

    #@46d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@470
    move-result-object v9

    #@471
    move-object/from16 v0, v26

    #@473
    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@476
    goto/16 :goto_0

    #@478
    .line 555
    .end local v12    # "colon":I
    .end local v20    # "key":Ljava/lang/String;
    .end local v22    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v26    # "value":Ljava/lang/String;
    :catch_3
    move-exception v27

    #@479
    goto/16 :goto_1

    #@47b
    :cond_31
    move-object/from16 v18, v19

    #@47d
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_2

    #@47f
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v21    # "line":Ljava/lang/String;
    .end local v25    # "status":I
    :catch_4
    move-exception v27

    #@480
    if-nez v9, :cond_32

    #@482
    move-object/from16 v9, v27

    #@484
    goto/16 :goto_5

    #@486
    :cond_32
    move-object/from16 v0, v27

    #@488
    if-eq v9, v0, :cond_3

    #@48a
    :try_start_9
    move-object/from16 v0, v27

    #@48c
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    #@48f
    goto/16 :goto_5

    #@491
    .line 549
    :catch_5
    move-exception v15

    #@492
    .line 550
    .local v15, "e":Ljava/io/FileNotFoundException;
    :goto_6
    const-string/jumbo v8, "WifiNetworkHistory"

    #@495
    new-instance v9, Ljava/lang/StringBuilder;

    #@497
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@49a
    const-string/jumbo v27, "readNetworkHistory: no config file, "

    #@49d
    move-object/from16 v0, v27

    #@49f
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a2
    move-result-object v9

    #@4a3
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a6
    move-result-object v9

    #@4a7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4aa
    move-result-object v9

    #@4ab
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4ae
    goto/16 :goto_2

    #@4b0
    .line 555
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    :cond_33
    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    #@4b1
    .line 551
    :catch_6
    move-exception v17

    #@4b2
    .line 552
    .local v17, "e":Ljava/lang/NumberFormatException;
    :goto_7
    const-string/jumbo v8, "WifiNetworkHistory"

    #@4b5
    new-instance v9, Ljava/lang/StringBuilder;

    #@4b7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4ba
    const-string/jumbo v27, "readNetworkHistory: failed to parse, "

    #@4bd
    move-object/from16 v0, v27

    #@4bf
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c2
    move-result-object v9

    #@4c3
    move-object/from16 v0, v17

    #@4c5
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c8
    move-result-object v9

    #@4c9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4cc
    move-result-object v9

    #@4cd
    move-object/from16 v0, v17

    #@4cf
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d2
    goto/16 :goto_2

    #@4d4
    .line 553
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v25    # "status":I
    :catch_7
    move-exception v16

    #@4d5
    .local v16, "e":Ljava/io/IOException;
    move-object/from16 v18, v19

    #@4d7
    .line 554
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v21    # "line":Ljava/lang/String;
    .end local v25    # "status":I
    :goto_8
    const-string/jumbo v8, "WifiNetworkHistory"

    #@4da
    new-instance v9, Ljava/lang/StringBuilder;

    #@4dc
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4df
    const-string/jumbo v27, "readNetworkHistory: failed to read, "

    #@4e2
    move-object/from16 v0, v27

    #@4e4
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e7
    move-result-object v9

    #@4e8
    move-object/from16 v0, v16

    #@4ea
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4ed
    move-result-object v9

    #@4ee
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f1
    move-result-object v9

    #@4f2
    move-object/from16 v0, v16

    #@4f4
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f7
    goto/16 :goto_2

    #@4f9
    .line 549
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v25    # "status":I
    :catch_8
    move-exception v15

    #@4fa
    .restart local v15    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v18, v19

    #@4fc
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    goto :goto_6

    #@4fd
    .line 551
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .end local v18    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    :catch_9
    move-exception v17

    #@4fe
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v18, v19

    #@500
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    goto :goto_7

    #@501
    .line 553
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v21    # "line":Ljava/lang/String;
    .end local v25    # "status":I
    :catch_a
    move-exception v16

    #@502
    .restart local v16    # "e":Ljava/io/IOException;
    goto :goto_8

    #@503
    .line 555
    .end local v16    # "e":Ljava/io/IOException;
    .local v18, "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v8

    #@504
    move-object/from16 v9, v27

    #@506
    goto/16 :goto_4

    #@508
    :catch_b
    move-exception v8

    #@509
    goto/16 :goto_3
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
    .line 142
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
    .line 133
    return-void
.end method

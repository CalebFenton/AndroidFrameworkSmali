.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field private static blacklist sCellularNetworkValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator; = null

.field private static blacklist sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface; = null

.field private static greylist sContext:Landroid/content/Context; = null

.field private static blacklist sEuiccCardController:Lcom/android/internal/telephony/euicc/EuiccCardController; = null

.field private static blacklist sEuiccController:Lcom/android/internal/telephony/euicc/EuiccController; = null

.field private static blacklist sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags; = null

.field private static blacklist sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster; = null

.field private static final blacklist sLocalLogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist sLockProxyPhones:Ljava/lang/Object;

.field private static greylist sMadeDefaults:Z = false

.field private static blacklist sMetricsCollector:Lcom/android/internal/telephony/metrics/MetricsCollector;

.field private static blacklist sNotificationChannelController:Lcom/android/internal/telephony/util/NotificationChannelController;

.field private static blacklist sPhone:Lcom/android/internal/telephony/Phone;

.field private static blacklist sPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

.field private static greylist sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static blacklist sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

.field private static blacklist sPhones:[Lcom/android/internal/telephony/Phone;

.field private static blacklist sProxyController:Lcom/android/internal/telephony/ProxyController;

.field private static blacklist sRadioHalCapabilities:Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

.field private static blacklist sSimultaneousCallingTracker:Lcom/android/internal/telephony/SimultaneousCallingTracker;

.field private static blacklist sSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field private static blacklist sTelephonyNetworkProvider:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

.field private static blacklist sUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    .line 111
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addLocalLog(Ljava/lang/String;I)V
    .registers 5

    .line 482
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v0

    .line 483
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 486
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_31

    .line 484
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already present"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_13

    throw p0
.end method

.method public static greylist-max-r calculatePreferredNetworkType(I)I
    .registers 5

    .line 409
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v1, "PhoneFactory"

    if-nez v0, :cond_14

    .line 410
    const-string p0, "Invalid phoneId return default network mode "

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget p0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p0

    return p0

    .line 413
    :cond_14
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculatePreferredNetworkType: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " networkType = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static blacklist createPhone(Landroid/content/Context;I)Lcom/android/internal/telephony/Phone;
    .registers 12

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating Phone with type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneFactory"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    .line 343
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v0, p1

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 345
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object v3, p0

    move v6, p1

    .line 343
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 535
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 536
    const-string p1, "PhoneFactory:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sMadeDefaults="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 542
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    const/4 v1, 0x0

    .line 543
    :goto_2f
    array-length v2, p1

    if-ge v1, v2, :cond_63

    .line 544
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 545
    aget-object v2, p1, v1

    .line 548
    :try_start_37
    invoke-virtual {v2, p0, v0, p2}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_43

    .line 554
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 555
    const-string v2, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_60

    :catch_43
    move-exception v2

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Telephony DebugService: Could not get Phone["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 558
    :cond_63
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 559
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkProvider:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 561
    const-string p1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    const-string p1, "UiccController:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 566
    :try_start_7b
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception p1

    .line 568
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 570
    :goto_85
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 571
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 572
    const-string p1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 575
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 576
    const-string p1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    const-string p1, "sRadioHalCapabilities:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 581
    :try_start_a3
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sRadioHalCapabilities:Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a8} :catch_a9

    goto :goto_ad

    :catch_a9
    move-exception p1

    .line 583
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 585
    :goto_ad
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 586
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 587
    const-string p1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    const-string p1, "LocalLogs:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 591
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter p1

    .line 592
    :try_start_c3
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 593
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 595
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, p0, v0, p2}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto :goto_cb

    :catchall_ec
    move-exception p0

    goto/16 :goto_17b

    .line 598
    :cond_ef
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 599
    monitor-exit p1
    :try_end_f3
    .catchall {:try_start_c3 .. :try_end_f3} :catchall_ec

    .line 600
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 601
    const-string p1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    const-string p1, "SharedPreferences:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 606
    :try_start_103
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    if-eqz p1, :cond_141

    .line 607
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 608
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    .line 609
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_117
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_141

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_13c} :catch_13d

    goto :goto_117

    :catch_13d
    move-exception p1

    .line 614
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 616
    :cond_141
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 617
    const-string p1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    const-string p1, "DebugEvents:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 621
    :try_start_151
    invoke-static {p0, v0, p2}, Landroid/telephony/AnomalyReporter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_154} :catch_155

    goto :goto_159

    :catch_155
    move-exception p0

    .line 623
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    :goto_159
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 626
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 628
    const-string p0, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const-string p0, "Flag Configurations:"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 631
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->reflectAndPrintFlagConfigs(Lcom/android/internal/telephony/IndentingPrintWriter;)V

    .line 632
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 633
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 634
    const-string p0, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 599
    :goto_17b
    :try_start_17b
    monitor-exit p1
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_ec

    throw p0
.end method

.method public static blacklist getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;
    .registers 2

    .line 466
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 468
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static greylist getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 3

    .line 350
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_3
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-eqz v1, :cond_d

    .line 354
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    goto :goto_15

    .line 352
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_b

    throw v1
.end method

.method public static greylist-max-r getDefaultSubscription()I
    .registers 1

    .line 423
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method public static blacklist getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;
    .registers 1

    .line 510
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sMetricsCollector:Lcom/android/internal/telephony/metrics/MetricsCollector;

    return-object v0
.end method

.method public static blacklist getNetworkProvider()Lcom/android/internal/telephony/data/TelephonyNetworkProvider;
    .registers 1

    .line 398
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkProvider:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    return-object v0
.end method

.method public static greylist getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 4

    .line 363
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-eqz v1, :cond_1e

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_11

    .line 371
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1c

    :catchall_f
    move-exception p0

    goto :goto_26

    :cond_11
    if-ltz p0, :cond_1b

    .line 376
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v1

    if-ge p0, v2, :cond_1b

    .line 377
    aget-object p0, v1, p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    .line 383
    :goto_1c
    monitor-exit v0

    return-object p0

    .line 365
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 384
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_f

    throw p0
.end method

.method public static greylist-max-r getPhones()[Lcom/android/internal/telephony/Phone;
    .registers 3

    .line 389
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_3
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-eqz v1, :cond_d

    .line 393
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    goto :goto_15

    .line 391
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_b

    throw v1
.end method

.method public static blacklist getSmsController()Lcom/android/internal/telephony/SmsController;
    .registers 3

    .line 454
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-eqz v1, :cond_11

    .line 458
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ProxyController;->getSmsController()Lcom/android/internal/telephony/SmsController;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    goto :goto_19

    .line 456
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_f

    throw v1
.end method

.method public static blacklist isSMSPromptEnabled()Z
    .registers 4

    .line 428
    const-string v0, "PhoneFactory"

    const/4 v1, 0x0

    .line 431
    :try_start_3
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_sms_prompt"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_16

    .line 434
    :catch_10
    const-string v2, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_16
    if-nez v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x1

    .line 437
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS Prompt option:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static blacklist localLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 500
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v0

    .line 501
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 504
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 505
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    goto :goto_32

    .line 502
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 505
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_14

    throw p0
.end method

.method public static greylist makeDefaultPhone(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 15

    .line 130
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_3
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1d6

    .line 132
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 135
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->create()Lcom/android/internal/telephony/TelephonyDevController;

    .line 137
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->setContext(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_97

    const/4 v0, 0x0

    move v2, v0

    :goto_15
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 148
    :try_start_17
    new-instance v4, Landroid/net/LocalServerSocket;

    const-string v5, "com.android.internal.telephony"

    invoke-direct {v4, v5}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_1c0
    .catchall {:try_start_17 .. :try_end_1e} :catchall_97

    .line 166
    :try_start_1e
    new-instance v2, Lcom/android/internal/telephony/metrics/MetricsCollector;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/metrics/MetricsCollector;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v2, Lcom/android/internal/telephony/PhoneFactory;->sMetricsCollector:Lcom/android/internal/telephony/metrics/MetricsCollector;

    .line 168
    new-instance v2, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 170
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v7

    .line 171
    const-string v2, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cdma Subscription set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    .line 178
    new-array v10, v2, [I

    .line 179
    new-array v4, v2, [Lcom/android/internal/telephony/Phone;

    sput-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    .line 180
    new-array v4, v2, [Lcom/android/internal/telephony/RIL;

    sput-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move v11, v0

    :goto_5b
    if-ge v11, v2, :cond_9b

    .line 185
    sget v4, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v4, v10, v11

    .line 187
    const-string v4, "PhoneFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network Mode set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v10, v11

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v12, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v4, Lcom/android/internal/telephony/RIL;

    aget v5, v10, v11

    .line 189
    invoke-static {v5}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v6

    .line 190
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    aput-object v4, v12, v11

    add-int/lit8 v11, v11, 0x1

    move-object p0, v5

    move-object p1, v9

    goto :goto_5b

    :catchall_97
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1d8

    :cond_9b
    move-object v5, p0

    move-object v9, p1

    if-lez v2, :cond_b6

    .line 194
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object p0, p0, v0

    .line 195
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p0

    .line 194
    invoke-static {v5, p0}, Lcom/android/internal/telephony/RadioConfig;->make(Landroid/content/Context;Lcom/android/internal/telephony/HalVersion;)Lcom/android/internal/telephony/RadioConfig;

    move-result-object p0

    .line 196
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->init(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sRadioHalCapabilities:Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    goto :goto_c3

    .line 200
    :cond_b6
    sget-object p0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-static {v5, p0}, Lcom/android/internal/telephony/RadioConfig;->make(Landroid/content/Context;Lcom/android/internal/telephony/HalVersion;)Lcom/android/internal/telephony/RadioConfig;

    move-result-object p0

    const/4 p1, 0x0

    .line 201
    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->init(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sRadioHalCapabilities:Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    .line 208
    :goto_c3
    invoke-static {v5, v9}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 210
    const-string p0, "PhoneFactory"

    const-string p1, "Creating SubscriptionManagerService"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 212
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, v5, p1, v9}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p0

    const-class p1, Lcom/android/internal/telephony/MultiSimSettingController;

    .line 215
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p0

    .line 215
    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->initMultiSimSettingController(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/MultiSimSettingController;

    .line 217
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.telephony.euicc"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_108

    .line 219
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v5, p0}, Lcom/android/internal/telephony/euicc/EuiccController;->init(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    .line 220
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v5, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->init(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/euicc/EuiccCardController;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sEuiccCardController:Lcom/android/internal/telephony/euicc/EuiccCardController;

    :cond_108
    move p0, v0

    :goto_109
    if-ge p0, v2, :cond_116

    .line 224
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {v5, p0}, Lcom/android/internal/telephony/PhoneFactory;->createPhone(Landroid/content/Context;I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    aput-object v4, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_109

    :cond_116
    if-lez v2, :cond_11e

    .line 230
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p0, p0, v0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    .line 235
    :cond_11e
    invoke-static {v5, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    .line 236
    const-string p1, "NONE"

    if-eqz p0, :cond_12a

    .line 238
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 240
    :cond_12a
    const-string p0, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultSmsApplication: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {v5}, Lcom/android/internal/telephony/SmsApplication;->grantPermissionsToSystemApps(Landroid/content/Context;)V

    .line 249
    invoke-static {v5}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 251
    sput-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 254
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.telephony.ims"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_160

    :goto_154
    if-ge v0, v2, :cond_167

    .line 260
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->createImsPhone()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_154

    .line 263
    :cond_160
    const-string p0, "PhoneFactory"

    const-string p1, "IMS is not supported on this device, skipping ImsResolver."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_167
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {p0, v9}, Lcom/android/internal/telephony/PhoneConfigurationManager;->init(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/PhoneConfigurationManager;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

    .line 268
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 269
    invoke-static {p0, v9}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->init(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/SimultaneousCallingTracker;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sSimultaneousCallingTracker:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    .line 272
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->make(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/data/CellularNetworkValidator;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sCellularNetworkValidator:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    .line 274
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getNumberOfModemsWithSimultaneousDataConnections()I

    move-result p0

    .line 277
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    const-class v0, Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 278
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 279
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1, p0, v0, v2, v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makePhoneSwitcher(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 282
    invoke-static {v5, v9}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/ProxyController;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 284
    invoke-static {v5}, Lcom/android/internal/telephony/IntentBroadcaster;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/IntentBroadcaster;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

    .line 286
    new-instance p0, Lcom/android/internal/telephony/util/NotificationChannelController;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/util/NotificationChannelController;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sNotificationChannelController:Lcom/android/internal/telephony/util/NotificationChannelController;

    .line 289
    new-instance p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1, v5, v9}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkProvider:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;
    :try_end_1bf
    .catchall {:try_start_1e .. :try_end_1bf} :catchall_97

    goto :goto_1d6

    :catch_1c0
    move-object v5, p0

    move-object v9, p1

    const/4 p0, 0x3

    if-gt v2, p0, :cond_1ce

    const-wide/16 p0, 0x7d0

    .line 159
    :try_start_1c7
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1ca
    .catch Ljava/lang/InterruptedException; {:try_start_1c7 .. :try_end_1ca} :catch_1ca
    .catchall {:try_start_1c7 .. :try_end_1ca} :catchall_97

    :catch_1ca
    move-object p0, v5

    move-object p1, v9

    goto/16 :goto_15

    .line 156
    :cond_1ce
    :try_start_1ce
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "PhoneFactory probably already running"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_1d6
    :goto_1d6
    monitor-exit v1

    return-void

    :goto_1d8
    monitor-exit v1
    :try_end_1d9
    .catchall {:try_start_1ce .. :try_end_1d9} :catchall_97

    throw p0
.end method

.method public static blacklist makeDefaultPhones(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 2

    .line 120
    sput-object p1, Lcom/android/internal/telephony/PhoneFactory;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 121
    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method public static blacklist makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .registers 4

    .line 447
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0, p0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist onMultiSimConfigChanged(Landroid/content/Context;I)V
    .registers 11

    .line 303
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v0

    if-ne v2, p1, :cond_d

    .line 305
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    goto :goto_60

    :cond_d
    if-le v2, p1, :cond_11

    .line 309
    monitor-exit v1

    return-void

    .line 311
    :cond_11
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    .line 312
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 314
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v6

    :goto_27
    if-ge v2, p1, :cond_5e

    .line 316
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v3, Lcom/android/internal/telephony/RIL;

    sget v4, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v4}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v5

    .line 318
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    aput-object v3, v0, v2

    .line 319
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {v4, v2}, Lcom/android/internal/telephony/PhoneFactory;->createPhone(Landroid/content/Context;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aput-object v0, p0, v2

    .line 320
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.ims"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5a

    .line 322
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->createImsPhone()V

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    move-object p0, v4

    goto :goto_27

    .line 325
    :cond_5e
    monitor-exit v1

    return-void

    :goto_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_a

    throw p0
.end method

.method private static blacklist reflectAndPrintFlagConfigs(Lcom/android/internal/telephony/IndentingPrintWriter;)V
    .registers 8

    .line 521
    :try_start_0
    const-class v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 522
    array-length v1, v0

    if-nez v1, :cond_f

    .line 523
    const-string v0, "NONE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 526
    :cond_f
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_3f

    aget-object v3, v0, v2

    .line 527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_3a

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 530
    :catch_3a
    const-string v0, "[ERROR]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

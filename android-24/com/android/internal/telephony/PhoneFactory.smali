.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field public static final MAX_ACTIVE_PHONES:I = 0x1

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static final sLocalLogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field static final sLockProxyPhones:Ljava/lang/Object;

.field private static sMadeDefaults:Z

.field private static sPhone:Lcom/android/internal/telephony/Phone;

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

.field private static sPhones:[Lcom/android/internal/telephony/Phone;

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;

.field private static sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

.field private static sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

.field private static sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

.field private static sUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    new-instance v0, Ljava/lang/Object;

    #@3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@6
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    #@8
    .line 64
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@a
    .line 65
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    #@c
    .line 67
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@e
    .line 72
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    .line 73
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@12
    .line 75
    const/4 v0, 0x0

    #@13
    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@15
    .line 82
    new-instance v0, Ljava/util/HashMap;

    #@17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1a
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@1c
    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addLocalLog(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "size"    # I

    #@0
    .prologue
    .line 343
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 344
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "key "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " already present"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 343
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0

    #@2f
    .line 347
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@31
    new-instance v2, Landroid/util/LocalLog;

    #@33
    invoke-direct {v2, p1}, Landroid/util/LocalLog;-><init>(I)V

    #@36
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    monitor-exit v1

    #@3a
    .line 342
    return-void
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneSubId"    # I

    #@0
    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "preferred_network_mode"

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 297
    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    #@1a
    .line 295
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1d
    move-result v0

    #@1e
    .line 298
    .local v0, "networkType":I
    const-string/jumbo v1, "PhoneFactory"

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "calculatePreferredNetworkType: phoneSubId = "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 299
    const-string/jumbo v3, " networkType = "

    #@34
    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 300
    return v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "printwriter"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 370
    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v7, "  "

    #@5
    invoke-direct {v6, p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 371
    .local v6, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v7, "PhoneFactory:"

    #@b
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@e
    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, " sMadeDefaults="

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    sget-boolean v8, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@27
    .line 374
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    #@29
    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@2c
    .line 375
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2f
    .line 377
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    #@32
    move-result-object v5

    #@33
    .line 378
    .local v5, "phones":[Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    #@34
    .local v1, "i":I
    :goto_0
    array-length v7, v5

    #@35
    if-ge v1, v7, :cond_0

    #@37
    .line 379
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3a
    .line 380
    aget-object v4, v5, v1

    #@3c
    .line 383
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    :try_start_0
    invoke-virtual {v4, p0, v6, p2}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 389
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    #@42
    .line 390
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    #@45
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 392
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@4a
    aget-object v7, v7, v1

    #@4c
    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@4f
    .line 394
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    #@52
    .line 395
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    #@55
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 398
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    #@5b
    move-result-object v7

    #@5c
    check-cast v7, Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@5e
    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@61
    .line 402
    :goto_1
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    #@64
    .line 403
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@67
    .line 404
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    #@6a
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 378
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 384
    :catch_0
    move-exception v0

    #@71
    .line 385
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v8, "Telephony DebugService: Could not get Phone["

    #@79
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v7

    #@7d
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v7

    #@81
    const-string/jumbo v8, "] e="

    #@84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v7

    #@8c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@93
    goto :goto_2

    #@94
    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@95
    .line 400
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@98
    goto :goto_1

    #@99
    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string/jumbo v7, "SubscriptionMonitor:"

    #@9c
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 408
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@a2
    .line 410
    :try_start_2
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@a4
    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/SubscriptionMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@a7
    .line 414
    :goto_3
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@aa
    .line 415
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    #@ad
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@b0
    .line 417
    const-string/jumbo v7, "UiccController:"

    #@b3
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@b6
    .line 418
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@b9
    .line 420
    :try_start_3
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@bb
    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@be
    .line 424
    :goto_4
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    #@c1
    .line 425
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@c4
    .line 426
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    #@c7
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@ca
    .line 428
    const-string/jumbo v7, "SubscriptionController:"

    #@cd
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@d0
    .line 429
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@d3
    .line 431
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@d6
    move-result-object v7

    #@d7
    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/SubscriptionController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    #@da
    .line 435
    :goto_5
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    #@dd
    .line 436
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@e0
    .line 437
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    #@e3
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@e6
    .line 439
    const-string/jumbo v7, "SubInfoRecordUpdater:"

    #@e9
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@ec
    .line 440
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@ef
    .line 442
    :try_start_5
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@f1
    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    #@f4
    .line 446
    :goto_6
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    #@f7
    .line 447
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@fa
    .line 448
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    #@fd
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@100
    .line 450
    const-string/jumbo v7, "LocalLogs:"

    #@103
    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@106
    .line 451
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@109
    .line 452
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@10b
    monitor-enter v8

    #@10c
    .line 453
    :try_start_6
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@10e
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@111
    move-result-object v7

    #@112
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@115
    move-result-object v3

    #@116
    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@119
    move-result v7

    #@11a
    if-eqz v7, :cond_1

    #@11c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11f
    move-result-object v2

    #@120
    check-cast v2, Ljava/lang/String;

    #@122
    .line 454
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@125
    .line 455
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@128
    .line 456
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@12a
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12d
    move-result-object v7

    #@12e
    check-cast v7, Landroid/util/LocalLog;

    #@130
    invoke-virtual {v7, p0, v6, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@133
    .line 457
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@136
    goto :goto_7

    #@137
    .line 452
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@138
    monitor-exit v8

    #@139
    throw v7

    #@13a
    .line 411
    :catch_2
    move-exception v0

    #@13b
    .line 412
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@13e
    goto/16 :goto_3

    #@140
    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    #@141
    .line 422
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@144
    goto/16 :goto_4

    #@146
    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    #@147
    .line 433
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@14a
    goto :goto_5

    #@14b
    .line 443
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    #@14c
    .line 444
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@14f
    goto :goto_6

    #@150
    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_7
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@153
    monitor-exit v8

    #@154
    .line 461
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@157
    .line 369
    return-void
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    #@0
    .prologue
    .line 236
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 237
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Default phones haven\'t been made yet!"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 236
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 240
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0
.end method

.method public static getDefaultSubscription()I
    .locals 1

    #@0
    .prologue
    .line 305
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    #@0
    .prologue
    .line 246
    const-string/jumbo v0, ""

    #@3
    .line 248
    .local v0, "dbgInfo":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 249
    :try_start_0
    sget-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@8
    if-nez v2, :cond_0

    #@a
    .line 250
    new-instance v2, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v4, "Default phones haven\'t been made yet!"

    #@f
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 248
    :catchall_0
    move-exception v2

    #@14
    monitor-exit v3

    #@15
    throw v2

    #@16
    .line 252
    :cond_0
    const v2, 0x7fffffff

    #@19
    if-ne p0, v2, :cond_1

    #@1b
    .line 254
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    :goto_0
    monitor-exit v3

    #@1e
    .line 265
    return-object v1

    #@1f
    .line 257
    :cond_1
    if-ltz p0, :cond_2

    #@21
    .line 258
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@28
    move-result v2

    #@29
    if-ge p0, v2, :cond_2

    #@2b
    .line 259
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@2d
    aget-object v1, v2, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    #@30
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v1, 0x0

    #@31
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 3

    #@0
    .prologue
    .line 270
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 271
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Default phones haven\'t been made yet!"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 270
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 274
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0
.end method

.method public static isSMSPromptEnabled()Z
    .locals 6

    #@0
    .prologue
    .line 310
    const/4 v0, 0x0

    #@1
    .line 311
    .local v0, "prompt":Z
    const/4 v2, 0x0

    #@2
    .line 313
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v3

    #@8
    .line 314
    const-string/jumbo v4, "multi_sim_sms_prompt"

    #@b
    .line 313
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v2

    #@f
    .line 318
    :goto_0
    if-nez v2, :cond_0

    #@11
    const/4 v0, 0x0

    #@12
    .line 319
    :goto_1
    const-string/jumbo v3, "PhoneFactory"

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "SMS Prompt option:"

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 321
    return v0

    #@2d
    .line 315
    :catch_0
    move-exception v1

    #@2e
    .line 316
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    #@31
    const-string/jumbo v4, "Settings Exception Reading Dual Sim SMS Prompt Values"

    #@34
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    goto :goto_0

    #@38
    .line 318
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    #@39
    goto :goto_1
.end method

.method public static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    #@0
    .prologue
    .line 361
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 362
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "key "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " not found"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 361
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0

    #@2f
    .line 365
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@31
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/util/LocalLog;

    #@37
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    monitor-exit v1

    #@3b
    .line 360
    return-void
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 32
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 98
    sget-object v31, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    #@2
    monitor-enter v31

    #@3
    .line 99
    :try_start_0
    sget-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@5
    if-nez v3, :cond_8

    #@7
    .line 100
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@9
    .line 103
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->create()Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 105
    const/16 v30, 0x0

    #@e
    .line 107
    .local v30, "retryCount":I
    :goto_0
    const/16 v26, 0x0

    #@10
    .line 108
    .local v26, "hasException":Z
    add-int/lit8 v30, v30, 0x1

    #@12
    .line 113
    :try_start_1
    new-instance v3, Landroid/net/LocalServerSocket;

    #@14
    const-string/jumbo v4, "com.android.internal.telephony"

    #@17
    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 118
    :goto_1
    if-nez v26, :cond_0

    #@1c
    .line 130
    :try_start_2
    new-instance v3, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    #@1e
    invoke-direct {v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    #@21
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@23
    .line 132
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    #@26
    move-result v22

    #@27
    .line 133
    .local v22, "cdmaSubscription":I
    const-string/jumbo v3, "PhoneFactory"

    #@2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v5, "Cdma Subscription set to "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    move/from16 v0, v22

    #@38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 138
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@4a
    move-result v9

    #@4b
    .line 139
    .local v9, "numPhones":I
    new-array v0, v9, [I

    #@4d
    move-object/from16 v27, v0

    #@4f
    .line 140
    .local v27, "networkModes":[I
    new-array v3, v9, [Lcom/android/internal/telephony/Phone;

    #@51
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@53
    .line 141
    new-array v3, v9, [Lcom/android/internal/telephony/RIL;

    #@55
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@57
    .line 142
    new-array v3, v9, [Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@59
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@5b
    .line 144
    const/4 v6, 0x0

    #@5c
    .local v6, "i":I
    :goto_2
    if-ge v6, v9, :cond_2

    #@5e
    .line 147
    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    #@60
    aput v3, v27, v6

    #@62
    .line 149
    const-string/jumbo v3, "PhoneFactory"

    #@65
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "Network Mode set to "

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    aget v5, v27, v6

    #@73
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 150
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@84
    new-instance v4, Lcom/android/internal/telephony/RIL;

    #@86
    aget v5, v27, v6

    #@88
    .line 151
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8b
    move-result-object v7

    #@8c
    .line 150
    move-object/from16 v0, p0

    #@8e
    move/from16 v1, v22

    #@90
    invoke-direct {v4, v0, v5, v1, v7}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    #@93
    aput-object v4, v3, v6

    #@95
    .line 144
    add-int/lit8 v6, v6, 0x1

    #@97
    goto :goto_2

    #@98
    .line 114
    .end local v6    # "i":I
    .end local v9    # "numPhones":I
    .end local v22    # "cdmaSubscription":I
    .end local v27    # "networkModes":[I
    :catch_0
    move-exception v25

    #@99
    .line 115
    .local v25, "ex":Ljava/io/IOException;
    const/16 v26, 0x1

    #@9b
    goto/16 :goto_1

    #@9d
    .line 120
    .end local v25    # "ex":Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x3

    #@9e
    move/from16 v0, v30

    #@a0
    if-le v0, v3, :cond_1

    #@a2
    .line 121
    new-instance v3, Ljava/lang/RuntimeException;

    #@a4
    const-string/jumbo v4, "PhoneFactory probably already running"

    #@a7
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ab
    .line 98
    .end local v26    # "hasException":Z
    .end local v30    # "retryCount":I
    :catchall_0
    move-exception v3

    #@ac
    monitor-exit v31

    #@ad
    throw v3

    #@ae
    .line 124
    .restart local v26    # "hasException":Z
    .restart local v30    # "retryCount":I
    :cond_1
    const-wide/16 v4, 0x7d0

    #@b0
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b3
    goto/16 :goto_0

    #@b5
    .line 125
    :catch_1
    move-exception v24

    #@b6
    .local v24, "er":Ljava/lang/InterruptedException;
    goto/16 :goto_0

    #@b8
    .line 153
    .end local v24    # "er":Ljava/lang/InterruptedException;
    .restart local v6    # "i":I
    .restart local v9    # "numPhones":I
    .restart local v22    # "cdmaSubscription":I
    .restart local v27    # "networkModes":[I
    :cond_2
    :try_start_4
    const-string/jumbo v3, "PhoneFactory"

    #@bb
    const-string/jumbo v4, "Creating SubscriptionController"

    #@be
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    .line 154
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@c3
    move-object/from16 v0, p0

    #@c5
    invoke-static {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;

    #@c8
    .line 158
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@ca
    move-object/from16 v0, p0

    #@cc
    invoke-static {v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    #@cf
    move-result-object v3

    #@d0
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@d2
    .line 160
    const/4 v6, 0x0

    #@d3
    :goto_3
    if-ge v6, v9, :cond_5

    #@d5
    .line 161
    const/4 v2, 0x0

    #@d6
    .line 162
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    aget v3, v27, v6

    #@d8
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    #@db
    move-result v29

    #@dc
    .line 163
    .local v29, "phoneType":I
    const/4 v3, 0x1

    #@dd
    move/from16 v0, v29

    #@df
    if-ne v0, v3, :cond_4

    #@e1
    .line 164
    new-instance v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    #@e3
    .line 165
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@e5
    aget-object v4, v3, v6

    #@e7
    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@e9
    .line 167
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@ec
    move-result-object v8

    #@ed
    .line 166
    const/4 v7, 0x1

    #@ee
    move-object/from16 v3, p0

    #@f0
    .line 164
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    #@f3
    .line 174
    :cond_3
    :goto_4
    const-string/jumbo v3, "PhoneFactory"

    #@f6
    new-instance v4, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v5, "Creating Phone with type = "

    #@fe
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v4

    #@102
    move/from16 v0, v29

    #@104
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@107
    move-result-object v4

    #@108
    const-string/jumbo v5, " sub = "

    #@10b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v4

    #@10f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@112
    move-result-object v4

    #@113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v4

    #@117
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@11a
    .line 176
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@11c
    aput-object v2, v3, v6

    #@11e
    .line 160
    add-int/lit8 v6, v6, 0x1

    #@120
    goto :goto_3

    #@121
    .line 168
    .restart local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_4
    const/4 v3, 0x2

    #@122
    move/from16 v0, v29

    #@124
    if-ne v0, v3, :cond_3

    #@126
    .line 169
    new-instance v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    #@128
    .line 170
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@12a
    aget-object v4, v3, v6

    #@12c
    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@12e
    .line 172
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@131
    move-result-object v8

    #@132
    .line 171
    const/4 v7, 0x6

    #@133
    move-object/from16 v3, p0

    #@135
    .line 169
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    #@138
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_4

    #@139
    .line 182
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v29    # "phoneType":I
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@13b
    const/4 v4, 0x0

    #@13c
    aget-object v3, v3, v4

    #@13e
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    #@140
    .line 183
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@142
    const/4 v4, 0x0

    #@143
    aget-object v3, v3, v4

    #@145
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@147
    .line 188
    const/4 v3, 0x1

    #@148
    move-object/from16 v0, p0

    #@14a
    invoke-static {v0, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@14d
    move-result-object v23

    #@14e
    .line 189
    .local v23, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v28, "NONE"

    #@151
    .line 190
    .local v28, "packageName":Ljava/lang/String;
    if-eqz v23, :cond_6

    #@153
    .line 191
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@156
    move-result-object v28

    #@157
    .line 193
    :cond_6
    const-string/jumbo v3, "PhoneFactory"

    #@15a
    new-instance v4, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v5, "defaultSmsApplication: "

    #@162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v4

    #@166
    move-object/from16 v0, v28

    #@168
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v4

    #@16c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16f
    move-result-object v4

    #@170
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@173
    .line 196
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    #@176
    .line 198
    const/4 v3, 0x1

    #@177
    sput-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@179
    .line 200
    const-string/jumbo v3, "PhoneFactory"

    #@17c
    const-string/jumbo v4, "Creating SubInfoRecordUpdater "

    #@17f
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@182
    .line 201
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@184
    .line 202
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@186
    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@188
    .line 201
    move-object/from16 v0, p0

    #@18a
    invoke-direct {v3, v0, v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    #@18d
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@18f
    .line 203
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@192
    move-result-object v3

    #@193
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@195
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/Phone;)V

    #@198
    .line 208
    const/4 v6, 0x0

    #@199
    :goto_5
    if-ge v6, v9, :cond_7

    #@19b
    .line 209
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@19d
    aget-object v3, v3, v6

    #@19f
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->startMonitoringImsService()V

    #@1a2
    .line 208
    add-int/lit8 v6, v6, 0x1

    #@1a4
    goto :goto_5

    #@1a5
    .line 213
    :cond_7
    const-string/jumbo v3, "telephony.registry"

    #@1a8
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1ab
    move-result-object v3

    #@1ac
    .line 212
    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    #@1af
    move-result-object v13

    #@1b0
    .line 214
    .local v13, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@1b3
    move-result-object v11

    #@1b4
    .line 216
    .local v11, "sc":Lcom/android/internal/telephony/SubscriptionController;
    new-instance v3, Lcom/android/internal/telephony/SubscriptionMonitor;

    #@1b6
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@1b8
    invoke-direct {v3, v13, v4, v11, v9}, Lcom/android/internal/telephony/SubscriptionMonitor;-><init>(Lcom/android/internal/telephony/ITelephonyRegistry;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;I)V

    #@1bb
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@1bd
    .line 218
    new-instance v7, Lcom/android/internal/telephony/PhoneSwitcher;

    #@1bf
    .line 219
    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@1c1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1c4
    move-result-object v12

    #@1c5
    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@1c7
    .line 220
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@1c9
    .line 218
    const/4 v8, 0x1

    #@1ca
    invoke-direct/range {v7 .. v15}, Lcom/android/internal/telephony/PhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    #@1cd
    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    #@1cf
    .line 222
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@1d1
    .line 223
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@1d3
    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@1d5
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    #@1d7
    .line 222
    move-object/from16 v0, p0

    #@1d9
    invoke-static {v0, v3, v4, v5, v7}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneSwitcher;)Lcom/android/internal/telephony/ProxyController;

    #@1dc
    move-result-object v3

    #@1dd
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    #@1df
    .line 225
    new-array v3, v9, [Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@1e1
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@1e3
    .line 226
    const/4 v6, 0x0

    #@1e4
    :goto_6
    if-ge v6, v9, :cond_8

    #@1e6
    .line 227
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@1e8
    new-instance v14, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    #@1ea
    .line 228
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    #@1ec
    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    #@1ee
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1f1
    move-result-object v18

    #@1f2
    .line 229
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@1f4
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    #@1f6
    aget-object v4, v4, v6

    #@1f8
    iget-object v0, v4, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@1fa
    move-object/from16 v21, v0

    #@1fc
    move-object/from16 v16, v11

    #@1fe
    move/from16 v20, v6

    #@200
    .line 227
    invoke-direct/range {v14 .. v21}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionMonitor;Landroid/os/Looper;Landroid/content/Context;ILcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@203
    aput-object v14, v3, v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@205
    .line 226
    add-int/lit8 v6, v6, 0x1

    #@207
    goto :goto_6

    #@208
    .end local v6    # "i":I
    .end local v9    # "numPhones":I
    .end local v11    # "sc":Lcom/android/internal/telephony/SubscriptionController;
    .end local v13    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v22    # "cdmaSubscription":I
    .end local v23    # "componentName":Landroid/content/ComponentName;
    .end local v26    # "hasException":Z
    .end local v27    # "networkModes":[I
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v30    # "retryCount":I
    :cond_8
    monitor-exit v31

    #@209
    .line 97
    return-void
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    #@3
    .line 89
    return-void
.end method

.method public static makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p1, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 329
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@2
    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 284
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@2
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@4
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

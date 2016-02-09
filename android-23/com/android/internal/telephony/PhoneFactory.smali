.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static mProxyController:Lcom/android/internal/telephony/ProxyController;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

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

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

.field private static sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private static sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 64
    new-instance v0, Ljava/lang/Object;

    #@3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@6
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    #@8
    .line 65
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@a
    .line 66
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    #@c
    .line 68
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@e
    .line 73
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    .line 74
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@12
    .line 76
    const/4 v0, 0x0

    #@13
    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@15
    .line 80
    new-instance v0, Ljava/util/HashMap;

    #@17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1a
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@1c
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
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
    .line 431
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 432
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 433
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
    .line 431
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0

    #@2f
    .line 435
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
    .line 430
    return-void
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneSubId"    # I

    #@0
    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 311
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
    .line 312
    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    #@1a
    .line 310
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1d
    move-result v0

    #@1e
    .line 313
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
    .line 314
    const-string/jumbo v3, " networkType = "

    #@34
    .line 313
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
    .line 315
    return v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 458
    const-string/jumbo v8, "PhoneFactory:"

    #@3
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 459
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    #@9
    move-result-object v7

    #@a
    check-cast v7, [Lcom/android/internal/telephony/PhoneProxy;

    #@c
    .line 460
    .local v7, "phones":[Lcom/android/internal/telephony/PhoneProxy;
    const/4 v1, -0x1

    #@d
    .line 461
    .local v1, "i":I
    const/4 v8, 0x0

    #@e
    array-length v10, v7

    #@f
    move v9, v8

    #@10
    :goto_0
    if-ge v9, v10, :cond_0

    #@12
    aget-object v6, v7, v9

    #@14
    .line 463
    .local v6, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    add-int/lit8 v1, v1, 0x1

    #@16
    .line 466
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    #@19
    move-result-object v5

    #@1a
    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    #@1c
    .line 467
    .local v5, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 473
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    #@22
    .line 474
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    #@25
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 477
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    #@2b
    move-result-object v8

    #@2c
    check-cast v8, Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@2e
    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@31
    .line 481
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    #@34
    .line 482
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    #@37
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 461
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :goto_2
    add-int/lit8 v8, v9, 0x1

    #@3c
    move v9, v8

    #@3d
    goto :goto_0

    #@3e
    .line 468
    :catch_0
    move-exception v0

    #@3f
    .line 469
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v11, "Telephony DebugService: Could not get Phone["

    #@47
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    const-string/jumbo v11, "] e="

    #@52
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v8

    #@5a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@61
    goto :goto_2

    #@62
    .line 478
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :catch_1
    move-exception v0

    #@63
    .line 479
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@66
    goto :goto_1

    #@67
    .line 486
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@6e
    .line 492
    :goto_3
    :try_start_3
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@70
    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@73
    .line 496
    :goto_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    #@76
    .line 497
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    #@79
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 500
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@7f
    move-result-object v8

    #@80
    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    #@83
    .line 504
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    #@86
    .line 505
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    #@89
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c
    .line 508
    :try_start_5
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@8e
    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    #@91
    .line 512
    :goto_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    #@94
    .line 514
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    #@97
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9a
    .line 515
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@9c
    monitor-enter v9

    #@9d
    .line 516
    :try_start_6
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    #@9f
    const-string/jumbo v8, "  "

    #@a2
    invoke-direct {v2, p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@a5
    .line 517
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@a7
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@aa
    move-result-object v8

    #@ab
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ae
    move-result-object v4

    #@af
    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@b2
    move-result v8

    #@b3
    if-eqz v8, :cond_1

    #@b5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b8
    move-result-object v3

    #@b9
    check-cast v3, Ljava/lang/String;

    #@bb
    .line 518
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@be
    .line 519
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@c1
    .line 520
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@c3
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c6
    move-result-object v8

    #@c7
    check-cast v8, Landroid/util/LocalLog;

    #@c9
    invoke-virtual {v8, p0, v2, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@cc
    .line 521
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@cf
    goto :goto_7

    #@d0
    .line 515
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@d1
    monitor-exit v9

    #@d2
    throw v8

    #@d3
    .line 487
    :catch_2
    move-exception v0

    #@d4
    .line 488
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@d7
    goto :goto_3

    #@d8
    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    #@d9
    .line 494
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@dc
    goto :goto_4

    #@dd
    .line 501
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    #@de
    .line 502
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@e1
    goto :goto_5

    #@e2
    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    #@e3
    .line 510
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@e6
    goto :goto_6

    #@e7
    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_7
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@ea
    monitor-exit v9

    #@eb
    .line 457
    return-void
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    #@0
    .prologue
    .line 204
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 205
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@5
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@7
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@9
    aget-object v3, v3, p0

    #@b
    .line 206
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@d
    .line 205
    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    #@11
    .line 208
    return-object v0

    #@12
    .line 204
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public static getDataSubscription()J
    .locals 4

    #@0
    .prologue
    .line 387
    const/4 v1, -0x1

    #@1
    .line 390
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 391
    const-string/jumbo v3, "multi_sim_data_call"

    #@a
    .line 390
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    .line 396
    :goto_0
    int-to-long v2, v1

    #@f
    return-wide v2

    #@10
    .line 392
    :catch_0
    move-exception v0

    #@11
    .line 393
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    #@14
    const-string/jumbo v3, "Settings Exception Reading Dual Sim Data Call Values"

    #@17
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    goto :goto_0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    #@0
    .prologue
    .line 220
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 221
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 222
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
    .line 220
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 224
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;
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
    .line 320
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

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    #@0
    .prologue
    .line 212
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 213
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@5
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@7
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@9
    aget-object v3, v3, p0

    #@b
    .line 214
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@d
    .line 213
    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    #@11
    .line 215
    return-object v0

    #@12
    .line 212
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    #@0
    .prologue
    .line 230
    const-string/jumbo v0, ""

    #@3
    .line 232
    .local v0, "dbgInfo":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 233
    :try_start_0
    sget-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@8
    if-nez v2, :cond_0

    #@a
    .line 234
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
    .line 232
    :catchall_0
    move-exception v2

    #@14
    monitor-exit v3

    #@15
    throw v2

    #@16
    .line 236
    :cond_0
    const v2, 0x7fffffff

    #@19
    if-ne p0, v2, :cond_1

    #@1b
    .line 238
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    :goto_0
    monitor-exit v3

    #@1e
    .line 249
    return-object v1

    #@1f
    .line 241
    :cond_1
    if-ltz p0, :cond_2

    #@21
    .line 242
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
    .line 243
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

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
    .line 254
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 255
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 256
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
    .line 254
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 258
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0
.end method

.method public static getSMSSubscription()I
    .locals 4

    #@0
    .prologue
    .line 401
    const/4 v1, -0x1

    #@1
    .line 403
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 404
    const-string/jumbo v3, "multi_sim_sms"

    #@a
    .line 403
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    .line 409
    :goto_0
    return v1

    #@f
    .line 405
    :catch_0
    move-exception v0

    #@10
    .line 406
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    #@13
    const-string/jumbo v3, "Settings Exception Reading Dual Sim SMS Values"

    #@16
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    goto :goto_0
.end method

.method public static getVoiceSubscription()I
    .locals 4

    #@0
    .prologue
    .line 325
    const/4 v1, -0x1

    #@1
    .line 328
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 329
    const-string/jumbo v3, "multi_sim_voice_call"

    #@a
    .line 328
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    .line 334
    :goto_0
    return v1

    #@f
    .line 330
    :catch_0
    move-exception v0

    #@10
    .line 331
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    #@13
    const-string/jumbo v3, "Settings Exception Reading Dual Sim Voice Call Values"

    #@16
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    goto :goto_0
.end method

.method public static isPromptEnabled()Z
    .locals 6

    #@0
    .prologue
    .line 339
    const/4 v0, 0x0

    #@1
    .line 340
    .local v0, "prompt":Z
    const/4 v2, 0x0

    #@2
    .line 342
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v3

    #@8
    .line 343
    const-string/jumbo v4, "multi_sim_voice_prompt"

    #@b
    .line 342
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v2

    #@f
    .line 347
    :goto_0
    if-nez v2, :cond_0

    #@11
    const/4 v0, 0x0

    #@12
    .line 348
    :goto_1
    const-string/jumbo v3, "PhoneFactory"

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "Prompt option:"

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
    .line 350
    return v0

    #@2d
    .line 344
    :catch_0
    move-exception v1

    #@2e
    .line 345
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    #@31
    const-string/jumbo v4, "Settings Exception Reading Dual Sim Voice Prompt Values"

    #@34
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    goto :goto_0

    #@38
    .line 347
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    #@39
    goto :goto_1
.end method

.method public static isSMSPromptEnabled()Z
    .locals 6

    #@0
    .prologue
    .line 363
    const/4 v0, 0x0

    #@1
    .line 364
    .local v0, "prompt":Z
    const/4 v2, 0x0

    #@2
    .line 366
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v3

    #@8
    .line 367
    const-string/jumbo v4, "multi_sim_sms_prompt"

    #@b
    .line 366
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v2

    #@f
    .line 371
    :goto_0
    if-nez v2, :cond_0

    #@11
    const/4 v0, 0x0

    #@12
    .line 372
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
    .line 374
    return v0

    #@2d
    .line 368
    :catch_0
    move-exception v1

    #@2e
    .line 369
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    #@31
    const-string/jumbo v4, "Settings Exception Reading Dual Sim SMS Prompt Values"

    #@34
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    goto :goto_0

    #@38
    .line 371
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
    .line 449
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 450
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 451
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
    .line 449
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0

    #@2f
    .line 453
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
    .line 448
    return-void
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 93
    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    #@2
    monitor-enter v17

    #@3
    .line 94
    :try_start_0
    sget-boolean v16, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@5
    if-nez v16, :cond_7

    #@7
    .line 95
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@9
    .line 98
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->create()Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 100
    const/4 v15, 0x0

    #@d
    .line 102
    .local v15, "retryCount":I
    :goto_0
    const/4 v8, 0x0

    #@e
    .line 103
    .local v8, "hasException":Z
    add-int/lit8 v15, v15, 0x1

    #@10
    .line 108
    :try_start_1
    new-instance v16, Landroid/net/LocalServerSocket;

    #@12
    const-string/jumbo v18, "com.android.internal.telephony"

    #@15
    move-object/from16 v0, v16

    #@17
    move-object/from16 v1, v18

    #@19
    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 113
    :goto_1
    if-nez v8, :cond_0

    #@1e
    .line 125
    :try_start_2
    new-instance v16, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    #@20
    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    #@23
    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@25
    .line 127
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    #@28
    move-result v4

    #@29
    .line 128
    .local v4, "cdmaSubscription":I
    const-string/jumbo v16, "PhoneFactory"

    #@2c
    new-instance v18, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v19, "Cdma Subscription set to "

    #@34
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v18

    #@38
    move-object/from16 v0, v18

    #@3a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v18

    #@3e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v18

    #@42
    move-object/from16 v0, v16

    #@44
    move-object/from16 v1, v18

    #@46
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 133
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@4c
    move-result-object v16

    #@4d
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@50
    move-result v11

    #@51
    .line 134
    .local v11, "numPhones":I
    new-array v10, v11, [I

    #@53
    .line 135
    .local v10, "networkModes":[I
    new-array v0, v11, [Lcom/android/internal/telephony/PhoneProxy;

    #@55
    move-object/from16 v16, v0

    #@57
    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@59
    .line 136
    new-array v0, v11, [Lcom/android/internal/telephony/RIL;

    #@5b
    move-object/from16 v16, v0

    #@5d
    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@5f
    .line 138
    const/4 v9, 0x0

    #@60
    .local v9, "i":I
    :goto_2
    if-ge v9, v11, :cond_2

    #@62
    .line 141
    sget v16, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    #@64
    aput v16, v10, v9

    #@66
    .line 143
    const-string/jumbo v16, "PhoneFactory"

    #@69
    new-instance v18, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v19, "Network Mode set to "

    #@71
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v18

    #@75
    aget v19, v10, v9

    #@77
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7a
    move-result-object v19

    #@7b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v18

    #@7f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v18

    #@83
    move-object/from16 v0, v16

    #@85
    move-object/from16 v1, v18

    #@87
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 144
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@8c
    new-instance v18, Lcom/android/internal/telephony/RIL;

    #@8e
    aget v19, v10, v9

    #@90
    .line 145
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@93
    move-result-object v20

    #@94
    .line 144
    move-object/from16 v0, v18

    #@96
    move-object/from16 v1, p0

    #@98
    move/from16 v2, v19

    #@9a
    move-object/from16 v3, v20

    #@9c
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    #@9f
    aput-object v18, v16, v9

    #@a1
    .line 138
    add-int/lit8 v9, v9, 0x1

    #@a3
    goto :goto_2

    #@a4
    .line 109
    .end local v4    # "cdmaSubscription":I
    .end local v9    # "i":I
    .end local v10    # "networkModes":[I
    .end local v11    # "numPhones":I
    :catch_0
    move-exception v7

    #@a5
    .line 110
    .local v7, "ex":Ljava/io/IOException;
    const/4 v8, 0x1

    #@a6
    goto/16 :goto_1

    #@a8
    .line 115
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_0
    const/16 v16, 0x3

    #@aa
    move/from16 v0, v16

    #@ac
    if-le v15, v0, :cond_1

    #@ae
    .line 116
    new-instance v16, Ljava/lang/RuntimeException;

    #@b0
    const-string/jumbo v18, "PhoneFactory probably already running"

    #@b3
    move-object/from16 v0, v16

    #@b5
    move-object/from16 v1, v18

    #@b7
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@bb
    .line 93
    .end local v8    # "hasException":Z
    .end local v15    # "retryCount":I
    :catchall_0
    move-exception v16

    #@bc
    monitor-exit v17

    #@bd
    throw v16

    #@be
    .line 119
    .restart local v8    # "hasException":Z
    .restart local v15    # "retryCount":I
    :cond_1
    const-wide/16 v18, 0x7d0

    #@c0
    :try_start_3
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c3
    goto/16 :goto_0

    #@c5
    .line 120
    :catch_1
    move-exception v6

    #@c6
    .local v6, "er":Ljava/lang/InterruptedException;
    goto/16 :goto_0

    #@c8
    .line 147
    .end local v6    # "er":Ljava/lang/InterruptedException;
    .restart local v4    # "cdmaSubscription":I
    .restart local v9    # "i":I
    .restart local v10    # "networkModes":[I
    .restart local v11    # "numPhones":I
    :cond_2
    :try_start_4
    const-string/jumbo v16, "PhoneFactory"

    #@cb
    const-string/jumbo v18, "Creating SubscriptionController"

    #@ce
    move-object/from16 v0, v16

    #@d0
    move-object/from16 v1, v18

    #@d2
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    .line 148
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@d7
    move-object/from16 v0, p0

    #@d9
    move-object/from16 v1, v16

    #@db
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;

    #@de
    .line 152
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@e0
    move-object/from16 v0, p0

    #@e2
    move-object/from16 v1, v16

    #@e4
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    #@e7
    move-result-object v16

    #@e8
    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@ea
    .line 154
    const/4 v9, 0x0

    #@eb
    :goto_3
    if-ge v9, v11, :cond_5

    #@ed
    .line 155
    const/4 v13, 0x0

    #@ee
    .line 156
    .local v13, "phone":Lcom/android/internal/telephony/PhoneBase;
    aget v16, v10, v9

    #@f0
    invoke-static/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    #@f3
    move-result v14

    #@f4
    .line 157
    .local v14, "phoneType":I
    const/16 v16, 0x1

    #@f6
    move/from16 v0, v16

    #@f8
    if-ne v14, v0, :cond_4

    #@fa
    .line 158
    new-instance v13, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@fc
    .line 159
    .end local v13    # "phone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@fe
    aget-object v16, v16, v9

    #@100
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@102
    .line 158
    move-object/from16 v0, p0

    #@104
    move-object/from16 v1, v16

    #@106
    move-object/from16 v2, v18

    #@108
    invoke-direct {v13, v0, v1, v2, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    #@10b
    .line 160
    .local v13, "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->startMonitoringImsService()V

    #@10e
    .line 166
    .end local v13    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_3
    :goto_4
    const-string/jumbo v16, "PhoneFactory"

    #@111
    new-instance v18, Ljava/lang/StringBuilder;

    #@113
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    const-string/jumbo v19, "Creating Phone with type = "

    #@119
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v18

    #@11d
    move-object/from16 v0, v18

    #@11f
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@122
    move-result-object v18

    #@123
    const-string/jumbo v19, " sub = "

    #@126
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v18

    #@12a
    move-object/from16 v0, v18

    #@12c
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v18

    #@130
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v18

    #@134
    move-object/from16 v0, v16

    #@136
    move-object/from16 v1, v18

    #@138
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@13b
    .line 168
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@13d
    new-instance v18, Lcom/android/internal/telephony/PhoneProxy;

    #@13f
    move-object/from16 v0, v18

    #@141
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    #@144
    aput-object v18, v16, v9

    #@146
    .line 154
    add-int/lit8 v9, v9, 0x1

    #@148
    goto :goto_3

    #@149
    .line 161
    .local v13, "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_4
    const/16 v16, 0x2

    #@14b
    move/from16 v0, v16

    #@14d
    if-ne v14, v0, :cond_3

    #@14f
    .line 162
    new-instance v13, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    #@151
    .line 163
    .end local v13    # "phone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@153
    aget-object v16, v16, v9

    #@155
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@157
    .line 162
    move-object/from16 v0, p0

    #@159
    move-object/from16 v1, v16

    #@15b
    move-object/from16 v2, v18

    #@15d
    invoke-direct {v13, v0, v1, v2, v9}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    #@160
    .line 164
    .local v13, "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->startMonitoringImsService()V

    #@163
    goto :goto_4

    #@164
    .line 170
    .end local v13    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v14    # "phoneType":I
    :cond_5
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@166
    .line 171
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@168
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@16a
    .line 170
    move-object/from16 v0, p0

    #@16c
    move-object/from16 v1, v16

    #@16e
    move-object/from16 v2, v18

    #@170
    move-object/from16 v3, v19

    #@172
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;

    #@175
    move-result-object v16

    #@176
    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->mProxyController:Lcom/android/internal/telephony/ProxyController;

    #@178
    .line 176
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@17a
    const/16 v18, 0x0

    #@17c
    aget-object v16, v16, v18

    #@17e
    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    #@180
    .line 177
    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@182
    const/16 v18, 0x0

    #@184
    aget-object v16, v16, v18

    #@186
    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@188
    .line 182
    const/16 v16, 0x1

    #@18a
    move-object/from16 v0, p0

    #@18c
    move/from16 v1, v16

    #@18e
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@191
    move-result-object v5

    #@192
    .line 183
    .local v5, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v12, "NONE"

    #@195
    .line 184
    .local v12, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@197
    .line 185
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@19a
    move-result-object v12

    #@19b
    .line 187
    :cond_6
    const-string/jumbo v16, "PhoneFactory"

    #@19e
    new-instance v18, Ljava/lang/StringBuilder;

    #@1a0
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1a3
    const-string/jumbo v19, "defaultSmsApplication: "

    #@1a6
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v18

    #@1aa
    move-object/from16 v0, v18

    #@1ac
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v18

    #@1b0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b3
    move-result-object v18

    #@1b4
    move-object/from16 v0, v16

    #@1b6
    move-object/from16 v1, v18

    #@1b8
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1bb
    .line 190
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    #@1be
    .line 192
    const/16 v16, 0x1

    #@1c0
    sput-boolean v16, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    #@1c2
    .line 194
    const-string/jumbo v16, "PhoneFactory"

    #@1c5
    const-string/jumbo v18, "Creating SubInfoRecordUpdater "

    #@1c8
    move-object/from16 v0, v16

    #@1ca
    move-object/from16 v1, v18

    #@1cc
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1cf
    .line 195
    new-instance v16, Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@1d1
    .line 196
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@1d3
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@1d5
    .line 195
    move-object/from16 v0, v16

    #@1d7
    move-object/from16 v1, p0

    #@1d9
    move-object/from16 v2, v18

    #@1db
    move-object/from16 v3, v19

    #@1dd
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    #@1e0
    sput-object v16, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@1e2
    .line 197
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@1e5
    move-result-object v16

    #@1e6
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@1e8
    move-object/from16 v0, v16

    #@1ea
    move-object/from16 v1, v18

    #@1ec
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1ef
    .end local v4    # "cdmaSubscription":I
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "hasException":Z
    .end local v9    # "i":I
    .end local v10    # "networkModes":[I
    .end local v11    # "numPhones":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v15    # "retryCount":I
    :cond_7
    monitor-exit v17

    #@1f0
    .line 92
    return-void
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    #@3
    .line 84
    return-void
.end method

.method public static makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 1
    .param p0, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p1, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 417
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
    .line 268
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

.method public static setDefaultSubscription(I)V
    .locals 6
    .param p0, "subId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 276
    const-string/jumbo v3, "persist.radio.default.sub"

    #@4
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 277
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@12
    move-result v2

    #@13
    .line 279
    .local v2, "phoneId":I
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    #@15
    monitor-enter v4

    #@16
    .line 281
    if-ltz v2, :cond_0

    #@18
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@1a
    array-length v3, v3

    #@1b
    if-ge v2, v3, :cond_0

    #@1d
    .line 282
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@1f
    aget-object v3, v3, v2

    #@21
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    #@23
    .line 283
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@25
    aget-object v3, v3, v2

    #@27
    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    #@29
    .line 284
    const/4 v3, 0x1

    #@2a
    sput-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_0
    monitor-exit v4

    #@2d
    .line 289
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 291
    .local v0, "defaultMccMnc":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@37
    invoke-static {v3, v0, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@3a
    .line 294
    new-instance v1, Landroid/content/Intent;

    #@3c
    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    #@3f
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@42
    .line 295
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    #@44
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@47
    .line 296
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@4a
    .line 297
    const-string/jumbo v3, "PhoneFactory"

    #@4d
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v5, "setDefaultSubscription : "

    #@55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 298
    const-string/jumbo v5, " Broadcasting Default Subscription Changed..."

    #@60
    .line 297
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 299
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@6d
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@6f
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@72
    .line 275
    return-void

    #@73
    .line 279
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@74
    monitor-exit v4

    #@75
    throw v3
.end method

.method public static setPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    #@0
    .prologue
    .line 355
    if-nez p0, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    .line 356
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v1

    #@9
    .line 357
    const-string/jumbo v2, "multi_sim_voice_prompt"

    #@c
    .line 356
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@f
    .line 358
    const-string/jumbo v1, "PhoneFactory"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "setVoicePromptOption to "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 354
    return-void

    #@2a
    .line 355
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    #@2b
    .restart local v0    # "value":I
    goto :goto_0
.end method

.method public static setSMSPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    #@0
    .prologue
    .line 379
    if-nez p0, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    .line 380
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    #@5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v1

    #@9
    .line 381
    const-string/jumbo v2, "multi_sim_sms_prompt"

    #@c
    .line 380
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@f
    .line 382
    const-string/jumbo v1, "PhoneFactory"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "setSMSPromptOption to "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 378
    return-void

    #@2a
    .line 379
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    #@2b
    .restart local v0    # "value":I
    goto :goto_0
.end method

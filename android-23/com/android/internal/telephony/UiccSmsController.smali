.class public Lcom/android/internal/telephony/UiccSmsController;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "UiccSmsController.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_UiccSmsController"


# instance fields
.field protected mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method protected constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/UiccSmsController;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@5
    .line 50
    const-string/jumbo v0, "isms"

    #@8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 51
    const-string/jumbo v0, "isms"

    #@11
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@14
    .line 47
    :cond_0
    return-void
.end method

.method private getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 7
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 326
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->isActiveSubId(I)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 327
    const-string/jumbo v3, "RIL_UiccSmsController"

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "Subscription "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, " is inactive."

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 328
    return-object v6

    #@29
    .line 331
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@30
    move-result v2

    #@31
    .line 333
    .local v2, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    .line 334
    const v3, 0x7fffffff

    #@3a
    if-ne v2, v3, :cond_2

    #@3c
    .line 335
    :cond_1
    const/4 v2, 0x0

    #@3d
    .line 340
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/UiccSmsController;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@3f
    aget-object v3, v3, v2

    #@41
    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    #@43
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    move-result-object v3

    #@47
    .line 339
    return-object v3

    #@48
    .line 345
    :catch_0
    move-exception v0

    #@49
    .line 346
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v3, "RIL_UiccSmsController"

    #@4c
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "Exception is :"

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    const-string/jumbo v5, " For subscription :"

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 347
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    #@75
    .line 348
    return-object v6

    #@76
    .line 341
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    #@77
    .line 342
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "RIL_UiccSmsController"

    #@7a
    new-instance v4, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v5, "Exception is :"

    #@82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v4

    #@8e
    const-string/jumbo v5, " For subscription :"

    #@91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    .line 343
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    #@a3
    .line 344
    return-object v6
.end method

.method private isActiveSubId(I)Z
    .locals 1
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 399
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "errorCode"    # I

    #@0
    .prologue
    .line 403
    if-eqz p1, :cond_0

    #@2
    .line 405
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 402
    :cond_0
    :goto_0
    return-void

    #@6
    .line 406
    :catch_0
    move-exception v0

    #@7
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method private sendErrorInPendingIntents(Ljava/util/List;I)V
    .locals 3
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 412
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "intent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/app/PendingIntent;

    #@10
    .line 413
    .local v0, "intent":Landroid/app/PendingIntent;
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/UiccSmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    #@13
    goto :goto_0

    #@14
    .line 411
    .end local v0    # "intent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method


# virtual methods
.method public copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 73
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    .line 74
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 76
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "copyMessageToIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 78
    const/4 v1, 0x0

    #@26
    return v1
.end method

.method public disableCellBroadcastForSubscriber(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/internal/telephony/UiccSmsController;->disableCellBroadcastRangeForSubscriber(IIII)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public disableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 213
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    .line 214
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(III)Z

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 216
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "disableCellBroadcastRangeForSubscriber iccSmsIntMgr is null for Subscription:"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 219
    const/4 v1, 0x0

    #@26
    return v1
.end method

.method public enableCellBroadcastForSubscriber(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/internal/telephony/UiccSmsController;->enableCellBroadcastRangeForSubscriber(IIII)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public enableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 193
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    .line 194
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(III)Z

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 196
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "enableCellBroadcastRangeForSubscriber iccSmsIntMgr is null for Subscription: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 199
    const/4 v1, 0x0

    #@26
    return v1
.end method

.method public getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@4
    move-result-object v0

    #@5
    .line 86
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@7
    .line 87
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 89
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getAllMessagesFromIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 91
    return-object v4
.end method

.method public getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@4
    move-result-object v0

    #@5
    .line 301
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@7
    .line 302
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getImsSmsFormat()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 304
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@f
    const-string/jumbo v2, "getImsSmsFormatForSubscriber iccSmsIntMgr is null"

    #@12
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 306
    return-object v3
.end method

.method public getPreferredSmsSubscription()I
    .locals 1

    #@0
    .prologue
    .line 356
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 230
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    .line 231
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getPremiumSmsPermission(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 233
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@e
    const-string/jumbo v2, "getPremiumSmsPermissionForSubscriber iccSmsIntMgr is null"

    #@11
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 236
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "pdu"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "receivedIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 313
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    .line 314
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    #@9
    .line 311
    :goto_0
    return-void

    #@a
    .line 316
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@d
    const-string/jumbo v2, "injectSmsPduForSubscriber iccSmsIntMgr is null"

    #@10
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 318
    const/4 v1, 0x2

    #@14
    invoke-direct {p0, p4, v1}, Lcom/android/internal/telephony/UiccSmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    #@17
    goto :goto_0
.end method

.method public isImsSmsSupportedForSubscriber(I)Z
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 257
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    .line 258
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isImsSmsSupported()Z

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 260
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@e
    const-string/jumbo v2, "isImsSmsSupportedForSubscriber iccSmsIntMgr is null"

    #@11
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 262
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public isSMSPromptEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 364
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSMSPromptEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isSmsSimPickActivityNeeded(I)Z
    .locals 11
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 267
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@5
    move-result-object v8

    #@6
    invoke-virtual {v8}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    .line 269
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v8, "phone"

    #@d
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v7

    #@11
    check-cast v7, Landroid/telephony/TelephonyManager;

    #@13
    .line 271
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v2

    #@17
    .line 273
    .local v2, "identity":J
    :try_start_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@1a
    move-result-object v8

    #@1b
    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v6

    #@1f
    .line 275
    .local v6, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 278
    if-eqz v6, :cond_2

    #@24
    .line 279
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@27
    move-result v5

    #@28
    .line 281
    .local v5, "subInfoLength":I
    const/4 v1, 0x0

    #@29
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    #@2b
    .line 282
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Landroid/telephony/SubscriptionInfo;

    #@31
    .line 283
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_0

    #@33
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@36
    move-result v8

    #@37
    if-ne v8, p1, :cond_0

    #@39
    .line 285
    return v9

    #@3a
    .line 274
    .end local v1    # "i":I
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "subInfoLength":I
    .end local v6    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v8

    #@3b
    .line 275
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3e
    .line 274
    throw v8

    #@3f
    .line 281
    .restart local v1    # "i":I
    .restart local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v5    # "subInfoLength":I
    .restart local v6    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 290
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    if-lez v5, :cond_2

    #@44
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@47
    move-result v8

    #@48
    if-le v8, v10, :cond_2

    #@4a
    .line 291
    return v10

    #@4b
    .line 295
    .end local v1    # "i":I
    .end local v5    # "subInfoLength":I
    :cond_2
    return v9
.end method

.method public sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 100
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    move-object v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    move v4, p5

    #@a
    move-object v5, p6

    #@b
    move-object v6, p7

    #@c
    move-object/from16 v7, p8

    #@e
    .line 101
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@11
    .line 98
    :goto_0
    return-void

    #@12
    .line 104
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "sendDataForSubscriber iccSmsIntMgr is null for Subscription: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 107
    const/4 v1, 0x1

    #@2d
    invoke-direct {p0, p7, v1}, Lcom/android/internal/telephony/UiccSmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    #@30
    goto :goto_0
.end method

.method public sendDataForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 115
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    move-object v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    move v4, p5

    #@a
    move-object v5, p6

    #@b
    move-object v6, p7

    #@c
    move-object/from16 v7, p8

    #@e
    .line 116
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@11
    .line 113
    :goto_0
    return-void

    #@12
    .line 119
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "sendText iccSmsIntMgr is null for Subscription: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()I

    #@3
    move-result v1

    #@4
    .line 163
    const/4 v8, 0x1

    #@5
    move-object v0, p0

    #@6
    move-object v2, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    move-object v5, p4

    #@a
    move-object v6, p5

    #@b
    move-object v7, p6

    #@c
    .line 161
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/UiccSmsController;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    #@f
    .line 160
    return-void
.end method

.method public sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 172
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    move-object v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    move-object v4, p5

    #@a
    move-object v5, p6

    #@b
    move-object v6, p7

    #@c
    move/from16 v7, p8

    #@e
    .line 173
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    #@11
    .line 170
    :goto_0
    return-void

    #@12
    .line 176
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "sendMultipartTextForSubscriber iccSmsIntMgr is null for Subscription: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 178
    const/4 v1, 0x1

    #@2d
    invoke-direct {p0, p6, v1}, Lcom/android/internal/telephony/UiccSmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    #@30
    goto :goto_0
.end method

.method public sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageUri"    # Landroid/net/Uri;
    .param p4, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 385
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    move-object v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    move-object v4, p5

    #@a
    move-object v5, p6

    #@b
    .line 386
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    #@e
    .line 383
    :goto_0
    return-void

    #@f
    .line 389
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "sendStoredMultipartText iccSmsIntMgr is null for subscription: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 391
    const/4 v1, 0x1

    #@2a
    invoke-direct {p0, p5, v1}, Lcom/android/internal/telephony/UiccSmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    #@2d
    goto :goto_0
.end method

.method public sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageUri"    # Landroid/net/Uri;
    .param p4, "scAddress"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 371
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    move-object v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    move-object v4, p5

    #@a
    move-object v5, p6

    #@b
    .line 372
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@e
    .line 369
    :goto_0
    return-void

    #@f
    .line 375
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "sendStoredText iccSmsIntMgr is null for subscription: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 376
    const/4 v1, 0x1

    #@2a
    invoke-direct {p0, p5, v1}, Lcom/android/internal/telephony/UiccSmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    #@2d
    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()I

    #@3
    move-result v1

    #@4
    .line 127
    const/4 v8, 0x1

    #@5
    move-object v0, p0

    #@6
    move-object v2, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    move-object v5, p4

    #@a
    move-object v6, p5

    #@b
    move-object v7, p6

    #@c
    .line 126
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/UiccSmsController;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    #@f
    .line 125
    return-void
.end method

.method public sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z

    #@0
    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 135
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    move-object v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    move-object v4, p5

    #@a
    move-object v5, p6

    #@b
    move-object v6, p7

    #@c
    move/from16 v7, p8

    #@e
    .line 136
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    #@11
    .line 133
    :goto_0
    return-void

    #@12
    .line 139
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "sendTextForSubscriber iccSmsIntMgr is null for Subscription: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 141
    const/4 v1, 0x1

    #@2d
    invoke-direct {p0, p6, v1}, Lcom/android/internal/telephony/UiccSmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    #@30
    goto :goto_0
.end method

.method public sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 149
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    move-object v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    move-object v4, p5

    #@a
    move-object v5, p6

    #@b
    move-object v6, p7

    #@c
    .line 150
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@f
    .line 147
    :goto_0
    return-void

    #@10
    .line 153
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "sendText iccSmsIntMgr is null for Subscription: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    goto :goto_0
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    #@0
    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    #@7
    .line 240
    return-void
.end method

.method public setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # I

    #@0
    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 247
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    .line 248
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setPremiumSmsPermission(Ljava/lang/String;I)V

    #@9
    .line 245
    :goto_0
    return-void

    #@a
    .line 250
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@d
    const-string/jumbo v2, "setPremiumSmsPermissionForSubscriber iccSmsIntMgr is null"

    #@10
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    goto :goto_0
.end method

.method public updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "status"    # I
    .param p5, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@3
    move-result-object v0

    #@4
    .line 60
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    #@6
    .line 61
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 63
    :cond_0
    const-string/jumbo v1, "RIL_UiccSmsController"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "updateMessageOnIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 65
    const/4 v1, 0x0

    #@26
    return v1
.end method

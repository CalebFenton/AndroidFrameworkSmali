.class public final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# static fields
.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "GsmSMSDispatcher"

.field private static final VDBG:Z


# instance fields
.field private mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;
    .param p4, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    #@4
    .line 52
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@6
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@d
    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@f
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@12
    .line 54
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@14
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@16
    const/16 v1, 0x64

    #@18
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1b
    .line 66
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@1d
    .line 67
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@23
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@25
    const/16 v1, 0xf

    #@27
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@2a
    .line 69
    const-string/jumbo v0, "GsmSMSDispatcher"

    #@2d
    const-string/jumbo v1, "GsmSMSDispatcher created"

    #@30
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 63
    return-void
.end method

.method private handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    const/4 v12, 0x1

    #@2
    .line 119
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4
    check-cast v6, Ljava/lang/String;

    #@6
    .line 120
    .local v6, "pduString":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    #@9
    move-result-object v7

    #@a
    .line 122
    .local v7, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v7, :cond_2

    #@c
    .line 123
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    #@f
    move-result v8

    #@10
    .line 124
    .local v8, "tpStatus":I
    iget v5, v7, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    #@12
    .line 125
    .local v5, "messageRef":I
    const/4 v3, 0x0

    #@13
    .local v3, "i":I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v0

    #@19
    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_2

    #@1b
    .line 126
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v9

    #@21
    check-cast v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@23
    .line 127
    .local v9, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@25
    if-ne v10, v5, :cond_3

    #@27
    .line 129
    const/16 v10, 0x40

    #@29
    if-ge v8, v10, :cond_0

    #@2b
    const/16 v10, 0x20

    #@2d
    if-ge v8, v10, :cond_1

    #@2f
    .line 130
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@34
    .line 132
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    #@36
    invoke-virtual {v9, v10, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    #@39
    .line 134
    :cond_1
    iget-object v4, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@3b
    .line 135
    .local v4, "intent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    #@3d
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@40
    .line 136
    .local v2, "fillIn":Landroid/content/Intent;
    const-string/jumbo v10, "pdu"

    #@43
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    #@46
    move-result-object v11

    #@47
    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@4a
    .line 137
    const-string/jumbo v10, "format"

    #@4d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    #@50
    move-result-object v11

    #@51
    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@54
    .line 139
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    #@56
    const/4 v11, -0x1

    #@57
    invoke-virtual {v4, v10, v11, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 147
    .end local v0    # "count":I
    .end local v2    # "fillIn":Landroid/content/Intent;
    .end local v3    # "i":I
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v5    # "messageRef":I
    .end local v8    # "tpStatus":I
    .end local v9    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5c
    invoke-interface {v10, v12, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    #@5f
    .line 118
    return-void

    #@60
    .line 125
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v5    # "messageRef":I
    .restart local v8    # "tpStatus":I
    .restart local v9    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@62
    goto :goto_0

    #@63
    .line 140
    .restart local v2    # "fillIn":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    #@64
    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method private onUpdateIccAvailability()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 330
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 331
    return-void

    #@6
    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    move-result-object v1

    #@a
    .line 336
    .local v1, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@12
    .line 337
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v1, :cond_3

    #@14
    .line 338
    if-eqz v0, :cond_2

    #@16
    .line 339
    const-string/jumbo v2, "GsmSMSDispatcher"

    #@19
    const-string/jumbo v3, "Removing stale icc objects."

    #@1c
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 340
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 341
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@29
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    #@2f
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    #@32
    .line 343
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@34
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@37
    .line 344
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@39
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@3c
    .line 346
    :cond_2
    if-eqz v1, :cond_3

    #@3e
    .line 347
    const-string/jumbo v2, "GsmSMSDispatcher"

    #@41
    const-string/jumbo v3, "New Uicc application found"

    #@44
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 348
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@49
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@4c
    .line 349
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@4e
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@55
    .line 350
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@57
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5a
    move-result-object v2

    #@5b
    if-eqz v2, :cond_3

    #@5d
    .line 351
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@5f
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@62
    move-result-object v2

    #@63
    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    #@65
    const/16 v3, 0xe

    #@67
    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6a
    .line 329
    :cond_3
    return-void
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    #@0
    .prologue
    .line 213
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    #@3
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    #@8
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@a
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    #@d
    .line 73
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    const-string/jumbo v0, "3gpp"

    #@3
    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    if-eqz p7, :cond_0

    #@2
    const/4 v8, 0x1

    #@3
    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    #@6
    move-result-object v9

    #@7
    .line 225
    move-object/from16 v0, p4

    #@9
    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@b
    move-object/from16 v0, p4

    #@d
    iget v12, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@f
    move-object/from16 v5, p2

    #@11
    move-object/from16 v6, p1

    #@13
    move-object/from16 v7, p3

    #@15
    move/from16 v10, p5

    #@17
    .line 223
    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@1a
    move-result-object v18

    #@1b
    .line 226
    .local v18, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v18, :cond_2

    #@1d
    .line 227
    move-object/from16 v0, p0

    #@1f
    move-object/from16 v1, p1

    #@21
    move-object/from16 v2, p2

    #@23
    move-object/from16 v3, p3

    #@25
    move-object/from16 v4, v18

    #@27
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    #@2a
    move-result-object v6

    #@2b
    .line 230
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    #@2e
    move-result-object v9

    #@2f
    .line 231
    if-eqz p8, :cond_1

    #@31
    const/4 v14, 0x0

    #@32
    :goto_1
    const/16 v16, 0x1

    #@34
    .line 232
    const/16 v17, 0x0

    #@36
    move-object/from16 v5, p0

    #@38
    move-object/from16 v7, p6

    #@3a
    move-object/from16 v8, p7

    #@3c
    move-object/from16 v10, p9

    #@3e
    move-object/from16 v11, p10

    #@40
    move-object/from16 v12, p11

    #@42
    move-object/from16 v13, p4

    #@44
    move-object/from16 v15, p12

    #@46
    .line 229
    invoke-virtual/range {v5 .. v17}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@49
    move-result-object v5

    #@4a
    return-object v5

    #@4b
    .line 224
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v18    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v8, 0x0

    #@4c
    goto :goto_0

    #@4d
    .line 231
    .restart local v6    # "map":Ljava/util/HashMap;
    .restart local v18    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v14, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 234
    .end local v6    # "map":Ljava/util/HashMap;
    :cond_2
    const-string/jumbo v5, "GsmSMSDispatcher"

    #@52
    const-string/jumbo v7, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    #@55
    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 235
    const/4 v5, 0x0

    #@59
    return-object v5
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    #@0
    .prologue
    .line 323
    const-string/jumbo v0, "GsmSMSDispatcher"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "GsmSMSDispatcher: subId = "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 324
    const-string/jumbo v2, " slotId = "

    #@1c
    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 324
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@22
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@25
    move-result v2

    #@26
    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@33
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@35
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@38
    move-result v1

    #@39
    .line 326
    const/4 v2, 0x1

    #@3a
    .line 325
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3d
    move-result-object v0

    #@3e
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 107
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    #@8
    .line 91
    :goto_0
    return-void

    #@9
    .line 94
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    check-cast v0, Landroid/os/AsyncResult;

    #@d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    #@10
    goto :goto_0

    #@11
    .line 99
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@19
    goto :goto_0

    #@1a
    .line 103
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->onUpdateIccAvailability()V

    #@1d
    goto :goto_0

    #@1e
    .line 92
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "This method must be called only on ImsSMSDispatcher"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 23
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 155
    if-eqz p6, :cond_0

    #@2
    const/4 v4, 0x1

    #@3
    .line 154
    :goto_0
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, p1

    #@7
    move/from16 v2, p3

    #@9
    move-object/from16 v3, p4

    #@b
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@e
    move-result-object v9

    #@f
    .line 156
    .local v9, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v9, :cond_2

    #@11
    move-object/from16 v4, p0

    #@13
    move-object/from16 v5, p1

    #@15
    move-object/from16 v6, p2

    #@17
    move/from16 v7, p3

    #@19
    move-object/from16 v8, p4

    #@1b
    .line 157
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    #@1e
    move-result-object v11

    #@1f
    .line 158
    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    #@22
    move-result-object v14

    #@23
    .line 159
    const/4 v15, 0x0

    #@24
    const/16 v16, 0x0

    #@26
    const/16 v17, 0x0

    #@28
    .line 160
    const/16 v18, 0x0

    #@2a
    const/16 v19, 0x1

    #@2c
    move-object/from16 v10, p0

    #@2e
    move-object/from16 v12, p5

    #@30
    move-object/from16 v13, p6

    #@32
    .line 158
    invoke-virtual/range {v10 .. v19}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@35
    move-result-object v22

    #@36
    .line 162
    .local v22, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    #@39
    move-result-object v20

    #@3a
    .line 163
    .local v20, "carrierPackage":Ljava/lang/String;
    if-eqz v20, :cond_1

    #@3c
    .line 164
    const-string/jumbo v4, "GsmSMSDispatcher"

    #@3f
    const-string/jumbo v5, "Found carrier package."

    #@42
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 165
    new-instance v21, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    #@47
    move-object/from16 v0, v21

    #@49
    move-object/from16 v1, p0

    #@4b
    move-object/from16 v2, v22

    #@4d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@50
    .line 166
    .local v21, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@52
    move-object/from16 v0, p0

    #@54
    move-object/from16 v1, v21

    #@56
    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    #@59
    move-object/from16 v0, v21

    #@5b
    move-object/from16 v1, v20

    #@5d
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    #@60
    .line 153
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v21    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    .end local v22    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_1
    return-void

    #@61
    .line 155
    .end local v9    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v4, 0x0

    #@62
    goto :goto_0

    #@63
    .line 168
    .restart local v9    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v11    # "map":Ljava/util/HashMap;
    .restart local v20    # "carrierPackage":Ljava/lang/String;
    .restart local v22    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const-string/jumbo v4, "GsmSMSDispatcher"

    #@66
    const-string/jumbo v5, "No carrier package."

    #@69
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 169
    move-object/from16 v0, p0

    #@6e
    move-object/from16 v1, v22

    #@70
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@73
    goto :goto_1

    #@74
    .line 172
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v22    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const-string/jumbo v4, "GsmSMSDispatcher"

    #@77
    const-string/jumbo v5, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    #@7a
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    goto :goto_1
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 247
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    #@4
    .line 249
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "pdu"

    #@7
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, [B

    #@d
    .line 251
    .local v1, "pdu":[B
    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@f
    if-lez v2, :cond_0

    #@11
    .line 252
    const-string/jumbo v2, "GsmSMSDispatcher"

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "sendSms:  mRetryCount="

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    .line 253
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@22
    .line 252
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 254
    const-string/jumbo v4, " mMessageRef="

    #@29
    .line 252
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 254
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@2f
    .line 252
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 255
    const-string/jumbo v4, " SS="

    #@36
    .line 252
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 255
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3c
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    #@43
    move-result v4

    #@44
    .line 252
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 260
    aget-byte v2, v1, v5

    #@51
    and-int/lit8 v2, v2, 0x1

    #@53
    if-ne v2, v6, :cond_0

    #@55
    .line 261
    aget-byte v2, v1, v5

    #@57
    or-int/lit8 v2, v2, 0x4

    #@59
    int-to-byte v2, v2

    #@5a
    aput-byte v2, v1, v5

    #@5c
    .line 262
    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@5e
    int-to-byte v2, v2

    #@5f
    aput-byte v2, v1, v6

    #@61
    .line 265
    :cond_0
    const-string/jumbo v2, "GsmSMSDispatcher"

    #@64
    new-instance v3, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v4, "sendSms:  isIms()="

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    #@73
    move-result v4

    #@74
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    .line 267
    const-string/jumbo v4, " mRetryCount="

    #@7b
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    .line 267
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@81
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    .line 268
    const-string/jumbo v4, " mImsRetry="

    #@88
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    .line 268
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@8e
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    .line 269
    const-string/jumbo v4, " mMessageRef="

    #@95
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v3

    #@99
    .line 269
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@9b
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    .line 270
    const-string/jumbo v4, " SS="

    #@a2
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    .line 270
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@a8
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@ab
    move-result-object v4

    #@ac
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    #@af
    move-result v4

    #@b0
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    .line 272
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@be
    .line 246
    return-void
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    #@b
    move-result v9

    #@c
    .line 280
    .local v9, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    if-eqz v9, :cond_0

    #@14
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    #@16
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNotInServiceError(I)I

    #@19
    move-result v1

    #@1a
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@1d
    .line 282
    return-void

    #@1e
    .line 285
    :cond_0
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    #@20
    .line 287
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "smsc"

    #@23
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v8

    #@27
    check-cast v8, [B

    #@29
    .line 288
    .local v8, "smsc":[B
    const-string/jumbo v0, "pdu"

    #@2c
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v7

    #@30
    check-cast v7, [B

    #@32
    .line 289
    .local v7, "pdu":[B
    const/4 v0, 0x2

    #@33
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@36
    move-result-object v5

    #@37
    .line 295
    .local v5, "reply":Landroid/os/Message;
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@39
    if-nez v0, :cond_1

    #@3b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_2

    #@41
    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@43
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 314
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@4d
    .line 315
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@4f
    .line 313
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    #@52
    .line 318
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@54
    add-int/lit8 v0, v0, 0x1

    #@56
    iput v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@58
    .line 277
    :goto_0
    return-void

    #@59
    .line 296
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@5b
    if-lez v0, :cond_3

    #@5d
    .line 300
    aget-byte v0, v7, v2

    #@5f
    and-int/lit8 v0, v0, 0x1

    #@61
    if-ne v0, v1, :cond_3

    #@63
    .line 301
    aget-byte v0, v7, v2

    #@65
    or-int/lit8 v0, v0, 0x4

    #@67
    int-to-byte v0, v0

    #@68
    aput-byte v0, v7, v2

    #@6a
    .line 302
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@6c
    int-to-byte v0, v0

    #@6d
    aput-byte v0, v7, v1

    #@6f
    .line 305
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@71
    if-nez v0, :cond_4

    #@73
    iget-boolean v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    #@75
    if-eqz v0, :cond_4

    #@77
    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@79
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    .line 307
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    .line 306
    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@84
    goto :goto_0

    #@85
    .line 309
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@87
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 310
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    .line 309
    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@92
    goto :goto_0
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@3
    .line 240
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z

    #@0
    .prologue
    .line 182
    if-eqz p5, :cond_0

    #@2
    const/4 v4, 0x1

    #@3
    .line 181
    :goto_0
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, p1

    #@7
    move-object/from16 v2, p3

    #@9
    invoke-static {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@c
    move-result-object v15

    #@d
    .line 183
    .local v15, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v15, :cond_2

    #@f
    .line 184
    move-object/from16 v0, p0

    #@11
    move-object/from16 v1, p1

    #@13
    move-object/from16 v2, p2

    #@15
    move-object/from16 v3, p3

    #@17
    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    #@1a
    move-result-object v5

    #@1b
    .line 185
    .local v5, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    #@1e
    move-result-object v8

    #@1f
    .line 186
    const/4 v10, 0x0

    #@20
    const/4 v12, 0x1

    #@21
    move-object/from16 v4, p0

    #@23
    move-object/from16 v6, p4

    #@25
    move-object/from16 v7, p5

    #@27
    move-object/from16 v9, p6

    #@29
    move-object/from16 v11, p3

    #@2b
    move/from16 v13, p8

    #@2d
    .line 185
    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@30
    move-result-object v17

    #@31
    .line 189
    .local v17, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    #@34
    move-result-object v14

    #@35
    .line 190
    .local v14, "carrierPackage":Ljava/lang/String;
    if-eqz v14, :cond_1

    #@37
    .line 191
    const-string/jumbo v4, "GsmSMSDispatcher"

    #@3a
    const-string/jumbo v6, "Found carrier package."

    #@3d
    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 192
    new-instance v16, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    #@42
    move-object/from16 v0, v16

    #@44
    move-object/from16 v1, p0

    #@46
    move-object/from16 v2, v17

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@4b
    .line 193
    .local v16, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@4d
    move-object/from16 v0, p0

    #@4f
    move-object/from16 v1, v16

    #@51
    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    #@54
    move-object/from16 v0, v16

    #@56
    invoke-virtual {v0, v14, v4}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    #@59
    .line 180
    .end local v5    # "map":Ljava/util/HashMap;
    .end local v14    # "carrierPackage":Ljava/lang/String;
    .end local v16    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v17    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_1
    return-void

    #@5a
    .line 182
    .end local v15    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v4, 0x0

    #@5b
    goto :goto_0

    #@5c
    .line 195
    .restart local v5    # "map":Ljava/util/HashMap;
    .restart local v14    # "carrierPackage":Ljava/lang/String;
    .restart local v15    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v17    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const-string/jumbo v4, "GsmSMSDispatcher"

    #@5f
    const-string/jumbo v6, "No carrier package."

    #@62
    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 196
    move-object/from16 v0, p0

    #@67
    move-object/from16 v1, v17

    #@69
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@6c
    goto :goto_1

    #@6d
    .line 199
    .end local v5    # "map":Ljava/util/HashMap;
    .end local v14    # "carrierPackage":Ljava/lang/String;
    .end local v17    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const-string/jumbo v4, "GsmSMSDispatcher"

    #@70
    const-string/jumbo v6, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    #@73
    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    goto :goto_1
.end method

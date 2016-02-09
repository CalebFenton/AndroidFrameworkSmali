.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CdmaSMSDispatcher"

.field private static final VDBG:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    #@3
    .line 54
    const-string/jumbo v0, "CdmaSMSDispatcher"

    #@6
    const-string/jumbo v1, "CdmaSMSDispatcher created"

    #@9
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 52
    return-void
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    #@0
    .prologue
    .line 182
    const/4 v0, 0x0

    #@1
    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "3gpp2"

    #@3
    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 20
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
    .line 192
    new-instance v19, Lcom/android/internal/telephony/cdma/sms/UserData;

    #@2
    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    #@5
    .line 193
    .local v19, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    #@7
    move-object/from16 v1, v19

    #@9
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@b
    .line 194
    move-object/from16 v0, p4

    #@d
    move-object/from16 v1, v19

    #@f
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@11
    .line 195
    const/4 v5, 0x1

    #@12
    move/from16 v0, p5

    #@14
    if-ne v0, v5, :cond_0

    #@16
    .line 196
    const/16 v5, 0x9

    #@18
    move-object/from16 v0, v19

    #@1a
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@1c
    .line 200
    :goto_0
    const/4 v5, 0x1

    #@1d
    move-object/from16 v0, v19

    #@1f
    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@21
    .line 207
    if-eqz p7, :cond_1

    #@23
    .line 206
    .end local p8    # "lastPart":Z
    :goto_1
    move-object/from16 v0, p1

    #@25
    move-object/from16 v1, v19

    #@27
    move/from16 v2, p8

    #@29
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@2c
    move-result-object v18

    #@2d
    .line 209
    .local v18, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p0

    #@2f
    move-object/from16 v1, p1

    #@31
    move-object/from16 v2, p2

    #@33
    move-object/from16 v3, p3

    #@35
    move-object/from16 v4, v18

    #@37
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    #@3a
    move-result-object v6

    #@3b
    .line 212
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    .line 213
    const/4 v14, 0x0

    #@40
    const/16 v16, 0x1

    #@42
    .line 214
    const/16 v17, 0x1

    #@44
    move-object/from16 v5, p0

    #@46
    move-object/from16 v7, p6

    #@48
    move-object/from16 v8, p7

    #@4a
    move-object/from16 v10, p9

    #@4c
    move-object/from16 v11, p10

    #@4e
    move-object/from16 v12, p11

    #@50
    move-object/from16 v13, p4

    #@52
    move-object/from16 v15, p12

    #@54
    .line 211
    invoke-virtual/range {v5 .. v17}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@57
    move-result-object v5

    #@58
    return-object v5

    #@59
    .line 198
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local p8    # "lastPart":Z
    :cond_0
    const/4 v5, 0x4

    #@5a
    move-object/from16 v0, v19

    #@5c
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@5e
    goto :goto_0

    #@5f
    .line 207
    :cond_1
    const/16 p8, 0x0

    #@61
    goto :goto_1
.end method

.method handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    #@0
    .prologue
    .line 86
    const/4 v3, 0x0

    #@1
    .local v3, "i":I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@9
    .line 87
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v5

    #@f
    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@11
    .line 88
    .local v5, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@13
    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    #@15
    if-ne v6, v7, :cond_1

    #@17
    .line 90
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1c
    .line 92
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    #@1e
    const/4 v7, 0x0

    #@1f
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    #@22
    .line 94
    iget-object v4, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@24
    .line 95
    .local v4, "intent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    #@26
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@29
    .line 96
    .local v2, "fillIn":Landroid/content/Intent;
    const-string/jumbo v6, "pdu"

    #@2c
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@33
    .line 97
    const-string/jumbo v6, "format"

    #@36
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3d
    .line 99
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    #@3f
    const/4 v7, -0x1

    #@40
    invoke-virtual {v4, v6, v7, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 85
    .end local v2    # "fillIn":Landroid/content/Intent;
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    #@44
    .line 86
    .restart local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@46
    goto :goto_0

    #@47
    .line 100
    .restart local v2    # "fillIn":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    #@48
    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 73
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 75
    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    #@9
    .line 72
    :goto_0
    return-void

    #@a
    .line 77
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v0, "CdmaSMSDispatcher"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "handleStatusReport() called for object type "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_0
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "This method must be called only on ImsSMSDispatcher"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 24
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 111
    if-eqz p6, :cond_1

    #@2
    const/4 v4, 0x1

    #@3
    .line 110
    :goto_0
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, p1

    #@7
    move/from16 v2, p3

    #@9
    move-object/from16 v3, p4

    #@b
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@e
    move-result-object v9

    #@f
    .line 112
    .local v9, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v9, :cond_3

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
    .line 113
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    #@1e
    move-result-object v11

    #@1f
    .line 114
    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    #@22
    move-result-object v14

    #@23
    .line 115
    const/4 v15, 0x0

    #@24
    const/16 v16, 0x0

    #@26
    const/16 v17, 0x0

    #@28
    .line 116
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
    .line 114
    invoke-virtual/range {v10 .. v19}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@35
    move-result-object v23

    #@36
    .line 118
    .local v23, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    #@39
    move-result-object v20

    #@3a
    .line 119
    .local v20, "carrierPackage":Ljava/lang/String;
    if-eqz v20, :cond_2

    #@3c
    .line 120
    const-string/jumbo v4, "CdmaSMSDispatcher"

    #@3f
    const-string/jumbo v5, "Found carrier package."

    #@42
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 121
    new-instance v22, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    #@47
    move-object/from16 v0, v22

    #@49
    move-object/from16 v1, p0

    #@4b
    move-object/from16 v2, v23

    #@4d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@50
    .line 122
    .local v22, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@52
    move-object/from16 v0, p0

    #@54
    move-object/from16 v1, v22

    #@56
    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    #@59
    move-object/from16 v0, v22

    #@5b
    move-object/from16 v1, v20

    #@5d
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    #@60
    .line 109
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v22    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    .end local v23    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    #@61
    .line 111
    .end local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v4, 0x0

    #@62
    goto :goto_0

    #@63
    .line 124
    .restart local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v11    # "map":Ljava/util/HashMap;
    .restart local v20    # "carrierPackage":Ljava/lang/String;
    .restart local v23    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const-string/jumbo v4, "CdmaSMSDispatcher"

    #@66
    const-string/jumbo v5, "No carrier package."

    #@69
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 125
    move-object/from16 v0, p0

    #@6e
    move-object/from16 v1, v23

    #@70
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@73
    goto :goto_1

    #@74
    .line 128
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v20    # "carrierPackage":Ljava/lang/String;
    .end local v23    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const-string/jumbo v4, "CdmaSMSDispatcher"

    #@77
    const-string/jumbo v5, "CdmaSMSDispatcher.sendData(): getSubmitPdu() returned null"

    #@7a
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 129
    if-eqz p5, :cond_0

    #@7f
    .line 131
    const/4 v4, 0x1

    #@80
    :try_start_0
    move-object/from16 v0, p5

    #@82
    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@85
    goto :goto_1

    #@86
    .line 132
    :catch_0
    move-exception v21

    #@87
    .line 133
    .local v21, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v4, "CdmaSMSDispatcher"

    #@8a
    const-string/jumbo v5, "Intent has been canceled!"

    #@8d
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    goto :goto_1
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 232
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    #@2
    .line 235
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "pdu"

    #@5
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, [B

    #@b
    .line 237
    .local v1, "pdu":[B
    const-string/jumbo v2, "CdmaSMSDispatcher"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "sendSms:  isIms()="

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    #@1d
    move-result v4

    #@1e
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 239
    const-string/jumbo v4, " mRetryCount="

    #@25
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 239
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@2b
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 240
    const-string/jumbo v4, " mImsRetry="

    #@32
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 240
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@38
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    .line 241
    const-string/jumbo v4, " mMessageRef="

    #@3f
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    .line 241
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@45
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    .line 242
    const-string/jumbo v4, " SS="

    #@4c
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    .line 242
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@52
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    #@59
    move-result v4

    #@5a
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 244
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@68
    .line 231
    return-void
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 250
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@6
    move-result-object v5

    #@7
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    #@a
    move-result v4

    #@b
    .line 252
    .local v4, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    #@e
    move-result v5

    #@f
    if-nez v5, :cond_0

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 253
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    #@15
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNotInServiceError(I)I

    #@18
    move-result v6

    #@19
    invoke-virtual {p1, v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@1c
    .line 254
    return-void

    #@1d
    .line 257
    :cond_0
    const/4 v5, 0x2

    #@1e
    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@21
    move-result-object v3

    #@22
    .line 258
    .local v3, "reply":Landroid/os/Message;
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    #@24
    const-string/jumbo v6, "pdu"

    #@27
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, [B

    #@2d
    .line 260
    .local v2, "pdu":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2f
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    #@36
    move-result v0

    #@37
    .line 261
    .local v0, "currentDataNetwork":I
    const/16 v5, 0xe

    #@39
    if-eq v0, v5, :cond_4

    #@3b
    .line 262
    const/16 v5, 0xd

    #@3d
    if-ne v0, v5, :cond_1

    #@3f
    .line 263
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@41
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_4

    #@4b
    .line 261
    :cond_1
    const/4 v1, 0x0

    #@4c
    .line 272
    .local v1, "imsSmsDisabled":Z
    :goto_0
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@4e
    if-nez v5, :cond_2

    #@50
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_3

    #@56
    :cond_2
    if-eqz v1, :cond_6

    #@58
    .line 273
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5a
    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    #@5d
    .line 249
    :goto_1
    return-void

    #@5e
    .line 264
    .end local v1    # "imsSmsDisabled":Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@60
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    #@67
    move-result v5

    #@68
    .line 265
    const/4 v6, 0x7

    #@69
    .line 264
    if-ne v5, v6, :cond_1

    #@6b
    .line 266
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6d
    check-cast v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@6f
    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@71
    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@73
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@75
    if-eq v5, v6, :cond_5

    #@77
    const/4 v1, 0x1

    #@78
    .restart local v1    # "imsSmsDisabled":Z
    goto :goto_0

    #@79
    .end local v1    # "imsSmsDisabled":Z
    :cond_5
    const/4 v1, 0x0

    #@7a
    .restart local v1    # "imsSmsDisabled":Z
    goto :goto_0

    #@7b
    .line 275
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7d
    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@7f
    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@81
    invoke-interface {v5, v2, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    #@84
    .line 278
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@86
    add-int/lit8 v5, v5, 0x1

    #@88
    iput v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@8a
    goto :goto_1
.end method

.method sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 1
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    #@0
    .prologue
    .line 68
    const/16 v0, 0xa

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    #@9
    .line 66
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 219
    const-string/jumbo v0, "ril.cdma.inecmmode"

    #@4
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    #@c
    const/4 v1, 0x4

    #@d
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@10
    .line 224
    return-void

    #@11
    .line 226
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@14
    .line 218
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 20
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
    .line 145
    if-eqz p5, :cond_1

    #@2
    const/4 v5, 0x1

    #@3
    :goto_0
    const/4 v7, 0x0

    #@4
    .line 144
    move-object/from16 v0, p2

    #@6
    move-object/from16 v1, p1

    #@8
    move-object/from16 v2, p3

    #@a
    invoke-static {v0, v1, v2, v5, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@d
    move-result-object v17

    #@e
    .line 146
    .local v17, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v17, :cond_3

    #@10
    .line 147
    move-object/from16 v0, p0

    #@12
    move-object/from16 v1, p1

    #@14
    move-object/from16 v2, p2

    #@16
    move-object/from16 v3, p3

    #@18
    move-object/from16 v4, v17

    #@1a
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    #@1d
    move-result-object v6

    #@1e
    .line 148
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    #@21
    move-result-object v9

    #@22
    .line 149
    const/4 v11, 0x0

    #@23
    const/4 v13, 0x1

    #@24
    move-object/from16 v5, p0

    #@26
    move-object/from16 v7, p4

    #@28
    move-object/from16 v8, p5

    #@2a
    move-object/from16 v10, p6

    #@2c
    move-object/from16 v12, p3

    #@2e
    move/from16 v14, p8

    #@30
    .line 148
    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@33
    move-result-object v19

    #@34
    .line 151
    .local v19, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    #@37
    move-result-object v15

    #@38
    .line 152
    .local v15, "carrierPackage":Ljava/lang/String;
    if-eqz v15, :cond_2

    #@3a
    .line 153
    const-string/jumbo v5, "CdmaSMSDispatcher"

    #@3d
    const-string/jumbo v7, "Found carrier package."

    #@40
    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 154
    new-instance v18, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    #@45
    move-object/from16 v0, v18

    #@47
    move-object/from16 v1, p0

    #@49
    move-object/from16 v2, v19

    #@4b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@4e
    .line 155
    .local v18, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    #@50
    move-object/from16 v0, p0

    #@52
    move-object/from16 v1, v18

    #@54
    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    #@57
    move-object/from16 v0, v18

    #@59
    invoke-virtual {v0, v15, v5}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    #@5c
    .line 143
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v15    # "carrierPackage":Ljava/lang/String;
    .end local v18    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    #@5d
    .line 145
    .end local v17    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v5, 0x0

    #@5e
    goto :goto_0

    #@5f
    .line 157
    .restart local v6    # "map":Ljava/util/HashMap;
    .restart local v15    # "carrierPackage":Ljava/lang/String;
    .restart local v17    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const-string/jumbo v5, "CdmaSMSDispatcher"

    #@62
    const-string/jumbo v7, "No carrier package."

    #@65
    invoke-static {v5, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 158
    move-object/from16 v0, p0

    #@6a
    move-object/from16 v1, v19

    #@6c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@6f
    goto :goto_1

    #@70
    .line 161
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v15    # "carrierPackage":Ljava/lang/String;
    .end local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const-string/jumbo v5, "CdmaSMSDispatcher"

    #@73
    const-string/jumbo v7, "CdmaSMSDispatcher.sendText(): getSubmitPdu() returned null"

    #@76
    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 162
    if-eqz p4, :cond_0

    #@7b
    .line 164
    const/4 v5, 0x1

    #@7c
    :try_start_0
    move-object/from16 v0, p4

    #@7e
    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    goto :goto_1

    #@82
    .line 165
    :catch_0
    move-exception v16

    #@83
    .line 166
    .local v16, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v5, "CdmaSMSDispatcher"

    #@86
    const-string/jumbo v7, "Intent has been canceled!"

    #@89
    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    goto :goto_1
.end method

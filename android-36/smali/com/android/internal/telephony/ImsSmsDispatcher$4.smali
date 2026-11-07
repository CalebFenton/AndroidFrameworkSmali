.class Lcom/android/internal/telephony/ImsSmsDispatcher$4;
.super Landroid/telephony/ims/aidl/IImsSmsListener$Stub;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$0dH6Yyt7WT_SLdj5IaLeDwKcXTY(Lcom/android/internal/telephony/ImsSmsDispatcher$4;Landroid/telephony/SmsMessage;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->lambda$onSmsReceived$0(Landroid/telephony/SmsMessage;II)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onSmsReceived$0(Landroid/telephony/SmsMessage;II)V
    .registers 7

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS handled result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p3, v0, :cond_73

    const/4 v0, 0x1

    if-eq p3, v0, :cond_24

    const/4 v0, 0x3

    if-eq p3, v0, :cond_31

    const/4 v0, 0x4

    if-eq p3, v0, :cond_31

    const/4 v0, 0x2

    goto :goto_31

    :cond_24
    if-eqz p1, :cond_31

    .line 310
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p3, p3, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 312
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsReceivedViaImsToEmergencyStateTracker(Ljava/lang/String;)V

    :cond_31
    :goto_31
    if-eqz p1, :cond_47

    .line 331
    :try_start_33
    iget-object p3, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz p3, :cond_47

    .line 332
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mgetImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;

    move-result-object p3

    iget-object p1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p1, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p3, p2, p1, v0}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V

    return-void

    :catch_45
    move-exception p1

    goto :goto_59

    .line 335
    :cond_47
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-string p3, "SMS Received with a PDU that could not be parsed."

    invoke-static {p1, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogw(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mgetImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_58
    .catch Lcom/android/ims/ImsException; {:try_start_33 .. :try_end_58} :catch_45

    return-void

    .line 339
    :goto_59
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to acknowledgeSms(). Error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mloge(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    :cond_73
    return-void
.end method


# virtual methods
.method public blacklist onMemoryAvailableResult(III)V
    .registers 9

    .line 152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 154
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMemoryAvailableResult token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " networkReasonCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 156
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p3, p3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_45

    .line 157
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-string p1, "onMemoryAvailableResult Invalid token"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mloge(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_43

    .line 177
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_43
    move-exception p0

    goto :goto_76

    .line 160
    :cond_45
    :try_start_45
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p3, p3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    const/4 p3, 0x0

    if-ne p2, p1, :cond_6e

    .line 167
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-boolean p2, p1, Lcom/android/internal/telephony/SMSDispatcher;->mRPSmmaRetried:Z

    if-nez p2, :cond_6b

    const/16 p2, 0xb

    .line 168
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 169
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRPSmmaRetried:Z

    goto :goto_72

    .line 171
    :cond_6b
    iput-boolean p3, p1, Lcom/android/internal/telephony/SMSDispatcher;->mRPSmmaRetried:Z

    goto :goto_72

    .line 174
    :cond_6e
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iput-boolean p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRPSmmaRetried:Z
    :try_end_72
    .catchall {:try_start_45 .. :try_end_72} :catchall_43

    .line 177
    :goto_72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_76
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    throw p0
.end method

.method public blacklist onSendSmsResult(IIIII)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    .line 183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 185
    :try_start_e
    iget-object v2, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendSmsResult token="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " messageRef="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " status="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reason="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " networkReasonCode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 189
    iget-object v2, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 190
    iget-object v2, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-eqz v10, :cond_6d

    .line 191
    iget-wide v6, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    goto :goto_6f

    :catchall_68
    move-exception v0

    move-wide/from16 v16, v14

    goto/16 :goto_1b1

    :cond_6d
    const-wide/16 v6, 0x0

    .line 190
    :goto_6f
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsServiceSmsSolicitedResponse(IIIJ)V

    if-eqz v10, :cond_1a7

    .line 195
    iput v1, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v4, v2, :cond_112

    const/4 v3, 0x2

    if-eq v4, v3, :cond_fa

    const/4 v3, 0x3

    if-eq v4, v3, :cond_9b

    if-eq v4, v1, :cond_84

    goto/16 :goto_143

    .line 236
    :cond_84
    iget v3, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/2addr v3, v2

    iput v3, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 237
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v3, v10}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_143

    .line 214
    :cond_9b
    iget-object v6, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getMaxRetryCountOverIms()I

    move-result v6

    .line 215
    iget v7, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    iget-object v11, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v11}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getMaxSmsRetryCount()I

    move-result v11

    if-ge v7, v11, :cond_e2

    .line 216
    iget-object v7, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getMaxSmsRetryCount()I

    move-result v7

    if-ge v6, v7, :cond_cc

    iget v7, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lt v7, v6, :cond_cc

    add-int/2addr v7, v2

    .line 218
    iput v7, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 219
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v3, v10}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_143

    .line 223
    :cond_cc
    iget v6, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/2addr v6, v2

    iput v6, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 224
    iget-object v6, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 225
    invoke-virtual {v6, v3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v7, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 226
    invoke-virtual {v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getSmsRetryDelayValue()I

    move-result v7

    int-to-long v11, v7

    .line 224
    invoke-virtual {v6, v3, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_143

    .line 228
    :cond_e2
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3, v5, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 229
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v3, v10, v2}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    goto :goto_143

    .line 209
    :cond_fa
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3, v5, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 210
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v3, v10, v2}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    goto :goto_143

    .line 198
    :cond_112
    iget-object v3, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_11d

    .line 200
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v3, v10}, Lcom/android/internal/telephony/SmsDispatchersController;->putDeliveryPendingTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 202
    :cond_11d
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 203
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/Phone;->notifySmsSent(Ljava/lang/String;)V

    .line 205
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 206
    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isSinglePartOrLastPart()Z

    move-result v6

    .line 205
    invoke-virtual {v3, v10, v2, v6, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    .line 242
    :goto_143
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v3

    const-string v6, "3gpp2"

    iget-object v7, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 244
    invoke-virtual {v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v4, v1, :cond_15b

    move v4, v2

    goto :goto_15d

    :cond_15b
    const/4 v1, 0x0

    move v4, v1

    :goto_15d
    iget-wide v7, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {v10, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v9

    .line 250
    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v11

    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v13, v10, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 251
    invoke-virtual {v1, v13}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    iget-object v13, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v13, v13, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {v10, v13}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v13
    :try_end_17d
    .catchall {:try_start_e .. :try_end_17d} :catchall_68

    move v10, v2

    const/4 v2, 0x1

    move-wide/from16 v16, v14

    move v14, v10

    move-wide v10, v11

    move v12, v1

    move-object v1, v3

    move v3, v6

    move/from16 v6, p5

    .line 242
    :try_start_188
    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIIJZJZZ)V

    .line 253
    iget-object v0, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1a3

    .line 254
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_1a3

    .line 256
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_1a3

    .line 258
    invoke-virtual {v0, v14, v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V
    :try_end_1a0
    .catchall {:try_start_188 .. :try_end_1a0} :catchall_1a1

    goto :goto_1a3

    :catchall_1a1
    move-exception v0

    goto :goto_1b1

    .line 266
    :cond_1a3
    :goto_1a3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1a7
    move-wide/from16 v16, v14

    .line 193
    :try_start_1a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b1
    .catchall {:try_start_1a9 .. :try_end_1b1} :catchall_1a1

    .line 266
    :goto_1b1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    throw v0
.end method

.method public blacklist onSmsReceived(ILjava/lang/String;[B)V
    .registers 15

    .line 298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 300
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-string v3, "SMS received."

    invoke-static {v0, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 302
    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 303
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v4, p3, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    new-instance v7, Lcom/android/internal/telephony/ImsSmsDispatcher$4$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v5, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher$4;Landroid/telephony/SmsMessage;I)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    move v10, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;ZZI)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_23

    .line 343
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_23
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 344
    throw p0
.end method

.method public blacklist onSmsStatusReportReceived(ILjava/lang/String;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 275
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-string v3, "Status report received."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 277
    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 278
    iget-object v3, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v3, :cond_4c

    .line 282
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v3, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSmsStatusReport(Ljava/lang/String;[B)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2b

    .line 284
    :try_start_1c
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mgetImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;

    move-result-object p2

    iget-object p3, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p3, p3, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 v2, 0x1

    invoke-virtual {p2, p1, p3, v2}, Lcom/android/ims/ImsManager;->acknowledgeSmsReport(III)V
    :try_end_2a
    .catch Lcom/android/ims/ImsException; {:try_start_1c .. :try_end_2a} :catch_2d
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2b

    goto :goto_48

    :catchall_2b
    move-exception p0

    goto :goto_54

    :catch_2d
    move-exception p1

    .line 289
    :try_start_2e
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to acknowledgeSmsReport(). Error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mloge(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_2b

    .line 292
    :goto_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 279
    :cond_4c
    :try_start_4c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Status report received with a PDU that could not be parsed."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_2b

    .line 292
    :goto_54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    throw p0
.end method

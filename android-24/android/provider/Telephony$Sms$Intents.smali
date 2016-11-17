.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final ACTION_DEFAULT_SMS_PACKAGE_CHANGED:Ljava/lang/String; = "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

.field public static final ACTION_EXTERNAL_PROVIDER_CHANGE:Ljava/lang/String; = "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final EXTRA_IS_DEFAULT_SMS_APP:Ljava/lang/String; = "android.provider.extra.IS_DEFAULT_SMS_APP"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final MMS_DOWNLOADED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_DOWNLOADED"

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CARRIER_PROVISION_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CARRIER_PROVISION"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 12
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1144
    :try_start_0
    const-string/jumbo v8, "pdus"

    #@4
    invoke-virtual {p0, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    #@7
    move-result-object v3

    #@8
    check-cast v3, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1151
    .local v3, "messages":[Ljava/lang/Object;
    if-nez v3, :cond_0

    #@c
    .line 1152
    const-string/jumbo v8, "Telephony"

    #@f
    const-string/jumbo v9, "pdus does not exist in the intent"

    #@12
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 1153
    return-object v11

    #@16
    .line 1146
    .end local v3    # "messages":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@17
    .line 1147
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v8, "Telephony"

    #@1a
    new-instance v9, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v10, "getMessagesFromIntent: "

    #@22
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v9

    #@26
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v9

    #@2a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v9

    #@2e
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 1148
    return-object v11

    #@32
    .line 1156
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v3    # "messages":[Ljava/lang/Object;
    :cond_0
    const-string/jumbo v8, "format"

    #@35
    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 1157
    .local v1, "format":Ljava/lang/String;
    const-string/jumbo v8, "subscription"

    #@3c
    .line 1158
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    #@3f
    move-result v9

    #@40
    .line 1157
    invoke-virtual {p0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@43
    move-result v7

    #@44
    .line 1160
    .local v7, "subId":I
    const-string/jumbo v8, "Telephony"

    #@47
    new-instance v9, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v10, " getMessagesFromIntent sub_id : "

    #@4f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 1162
    array-length v6, v3

    #@5f
    .line 1163
    .local v6, "pduCount":I
    new-array v4, v6, [Landroid/telephony/SmsMessage;

    #@61
    .line 1165
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    #@62
    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    #@64
    .line 1166
    aget-object v5, v3, v2

    #@66
    check-cast v5, [B

    #@68
    .line 1167
    .local v5, "pdu":[B
    invoke-static {v5, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@6b
    move-result-object v8

    #@6c
    aput-object v8, v4, v2

    #@6e
    .line 1168
    aget-object v8, v4, v2

    #@70
    invoke-virtual {v8, v7}, Landroid/telephony/SmsMessage;->setSubId(I)V

    #@73
    .line 1165
    add-int/lit8 v2, v2, 0x1

    #@75
    goto :goto_0

    #@76
    .line 1170
    .end local v5    # "pdu":[B
    :cond_1
    return-object v4
.end method

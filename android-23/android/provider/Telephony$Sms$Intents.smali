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

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final MMS_DOWNLOADED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_DOWNLOADED"

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

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
    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1072
    const-string/jumbo v7, "pdus"

    #@3
    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    #@6
    move-result-object v2

    #@7
    check-cast v2, [Ljava/lang/Object;

    #@9
    .line 1073
    .local v2, "messages":[Ljava/lang/Object;
    const-string/jumbo v7, "format"

    #@c
    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 1074
    .local v0, "format":Ljava/lang/String;
    const-string/jumbo v7, "subscription"

    #@13
    .line 1075
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    #@16
    move-result v8

    #@17
    .line 1074
    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1a
    move-result v6

    #@1b
    .line 1077
    .local v6, "subId":I
    const-string/jumbo v7, "Telephony"

    #@1e
    new-instance v8, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v9, " getMessagesFromIntent sub_id : "

    #@26
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v8

    #@2a
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 1079
    array-length v5, v2

    #@36
    .line 1080
    .local v5, "pduCount":I
    new-array v3, v5, [Landroid/telephony/SmsMessage;

    #@38
    .line 1082
    .local v3, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    #@39
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    #@3b
    .line 1083
    aget-object v4, v2, v1

    #@3d
    check-cast v4, [B

    #@3f
    .line 1084
    .local v4, "pdu":[B
    invoke-static {v4, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@42
    move-result-object v7

    #@43
    aput-object v7, v3, v1

    #@45
    .line 1085
    aget-object v7, v3, v1

    #@47
    invoke-virtual {v7, v6}, Landroid/telephony/SmsMessage;->setSubId(I)V

    #@4a
    .line 1082
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 1087
    .end local v4    # "pdu":[B
    :cond_0
    return-object v3
.end method

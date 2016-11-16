.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field public static final CELL_BROADCAST_RAN_TYPE_CDMA:I = 0x1

.field public static final CELL_BROADCAST_RAN_TYPE_GSM:I = 0x0

.field private static final DEFAULT_SUBSCRIPTION_ID:I = -0x3ea

.field private static DIALOG_TYPE_KEY:Ljava/lang/String; = null

.field public static final EXTRA_MMS_DATA:Ljava/lang/String; = "android.telephony.extra.MMS_DATA"

.field public static final EXTRA_MMS_HTTP_STATUS:Ljava/lang/String; = "android.telephony.extra.MMS_HTTP_STATUS"

.field public static final MESSAGE_STATUS_READ:Ljava/lang/String; = "read"

.field public static final MESSAGE_STATUS_SEEN:Ljava/lang/String; = "seen"

.field public static final MMS_CONFIG_ALIAS_ENABLED:Ljava/lang/String; = "aliasEnabled"

.field public static final MMS_CONFIG_ALIAS_MAX_CHARS:Ljava/lang/String; = "aliasMaxChars"

.field public static final MMS_CONFIG_ALIAS_MIN_CHARS:Ljava/lang/String; = "aliasMinChars"

.field public static final MMS_CONFIG_ALLOW_ATTACH_AUDIO:Ljava/lang/String; = "allowAttachAudio"

.field public static final MMS_CONFIG_APPEND_TRANSACTION_ID:Ljava/lang/String; = "enabledTransID"

.field public static final MMS_CONFIG_CLOSE_CONNECTION:Ljava/lang/String; = "mmsCloseConnection"

.field public static final MMS_CONFIG_EMAIL_GATEWAY_NUMBER:Ljava/lang/String; = "emailGatewayNumber"

.field public static final MMS_CONFIG_GROUP_MMS_ENABLED:Ljava/lang/String; = "enableGroupMms"

.field public static final MMS_CONFIG_HTTP_PARAMS:Ljava/lang/String; = "httpParams"

.field public static final MMS_CONFIG_HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final MMS_CONFIG_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "maxImageHeight"

.field public static final MMS_CONFIG_MAX_IMAGE_WIDTH:Ljava/lang/String; = "maxImageWidth"

.field public static final MMS_CONFIG_MAX_MESSAGE_SIZE:Ljava/lang/String; = "maxMessageSize"

.field public static final MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE:Ljava/lang/String; = "maxMessageTextSize"

.field public static final MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final MMS_CONFIG_MMS_ENABLED:Ljava/lang/String; = "enabledMMS"

.field public static final MMS_CONFIG_MMS_READ_REPORT_ENABLED:Ljava/lang/String; = "enableMMSReadReports"

.field public static final MMS_CONFIG_MULTIPART_SMS_ENABLED:Ljava/lang/String; = "enableMultipartSMS"

.field public static final MMS_CONFIG_NAI_SUFFIX:Ljava/lang/String; = "naiSuffix"

.field public static final MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final MMS_CONFIG_RECIPIENT_LIMIT:Ljava/lang/String; = "recipientLimit"

.field public static final MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final MMS_CONFIG_SHOW_CELL_BROADCAST_APP_LINKS:Ljava/lang/String; = "config_cellBroadcastAppLinks"

.field public static final MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final MMS_CONFIG_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "maxSubjectLength"

.field public static final MMS_CONFIG_SUPPORT_HTTP_CHARSET_HEADER:Ljava/lang/String; = "supportHttpCharsetHeader"

.field public static final MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final MMS_CONFIG_UA_PROF_TAG_NAME:Ljava/lang/String; = "uaProfTagName"

.field public static final MMS_CONFIG_UA_PROF_URL:Ljava/lang/String; = "uaProfUrl"

.field public static final MMS_CONFIG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field public static final MMS_ERROR_CONFIGURATION_ERROR:I = 0x7

.field public static final MMS_ERROR_HTTP_FAILURE:I = 0x4

.field public static final MMS_ERROR_INVALID_APN:I = 0x2

.field public static final MMS_ERROR_IO_ERROR:I = 0x5

.field public static final MMS_ERROR_NO_DATA_NETWORK:I = 0x8

.field public static final MMS_ERROR_RETRY:I = 0x6

.field public static final MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x3

.field public static final MMS_ERROR_UNSPECIFIED:I = 0x1

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field private static final SMS_PICK:I = 0x2

.field public static final SMS_TYPE_INCOMING:I = 0x0

.field public static final SMS_TYPE_OUTGOING:I = 0x1

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SmsManager"

.field private static final sInstance:Landroid/telephony/SmsManager;

.field private static final sLockObject:Ljava/lang/Object;

.field private static final sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/SmsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/telephony/SmsManager;

    #@2
    const/16 v1, -0x3ea

    #@4
    invoke-direct {v0, v1}, Landroid/telephony/SmsManager;-><init>(I)V

    #@7
    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    #@9
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    #@10
    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    #@12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@15
    .line 75
    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    #@17
    .line 259
    const-string/jumbo v0, "dialog_type"

    #@1a
    sput-object v0, Landroid/telephony/SmsManager;->DIALOG_TYPE_KEY:Ljava/lang/String;

    #@1c
    .line 58
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 632
    iput p1, p0, Landroid/telephony/SmsManager;->mSubId:I

    #@5
    .line 631
    return-void
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 986
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 987
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    #@7
    .line 988
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    .line 989
    .local v0, "count":I
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@e
    .line 990
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    #@14
    .line 992
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    #@16
    .line 993
    add-int/lit8 v5, v2, 0x1

    #@18
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    #@1b
    move-result-object v6

    #@1c
    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    #@1f
    move-result-object v4

    #@20
    .line 994
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    #@22
    .line 995
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 989
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1000
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    #@0
    .prologue
    .line 609
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    #@2
    return-object v0
.end method

.method public static getDefaultSmsSubscriptionId()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1057
    const/4 v2, 0x0

    #@2
    .line 1059
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string/jumbo v3, "isms"

    #@5
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@8
    move-result-object v3

    #@9
    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    #@c
    move-result-object v2

    #@d
    .line 1060
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-interface {v2}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v3

    #@11
    return v3

    #@12
    .line 1063
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    #@13
    .line 1064
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    #@14
    .line 1061
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@15
    .line 1062
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method private static getISmsService()Lcom/android/internal/telephony/ISms;
    .locals 1

    #@0
    .prologue
    .line 697
    const-string/jumbo v0, "isms"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private static getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .locals 3

    #@0
    .prologue
    .line 689
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@3
    move-result-object v0

    #@4
    .line 690
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-nez v0, :cond_0

    #@6
    .line 691
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v2, "Sms is not supported"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 693
    :cond_0
    return-object v0
.end method

.method public static getMmsConfig(Landroid/os/BaseBundle;)Landroid/os/Bundle;
    .locals 3
    .param p0, "config"    # Landroid/os/BaseBundle;

    #@0
    .prologue
    .line 1606
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1607
    .local v0, "filtered":Landroid/os/Bundle;
    const-string/jumbo v1, "enabledTransID"

    #@8
    .line 1608
    const-string/jumbo v2, "enabledTransID"

    #@b
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@e
    move-result v2

    #@f
    .line 1607
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@12
    .line 1609
    const-string/jumbo v1, "enabledMMS"

    #@15
    const-string/jumbo v2, "enabledMMS"

    #@18
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1f
    .line 1610
    const-string/jumbo v1, "enableGroupMms"

    #@22
    .line 1611
    const-string/jumbo v2, "enableGroupMms"

    #@25
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@28
    move-result v2

    #@29
    .line 1610
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2c
    .line 1612
    const-string/jumbo v1, "enabledNotifyWapMMSC"

    #@2f
    .line 1613
    const-string/jumbo v2, "enabledNotifyWapMMSC"

    #@32
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@35
    move-result v2

    #@36
    .line 1612
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@39
    .line 1614
    const-string/jumbo v1, "aliasEnabled"

    #@3c
    const-string/jumbo v2, "aliasEnabled"

    #@3f
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@42
    move-result v2

    #@43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@46
    .line 1615
    const-string/jumbo v1, "allowAttachAudio"

    #@49
    .line 1616
    const-string/jumbo v2, "allowAttachAudio"

    #@4c
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@4f
    move-result v2

    #@50
    .line 1615
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@53
    .line 1617
    const-string/jumbo v1, "enableMultipartSMS"

    #@56
    .line 1618
    const-string/jumbo v2, "enableMultipartSMS"

    #@59
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@5c
    move-result v2

    #@5d
    .line 1617
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@60
    .line 1619
    const-string/jumbo v1, "enableSMSDeliveryReports"

    #@63
    .line 1620
    const-string/jumbo v2, "enableSMSDeliveryReports"

    #@66
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@69
    move-result v2

    #@6a
    .line 1619
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@6d
    .line 1621
    const-string/jumbo v1, "supportMmsContentDisposition"

    #@70
    .line 1622
    const-string/jumbo v2, "supportMmsContentDisposition"

    #@73
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@76
    move-result v2

    #@77
    .line 1621
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@7a
    .line 1623
    const-string/jumbo v1, "sendMultipartSmsAsSeparateMessages"

    #@7d
    .line 1624
    const-string/jumbo v2, "sendMultipartSmsAsSeparateMessages"

    #@80
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@83
    move-result v2

    #@84
    .line 1623
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@87
    .line 1625
    const-string/jumbo v1, "enableMMSReadReports"

    #@8a
    .line 1626
    const-string/jumbo v2, "enableMMSReadReports"

    #@8d
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@90
    move-result v2

    #@91
    .line 1625
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@94
    .line 1627
    const-string/jumbo v1, "enableMMSDeliveryReports"

    #@97
    .line 1628
    const-string/jumbo v2, "enableMMSDeliveryReports"

    #@9a
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@9d
    move-result v2

    #@9e
    .line 1627
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@a1
    .line 1629
    const-string/jumbo v1, "mmsCloseConnection"

    #@a4
    .line 1630
    const-string/jumbo v2, "mmsCloseConnection"

    #@a7
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@aa
    move-result v2

    #@ab
    .line 1629
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@ae
    .line 1631
    const-string/jumbo v1, "maxMessageSize"

    #@b1
    const-string/jumbo v2, "maxMessageSize"

    #@b4
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@b7
    move-result v2

    #@b8
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@bb
    .line 1632
    const-string/jumbo v1, "maxImageWidth"

    #@be
    const-string/jumbo v2, "maxImageWidth"

    #@c1
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@c4
    move-result v2

    #@c5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@c8
    .line 1633
    const-string/jumbo v1, "maxImageHeight"

    #@cb
    const-string/jumbo v2, "maxImageHeight"

    #@ce
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@d1
    move-result v2

    #@d2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@d5
    .line 1634
    const-string/jumbo v1, "recipientLimit"

    #@d8
    const-string/jumbo v2, "recipientLimit"

    #@db
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@de
    move-result v2

    #@df
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@e2
    .line 1635
    const-string/jumbo v1, "aliasMinChars"

    #@e5
    const-string/jumbo v2, "aliasMinChars"

    #@e8
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@eb
    move-result v2

    #@ec
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@ef
    .line 1636
    const-string/jumbo v1, "aliasMaxChars"

    #@f2
    const-string/jumbo v2, "aliasMaxChars"

    #@f5
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@f8
    move-result v2

    #@f9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@fc
    .line 1637
    const-string/jumbo v1, "smsToMmsTextThreshold"

    #@ff
    .line 1638
    const-string/jumbo v2, "smsToMmsTextThreshold"

    #@102
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@105
    move-result v2

    #@106
    .line 1637
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@109
    .line 1639
    const-string/jumbo v1, "smsToMmsTextLengthThreshold"

    #@10c
    .line 1640
    const-string/jumbo v2, "smsToMmsTextLengthThreshold"

    #@10f
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@112
    move-result v2

    #@113
    .line 1639
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@116
    .line 1641
    const-string/jumbo v1, "maxMessageTextSize"

    #@119
    .line 1642
    const-string/jumbo v2, "maxMessageTextSize"

    #@11c
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@11f
    move-result v2

    #@120
    .line 1641
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@123
    .line 1643
    const-string/jumbo v1, "maxSubjectLength"

    #@126
    .line 1644
    const-string/jumbo v2, "maxSubjectLength"

    #@129
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@12c
    move-result v2

    #@12d
    .line 1643
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@130
    .line 1645
    const-string/jumbo v1, "httpSocketTimeout"

    #@133
    .line 1646
    const-string/jumbo v2, "httpSocketTimeout"

    #@136
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@139
    move-result v2

    #@13a
    .line 1645
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@13d
    .line 1647
    const-string/jumbo v1, "uaProfTagName"

    #@140
    .line 1648
    const-string/jumbo v2, "uaProfTagName"

    #@143
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@146
    move-result-object v2

    #@147
    .line 1647
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@14a
    .line 1649
    const-string/jumbo v1, "userAgent"

    #@14d
    const-string/jumbo v2, "userAgent"

    #@150
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@153
    move-result-object v2

    #@154
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@157
    .line 1650
    const-string/jumbo v1, "uaProfUrl"

    #@15a
    const-string/jumbo v2, "uaProfUrl"

    #@15d
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@160
    move-result-object v2

    #@161
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@164
    .line 1651
    const-string/jumbo v1, "httpParams"

    #@167
    const-string/jumbo v2, "httpParams"

    #@16a
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@16d
    move-result-object v2

    #@16e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@171
    .line 1652
    const-string/jumbo v1, "emailGatewayNumber"

    #@174
    .line 1653
    const-string/jumbo v2, "emailGatewayNumber"

    #@177
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@17a
    move-result-object v2

    #@17b
    .line 1652
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@17e
    .line 1654
    const-string/jumbo v1, "naiSuffix"

    #@181
    const-string/jumbo v2, "naiSuffix"

    #@184
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@187
    move-result-object v2

    #@188
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@18b
    .line 1655
    const-string/jumbo v1, "config_cellBroadcastAppLinks"

    #@18e
    .line 1656
    const-string/jumbo v2, "config_cellBroadcastAppLinks"

    #@191
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@194
    move-result v2

    #@195
    .line 1655
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@198
    .line 1657
    const-string/jumbo v1, "supportHttpCharsetHeader"

    #@19b
    .line 1658
    const-string/jumbo v2, "supportHttpCharsetHeader"

    #@19e
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@1a1
    move-result v2

    #@1a2
    .line 1657
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1a5
    .line 1659
    return-object v0
.end method

.method public static getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;
    .locals 4
    .param p0, "subId"    # I

    #@0
    .prologue
    .line 621
    sget-object v2, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 622
    :try_start_0
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    #@5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/telephony/SmsManager;

    #@f
    .line 623
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    if-nez v0, :cond_0

    #@11
    .line 624
    new-instance v0, Landroid/telephony/SmsManager;

    #@13
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    invoke-direct {v0, p0}, Landroid/telephony/SmsManager;-><init>(I)V

    #@16
    .line 625
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    #@18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v3

    #@1c
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_0
    monitor-exit v2

    #@20
    .line 627
    return-object v0

    #@21
    .line 621
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method private sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessageForCarrierApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 476
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 477
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Invalid destinationAddress"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 479
    :cond_0
    if-eqz p3, :cond_1

    #@11
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v1

    #@15
    const/4 v2, 0x1

    #@16
    if-ge v1, v2, :cond_2

    #@18
    .line 480
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v2, "Invalid message body"

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 483
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v1

    #@25
    const/4 v2, 0x1

    #@26
    if-le v1, v2, :cond_3

    #@28
    .line 485
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    #@2b
    move-result-object v0

    #@2c
    .line 486
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@2f
    move-result v1

    #@30
    .line 487
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    move-object v3, p1

    #@35
    move-object v4, p2

    #@36
    move-object v5, p3

    #@37
    move-object v6, p4

    #@38
    move-object v7, p5

    #@39
    move/from16 v8, p6

    #@3b
    .line 486
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 475
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    #@3f
    .line 494
    :cond_3
    const/4 v5, 0x0

    #@40
    .line 495
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    #@41
    .line 496
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    #@43
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    #@46
    move-result v1

    #@47
    if-lez v1, :cond_4

    #@49
    .line 497
    const/4 v1, 0x0

    #@4a
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    #@50
    .line 499
    :cond_4
    if-eqz p5, :cond_5

    #@52
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v1

    #@56
    if-lez v1, :cond_5

    #@58
    .line 500
    const/4 v1, 0x0

    #@59
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v6

    #@5d
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    #@5f
    .line 502
    :cond_5
    const/4 v1, 0x0

    #@60
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v4

    #@64
    check-cast v4, Ljava/lang/String;

    #@66
    move-object v1, p0

    #@67
    move-object v2, p1

    #@68
    move-object v3, p2

    #@69
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@6c
    goto :goto_0

    #@6d
    .line 490
    :catch_0
    move-exception v9

    #@6e
    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessageForCarrierApp"    # Z

    #@0
    .prologue
    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 309
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Invalid destinationAddress"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 312
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 313
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v2, "Invalid message body"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 317
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    #@21
    move-result-object v0

    #@22
    .line 318
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@25
    move-result v1

    #@26
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    move-object v3, p1

    #@2b
    move-object v4, p2

    #@2c
    move-object v5, p3

    #@2d
    move-object v6, p4

    #@2e
    move-object v7, p5

    #@2f
    move/from16 v8, p6

    #@31
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 307
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    #@35
    .line 322
    :catch_0
    move-exception v9

    #@36
    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public addMultimediaMessageDraft(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1396
    if-nez p1, :cond_0

    #@3
    .line 1397
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "Uri contentUri null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 1400
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    #@f
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@16
    move-result-object v1

    #@17
    .line 1401
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    #@19
    .line 1402
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v2

    #@21
    return-object v2

    #@22
    .line 1405
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    #@23
    .line 1408
    :cond_1
    return-object v3
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1375
    :try_start_0
    const-string/jumbo v2, "imms"

    #@4
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v2

    #@8
    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@b
    move-result-object v1

    #@c
    .line 1376
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    #@e
    .line 1377
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 1379
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    #@18
    .line 1382
    :cond_0
    return-object v3
.end method

.method public archiveStoredConversation(JZ)Z
    .locals 3
    .param p1, "conversationId"    # J
    .param p3, "archived"    # Z

    #@0
    .prologue
    .line 1352
    :try_start_0
    const-string/jumbo v2, "imms"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@a
    move-result-object v1

    #@b
    .line 1353
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    #@d
    .line 1354
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 1357
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    #@17
    .line 1360
    :cond_0
    const/4 v2, 0x0

    #@18
    return v2
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 8
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    #@0
    .prologue
    .line 715
    const/4 v7, 0x0

    #@1
    .line 717
    .local v7, "success":Z
    if-nez p2, :cond_0

    #@3
    .line 718
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "pdu is NULL"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 721
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@f
    move-result-object v0

    #@10
    .line 722
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    #@12
    .line 723
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@15
    move-result v1

    #@16
    .line 724
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    move v3, p3

    #@1b
    move-object v4, p2

    #@1c
    move-object v5, p1

    #@1d
    .line 723
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v7

    #@21
    .line 731
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "success":Z
    :cond_1
    :goto_0
    return v7

    #@22
    .line 727
    .restart local v7    # "success":Z
    :catch_0
    move-exception v6

    #@23
    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 8
    .param p1, "messageIndex"    # I

    #@0
    .prologue
    .line 746
    const/4 v7, 0x0

    #@1
    .line 747
    .local v7, "success":Z
    const/16 v1, 0xaf

    #@3
    new-array v5, v1, [B

    #@5
    .line 748
    .local v5, "pdu":[B
    const/4 v1, -0x1

    #@6
    invoke-static {v5, v1}, Ljava/util/Arrays;->fill([BB)V

    #@9
    .line 751
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@c
    move-result-object v0

    #@d
    .line 752
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    #@f
    .line 753
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@12
    move-result v1

    #@13
    .line 754
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 755
    const/4 v4, 0x0

    #@18
    move v3, p1

    #@19
    .line 753
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result v7

    #@1d
    .line 761
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "success":Z
    :cond_0
    :goto_0
    return v7

    #@1e
    .line 757
    .restart local v7    # "success":Z
    :catch_0
    move-exception v6

    #@1f
    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public deleteStoredConversation(J)Z
    .locals 3
    .param p1, "conversationId"    # J

    #@0
    .prologue
    .line 1300
    :try_start_0
    const-string/jumbo v2, "imms"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@a
    move-result-object v1

    #@b
    .line 1301
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    #@d
    .line 1303
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 1302
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 1305
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    #@17
    .line 1308
    :cond_0
    const/4 v2, 0x0

    #@18
    return v2
.end method

.method public deleteStoredMessage(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "messageUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1275
    if-nez p1, :cond_0

    #@2
    .line 1276
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Empty message URI"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1279
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    #@e
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@15
    move-result-object v1

    #@16
    .line 1280
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    #@18
    .line 1281
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v2

    #@20
    return v2

    #@21
    .line 1283
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    #@22
    .line 1286
    :cond_1
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method public disableCellBroadcast(II)Z
    .locals 4
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    #@0
    .prologue
    .line 878
    const/4 v2, 0x0

    #@1
    .line 881
    .local v2, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@4
    move-result-object v1

    #@5
    .line 882
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    #@7
    .line 884
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@a
    move-result v3

    #@b
    .line 883
    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastForSubscriber(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v2

    #@f
    .line 890
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    #@10
    .line 886
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    #@11
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 5
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    #@0
    .prologue
    .line 959
    const/4 v2, 0x0

    #@1
    .line 961
    .local v2, "success":Z
    if-ge p2, p1, :cond_0

    #@3
    .line 962
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v4, "endMessageId < startMessageId"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 965
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@f
    move-result-object v1

    #@10
    .line 966
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    #@12
    .line 967
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@15
    move-result v3

    #@16
    invoke-interface {v1, v3, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v2

    #@1a
    .line 974
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return v2

    #@1b
    .line 970
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    #@1c
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 418
    if-nez p1, :cond_0

    #@2
    .line 419
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "text is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 421
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1166
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Empty MMS location URL"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 1168
    :cond_0
    if-nez p3, :cond_1

    #@11
    .line 1169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Uri contentUri null"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 1172
    :cond_1
    :try_start_0
    const-string/jumbo v1, "imms"

    #@1d
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@20
    move-result-object v1

    #@21
    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@24
    move-result-object v0

    #@25
    .line 1173
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_2

    #@27
    .line 1174
    return-void

    #@28
    .line 1177
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@2b
    move-result v1

    #@2c
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    move-object v3, p2

    #@31
    move-object v4, p3

    #@32
    move-object v5, p4

    #@33
    move-object v6, p5

    #@34
    .line 1176
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 1164
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    #@38
    .line 1179
    :catch_0
    move-exception v7

    #@39
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enableCellBroadcast(II)Z
    .locals 4
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    #@0
    .prologue
    .line 842
    const/4 v2, 0x0

    #@1
    .line 845
    .local v2, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@4
    move-result-object v1

    #@5
    .line 846
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    #@7
    .line 848
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@a
    move-result v3

    #@b
    .line 847
    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastForSubscriber(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v2

    #@f
    .line 854
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    #@10
    .line 850
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    #@11
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 5
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    #@0
    .prologue
    .line 917
    const/4 v2, 0x0

    #@1
    .line 919
    .local v2, "success":Z
    if-ge p2, p1, :cond_0

    #@3
    .line 920
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v4, "endMessageId < startMessageId"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 923
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@f
    move-result-object v1

    #@10
    .line 924
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    #@12
    .line 925
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@15
    move-result v3

    #@16
    invoke-interface {v1, v3, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v2

    #@1a
    .line 932
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return v2

    #@1b
    .line 928
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    #@1c
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 805
    const/4 v2, 0x0

    #@1
    .line 808
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@4
    move-result-object v1

    #@5
    .line 809
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    #@7
    .line 811
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@a
    move-result v3

    #@b
    .line 812
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    .line 810
    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    .line 818
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    #@16
    move-result-object v3

    #@17
    return-object v3

    #@18
    .line 814
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catch_0
    move-exception v0

    #@19
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAutoPersisting()Z
    .locals 3

    #@0
    .prologue
    .line 1567
    :try_start_0
    const-string/jumbo v2, "imms"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@a
    move-result-object v1

    #@b
    .line 1568
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    #@d
    .line 1569
    invoke-interface {v1}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v2

    #@11
    return v2

    #@12
    .line 1571
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    #@13
    .line 1574
    :cond_0
    const/4 v2, 0x0

    #@14
    return v2
.end method

.method public getCarrierConfigValues()Landroid/os/Bundle;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1584
    :try_start_0
    const-string/jumbo v2, "imms"

    #@4
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v2

    #@8
    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@b
    move-result-object v1

    #@c
    .line 1585
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    #@e
    .line 1586
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@11
    move-result v2

    #@12
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 1588
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    #@18
    .line 1591
    :cond_0
    return-object v3
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1039
    const-string/jumbo v1, "unknown"

    #@3
    .line 1041
    .local v1, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@6
    move-result-object v2

    #@7
    .line 1042
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    #@9
    .line 1043
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@c
    move-result v3

    #@d
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    .line 1048
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    #@12
    .line 1045
    :catch_0
    move-exception v0

    #@13
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSubscriptionId()I
    .locals 9

    #@0
    .prologue
    .line 651
    iget v7, p0, Landroid/telephony/SmsManager;->mSubId:I

    #@2
    const/16 v8, -0x3ea

    #@4
    if-ne v7, v8, :cond_2

    #@6
    .line 652
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    #@9
    move-result v6

    #@a
    .line 653
    .local v6, "subId":I
    :goto_0
    const/4 v5, 0x0

    #@b
    .line 654
    .local v5, "isSmsSimPickActivityNeeded":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@e
    move-result-object v7

    #@f
    invoke-virtual {v7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    .line 656
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@16
    move-result-object v3

    #@17
    .line 657
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    #@19
    .line 658
    invoke-interface {v3, v6}, Lcom/android/internal/telephony/ISms;->isSmsSimPickActivityNeeded(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result v5

    #@1d
    .line 664
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v5    # "isSmsSimPickActivityNeeded":Z
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    #@1f
    .line 665
    const-string/jumbo v7, "SmsManager"

    #@22
    const-string/jumbo v8, "getSubscriptionId isSmsSimPickActivityNeeded is true"

    #@25
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 667
    new-instance v4, Landroid/content/Intent;

    #@2a
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    #@2d
    .line 668
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.android.settings"

    #@30
    .line 669
    const-string/jumbo v8, "com.android.settings.sim.SimDialogActivity"

    #@33
    .line 668
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@36
    .line 670
    const/high16 v7, 0x10000000

    #@38
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3b
    .line 671
    sget-object v7, Landroid/telephony/SmsManager;->DIALOG_TYPE_KEY:Ljava/lang/String;

    #@3d
    const/4 v8, 0x2

    #@3e
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@41
    .line 673
    :try_start_1
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@44
    .line 681
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    return v6

    #@45
    .line 652
    .end local v1    # "context":Landroid/content/Context;
    .end local v6    # "subId":I
    :cond_2
    iget v6, p0, Landroid/telephony/SmsManager;->mSubId:I

    #@47
    .restart local v6    # "subId":I
    goto :goto_0

    #@48
    .line 660
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "isSmsSimPickActivityNeeded":Z
    :catch_0
    move-exception v2

    #@49
    .line 661
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v7, "SmsManager"

    #@4c
    const-string/jumbo v8, "Exception in getSubscriptionId"

    #@4f
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    goto :goto_1

    #@53
    .line 674
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v5    # "isSmsSimPickActivityNeeded":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    #@54
    .line 677
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "SmsManager"

    #@57
    const-string/jumbo v8, "Unable to launch Settings application."

    #@5a
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    goto :goto_2
.end method

.method public importMultimediaMessage(Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "timestampSecs"    # J
    .param p5, "seen"    # Z
    .param p6, "read"    # Z

    #@0
    .prologue
    .line 1249
    if-nez p1, :cond_0

    #@2
    .line 1250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Uri contentUri null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1253
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    #@e
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@15
    move-result-object v0

    #@16
    .line 1254
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    #@18
    .line 1255
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    move-object v2, p1

    #@1d
    move-object v3, p2

    #@1e
    move-wide v4, p3

    #@1f
    move v6, p5

    #@20
    move v7, p6

    #@21
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 1258
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v8

    #@27
    .line 1261
    :cond_1
    const/4 v1, 0x0

    #@28
    return-object v1
.end method

.method public importTextMessage(Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "seen"    # Z
    .param p7, "read"    # Z

    #@0
    .prologue
    .line 1216
    :try_start_0
    const-string/jumbo v2, "imms"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@a
    move-result-object v1

    #@b
    .line 1217
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    #@d
    .line 1218
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    move-object v3, p1

    #@12
    move v4, p2

    #@13
    move-object v5, p3

    #@14
    move-wide v6, p4

    #@15
    move/from16 v8, p6

    #@17
    move/from16 v9, p7

    #@19
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 1221
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    #@1f
    .line 1224
    :cond_0
    const/4 v2, 0x0

    #@20
    return-object v2
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 391
    const-string/jumbo v2, "3gpp"

    #@3
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    const-string/jumbo v2, "3gpp2"

    #@c
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_2

    #@12
    .line 397
    :cond_0
    :try_start_0
    const-string/jumbo v2, "isms"

    #@15
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@18
    move-result-object v2

    #@19
    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    #@1c
    move-result-object v1

    #@1d
    .line 398
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    #@1f
    .line 400
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@22
    move-result v2

    #@23
    .line 399
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 390
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    #@27
    .line 393
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@29
    .line 394
    const-string/jumbo v3, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    #@2c
    .line 393
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 402
    :catch_0
    move-exception v0

    #@31
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isImsSmsSupported()Z
    .locals 4

    #@0
    .prologue
    .line 1014
    const/4 v0, 0x0

    #@1
    .line 1016
    .local v0, "boSupported":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@4
    move-result-object v2

    #@5
    .line 1017
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    #@7
    .line 1018
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@a
    move-result v3

    #@b
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v0

    #@f
    .line 1023
    .end local v0    # "boSupported":Z
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    #@10
    .line 1020
    .restart local v0    # "boSupported":Z
    :catch_0
    move-exception v1

    #@11
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1075
    const/4 v2, 0x0

    #@2
    .line 1077
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string/jumbo v3, "isms"

    #@5
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@8
    move-result-object v3

    #@9
    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    #@c
    move-result-object v2

    #@d
    .line 1078
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-interface {v2}, Lcom/android/internal/telephony/ISms;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v3

    #@11
    return v3

    #@12
    .line 1081
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    #@13
    .line 1082
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    #@14
    .line 1079
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@15
    .line 1080
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 555
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 556
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Invalid destinationAddress"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 559
    :cond_0
    if-eqz p4, :cond_1

    #@11
    array-length v1, p4

    #@12
    if-nez v1, :cond_2

    #@14
    .line 560
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v2, "Invalid message data"

    #@19
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 564
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    #@20
    move-result-object v0

    #@21
    .line 565
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@24
    move-result v1

    #@25
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 566
    const v3, 0xffff

    #@2c
    and-int v5, p3, v3

    #@2e
    move-object v3, p1

    #@2f
    move-object v4, p2

    #@30
    move-object v6, p4

    #@31
    move-object v7, p5

    #@32
    move-object/from16 v8, p6

    #@34
    .line 565
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 554
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    #@38
    .line 568
    :catch_0
    move-exception v9

    #@39
    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendDataMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 583
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Invalid destinationAddress"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 586
    :cond_0
    if-eqz p4, :cond_1

    #@11
    array-length v1, p4

    #@12
    if-nez v1, :cond_2

    #@14
    .line 587
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v2, "Invalid message data"

    #@19
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 591
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    #@20
    move-result-object v0

    #@21
    .line 592
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@24
    move-result v1

    #@25
    .line 593
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 594
    const v3, 0xffff

    #@2c
    and-int v5, p3, v3

    #@2e
    move-object v3, p1

    #@2f
    move-object v4, p2

    #@30
    move-object v6, p4

    #@31
    move-object v7, p5

    #@32
    move-object/from16 v8, p6

    #@34
    .line 592
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 581
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    #@38
    .line 595
    :catch_0
    move-exception v9

    #@39
    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1134
    if-nez p2, :cond_0

    #@2
    .line 1135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Uri contentUri null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1138
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    #@e
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@15
    move-result-object v0

    #@16
    .line 1139
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_1

    #@18
    .line 1140
    return-void

    #@19
    .line 1143
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@1c
    move-result v1

    #@1d
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    move-object v3, p2

    #@22
    move-object v4, p3

    #@23
    move-object v5, p4

    #@24
    move-object v6, p5

    #@25
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 1133
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    #@29
    .line 1145
    :catch_0
    move-exception v7

    #@2a
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 469
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    .line 468
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    #@a
    .line 467
    return-void
.end method

.method public sendMultipartTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 519
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    .line 518
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    #@a
    .line 517
    return-void
.end method

.method public sendStoredMultimediaMessage(Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "configOverrides"    # Landroid/os/Bundle;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1517
    if-nez p1, :cond_0

    #@2
    .line 1518
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Empty message URI"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1521
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    #@e
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@15
    move-result-object v0

    #@16
    .line 1522
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    #@18
    .line 1524
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@1b
    move-result v1

    #@1c
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    move-object v3, p1

    #@21
    move-object v4, p2

    #@22
    move-object v5, p3

    #@23
    .line 1523
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 1516
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    :goto_0
    return-void

    #@27
    .line 1527
    :catch_0
    move-exception v6

    #@28
    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendStoredMultipartTextMessage(Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1488
    .local p3, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_0

    #@2
    .line 1489
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Empty message URI"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1492
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    #@e
    move-result-object v0

    #@f
    .line 1494
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@12
    move-result v1

    #@13
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    move-object v3, p1

    #@18
    move-object v4, p2

    #@19
    move-object v5, p3

    #@1a
    move-object v6, p4

    #@1b
    .line 1493
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 1487
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    #@1f
    .line 1496
    :catch_0
    move-exception v7

    #@20
    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendStoredTextMessage(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1440
    if-nez p1, :cond_0

    #@2
    .line 1441
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Empty message URI"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1444
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    #@e
    move-result-object v0

    #@f
    .line 1446
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@12
    move-result v1

    #@13
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    move-object v3, p1

    #@18
    move-object v4, p2

    #@19
    move-object v5, p3

    #@1a
    move-object v6, p4

    #@1b
    .line 1445
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 1439
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    #@1f
    .line 1448
    :catch_0
    move-exception v7

    #@20
    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 302
    const/4 v6, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    .line 301
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    #@a
    .line 300
    return-void
.end method

.method public sendTextMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessage"    # Z

    #@0
    .prologue
    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 355
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Invalid destinationAddress"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 358
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 359
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v2, "Invalid message body"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 363
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    #@21
    move-result-object v0

    #@22
    .line 364
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@25
    move-result v1

    #@26
    .line 365
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    move-object v3, p1

    #@2b
    move-object v4, p2

    #@2c
    move-object v5, p3

    #@2d
    move-object v6, p4

    #@2e
    move-object v7, p5

    #@2f
    move/from16 v8, p6

    #@31
    .line 364
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 353
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    #@35
    .line 368
    :catch_0
    move-exception v9

    #@36
    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 339
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    .line 338
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    #@a
    .line 337
    return-void
.end method

.method public setAutoPersisting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1546
    :try_start_0
    const-string/jumbo v2, "imms"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@a
    move-result-object v1

    #@b
    .line 1547
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    #@d
    .line 1548
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1544
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    #@15
    .line 1550
    :catch_0
    move-exception v0

    #@16
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 8
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    #@0
    .prologue
    .line 779
    const/4 v7, 0x0

    #@1
    .line 782
    .local v7, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    #@4
    move-result-object v0

    #@5
    .line 783
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    #@7
    .line 784
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    #@a
    move-result v1

    #@b
    .line 785
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    move v3, p1

    #@10
    move v4, p2

    #@11
    move-object v5, p3

    #@12
    .line 784
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v7

    #@16
    .line 792
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "success":Z
    :cond_0
    :goto_0
    return v7

    #@17
    .line 788
    .restart local v7    # "success":Z
    :catch_0
    move-exception v6

    #@18
    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updateStoredMessageStatus(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "statusValues"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 1322
    if-nez p1, :cond_0

    #@2
    .line 1323
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Empty message URI"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1326
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    #@e
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    #@15
    move-result-object v1

    #@16
    .line 1327
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    #@18
    .line 1328
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v2

    #@20
    return v2

    #@21
    .line 1331
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    #@22
    .line 1334
    :cond_1
    const/4 v2, 0x0

    #@23
    return v2
.end method

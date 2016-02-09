.class public final Lcom/android/internal/telephony/cdma/sms/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    }
.end annotation


# static fields
.field public static final ALERT_DEFAULT:I = 0x0

.field public static final ALERT_HIGH_PRIO:I = 0x3

.field public static final ALERT_LOW_PRIO:I = 0x1

.field public static final ALERT_MEDIUM_PRIO:I = 0x2

.field public static final DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final DISPLAY_MODE_IMMEDIATE:I = 0x0

.field public static final DISPLAY_MODE_USER:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field public static final ERROR_UNDEFINED:I = 0xff

.field public static final LANGUAGE_CHINESE:I = 0x6

.field public static final LANGUAGE_ENGLISH:I = 0x1

.field public static final LANGUAGE_FRENCH:I = 0x2

.field public static final LANGUAGE_HEBREW:I = 0x7

.field public static final LANGUAGE_JAPANESE:I = 0x4

.field public static final LANGUAGE_KOREAN:I = 0x5

.field public static final LANGUAGE_SPANISH:I = 0x3

.field public static final LANGUAGE_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "BearerData"

.field public static final MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final PRIORITY_EMERGENCY:I = 0x3

.field public static final PRIORITY_INTERACTIVE:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_URGENT:I = 0x2

.field public static final PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final PRIVACY_RESTRICTED:I = 0x1

.field public static final PRIVACY_SECRET:I = 0x3

.field public static final RELATIVE_TIME_DAYS_LIMIT:I = 0xc4

.field public static final RELATIVE_TIME_HOURS_LIMIT:I = 0xa7

.field public static final RELATIVE_TIME_INDEFINITE:I = 0xf5

.field public static final RELATIVE_TIME_MINS_LIMIT:I = 0x8f

.field public static final RELATIVE_TIME_MOBILE_INACTIVE:I = 0xf7

.field public static final RELATIVE_TIME_NOW:I = 0xf6

.field public static final RELATIVE_TIME_RESERVED:I = 0xf8

.field public static final RELATIVE_TIME_WEEKS_LIMIT:I = 0xf4

.field public static final STATUS_ACCEPTED:I = 0x0

.field public static final STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_CANCEL_FAILED:I = 0x6

.field public static final STATUS_DELIVERED:I = 0x2

.field public static final STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final STATUS_INVALID_DESTINATION:I = 0xa

.field public static final STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final STATUS_NETWORK_ERROR:I = 0x5

.field public static final STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final STATUS_UNDEFINED:I = 0xff

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1f

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_RESULTS:B = 0x13t

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# instance fields
.field public alert:I

.field public alertIndicatorSet:Z

.field public callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field public deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public deferredDeliveryTimeRelative:I

.field public deferredDeliveryTimeRelativeSet:Z

.field public deliveryAckReq:Z

.field public depositIndex:I

.field public displayMode:I

.field public displayModeSet:Z

.field public errorClass:I

.field public hasUserDataHeader:Z

.field public language:I

.field public languageIndicatorSet:Z

.field public messageId:I

.field public messageStatus:I

.field public messageStatusSet:Z

.field public messageType:I

.field public msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public numberOfMessages:I

.field public priority:I

.field public priorityIndicatorSet:Z

.field public privacy:I

.field public privacyIndicatorSet:Z

.field public readAckReq:Z

.field public reportReq:Z

.field public serviceCategoryProgramData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public serviceCategoryProgramResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramResults;",
            ">;"
        }
    .end annotation
.end field

.field public userAckReq:Z

.field public userData:Lcom/android/internal/telephony/cdma/sms/UserData;

.field public userResponseCode:I

.field public userResponseCodeSet:Z

.field public validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public validityPeriodRelative:I

.field public validityPeriodRelativeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0xff

    #@2
    const/4 v1, 0x0

    #@3
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 108
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    #@8
    .line 109
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    #@a
    .line 120
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    #@c
    .line 121
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    #@e
    .line 132
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    #@10
    .line 133
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    #@12
    .line 145
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    #@14
    .line 146
    const/4 v0, 0x1

    #@15
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    #@17
    .line 164
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    #@19
    .line 165
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    #@1b
    .line 197
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    #@1d
    .line 198
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    #@1f
    .line 199
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    #@21
    .line 225
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    #@23
    .line 41
    return-void
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z
    .param p2, "isEntireMsg"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 479
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    #@4
    move-result v0

    #@5
    .line 480
    .local v0, "septets":I
    const/4 v2, -0x1

    #@6
    if-eq v0, v2, :cond_1

    #@8
    const/16 v2, 0xa0

    #@a
    if-gt v0, v2, :cond_1

    #@c
    .line 481
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@e
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    #@11
    .line 482
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iput v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@13
    .line 483
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    #@15
    .line 484
    rsub-int v2, v0, 0xa0

    #@17
    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    #@19
    .line 485
    iput v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@1b
    .line 496
    :cond_0
    return-object v1

    #@1c
    .line 487
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@1f
    move-result-object v1

    #@20
    .line 489
    .restart local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@22
    if-ne v2, v3, :cond_0

    #@24
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@26
    if-ne v2, v3, :cond_0

    #@28
    if-eqz p2, :cond_0

    #@2a
    .line 493
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@2d
    move-result-object v2

    #@2e
    return-object v2
.end method

.method private static countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force"    # Z

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 458
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v1

    #@5
    .line 459
    .local v1, "msgLen":I
    if-eqz p1, :cond_0

    #@7
    return v1

    #@8
    .line 460
    :cond_0
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@b
    .line 461
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    #@d
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@10
    move-result v3

    #@11
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    #@14
    move-result v2

    #@15
    if-ne v2, v4, :cond_1

    #@17
    .line 462
    return v4

    #@18
    .line 460
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 465
    :cond_2
    return v1
.end method

.method public static decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 1
    .param p0, "smsData"    # [B

    #@0
    .prologue
    .line 1869
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 12
    .param p0, "smsData"    # [B
    .param p1, "serviceCategory"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/16 v10, 0x17

    #@3
    const/4 v9, 0x1

    #@4
    .line 1887
    :try_start_0
    new-instance v5, Lcom/android/internal/util/BitwiseInputStream;

    #@6
    invoke-direct {v5, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    #@9
    .line 1888
    .local v5, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@b
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    #@e
    .line 1889
    .local v0, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v4, 0x0

    #@f
    .line 1890
    .local v4, "foundSubparamMask":I
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@12
    move-result v8

    #@13
    if-lez v8, :cond_2

    #@15
    .line 1891
    const/16 v8, 0x8

    #@17
    invoke-virtual {v5, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@1a
    move-result v6

    #@1b
    .line 1892
    .local v6, "subparamId":I
    shl-int v7, v9, v6

    #@1d
    .line 1899
    .local v7, "subparamIdBit":I
    and-int v8, v4, v7

    #@1f
    if-eqz v8, :cond_1

    #@21
    .line 1900
    if-ltz v6, :cond_1

    #@23
    .line 1901
    if-gt v6, v10, :cond_1

    #@25
    .line 1902
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@27
    new-instance v9, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v10, "illegal duplicate subparameter ("

    #@2f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v9

    #@33
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v9

    #@37
    .line 1903
    const-string/jumbo v10, ")"

    #@3a
    .line 1902
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@45
    throw v8
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    #@46
    .line 1993
    .end local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v4    # "foundSubparamMask":I
    .end local v5    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v6    # "subparamId":I
    .end local v7    # "subparamIdBit":I
    :catch_0
    move-exception v3

    #@47
    .line 1994
    .local v3, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string/jumbo v8, "BearerData"

    #@4a
    new-instance v9, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v10, "BearerData decode failed: "

    #@52
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v9

    #@56
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v9

    #@5e
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 1998
    .end local v3    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    return-object v11

    #@62
    .line 1906
    .restart local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v4    # "foundSubparamMask":I
    .restart local v5    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v6    # "subparamId":I
    .restart local v7    # "subparamIdBit":I
    :cond_1
    packed-switch v6, :pswitch_data_0

    #@65
    .line 1965
    :pswitch_0
    :try_start_1
    invoke-static {v0, v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z

    #@68
    move-result v1

    #@69
    .line 1967
    .local v1, "decodeSuccess":Z
    :goto_2
    if-eqz v1, :cond_0

    #@6b
    .line 1968
    if-ltz v6, :cond_0

    #@6d
    .line 1969
    if-gt v6, v10, :cond_0

    #@6f
    .line 1970
    or-int/2addr v4, v7

    #@70
    goto :goto_0

    #@71
    .line 1908
    .end local v1    # "decodeSuccess":Z
    :pswitch_1
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@74
    move-result v1

    #@75
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@76
    .line 1911
    .end local v1    # "decodeSuccess":Z
    :pswitch_2
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@79
    move-result v1

    #@7a
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@7b
    .line 1914
    .end local v1    # "decodeSuccess":Z
    :pswitch_3
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@7e
    move-result v1

    #@7f
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@80
    .line 1917
    .end local v1    # "decodeSuccess":Z
    :pswitch_4
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@83
    move-result v1

    #@84
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@85
    .line 1920
    .end local v1    # "decodeSuccess":Z
    :pswitch_5
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@88
    move-result v1

    #@89
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@8a
    .line 1923
    .end local v1    # "decodeSuccess":Z
    :pswitch_6
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@8d
    move-result v1

    #@8e
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@8f
    .line 1926
    .end local v1    # "decodeSuccess":Z
    :pswitch_7
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@92
    move-result v1

    #@93
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@94
    .line 1929
    .end local v1    # "decodeSuccess":Z
    :pswitch_8
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@97
    move-result v1

    #@98
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@99
    .line 1932
    .end local v1    # "decodeSuccess":Z
    :pswitch_9
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@9c
    move-result v1

    #@9d
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@9e
    .line 1935
    .end local v1    # "decodeSuccess":Z
    :pswitch_a
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@a1
    move-result v1

    #@a2
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@a3
    .line 1938
    .end local v1    # "decodeSuccess":Z
    :pswitch_b
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@a6
    move-result v1

    #@a7
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@a8
    .line 1941
    .end local v1    # "decodeSuccess":Z
    :pswitch_c
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@ab
    move-result v1

    #@ac
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@ad
    .line 1944
    .end local v1    # "decodeSuccess":Z
    :pswitch_d
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@b0
    move-result v1

    #@b1
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@b2
    .line 1947
    .end local v1    # "decodeSuccess":Z
    :pswitch_e
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@b5
    move-result v1

    #@b6
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@b7
    .line 1950
    .end local v1    # "decodeSuccess":Z
    :pswitch_f
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@ba
    move-result v1

    #@bb
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@bc
    .line 1953
    .end local v1    # "decodeSuccess":Z
    :pswitch_10
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@bf
    move-result v1

    #@c0
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@c1
    .line 1956
    .end local v1    # "decodeSuccess":Z
    :pswitch_11
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@c4
    move-result v1

    #@c5
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@c6
    .line 1959
    .end local v1    # "decodeSuccess":Z
    :pswitch_12
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@c9
    move-result v1

    #@ca
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@cb
    .line 1962
    .end local v1    # "decodeSuccess":Z
    :pswitch_13
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    #@ce
    move-result v1

    #@cf
    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    #@d0
    .line 1973
    .end local v1    # "decodeSuccess":Z
    .end local v6    # "subparamId":I
    .end local v7    # "subparamIdBit":I
    :cond_2
    and-int/lit8 v8, v4, 0x1

    #@d2
    if-nez v8, :cond_3

    #@d4
    .line 1974
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@d6
    const-string/jumbo v9, "missing MESSAGE_IDENTIFIER subparam"

    #@d9
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@dc
    throw v8
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@dd
    .line 1995
    .end local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v4    # "foundSubparamMask":I
    .end local v5    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :catch_1
    move-exception v2

    #@de
    .line 1996
    .local v2, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string/jumbo v8, "BearerData"

    #@e1
    new-instance v9, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v10, "BearerData decode failed: "

    #@e9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v9

    #@ed
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v9

    #@f1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v9

    #@f5
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f8
    goto/16 :goto_1

    #@fa
    .line 1976
    .end local v2    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    .restart local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v4    # "foundSubparamMask":I
    .restart local v5    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_3
    :try_start_2
    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@fc
    if-eqz v8, :cond_4

    #@fe
    .line 1977
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->isCmasAlertCategory(I)Z

    #@101
    move-result v8

    #@102
    if-eqz v8, :cond_5

    #@104
    .line 1978
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V

    #@107
    .line 1992
    :cond_4
    :goto_3
    return-object v0

    #@108
    .line 1979
    :cond_5
    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@10a
    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@10c
    if-ne v8, v9, :cond_7

    #@10e
    .line 1980
    xor-int/lit8 v8, v4, 0x1

    #@110
    xor-int/lit8 v8, v8, 0x2

    #@112
    if-eqz v8, :cond_6

    #@114
    .line 1984
    const-string/jumbo v8, "BearerData"

    #@117
    new-instance v9, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v10, "IS-91 must occur without extra subparams ("

    #@11f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v9

    #@123
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@126
    move-result-object v9

    #@127
    .line 1985
    const-string/jumbo v10, ")"

    #@12a
    .line 1984
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v9

    #@12e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v9

    #@132
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@135
    .line 1987
    :cond_6
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    #@138
    goto :goto_3

    #@139
    .line 1989
    :cond_7
    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@13b
    iget-boolean v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    #@13d
    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_2 .. :try_end_2} :catch_1

    #@140
    goto :goto_3

    #@141
    .line 1906
    nop

    #@142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_d
        :pswitch_4
        :pswitch_5
        :pswitch_11
        :pswitch_e
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private static decode7bitAscii([BII)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x20

    #@2
    const/16 v9, 0xd

    #@4
    const/16 v8, 0xa

    #@6
    .line 1059
    mul-int/lit8 p1, p1, 0x8

    #@8
    .line 1060
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v4, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@d
    .line 1061
    .local v4, "strBuf":Ljava/lang/StringBuffer;
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    #@f
    invoke-direct {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    #@12
    .line 1062
    .local v3, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    mul-int/lit8 v6, p1, 0x8

    #@14
    mul-int/lit8 v7, p2, 0x7

    #@16
    add-int v5, v6, v7

    #@18
    .line 1063
    .local v5, "wantedBits":I
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@1b
    move-result v6

    #@1c
    if-ge v6, v5, :cond_0

    #@1e
    .line 1064
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@20
    new-instance v7, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v8, "insufficient data (wanted "

    #@28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    .line 1065
    const-string/jumbo v8, " bits, but only have "

    #@33
    .line 1064
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 1065
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@3a
    move-result v8

    #@3b
    .line 1064
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    .line 1065
    const-string/jumbo v8, ")"

    #@42
    .line 1064
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v6
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 1083
    .end local v3    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v4    # "strBuf":Ljava/lang/StringBuffer;
    .end local v5    # "wantedBits":I
    :catch_0
    move-exception v1

    #@4f
    .line 1084
    .local v1, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@51
    new-instance v7, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v8, "7bit ASCII decode failed: "

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@68
    throw v6

    #@69
    .line 1067
    .end local v1    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .restart local v3    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v4    # "strBuf":Ljava/lang/StringBuffer;
    .restart local v5    # "wantedBits":I
    :cond_0
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@6c
    .line 1068
    const/4 v2, 0x0

    #@6d
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_4

    #@6f
    .line 1069
    const/4 v6, 0x7

    #@70
    invoke-virtual {v3, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@73
    move-result v0

    #@74
    .line 1070
    .local v0, "charCode":I
    if-lt v0, v10, :cond_1

    #@76
    .line 1071
    sget v6, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    #@78
    if-gt v0, v6, :cond_1

    #@7a
    .line 1072
    sget-object v6, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    #@7c
    add-int/lit8 v7, v0, -0x20

    #@7e
    aget-char v6, v6, v7

    #@80
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@83
    .line 1068
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@85
    goto :goto_0

    #@86
    .line 1073
    :cond_1
    if-ne v0, v8, :cond_2

    #@88
    .line 1074
    const/16 v6, 0xa

    #@8a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@8d
    goto :goto_1

    #@8e
    .line 1075
    :cond_2
    if-ne v0, v9, :cond_3

    #@90
    .line 1076
    const/16 v6, 0xd

    #@92
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@95
    goto :goto_1

    #@96
    .line 1079
    :cond_3
    const/16 v6, 0x20

    #@98
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@9b
    goto :goto_1

    #@9c
    .line 1082
    .end local v0    # "charCode":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    #@9f
    move-result-object v6

    #@a0
    return-object v6
.end method

.method private static decode7bitGsm([BII)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1092
    mul-int/lit8 v6, p1, 0x8

    #@3
    .line 1093
    .local v6, "offsetBits":I
    add-int/lit8 v0, v6, 0x6

    #@5
    div-int/lit8 v7, v0, 0x7

    #@7
    .line 1094
    .local v7, "offsetSeptets":I
    sub-int/2addr p2, v7

    #@8
    .line 1095
    mul-int/lit8 v0, v7, 0x7

    #@a
    sub-int v3, v0, v6

    #@c
    .local v3, "paddingBits":I
    move-object v0, p0

    #@d
    move v1, p1

    #@e
    move v2, p2

    #@f
    move v5, v4

    #@10
    .line 1096
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    .line 1098
    .local v8, "result":Ljava/lang/String;
    if-nez v8, :cond_0

    #@16
    .line 1099
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@18
    const-string/jumbo v1, "7bit GSM decoding failed"

    #@1b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 1101
    :cond_0
    return-object v8
.end method

.method private static decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 11
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/16 v9, 0x8

    #@3
    .line 1388
    const/16 v0, 0x8

    #@5
    .line 1389
    .local v0, "EXPECTED_PARAM_SIZE":I
    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v8

    #@9
    mul-int/lit8 v6, v8, 0x8

    #@b
    .line 1390
    .local v6, "paramBits":I
    if-ge v6, v9, :cond_0

    #@d
    .line 1391
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@10
    .line 1392
    const/4 v8, 0x0

    #@11
    return v8

    #@12
    .line 1394
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@14
    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    #@17
    .line 1395
    .local v1, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {p1, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@1a
    move-result v8

    #@1b
    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@1d
    .line 1396
    const/4 v4, 0x4

    #@1e
    .line 1397
    .local v4, "fieldBits":B
    const/4 v2, 0x1

    #@1f
    .line 1398
    .local v2, "consumedBits":B
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@21
    if-ne v8, v10, :cond_1

    #@23
    .line 1399
    const/4 v8, 0x3

    #@24
    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@27
    move-result v8

    #@28
    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@2a
    .line 1400
    const/4 v8, 0x4

    #@2b
    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@2e
    move-result v8

    #@2f
    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    #@31
    .line 1401
    const/16 v4, 0x8

    #@33
    .line 1402
    int-to-byte v2, v9

    #@34
    .line 1404
    .end local v2    # "consumedBits":B
    :cond_1
    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@37
    move-result v8

    #@38
    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@3a
    .line 1405
    add-int/lit8 v8, v2, 0x8

    #@3c
    int-to-byte v2, v8

    #@3d
    .line 1406
    .local v2, "consumedBits":B
    sub-int v7, v6, v2

    #@3f
    .line 1407
    .local v7, "remainingBits":I
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@41
    mul-int v3, v8, v4

    #@43
    .line 1408
    .local v3, "dataBits":I
    sub-int v5, v7, v3

    #@45
    .line 1409
    .local v5, "paddingBits":I
    if-ge v7, v3, :cond_2

    #@47
    .line 1410
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@49
    new-instance v9, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v10, "CALLBACK_NUMBER subparam encoding size error (remainingBits + "

    #@51
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    .line 1411
    const-string/jumbo v10, ", dataBits + "

    #@5c
    .line 1410
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v9

    #@60
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    .line 1412
    const-string/jumbo v10, ", paddingBits + "

    #@67
    .line 1410
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v9

    #@6b
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    .line 1412
    const-string/jumbo v10, ")"

    #@72
    .line 1410
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v9

    #@76
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v9

    #@7a
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v8

    #@7e
    .line 1414
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    #@81
    move-result-object v8

    #@82
    iput-object v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@84
    .line 1415
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@87
    .line 1416
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    #@8a
    .line 1417
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@8c
    .line 1418
    return v10
.end method

.method private static decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .param p3, "width"    # I
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1036
    if-ltz p2, :cond_0

    #@2
    mul-int v3, p2, p3

    #@4
    add-int/2addr v3, p1

    #@5
    array-length v4, p0

    #@6
    if-le v3, v4, :cond_2

    #@8
    .line 1038
    :cond_0
    rem-int v2, p1, p3

    #@a
    .line 1039
    .local v2, "padding":I
    array-length v3, p0

    #@b
    sub-int/2addr v3, p1

    #@c
    sub-int/2addr v3, v2

    #@d
    div-int v1, v3, p3

    #@f
    .line 1040
    .local v1, "maxNumFields":I
    if-gez v1, :cond_1

    #@11
    .line 1041
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, " decode failed: offset out of range"

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v3

    #@2b
    .line 1043
    :cond_1
    const-string/jumbo v3, "BearerData"

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, " decode error: offset = "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    const-string/jumbo v5, " numFields = "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    .line 1044
    const-string/jumbo v5, " data.length = "

    #@50
    .line 1043
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    .line 1044
    array-length v5, p0

    #@55
    .line 1043
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 1044
    const-string/jumbo v5, " maxNumFields = "

    #@5c
    .line 1043
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 1046
    move p2, v1

    #@6c
    .line 1049
    .end local v1    # "maxNumFields":I
    .end local v2    # "padding":I
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/String;

    #@6e
    mul-int v4, p2, p3

    #@70
    invoke-direct {v3, p0, p1, v4, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@73
    return-object v3

    #@74
    .line 1050
    :catch_0
    move-exception v0

    #@75
    .line 1051
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@77
    new-instance v4, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    const-string/jumbo v5, " decode failed: "

    #@83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@92
    throw v3
.end method

.method private static decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V
    .locals 15
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "serviceCategory"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1788
    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    #@2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@4
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@6
    invoke-direct {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    #@9
    .line 1789
    .local v8, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v8}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@c
    move-result v0

    #@d
    const/16 v13, 0x8

    #@f
    if-ge v0, v13, :cond_0

    #@11
    .line 1790
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@13
    const-string/jumbo v13, "emergency CB with no CMAE_protocol_version"

    #@16
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 1792
    :cond_0
    const/16 v0, 0x8

    #@1c
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@1f
    move-result v10

    #@20
    .line 1793
    .local v10, "protocolVersion":I
    if-eqz v10, :cond_1

    #@22
    .line 1794
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@24
    new-instance v13, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v14, "unsupported CMAE_protocol_version "

    #@2c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v13

    #@30
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v13

    #@34
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v13

    #@38
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 1797
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryToCmasMessageClass(I)I

    #@3f
    move-result v1

    #@40
    .line 1798
    .local v1, "messageClass":I
    const/4 v2, -0x1

    #@41
    .line 1799
    .local v2, "category":I
    const/4 v3, -0x1

    #@42
    .line 1800
    .local v3, "responseType":I
    const/4 v4, -0x1

    #@43
    .line 1801
    .local v4, "severity":I
    const/4 v5, -0x1

    #@44
    .line 1802
    .local v5, "urgency":I
    const/4 v6, -0x1

    #@45
    .line 1804
    .local v6, "certainty":I
    :goto_0
    invoke-virtual {v8}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@48
    move-result v0

    #@49
    const/16 v13, 0x10

    #@4b
    if-lt v0, v13, :cond_2

    #@4d
    .line 1805
    const/16 v0, 0x8

    #@4f
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@52
    move-result v12

    #@53
    .line 1806
    .local v12, "recordType":I
    const/16 v0, 0x8

    #@55
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@58
    move-result v11

    #@59
    .line 1807
    .local v11, "recordLen":I
    packed-switch v12, :pswitch_data_0

    #@5c
    .line 1851
    const-string/jumbo v0, "BearerData"

    #@5f
    new-instance v13, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v14, "skipping unsupported CMAS record type "

    #@67
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v13

    #@6b
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v13

    #@6f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v13

    #@73
    invoke-static {v0, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 1852
    mul-int/lit8 v0, v11, 0x8

    #@78
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@7b
    goto :goto_0

    #@7c
    .line 1809
    :pswitch_0
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/UserData;

    #@7e
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    #@81
    .line 1810
    .local v7, "alertUserData":Lcom/android/internal/telephony/cdma/sms/UserData;
    const/4 v0, 0x5

    #@82
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@85
    move-result v0

    #@86
    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@88
    .line 1811
    const/4 v0, 0x1

    #@89
    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@8b
    .line 1812
    const/4 v0, 0x0

    #@8c
    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    #@8e
    .line 1815
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@90
    packed-switch v0, :pswitch_data_1

    #@93
    .line 1832
    :pswitch_1
    const/4 v9, 0x0

    #@94
    .line 1835
    .local v9, "numFields":I
    :goto_1
    iput v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@96
    .line 1836
    mul-int/lit8 v0, v11, 0x8

    #@98
    add-int/lit8 v0, v0, -0x5

    #@9a
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    #@9d
    move-result-object v0

    #@9e
    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@a0
    .line 1837
    const/4 v0, 0x0

    #@a1
    invoke-static {v7, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    #@a4
    .line 1838
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@a6
    goto :goto_0

    #@a7
    .line 1818
    .end local v9    # "numFields":I
    :pswitch_2
    add-int/lit8 v9, v11, -0x1

    #@a9
    .line 1819
    .restart local v9    # "numFields":I
    goto :goto_1

    #@aa
    .line 1824
    .end local v9    # "numFields":I
    :pswitch_3
    mul-int/lit8 v0, v11, 0x8

    #@ac
    add-int/lit8 v0, v0, -0x5

    #@ae
    div-int/lit8 v9, v0, 0x7

    #@b0
    .restart local v9    # "numFields":I
    goto :goto_1

    #@b1
    .line 1828
    .end local v9    # "numFields":I
    :pswitch_4
    add-int/lit8 v0, v11, -0x1

    #@b3
    div-int/lit8 v9, v0, 0x2

    #@b5
    .restart local v9    # "numFields":I
    goto :goto_1

    #@b6
    .line 1842
    .end local v7    # "alertUserData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v9    # "numFields":I
    :pswitch_5
    const/16 v0, 0x8

    #@b8
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@bb
    move-result v2

    #@bc
    .line 1843
    const/16 v0, 0x8

    #@be
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@c1
    move-result v3

    #@c2
    .line 1844
    const/4 v0, 0x4

    #@c3
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@c6
    move-result v4

    #@c7
    .line 1845
    const/4 v0, 0x4

    #@c8
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@cb
    move-result v5

    #@cc
    .line 1846
    const/4 v0, 0x4

    #@cd
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@d0
    move-result v6

    #@d1
    .line 1847
    mul-int/lit8 v0, v11, 0x8

    #@d3
    add-int/lit8 v0, v0, -0x1c

    #@d5
    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@d8
    goto/16 :goto_0

    #@da
    .line 1857
    .end local v11    # "recordLen":I
    .end local v12    # "recordType":I
    :cond_2
    new-instance v0, Landroid/telephony/SmsCbCmasInfo;

    #@dc
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    #@df
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    #@e1
    .line 1787
    return-void

    #@e2
    .line 1807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    #@ea
    .line 1815
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x30

    #@2
    .line 1482
    const/16 v0, 0x30

    #@4
    .line 1483
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1484
    .local v1, "decodeSuccess":Z
    const/16 v3, 0x8

    #@7
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@a
    move-result v3

    #@b
    mul-int/lit8 v2, v3, 0x8

    #@d
    .line 1485
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@f
    .line 1486
    add-int/lit8 v2, v2, -0x30

    #@11
    .line 1487
    const/4 v1, 0x1

    #@12
    .line 1489
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    #@15
    move-result-object v3

    #@16
    .line 1488
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@1c
    .line 1491
    :cond_0
    if-eqz v1, :cond_1

    #@1e
    if-lez v2, :cond_2

    #@20
    .line 1492
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "DEFERRED_DELIVERY_TIME_ABSOLUTE decode "

    #@2b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    .line 1493
    if-eqz v1, :cond_3

    #@31
    const-string/jumbo v3, "succeeded"

    #@34
    .line 1492
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    .line 1494
    const-string/jumbo v5, " (extra bits = "

    #@3b
    .line 1492
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    .line 1494
    const-string/jumbo v5, ")"

    #@46
    .line 1492
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 1496
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@54
    .line 1497
    return v1

    #@55
    .line 1493
    :cond_3
    const-string/jumbo v3, "failed"

    #@58
    goto :goto_0
.end method

.method private static decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 1522
    const/16 v0, 0x8

    #@4
    .line 1523
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1524
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v3

    #@9
    mul-int/lit8 v2, v3, 0x8

    #@b
    .line 1525
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@d
    .line 1526
    add-int/lit8 v2, v2, -0x8

    #@f
    .line 1527
    const/4 v1, 0x1

    #@10
    .line 1528
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@13
    move-result v3

    #@14
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    #@16
    .line 1530
    :cond_0
    if-eqz v1, :cond_1

    #@18
    if-lez v2, :cond_2

    #@1a
    .line 1531
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "DEFERRED_DELIVERY_TIME_RELATIVE decode "

    #@25
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    .line 1532
    if-eqz v1, :cond_3

    #@2b
    const-string/jumbo v3, "succeeded"

    #@2e
    .line 1531
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 1533
    const-string/jumbo v5, " (extra bits = "

    #@35
    .line 1531
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 1533
    const-string/jumbo v5, ")"

    #@40
    .line 1531
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 1535
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@4e
    .line 1536
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    #@50
    .line 1537
    return v1

    #@51
    .line 1532
    :cond_3
    const-string/jumbo v3, "failed"

    #@54
    goto :goto_0
.end method

.method private static decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 1337
    const/16 v0, 0x10

    #@4
    .line 1338
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1339
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v3

    #@9
    mul-int/lit8 v2, v3, 0x8

    #@b
    .line 1340
    .local v2, "paramBits":I
    const/16 v3, 0x10

    #@d
    if-lt v2, v3, :cond_0

    #@f
    .line 1341
    add-int/lit8 v2, v2, -0x10

    #@11
    .line 1342
    const/4 v1, 0x1

    #@12
    .line 1343
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@15
    move-result v3

    #@16
    shl-int/lit8 v3, v3, 0x8

    #@18
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@1b
    move-result v4

    #@1c
    or-int/2addr v3, v4

    #@1d
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    #@1f
    .line 1345
    :cond_0
    if-eqz v1, :cond_1

    #@21
    if-lez v2, :cond_2

    #@23
    .line 1346
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v5, "MESSAGE_DEPOSIT_INDEX decode "

    #@2e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 1347
    if-eqz v1, :cond_3

    #@34
    const-string/jumbo v3, "succeeded"

    #@37
    .line 1346
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 1348
    const-string/jumbo v5, " (extra bits = "

    #@3e
    .line 1346
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 1348
    const-string/jumbo v5, ")"

    #@49
    .line 1346
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 1350
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@57
    .line 1351
    return v1

    #@58
    .line 1347
    :cond_3
    const-string/jumbo v3, "failed"

    #@5b
    goto :goto_0
.end method

.method private static decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 1583
    const/16 v0, 0x8

    #@4
    .line 1584
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1585
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v3

    #@9
    mul-int/lit8 v2, v3, 0x8

    #@b
    .line 1586
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@d
    .line 1587
    add-int/lit8 v2, v2, -0x8

    #@f
    .line 1588
    const/4 v1, 0x1

    #@10
    .line 1589
    const/4 v3, 0x2

    #@11
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@14
    move-result v3

    #@15
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    #@17
    .line 1590
    const/4 v3, 0x6

    #@18
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@1b
    .line 1592
    :cond_0
    if-eqz v1, :cond_1

    #@1d
    if-lez v2, :cond_2

    #@1f
    .line 1593
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "DISPLAY_MODE decode "

    #@2a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    .line 1594
    if-eqz v1, :cond_3

    #@30
    const-string/jumbo v3, "succeeded"

    #@33
    .line 1593
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 1595
    const-string/jumbo v5, " (extra bits = "

    #@3a
    .line 1593
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 1595
    const-string/jumbo v5, ")"

    #@45
    .line 1593
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 1597
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@53
    .line 1598
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    #@55
    .line 1599
    return v1

    #@56
    .line 1594
    :cond_3
    const-string/jumbo v3, "failed"

    #@59
    goto :goto_0
.end method

.method private static decodeDtmfSmsAddress([BI)Ljava/lang/String;
    .locals 6
    .param p0, "rawData"    # [B
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    .line 1359
    new-instance v1, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    .line 1360
    .local v1, "strBuf":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_4

    #@a
    .line 1361
    div-int/lit8 v3, v0, 0x2

    #@c
    aget-byte v3, p0, v3

    #@e
    rem-int/lit8 v4, v0, 0x2

    #@10
    mul-int/lit8 v4, v4, 0x4

    #@12
    rsub-int/lit8 v4, v4, 0x4

    #@14
    ushr-int/2addr v3, v4

    #@15
    and-int/lit8 v2, v3, 0xf

    #@17
    .line 1362
    .local v2, "val":I
    const/4 v3, 0x1

    #@18
    if-lt v2, v3, :cond_0

    #@1a
    const/16 v3, 0x9

    #@1c
    if-gt v2, v3, :cond_0

    #@1e
    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    .line 1360
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1363
    :cond_0
    if-ne v2, v5, :cond_1

    #@2a
    const/16 v3, 0x30

    #@2c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2f
    goto :goto_1

    #@30
    .line 1364
    :cond_1
    const/16 v3, 0xb

    #@32
    if-ne v2, v3, :cond_2

    #@34
    const/16 v3, 0x2a

    #@36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@39
    goto :goto_1

    #@3a
    .line 1365
    :cond_2
    const/16 v3, 0xc

    #@3c
    if-ne v2, v3, :cond_3

    #@3e
    const/16 v3, 0x23

    #@40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@43
    goto :goto_1

    #@44
    .line 1366
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@46
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "invalid SMS address DTMF code ("

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    const-string/jumbo v5, ")"

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@64
    throw v3

    #@65
    .line 1368
    .end local v2    # "val":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    return-object v3
.end method

.method private static decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 3
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@2
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 1288
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "unsupported IS-91 message type ("

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 1289
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@17
    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    #@19
    .line 1288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 1289
    const-string/jumbo v2, ")"

    #@20
    .line 1288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 1278
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    #@2f
    .line 1274
    :goto_0
    return-void

    #@30
    .line 1281
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    #@33
    goto :goto_0

    #@34
    .line 1285
    :pswitch_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    #@37
    goto :goto_0

    #@38
    .line 1276
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1259
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    #@2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@4
    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@6
    invoke-direct {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    #@9
    .line 1260
    .local v2, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@c
    move-result v4

    #@d
    div-int/lit8 v1, v4, 0x4

    #@f
    .line 1261
    .local v1, "dataLen":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@11
    iget v3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@13
    .line 1262
    .local v3, "numFields":I
    const/16 v4, 0xe

    #@15
    if-gt v1, v4, :cond_0

    #@17
    const/4 v4, 0x3

    #@18
    if-ge v1, v4, :cond_1

    #@1a
    .line 1263
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@1c
    const-string/jumbo v5, "IS-91 voicemail status decoding failed"

    #@1f
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@22
    throw v4

    #@23
    .line 1262
    :cond_1
    if-lt v1, v3, :cond_0

    #@25
    .line 1265
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@27
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    #@2a
    .line 1266
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x0

    #@2b
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@2d
    .line 1267
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@2f
    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@31
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@33
    .line 1268
    int-to-byte v4, v3

    #@34
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@36
    .line 1269
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    #@39
    .line 1270
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@3b
    .line 1258
    return-void
.end method

.method private static decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1236
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    #@2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@4
    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@6
    invoke-direct {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    #@9
    .line 1237
    .local v2, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@c
    move-result v5

    #@d
    div-int/lit8 v0, v5, 0x6

    #@f
    .line 1238
    .local v0, "dataLen":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@11
    iget v3, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@13
    .line 1240
    .local v3, "numFields":I
    const/16 v5, 0xe

    #@15
    if-gt v3, v5, :cond_0

    #@17
    if-ge v0, v3, :cond_1

    #@19
    .line 1241
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@1b
    const-string/jumbo v6, "IS-91 short message decoding failed"

    #@1e
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@21
    throw v5

    #@22
    .line 1243
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    #@24
    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@27
    .line 1244
    .local v4, "strbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@28
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@2a
    .line 1245
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    #@2c
    const/4 v6, 0x6

    #@2d
    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@30
    move-result v6

    #@31
    aget-char v5, v5, v6

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@36
    .line 1244
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 1247
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@41
    .line 1234
    return-void
.end method

.method private static decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 11
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x6

    #@1
    const/4 v9, 0x3

    #@2
    .line 1193
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    #@4
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@6
    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@8
    invoke-direct {v4, v8}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    #@b
    .line 1194
    .local v4, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@e
    move-result v8

    #@f
    div-int/lit8 v1, v8, 0x6

    #@11
    .line 1195
    .local v1, "dataLen":I
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@13
    iget v5, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@15
    .line 1196
    .local v5, "numFields":I
    const/16 v8, 0xe

    #@17
    if-gt v1, v8, :cond_0

    #@19
    if-ge v1, v9, :cond_1

    #@1b
    .line 1197
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@1d
    const-string/jumbo v9, "IS-91 voicemail status decoding failed"

    #@20
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@23
    throw v8

    #@24
    .line 1196
    :cond_1
    if-lt v1, v5, :cond_0

    #@26
    .line 1200
    :try_start_0
    new-instance v7, Ljava/lang/StringBuffer;

    #@28
    invoke-direct {v7, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@2b
    .line 1201
    .local v7, "strbuf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@2e
    move-result v8

    #@2f
    if-lt v8, v10, :cond_2

    #@31
    .line 1202
    sget-object v8, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    #@33
    const/4 v9, 0x6

    #@34
    invoke-virtual {v4, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@37
    move-result v9

    #@38
    aget-char v8, v8, v9

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@3d
    goto :goto_0

    #@3e
    .line 1217
    .end local v7    # "strbuf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    #@3f
    .line 1218
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@41
    new-instance v9, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v10, "IS-91 voicemail status decoding failed: "

    #@49
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v9

    #@55
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@58
    throw v8

    #@59
    .line 1204
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .restart local v7    # "strbuf":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    .line 1205
    .local v0, "data":Ljava/lang/String;
    const/4 v8, 0x0

    #@5e
    const/4 v9, 0x2

    #@5f
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@62
    move-result-object v8

    #@63
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@66
    move-result v8

    #@67
    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    #@69
    .line 1206
    const/4 v8, 0x2

    #@6a
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@6d
    move-result v6

    #@6e
    .line 1207
    .local v6, "prioCode":C
    const/16 v8, 0x20

    #@70
    if-ne v6, v8, :cond_3

    #@72
    .line 1208
    const/4 v8, 0x0

    #@73
    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    #@75
    .line 1215
    :goto_1
    const/4 v8, 0x1

    #@76
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    #@78
    .line 1216
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@7a
    add-int/lit8 v9, v5, -0x3

    #@7c
    const/4 v10, 0x3

    #@7d
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@80
    move-result-object v9

    #@81
    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@83
    .line 1191
    return-void

    #@84
    .line 1209
    :cond_3
    const/16 v8, 0x21

    #@86
    if-ne v6, v8, :cond_4

    #@88
    .line 1210
    const/4 v8, 0x2

    #@89
    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@8b
    goto :goto_1

    #@8c
    .line 1219
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "prioCode":C
    .end local v7    # "strbuf":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    #@8d
    .line 1220
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@8f
    new-instance v9, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v10, "IS-91 voicemail status decoding failed: "

    #@97
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v9

    #@9b
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v9

    #@9f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v9

    #@a3
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v8

    #@a7
    .line 1212
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v6    # "prioCode":C
    .restart local v7    # "strbuf":Ljava/lang/StringBuffer;
    :cond_4
    :try_start_2
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@a9
    new-instance v9, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v10, "IS-91 voicemail status decoding failed: illegal priority setting ("

    #@b1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v9

    #@b9
    .line 1213
    const-string/jumbo v10, ")"

    #@bc
    .line 1212
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v9

    #@c4
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@c7
    throw v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private static decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 1563
    const/16 v0, 0x8

    #@4
    .line 1564
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1565
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v3

    #@9
    mul-int/lit8 v2, v3, 0x8

    #@b
    .line 1566
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@d
    .line 1567
    add-int/lit8 v2, v2, -0x8

    #@f
    .line 1568
    const/4 v1, 0x1

    #@10
    .line 1569
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@13
    move-result v3

    #@14
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    #@16
    .line 1571
    :cond_0
    if-eqz v1, :cond_1

    #@18
    if-lez v2, :cond_2

    #@1a
    .line 1572
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "LANGUAGE_INDICATOR decode "

    #@25
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    .line 1573
    if-eqz v1, :cond_3

    #@2b
    const-string/jumbo v3, "succeeded"

    #@2e
    .line 1572
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 1574
    const-string/jumbo v5, " (extra bits = "

    #@35
    .line 1572
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 1574
    const-string/jumbo v5, ")"

    #@40
    .line 1572
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 1576
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@4e
    .line 1577
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    #@50
    .line 1578
    return v1

    #@51
    .line 1573
    :cond_3
    const-string/jumbo v3, "failed"

    #@54
    goto :goto_0
.end method

.method private static decodeLatin([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1107
    const-string/jumbo v0, "ISO-8859-1"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/16 v6, 0x8

    #@3
    const/4 v3, 0x1

    #@4
    .line 955
    const/16 v0, 0x18

    #@6
    .line 956
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@7
    .line 957
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@a
    move-result v5

    #@b
    mul-int/lit8 v2, v5, 0x8

    #@d
    .line 958
    .local v2, "paramBits":I
    const/16 v5, 0x18

    #@f
    if-lt v2, v5, :cond_0

    #@11
    .line 959
    add-int/lit8 v2, v2, -0x18

    #@13
    .line 960
    const/4 v1, 0x1

    #@14
    .line 961
    const/4 v5, 0x4

    #@15
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@18
    move-result v5

    #@19
    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    #@1b
    .line 962
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@1e
    move-result v5

    #@1f
    shl-int/lit8 v5, v5, 0x8

    #@21
    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    #@23
    .line 963
    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    #@25
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@28
    move-result v6

    #@29
    or-int/2addr v5, v6

    #@2a
    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    #@2c
    .line 964
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@2f
    move-result v5

    #@30
    if-ne v5, v3, :cond_3

    #@32
    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    #@34
    .line 965
    const/4 v3, 0x3

    #@35
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@38
    .line 967
    :cond_0
    if-eqz v1, :cond_1

    #@3a
    if-lez v2, :cond_2

    #@3c
    .line 968
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "MESSAGE_IDENTIFIER decode "

    #@47
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    .line 969
    if-eqz v1, :cond_4

    #@4d
    const-string/jumbo v3, "succeeded"

    #@50
    .line 968
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    .line 970
    const-string/jumbo v5, " (extra bits = "

    #@57
    .line 968
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    .line 970
    const-string/jumbo v5, ")"

    #@62
    .line 968
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 972
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@70
    .line 973
    return v1

    #@71
    :cond_3
    move v3, v4

    #@72
    .line 964
    goto :goto_0

    #@73
    .line 969
    :cond_4
    const-string/jumbo v3, "failed"

    #@76
    goto :goto_1
.end method

.method private static decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x30

    #@2
    .line 1444
    const/16 v0, 0x30

    #@4
    .line 1445
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1446
    .local v1, "decodeSuccess":Z
    const/16 v3, 0x8

    #@7
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@a
    move-result v3

    #@b
    mul-int/lit8 v2, v3, 0x8

    #@d
    .line 1447
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@f
    .line 1448
    add-int/lit8 v2, v2, -0x30

    #@11
    .line 1449
    const/4 v1, 0x1

    #@12
    .line 1450
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@1c
    .line 1452
    :cond_0
    if-eqz v1, :cond_1

    #@1e
    if-lez v2, :cond_2

    #@20
    .line 1453
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "MESSAGE_CENTER_TIME_STAMP decode "

    #@2b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    .line 1454
    if-eqz v1, :cond_3

    #@31
    const-string/jumbo v3, "succeeded"

    #@34
    .line 1453
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    .line 1455
    const-string/jumbo v5, " (extra bits = "

    #@3b
    .line 1453
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    .line 1455
    const-string/jumbo v5, ")"

    #@46
    .line 1453
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 1457
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@54
    .line 1458
    return v1

    #@55
    .line 1454
    :cond_3
    const-string/jumbo v3, "failed"

    #@58
    goto :goto_0
.end method

.method private static decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 1318
    const/16 v0, 0x8

    #@4
    .line 1319
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1320
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v3

    #@9
    mul-int/lit8 v2, v3, 0x8

    #@b
    .line 1321
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@d
    .line 1322
    add-int/lit8 v2, v2, -0x8

    #@f
    .line 1323
    const/4 v1, 0x1

    #@10
    .line 1324
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@13
    move-result v3

    #@14
    int-to-byte v3, v3

    #@15
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    #@18
    move-result v3

    #@19
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    #@1b
    .line 1326
    :cond_0
    if-eqz v1, :cond_1

    #@1d
    if-lez v2, :cond_2

    #@1f
    .line 1327
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "NUMBER_OF_MESSAGES decode "

    #@2a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    .line 1328
    if-eqz v1, :cond_3

    #@30
    const-string/jumbo v3, "succeeded"

    #@33
    .line 1327
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 1329
    const-string/jumbo v5, " (extra bits = "

    #@3a
    .line 1327
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 1329
    const-string/jumbo v5, ")"

    #@45
    .line 1327
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 1331
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@53
    .line 1332
    return v1

    #@54
    .line 1328
    :cond_3
    const-string/jumbo v3, "failed"

    #@57
    goto :goto_0
.end method

.method private static decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 1625
    const/16 v0, 0x8

    #@4
    .line 1626
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1627
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v3

    #@9
    mul-int/lit8 v2, v3, 0x8

    #@b
    .line 1628
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@d
    .line 1629
    add-int/lit8 v2, v2, -0x8

    #@f
    .line 1630
    const/4 v1, 0x1

    #@10
    .line 1631
    const/4 v3, 0x2

    #@11
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@14
    move-result v3

    #@15
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    #@17
    .line 1632
    const/4 v3, 0x6

    #@18
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@1b
    .line 1634
    :cond_0
    if-eqz v1, :cond_1

    #@1d
    if-lez v2, :cond_2

    #@1f
    .line 1635
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "ALERT_ON_MESSAGE_DELIVERY decode "

    #@2a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    .line 1636
    if-eqz v1, :cond_3

    #@30
    const-string/jumbo v3, "succeeded"

    #@33
    .line 1635
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 1637
    const-string/jumbo v5, " (extra bits = "

    #@3a
    .line 1635
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 1637
    const-string/jumbo v5, ")"

    #@45
    .line 1635
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 1639
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@53
    .line 1640
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    #@55
    .line 1641
    return v1

    #@56
    .line 1636
    :cond_3
    const-string/jumbo v3, "failed"

    #@59
    goto :goto_0
.end method

.method private static decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 1423
    const/16 v0, 0x8

    #@4
    .line 1424
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1425
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v3

    #@9
    mul-int/lit8 v2, v3, 0x8

    #@b
    .line 1426
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@d
    .line 1427
    add-int/lit8 v2, v2, -0x8

    #@f
    .line 1428
    const/4 v1, 0x1

    #@10
    .line 1429
    const/4 v3, 0x2

    #@11
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@14
    move-result v3

    #@15
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    #@17
    .line 1430
    const/4 v3, 0x6

    #@18
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@1b
    move-result v3

    #@1c
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    #@1e
    .line 1432
    :cond_0
    if-eqz v1, :cond_1

    #@20
    if-lez v2, :cond_2

    #@22
    .line 1433
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "MESSAGE_STATUS decode "

    #@2d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    .line 1434
    if-eqz v1, :cond_3

    #@33
    const-string/jumbo v3, "succeeded"

    #@36
    .line 1433
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 1435
    const-string/jumbo v5, " (extra bits = "

    #@3d
    .line 1433
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    .line 1435
    const-string/jumbo v5, ")"

    #@48
    .line 1433
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 1437
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@56
    .line 1438
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    #@58
    .line 1439
    return v1

    #@59
    .line 1434
    :cond_3
    const-string/jumbo v3, "failed"

    #@5c
    goto :goto_0
.end method

.method private static decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 1604
    const/16 v0, 0x8

    #@4
    .line 1605
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1606
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v3

    #@9
    mul-int/lit8 v2, v3, 0x8

    #@b
    .line 1607
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@d
    .line 1608
    add-int/lit8 v2, v2, -0x8

    #@f
    .line 1609
    const/4 v1, 0x1

    #@10
    .line 1610
    const/4 v3, 0x2

    #@11
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@14
    move-result v3

    #@15
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    #@17
    .line 1611
    const/4 v3, 0x6

    #@18
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@1b
    .line 1613
    :cond_0
    if-eqz v1, :cond_1

    #@1d
    if-lez v2, :cond_2

    #@1f
    .line 1614
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "PRIORITY_INDICATOR decode "

    #@2a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    .line 1615
    if-eqz v1, :cond_3

    #@30
    const-string/jumbo v3, "succeeded"

    #@33
    .line 1614
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 1616
    const-string/jumbo v5, " (extra bits = "

    #@3a
    .line 1614
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 1616
    const-string/jumbo v5, ")"

    #@45
    .line 1614
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 1618
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@53
    .line 1619
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    #@55
    .line 1620
    return v1

    #@56
    .line 1615
    :cond_3
    const-string/jumbo v3, "failed"

    #@59
    goto :goto_0
.end method

.method private static decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 1542
    const/16 v0, 0x8

    #@4
    .line 1543
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1544
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v3

    #@9
    mul-int/lit8 v2, v3, 0x8

    #@b
    .line 1545
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@d
    .line 1546
    add-int/lit8 v2, v2, -0x8

    #@f
    .line 1547
    const/4 v1, 0x1

    #@10
    .line 1548
    const/4 v3, 0x2

    #@11
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@14
    move-result v3

    #@15
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    #@17
    .line 1549
    const/4 v3, 0x6

    #@18
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@1b
    .line 1551
    :cond_0
    if-eqz v1, :cond_1

    #@1d
    if-lez v2, :cond_2

    #@1f
    .line 1552
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "PRIVACY_INDICATOR decode "

    #@2a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    .line 1553
    if-eqz v1, :cond_3

    #@30
    const-string/jumbo v3, "succeeded"

    #@33
    .line 1552
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 1554
    const-string/jumbo v5, " (extra bits = "

    #@3a
    .line 1552
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 1554
    const-string/jumbo v5, ")"

    #@45
    .line 1552
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 1556
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@53
    .line 1557
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    #@55
    .line 1558
    return v1

    #@56
    .line 1553
    :cond_3
    const-string/jumbo v3, "failed"

    #@59
    goto :goto_0
.end method

.method private static decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 1295
    const/16 v0, 0x8

    #@6
    .line 1296
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@7
    .line 1297
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@a
    move-result v3

    #@b
    mul-int/lit8 v2, v3, 0x8

    #@d
    .line 1298
    .local v2, "paramBits":I
    if-lt v2, v6, :cond_0

    #@f
    .line 1299
    add-int/lit8 v2, v2, -0x8

    #@11
    .line 1300
    const/4 v1, 0x1

    #@12
    .line 1301
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@15
    move-result v3

    #@16
    if-ne v3, v4, :cond_3

    #@18
    move v3, v4

    #@19
    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    #@1b
    .line 1302
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@1e
    move-result v3

    #@1f
    if-ne v3, v4, :cond_4

    #@21
    move v3, v4

    #@22
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    #@24
    .line 1303
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@27
    move-result v3

    #@28
    if-ne v3, v4, :cond_5

    #@2a
    move v3, v4

    #@2b
    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    #@2d
    .line 1304
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@30
    move-result v3

    #@31
    if-ne v3, v4, :cond_6

    #@33
    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    #@35
    .line 1305
    const/4 v3, 0x4

    #@36
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@39
    .line 1307
    :cond_0
    if-eqz v1, :cond_1

    #@3b
    if-lez v2, :cond_2

    #@3d
    .line 1308
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@40
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v5, "REPLY_OPTION decode "

    #@48
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    .line 1309
    if-eqz v1, :cond_7

    #@4e
    const-string/jumbo v3, "succeeded"

    #@51
    .line 1308
    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    .line 1310
    const-string/jumbo v5, " (extra bits = "

    #@58
    .line 1308
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    .line 1310
    const-string/jumbo v5, ")"

    #@63
    .line 1308
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 1312
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@71
    .line 1313
    return v1

    #@72
    :cond_3
    move v3, v5

    #@73
    .line 1301
    goto :goto_0

    #@74
    :cond_4
    move v3, v5

    #@75
    .line 1302
    goto :goto_1

    #@76
    :cond_5
    move v3, v5

    #@77
    .line 1303
    goto :goto_2

    #@78
    :cond_6
    move v4, v5

    #@79
    .line 1304
    goto :goto_3

    #@7a
    .line 1309
    :cond_7
    const-string/jumbo v3, "failed"

    #@7d
    goto :goto_4
.end method

.method private static decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .param p2, "subparamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 980
    const/4 v0, 0x0

    #@1
    .line 981
    .local v0, "decodeSuccess":Z
    const/16 v3, 0x8

    #@3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@6
    move-result v2

    #@7
    .line 982
    .local v2, "subparamLen":I
    mul-int/lit8 v1, v2, 0x8

    #@9
    .line 983
    .local v1, "paramBits":I
    invoke-virtual {p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@c
    move-result v3

    #@d
    if-gt v1, v3, :cond_0

    #@f
    .line 984
    const/4 v0, 0x1

    #@10
    .line 985
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@13
    .line 987
    :cond_0
    const-string/jumbo v4, "BearerData"

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "RESERVED bearer data subparameter "

    #@1e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v5, " decode "

    #@29
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    .line 988
    if-eqz v0, :cond_1

    #@2f
    const-string/jumbo v3, "succeeded"

    #@32
    .line 987
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 988
    const-string/jumbo v5, " (param bits = "

    #@39
    .line 987
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    .line 988
    const-string/jumbo v5, ")"

    #@44
    .line 987
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 989
    if-nez v0, :cond_2

    #@51
    .line 990
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@53
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v5, "RESERVED bearer data subparameter "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 991
    const-string/jumbo v5, " had invalid SUBPARAM_LEN "

    #@66
    .line 990
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@75
    throw v3

    #@76
    .line 988
    :cond_1
    const-string/jumbo v3, "failed"

    #@79
    goto :goto_0

    #@7a
    .line 994
    :cond_2
    return v0
.end method

.method private static decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 20
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1667
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@3
    move-result v17

    #@4
    const/16 v18, 0xd

    #@6
    move/from16 v0, v17

    #@8
    move/from16 v1, v18

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 1668
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@e
    new-instance v18, Ljava/lang/StringBuilder;

    #@10
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v19, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    #@16
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v18

    #@1a
    .line 1669
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@1d
    move-result v19

    #@1e
    .line 1668
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v18

    #@22
    .line 1669
    const-string/jumbo v19, " bits available"

    #@25
    .line 1668
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v18

    #@29
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v18

    #@2d
    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@30
    throw v17

    #@31
    .line 1672
    :cond_0
    const/16 v17, 0x8

    #@33
    move-object/from16 v0, p1

    #@35
    move/from16 v1, v17

    #@37
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@3a
    move-result v17

    #@3b
    mul-int/lit8 v13, v17, 0x8

    #@3d
    .line 1673
    .local v13, "paramBits":I
    const/16 v17, 0x5

    #@3f
    move-object/from16 v0, p1

    #@41
    move/from16 v1, v17

    #@43
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@46
    move-result v11

    #@47
    .line 1674
    .local v11, "msgEncoding":I
    add-int/lit8 v13, v13, -0x5

    #@49
    .line 1676
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@4c
    move-result v17

    #@4d
    move/from16 v0, v17

    #@4f
    if-ge v0, v13, :cond_1

    #@51
    .line 1677
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@53
    new-instance v18, Ljava/lang/StringBuilder;

    #@55
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v19, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    #@5b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v18

    #@5f
    .line 1678
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    #@62
    move-result v19

    #@63
    .line 1677
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v18

    #@67
    .line 1678
    const-string/jumbo v19, " bits available ("

    #@6a
    .line 1677
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v18

    #@6e
    move-object/from16 v0, v18

    #@70
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v18

    #@74
    .line 1678
    const-string/jumbo v19, " bits expected)"

    #@77
    .line 1677
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v18

    #@7b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v18

    #@7f
    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@82
    throw v17

    #@83
    .line 1681
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    #@85
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@88
    .line 1683
    .local v14, "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    const/16 v9, 0x30

    #@8a
    .line 1684
    .local v9, "CATEGORY_FIELD_MIN_SIZE":I
    const/4 v10, 0x0

    #@8b
    .line 1685
    .local v10, "decodeSuccess":Z
    :goto_0
    const/16 v17, 0x30

    #@8d
    move/from16 v0, v17

    #@8f
    if-lt v13, v0, :cond_3

    #@91
    .line 1686
    const/16 v17, 0x4

    #@93
    move-object/from16 v0, p1

    #@95
    move/from16 v1, v17

    #@97
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@9a
    move-result v3

    #@9b
    .line 1687
    .local v3, "operation":I
    const/16 v17, 0x8

    #@9d
    move-object/from16 v0, p1

    #@9f
    move/from16 v1, v17

    #@a1
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@a4
    move-result v17

    #@a5
    shl-int/lit8 v17, v17, 0x8

    #@a7
    const/16 v18, 0x8

    #@a9
    move-object/from16 v0, p1

    #@ab
    move/from16 v1, v18

    #@ad
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@b0
    move-result v18

    #@b1
    or-int v4, v17, v18

    #@b3
    .line 1688
    .local v4, "category":I
    const/16 v17, 0x8

    #@b5
    move-object/from16 v0, p1

    #@b7
    move/from16 v1, v17

    #@b9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@bc
    move-result v5

    #@bd
    .line 1689
    .local v5, "language":I
    const/16 v17, 0x8

    #@bf
    move-object/from16 v0, p1

    #@c1
    move/from16 v1, v17

    #@c3
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@c6
    move-result v6

    #@c7
    .line 1690
    .local v6, "maxMessages":I
    const/16 v17, 0x4

    #@c9
    move-object/from16 v0, p1

    #@cb
    move/from16 v1, v17

    #@cd
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@d0
    move-result v7

    #@d1
    .line 1691
    .local v7, "alertOption":I
    const/16 v17, 0x8

    #@d3
    move-object/from16 v0, p1

    #@d5
    move/from16 v1, v17

    #@d7
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@da
    move-result v12

    #@db
    .line 1692
    .local v12, "numFields":I
    add-int/lit8 v13, v13, -0x30

    #@dd
    .line 1694
    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getBitsForNumFields(II)I

    #@e0
    move-result v15

    #@e1
    .line 1695
    .local v15, "textBits":I
    if-ge v13, v15, :cond_2

    #@e3
    .line 1696
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@e5
    new-instance v18, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v19, "category name is "

    #@ed
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v18

    #@f1
    move-object/from16 v0, v18

    #@f3
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v18

    #@f7
    const-string/jumbo v19, " bits in length,"

    #@fa
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v18

    #@fe
    .line 1697
    const-string/jumbo v19, " but there are only "

    #@101
    .line 1696
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v18

    #@105
    move-object/from16 v0, v18

    #@107
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v18

    #@10b
    .line 1697
    const-string/jumbo v19, " bits available"

    #@10e
    .line 1696
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v18

    #@112
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v18

    #@116
    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@119
    throw v17

    #@11a
    .line 1700
    :cond_2
    new-instance v16, Lcom/android/internal/telephony/cdma/sms/UserData;

    #@11c
    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    #@11f
    .line 1701
    .local v16, "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, v16

    #@121
    iput v11, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@123
    .line 1702
    const/16 v17, 0x1

    #@125
    move/from16 v0, v17

    #@127
    move-object/from16 v1, v16

    #@129
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@12b
    .line 1703
    move-object/from16 v0, v16

    #@12d
    iput v12, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@12f
    .line 1704
    move-object/from16 v0, p1

    #@131
    invoke-virtual {v0, v15}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    #@134
    move-result-object v17

    #@135
    move-object/from16 v0, v17

    #@137
    move-object/from16 v1, v16

    #@139
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@13b
    .line 1705
    sub-int/2addr v13, v15

    #@13c
    .line 1707
    const/16 v17, 0x0

    #@13e
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    #@141
    .line 1708
    move-object/from16 v0, v16

    #@143
    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@145
    .line 1709
    .local v8, "categoryName":Ljava/lang/String;
    new-instance v2, Landroid/telephony/cdma/CdmaSmsCbProgramData;

    #@147
    invoke-direct/range {v2 .. v8}, Landroid/telephony/cdma/CdmaSmsCbProgramData;-><init>(IIIIILjava/lang/String;)V

    #@14a
    .line 1711
    .local v2, "programData":Landroid/telephony/cdma/CdmaSmsCbProgramData;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14d
    .line 1713
    const/4 v10, 0x1

    #@14e
    goto/16 :goto_0

    #@150
    .line 1716
    .end local v2    # "programData":Landroid/telephony/cdma/CdmaSmsCbProgramData;
    .end local v3    # "operation":I
    .end local v4    # "category":I
    .end local v5    # "language":I
    .end local v6    # "maxMessages":I
    .end local v7    # "alertOption":I
    .end local v8    # "categoryName":Ljava/lang/String;
    .end local v12    # "numFields":I
    .end local v15    # "textBits":I
    .end local v16    # "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_3
    if-eqz v10, :cond_4

    #@152
    if-lez v13, :cond_5

    #@154
    .line 1717
    :cond_4
    const-string/jumbo v18, "BearerData"

    #@157
    new-instance v17, Ljava/lang/StringBuilder;

    #@159
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@15c
    const-string/jumbo v19, "SERVICE_CATEGORY_PROGRAM_DATA decode "

    #@15f
    move-object/from16 v0, v17

    #@161
    move-object/from16 v1, v19

    #@163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v19

    #@167
    .line 1718
    if-eqz v10, :cond_6

    #@169
    const-string/jumbo v17, "succeeded"

    #@16c
    .line 1717
    :goto_1
    move-object/from16 v0, v19

    #@16e
    move-object/from16 v1, v17

    #@170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v17

    #@174
    .line 1719
    const-string/jumbo v19, " (extra bits = "

    #@177
    .line 1717
    move-object/from16 v0, v17

    #@179
    move-object/from16 v1, v19

    #@17b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v17

    #@17f
    move-object/from16 v0, v17

    #@181
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@184
    move-result-object v17

    #@185
    .line 1719
    const/16 v19, 0x29

    #@187
    .line 1717
    move-object/from16 v0, v17

    #@189
    move/from16 v1, v19

    #@18b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v17

    #@18f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@192
    move-result-object v17

    #@193
    move-object/from16 v0, v18

    #@195
    move-object/from16 v1, v17

    #@197
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19a
    .line 1722
    :cond_5
    move-object/from16 v0, p1

    #@19c
    invoke-virtual {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@19f
    .line 1723
    move-object/from16 v0, p0

    #@1a1
    iput-object v14, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    #@1a3
    .line 1724
    return v10

    #@1a4
    .line 1718
    :cond_6
    const-string/jumbo v17, "failed"

    #@1a7
    goto :goto_1
.end method

.method private static decodeShiftJis([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1113
    const-string/jumbo v0, "Shift_JIS"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 6
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1372
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 1376
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@7
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@9
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@b
    array-length v3, v3

    #@c
    const-string/jumbo v4, "US-ASCII"

    #@f
    const/4 v5, 0x0

    #@10
    invoke-direct {v1, v2, v5, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@13
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1371
    :goto_0
    return-void

    #@16
    .line 1377
    :catch_0
    move-exception v0

    #@17
    .line 1378
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@19
    const-string/jumbo v2, "invalid SMS address ASCII code"

    #@1c
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 1381
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@22
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@24
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDtmfSmsAddress([BI)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    #@2a
    goto :goto_0
.end method

.method private static decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    const/4 v5, 0x1

    #@3
    .line 1000
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@6
    move-result v3

    #@7
    mul-int/lit8 v2, v3, 0x8

    #@9
    .line 1001
    .local v2, "paramBits":I
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    #@b
    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    #@e
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@10
    .line 1002
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@12
    const/4 v4, 0x5

    #@13
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@16
    move-result v4

    #@17
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@19
    .line 1003
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@1b
    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@1d
    .line 1004
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@1f
    const/4 v4, 0x0

    #@20
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    #@22
    .line 1005
    const/4 v0, 0x5

    #@23
    .line 1006
    .local v0, "consumedBits":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@25
    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@27
    if-eq v3, v5, :cond_0

    #@29
    .line 1007
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@2b
    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@2d
    const/16 v4, 0xa

    #@2f
    if-ne v3, v4, :cond_1

    #@31
    .line 1008
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@33
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@36
    move-result v4

    #@37
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    #@39
    .line 1009
    const/16 v0, 0xd

    #@3b
    .line 1011
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@3d
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@40
    move-result v4

    #@41
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@43
    .line 1012
    add-int/lit8 v0, v0, 0x8

    #@45
    .line 1013
    sub-int v1, v2, v0

    #@47
    .line 1014
    .local v1, "dataBits":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@49
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    #@4c
    move-result-object v4

    #@4d
    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@4f
    .line 1015
    return v5
.end method

.method private static decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    .locals 9
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "hasUserDataHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1119
    const/4 v3, 0x0

    #@2
    .line 1120
    .local v3, "offset":I
    if-eqz p1, :cond_0

    #@4
    .line 1121
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@6
    aget-byte v6, v6, v8

    #@8
    and-int/lit16 v5, v6, 0xff

    #@a
    .line 1122
    .local v5, "udhLen":I
    add-int/lit8 v6, v5, 0x1

    #@c
    add-int/lit8 v3, v6, 0x0

    #@e
    .line 1123
    new-array v2, v5, [B

    #@10
    .line 1124
    .local v2, "headerData":[B
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@12
    const/4 v7, 0x1

    #@13
    invoke-static {v6, v7, v2, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@16
    .line 1125
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    #@19
    move-result-object v6

    #@1a
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@1c
    .line 1127
    .end local v2    # "headerData":[B
    .end local v5    # "udhLen":I
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@1e
    packed-switch v6, :pswitch_data_0

    #@21
    .line 1171
    :pswitch_0
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@23
    new-instance v7, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v8, "unsupported user data encoding ("

    #@2b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    .line 1172
    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@31
    .line 1171
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    .line 1172
    const-string/jumbo v8, ")"

    #@38
    .line 1171
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@43
    throw v6

    #@44
    .line 1132
    :pswitch_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@47
    move-result-object v6

    #@48
    .line 1133
    const v7, 0x112005c

    #@4b
    .line 1132
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@4e
    move-result v1

    #@4f
    .line 1138
    .local v1, "decodingtypeUTF8":Z
    iget v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@51
    new-array v4, v6, [B

    #@53
    .line 1139
    .local v4, "payload":[B
    iget v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@55
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@57
    array-length v7, v7

    #@58
    if-ge v6, v7, :cond_1

    #@5a
    .line 1140
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@5c
    .line 1142
    .local v0, "copyLen":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@5e
    invoke-static {v6, v8, v4, v8, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@61
    .line 1143
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@63
    .line 1145
    if-nez v1, :cond_2

    #@65
    .line 1148
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@67
    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@69
    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    #@6c
    move-result-object v6

    #@6d
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@6f
    .line 1117
    .end local v0    # "copyLen":I
    .end local v1    # "decodingtypeUTF8":Z
    .end local v4    # "payload":[B
    :goto_1
    return-void

    #@70
    .line 1140
    .restart local v1    # "decodingtypeUTF8":Z
    .restart local v4    # "payload":[B
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@72
    array-length v0, v6

    #@73
    .restart local v0    # "copyLen":I
    goto :goto_0

    #@74
    .line 1150
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@76
    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@78
    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    #@7b
    move-result-object v6

    #@7c
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@7e
    goto :goto_1

    #@7f
    .line 1156
    .end local v0    # "copyLen":I
    .end local v1    # "decodingtypeUTF8":Z
    .end local v4    # "payload":[B
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@81
    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@83
    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@89
    goto :goto_1

    #@8a
    .line 1159
    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@8c
    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@8e
    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@94
    goto :goto_1

    #@95
    .line 1162
    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@97
    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@99
    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@9f
    goto :goto_1

    #@a0
    .line 1165
    :pswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@a2
    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@a4
    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@aa
    goto :goto_1

    #@ab
    .line 1168
    :pswitch_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@ad
    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@af
    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeShiftJis([BII)Ljava/lang/String;

    #@b2
    move-result-object v6

    #@b3
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@b5
    goto :goto_1

    #@b6
    .line 1127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 1646
    const/16 v0, 0x8

    #@4
    .line 1647
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1648
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v3

    #@9
    mul-int/lit8 v2, v3, 0x8

    #@b
    .line 1649
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@d
    .line 1650
    add-int/lit8 v2, v2, -0x8

    #@f
    .line 1651
    const/4 v1, 0x1

    #@10
    .line 1652
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@13
    move-result v3

    #@14
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCode:I

    #@16
    .line 1654
    :cond_0
    if-eqz v1, :cond_1

    #@18
    if-lez v2, :cond_2

    #@1a
    .line 1655
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "USER_RESPONSE_CODE decode "

    #@25
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    .line 1656
    if-eqz v1, :cond_3

    #@2b
    const-string/jumbo v3, "succeeded"

    #@2e
    .line 1655
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 1657
    const-string/jumbo v5, " (extra bits = "

    #@35
    .line 1655
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 1657
    const-string/jumbo v5, ")"

    #@40
    .line 1655
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 1659
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@4e
    .line 1660
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    #@50
    .line 1661
    return v1

    #@51
    .line 1656
    :cond_3
    const-string/jumbo v3, "failed"

    #@54
    goto :goto_0
.end method

.method private static decodeUtf16([BII)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1028
    rem-int/lit8 v0, p1, 0x2

    #@2
    .line 1029
    .local v0, "padding":I
    add-int v1, p1, v0

    #@4
    div-int/lit8 v1, v1, 0x2

    #@6
    sub-int/2addr p2, v1

    #@7
    .line 1030
    const-string/jumbo v1, "utf-16be"

    #@a
    const/4 v2, 0x2

    #@b
    invoke-static {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private static decodeUtf8([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1021
    const-string/jumbo v0, "UTF-8"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x30

    #@2
    .line 1463
    const/16 v0, 0x30

    #@4
    .line 1464
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1465
    .local v1, "decodeSuccess":Z
    const/16 v3, 0x8

    #@7
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@a
    move-result v3

    #@b
    mul-int/lit8 v2, v3, 0x8

    #@d
    .line 1466
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@f
    .line 1467
    add-int/lit8 v2, v2, -0x30

    #@11
    .line 1468
    const/4 v1, 0x1

    #@12
    .line 1469
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@1c
    .line 1471
    :cond_0
    if-eqz v1, :cond_1

    #@1e
    if-lez v2, :cond_2

    #@20
    .line 1472
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "VALIDITY_PERIOD_ABSOLUTE decode "

    #@2b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    .line 1473
    if-eqz v1, :cond_3

    #@31
    const-string/jumbo v3, "succeeded"

    #@34
    .line 1472
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    .line 1474
    const-string/jumbo v5, " (extra bits = "

    #@3b
    .line 1472
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    .line 1474
    const-string/jumbo v5, ")"

    #@46
    .line 1472
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 1476
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@54
    .line 1477
    return v1

    #@55
    .line 1473
    :cond_3
    const-string/jumbo v3, "failed"

    #@58
    goto :goto_0
.end method

.method private static decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 1502
    const/16 v0, 0x8

    #@4
    .line 1503
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    #@5
    .line 1504
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@8
    move-result v3

    #@9
    mul-int/lit8 v2, v3, 0x8

    #@b
    .line 1505
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    #@d
    .line 1506
    add-int/lit8 v2, v2, -0x8

    #@f
    .line 1507
    const/4 v1, 0x1

    #@10
    .line 1508
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@13
    move-result v3

    #@14
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    #@16
    .line 1510
    :cond_0
    if-eqz v1, :cond_1

    #@18
    if-lez v2, :cond_2

    #@1a
    .line 1511
    :cond_1
    const-string/jumbo v4, "BearerData"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "VALIDITY_PERIOD_RELATIVE decode "

    #@25
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    .line 1512
    if-eqz v1, :cond_3

    #@2b
    const-string/jumbo v3, "succeeded"

    #@2e
    .line 1511
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 1513
    const-string/jumbo v5, " (extra bits = "

    #@35
    .line 1511
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 1513
    const-string/jumbo v5, ")"

    #@40
    .line 1511
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 1515
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@4e
    .line 1516
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    #@50
    .line 1517
    return v1

    #@51
    .line 1512
    :cond_3
    const-string/jumbo v3, "failed"

    #@54
    goto :goto_0
.end method

.method public static encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 890
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@5
    if-eqz v5, :cond_e

    #@7
    .line 891
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@9
    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@b
    if-eqz v5, :cond_d

    #@d
    .line 890
    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    #@f
    .line 893
    :try_start_0
    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream;

    #@11
    const/16 v3, 0xc8

    #@13
    invoke-direct {v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    #@16
    .line 894
    .local v2, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    const/4 v3, 0x0

    #@17
    const/16 v4, 0x8

    #@19
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@1c
    .line 895
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@1f
    .line 896
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 897
    const/4 v3, 0x1

    #@24
    const/16 v4, 0x8

    #@26
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@29
    .line 898
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@2c
    .line 900
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@2e
    if-eqz v3, :cond_1

    #@30
    .line 901
    const/16 v3, 0xe

    #@32
    const/16 v4, 0x8

    #@34
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@37
    .line 902
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@3a
    .line 904
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    #@3c
    if-nez v3, :cond_2

    #@3e
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    #@40
    if-nez v3, :cond_2

    #@42
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    #@44
    if-nez v3, :cond_2

    #@46
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    #@48
    if-eqz v3, :cond_3

    #@4a
    .line 905
    :cond_2
    const/16 v3, 0xa

    #@4c
    const/16 v4, 0x8

    #@4e
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@51
    .line 906
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@54
    .line 908
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    #@56
    if-eqz v3, :cond_4

    #@58
    .line 909
    const/16 v3, 0xb

    #@5a
    const/16 v4, 0x8

    #@5c
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@5f
    .line 910
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@62
    .line 912
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    #@64
    if-eqz v3, :cond_5

    #@66
    .line 913
    const/4 v3, 0x5

    #@67
    const/16 v4, 0x8

    #@69
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@6c
    .line 914
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@6f
    .line 916
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    #@71
    if-eqz v3, :cond_6

    #@73
    .line 917
    const/16 v3, 0x9

    #@75
    const/16 v4, 0x8

    #@77
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@7a
    .line 918
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@7d
    .line 920
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    #@7f
    if-eqz v3, :cond_7

    #@81
    .line 921
    const/16 v3, 0xd

    #@83
    const/16 v4, 0x8

    #@85
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@88
    .line 922
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@8b
    .line 924
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    #@8d
    if-eqz v3, :cond_8

    #@8f
    .line 925
    const/16 v3, 0xf

    #@91
    const/16 v4, 0x8

    #@93
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@96
    .line 926
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@99
    .line 928
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    #@9b
    if-eqz v3, :cond_9

    #@9d
    .line 929
    const/16 v3, 0x8

    #@9f
    const/16 v4, 0x8

    #@a1
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@a4
    .line 930
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@a7
    .line 932
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    #@a9
    if-eqz v3, :cond_a

    #@ab
    .line 933
    const/16 v3, 0xc

    #@ad
    const/16 v4, 0x8

    #@af
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@b2
    .line 934
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@b5
    .line 936
    :cond_a
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    #@b7
    if-eqz v3, :cond_b

    #@b9
    .line 937
    const/16 v3, 0x14

    #@bb
    const/16 v4, 0x8

    #@bd
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@c0
    .line 938
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@c3
    .line 940
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    #@c5
    if-eqz v3, :cond_c

    #@c7
    .line 941
    const/16 v3, 0x13

    #@c9
    const/16 v4, 0x8

    #@cb
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@ce
    .line 942
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    #@d1
    .line 944
    :cond_c
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@d4
    move-result-object v3

    #@d5
    return-object v3

    #@d6
    .end local v2    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :cond_d
    move v3, v4

    #@d7
    .line 891
    goto/16 :goto_0

    #@d9
    :cond_e
    move v3, v4

    #@da
    .line 890
    goto/16 :goto_0

    #@dc
    .line 947
    :catch_0
    move-exception v0

    #@dd
    .line 948
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string/jumbo v3, "BearerData"

    #@e0
    new-instance v4, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v5, "BearerData encode failed: "

    #@e8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v4

    #@ec
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v4

    #@f0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v4

    #@f4
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f7
    .line 950
    .end local v0    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :goto_1
    return-object v6

    #@f8
    .line 945
    :catch_1
    move-exception v1

    #@f9
    .line 946
    .local v1, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string/jumbo v3, "BearerData"

    #@fc
    new-instance v4, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v5, "BearerData encode failed: "

    #@104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v4

    #@108
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v4

    #@10c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v4

    #@110
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    goto :goto_1
.end method

.method private static encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 8
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 586
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@4
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    #@7
    move-result-object v0

    #@8
    .line 587
    .local v0, "payload":[B
    array-length v4, p1

    #@9
    add-int/lit8 v2, v4, 0x1

    #@b
    .line 588
    .local v2, "udhBytes":I
    add-int/lit8 v4, v2, 0x1

    #@d
    div-int/lit8 v3, v4, 0x2

    #@f
    .line 589
    .local v3, "udhCodeUnits":I
    array-length v4, v0

    #@10
    div-int/lit8 v1, v4, 0x2

    #@12
    .line 590
    .local v1, "payloadCodeUnits":I
    const/4 v4, 0x4

    #@13
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@15
    .line 591
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@17
    .line 592
    add-int v4, v3, v1

    #@19
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@1b
    .line 593
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@1d
    mul-int/lit8 v4, v4, 0x2

    #@1f
    new-array v4, v4, [B

    #@21
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@23
    .line 594
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@25
    array-length v5, p1

    #@26
    int-to-byte v5, v5

    #@27
    aput-byte v5, v4, v6

    #@29
    .line 595
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@2b
    array-length v5, p1

    #@2c
    invoke-static {p1, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2f
    .line 596
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@31
    array-length v5, v0

    #@32
    invoke-static {v0, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@35
    .line 584
    return-void
.end method

.method private static encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 503
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseOutputStream;

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v5

    #@7
    invoke-direct {v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    #@a
    .line 504
    .local v4, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v3

    #@e
    .line 505
    .local v3, "msgLen":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@11
    .line 506
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    #@13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v6

    #@17
    const/4 v7, -0x1

    #@18
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    #@1b
    move-result v0

    #@1c
    .line 507
    .local v0, "charCode":I
    if-ne v0, v8, :cond_1

    #@1e
    .line 508
    if-eqz p1, :cond_0

    #@20
    .line 509
    const/16 v5, 0x20

    #@22
    const/4 v6, 0x7

    #@23
    invoke-virtual {v4, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@26
    .line 505
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 511
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@2b
    new-instance v6, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v7, "cannot ASCII encode ("

    #@33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v7

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    const-string/jumbo v7, ")"

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v5
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 518
    .end local v0    # "charCode":I
    .end local v2    # "i":I
    .end local v3    # "msgLen":I
    .end local v4    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v1

    #@4f
    .line 519
    .local v1, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@51
    new-instance v6, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v7, "7bit ASCII encode failed: "

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@68
    throw v5

    #@69
    .line 514
    .end local v1    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v0    # "charCode":I
    .restart local v2    # "i":I
    .restart local v3    # "msgLen":I
    .restart local v4    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :cond_1
    const/4 v5, 0x7

    #@6a
    :try_start_1
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@6d
    goto :goto_1

    #@6e
    .line 517
    .end local v0    # "charCode":I
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    #@71
    move-result-object v5

    #@72
    return-object v5
.end method

.method private static encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 572
    array-length v3, p1

    #@3
    add-int/lit8 v1, v3, 0x1

    #@5
    .line 573
    .local v1, "udhBytes":I
    mul-int/lit8 v3, v1, 0x8

    #@7
    add-int/lit8 v3, v3, 0x6

    #@9
    div-int/lit8 v2, v3, 0x7

    #@b
    .line 574
    .local v2, "udhSeptets":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@d
    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    #@10
    move-result-object v0

    #@11
    .line 575
    .local v0, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    const/16 v3, 0x9

    #@13
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@15
    .line 576
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@17
    .line 577
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    #@19
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@1b
    .line 578
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    #@1d
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@1f
    .line 579
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@21
    array-length v4, p1

    #@22
    int-to-byte v4, v4

    #@23
    aput-byte v4, v3, v5

    #@25
    .line 580
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@27
    array-length v4, p1

    #@28
    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2b
    .line 570
    return-void
.end method

.method private static encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "septetOffset"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 558
    if-eqz p2, :cond_0

    #@4
    :goto_0
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    :try_start_0
    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    #@9
    move-result-object v1

    #@a
    .line 559
    .local v1, "fullData":[B
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;)V

    #@10
    .line 560
    .local v2, "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v3, v1

    #@11
    add-int/lit8 v3, v3, -0x1

    #@13
    new-array v3, v3, [B

    #@15
    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    #@17
    .line 561
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    #@19
    array-length v4, v1

    #@1a
    add-int/lit8 v4, v4, -0x1

    #@1c
    const/4 v5, 0x1

    #@1d
    const/4 v6, 0x0

    #@1e
    invoke-static {v1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@21
    .line 562
    const/4 v3, 0x0

    #@22
    aget-byte v3, v1, v3

    #@24
    and-int/lit16 v3, v3, 0xff

    #@26
    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 563
    return-object v2

    #@29
    .end local v1    # "fullData":[B
    .end local v2    # "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    #@2a
    .line 558
    goto :goto_0

    #@2b
    .line 564
    :catch_0
    move-exception v0

    #@2c
    .line 565
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "7bit GSM encode failed: "

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@45
    throw v3
.end method

.method private static encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x8

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@6
    .line 782
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    #@9
    .line 783
    const/16 v3, 0x9

    #@b
    .line 784
    .local v3, "paramBits":I
    const/4 v1, 0x0

    #@c
    .line 785
    .local v1, "dataBits":I
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@e
    if-ne v5, v6, :cond_2

    #@10
    .line 786
    const/16 v3, 0x10

    #@12
    .line 787
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@14
    mul-int/lit8 v1, v5, 0x8

    #@16
    .line 791
    :goto_0
    add-int/2addr v3, v1

    #@17
    .line 792
    div-int/lit8 v8, v3, 0x8

    #@19
    rem-int/lit8 v5, v3, 0x8

    #@1b
    if-lez v5, :cond_3

    #@1d
    move v5, v6

    #@1e
    :goto_1
    add-int v4, v8, v5

    #@20
    .line 793
    .local v4, "paramBytes":I
    mul-int/lit8 v5, v4, 0x8

    #@22
    sub-int v2, v5, v3

    #@24
    .line 794
    .local v2, "paddingBits":I
    invoke-virtual {p1, v9, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@27
    .line 795
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@29
    invoke-virtual {p1, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@2c
    .line 796
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@2e
    if-ne v5, v6, :cond_0

    #@30
    .line 797
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@32
    const/4 v6, 0x3

    #@33
    invoke-virtual {p1, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@36
    .line 798
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    #@38
    const/4 v6, 0x4

    #@39
    invoke-virtual {p1, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@3c
    .line 800
    :cond_0
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@3e
    invoke-virtual {p1, v9, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@41
    .line 801
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@43
    invoke-virtual {p1, v1, v5}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    #@46
    .line 802
    if-lez v2, :cond_1

    #@48
    invoke-virtual {p1, v2, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@4b
    .line 779
    :cond_1
    return-void

    #@4c
    .line 789
    .end local v2    # "paddingBits":I
    .end local v4    # "paramBytes":I
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@4e
    mul-int/lit8 v1, v5, 0x4

    #@50
    goto :goto_0

    #@51
    :cond_3
    move v5, v7

    #@52
    .line 792
    goto :goto_1
.end method

.method private static encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 3
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 767
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    #@7
    const-string/jumbo v2, "US-ASCII"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 766
    :goto_0
    return-void

    #@11
    .line 770
    :catch_0
    move-exception v0

    #@12
    .line 771
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@14
    const-string/jumbo v2, "invalid SMS address, cannot convert to ASCII"

    #@17
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 774
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    #@1d
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@23
    goto :goto_0
.end method

.method private static encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 845
    const/16 v0, 0x8

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@6
    .line 846
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@c
    .line 847
    const/4 v0, 0x6

    #@d
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    #@10
    .line 843
    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 742
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    .line 743
    .local v3, "digits":I
    mul-int/lit8 v1, v3, 0x4

    #@7
    .line 744
    .local v1, "dataBits":I
    div-int/lit8 v2, v1, 0x8

    #@9
    .line 745
    .local v2, "dataBytes":I
    rem-int/lit8 v8, v1, 0x8

    #@b
    if-lez v8, :cond_0

    #@d
    const/4 v7, 0x1

    #@e
    :cond_0
    add-int/2addr v2, v7

    #@f
    .line 746
    new-array v5, v2, [B

    #@11
    .line 747
    .local v5, "rawData":[B
    const/4 v4, 0x0

    #@12
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    #@14
    .line 748
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v0

    #@18
    .line 749
    .local v0, "c":C
    const/4 v6, 0x0

    #@19
    .line 750
    .local v6, "val":I
    const/16 v7, 0x31

    #@1b
    if-lt v0, v7, :cond_1

    #@1d
    const/16 v7, 0x39

    #@1f
    if-gt v0, v7, :cond_1

    #@21
    add-int/lit8 v6, v0, -0x30

    #@23
    .line 755
    :goto_1
    div-int/lit8 v7, v4, 0x2

    #@25
    aget-byte v8, v5, v7

    #@27
    rem-int/lit8 v9, v4, 0x2

    #@29
    mul-int/lit8 v9, v9, 0x4

    #@2b
    rsub-int/lit8 v9, v9, 0x4

    #@2d
    shl-int v9, v6, v9

    #@2f
    or-int/2addr v8, v9

    #@30
    int-to-byte v8, v8

    #@31
    aput-byte v8, v5, v7

    #@33
    .line 747
    add-int/lit8 v4, v4, 0x1

    #@35
    goto :goto_0

    #@36
    .line 751
    :cond_1
    const/16 v7, 0x30

    #@38
    if-ne v0, v7, :cond_2

    #@3a
    const/16 v6, 0xa

    #@3c
    goto :goto_1

    #@3d
    .line 752
    :cond_2
    const/16 v7, 0x2a

    #@3f
    if-ne v0, v7, :cond_3

    #@41
    const/16 v6, 0xb

    #@43
    goto :goto_1

    #@44
    .line 753
    :cond_3
    const/16 v7, 0x23

    #@46
    if-ne v0, v7, :cond_4

    #@48
    const/16 v6, 0xc

    #@4a
    goto :goto_1

    #@4b
    .line 754
    :cond_4
    const/4 v7, 0x0

    #@4c
    return-object v7

    #@4d
    .line 757
    .end local v0    # "c":C
    .end local v6    # "val":I
    :cond_5
    return-object v5
.end method

.method private static encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 5
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 602
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@2
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    #@5
    move-result-object v1

    #@6
    .line 603
    .local v1, "headerData":[B
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@8
    if-eqz v2, :cond_2

    #@a
    .line 604
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@c
    const/16 v3, 0x9

    #@e
    if-ne v2, v3, :cond_0

    #@10
    .line 605
    const/4 v2, 0x1

    #@11
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    #@14
    .line 600
    :goto_0
    return-void

    #@15
    .line 606
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@17
    const/4 v3, 0x4

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    .line 607
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    #@1d
    goto :goto_0

    #@1e
    .line 609
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "unsupported EMS user data encoding ("

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 610
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@2e
    .line 609
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 610
    const-string/jumbo v4, ")"

    #@35
    .line 609
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2

    #@41
    .line 614
    :cond_2
    const/4 v2, 0x0

    #@42
    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    goto :goto_0

    #@46
    .line 615
    :catch_0
    move-exception v0

    #@47
    .line 616
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    #@4a
    goto :goto_0
.end method

.method private static encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    .line 838
    const/4 v0, 0x1

    #@3
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@6
    .line 839
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    #@8
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@b
    .line 836
    return-void
.end method

.method private static encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v1, 0x1

    #@2
    const/16 v3, 0x8

    #@4
    .line 449
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@7
    .line 450
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    #@9
    const/4 v2, 0x4

    #@a
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@d
    .line 451
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    #@f
    shr-int/lit8 v0, v0, 0x8

    #@11
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@14
    .line 452
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    #@16
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@19
    .line 453
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    #@1b
    if-eqz v0, :cond_0

    #@1d
    move v0, v1

    #@1e
    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@21
    .line 454
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    #@24
    .line 447
    return-void

    #@25
    .line 453
    :cond_0
    const/4 v0, 0x0

    #@26
    goto :goto_0
.end method

.method private static encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    .line 816
    const/4 v0, 0x1

    #@3
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@6
    .line 817
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    #@8
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@b
    .line 814
    return-void
.end method

.method private static encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 861
    const/16 v0, 0x8

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@6
    .line 862
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@c
    .line 863
    const/4 v0, 0x6

    #@d
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    #@10
    .line 859
    return-void
.end method

.method private static encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 808
    const/16 v0, 0x8

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@6
    .line 809
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@c
    .line 810
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    #@e
    const/4 v1, 0x6

    #@f
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@12
    .line 806
    return-void
.end method

.method private static encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 853
    const/16 v0, 0x8

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@6
    .line 854
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@c
    .line 855
    const/4 v0, 0x6

    #@d
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    #@10
    .line 851
    return-void
.end method

.method private static encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 830
    const/16 v0, 0x8

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@6
    .line 831
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@c
    .line 832
    const/4 v0, 0x6

    #@d
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    #@10
    .line 828
    return-void
.end method

.method private static encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 3
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 733
    const/16 v0, 0x8

    #@4
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@7
    .line 734
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    move v0, v1

    #@c
    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@f
    .line 735
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    move v0, v1

    #@14
    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@17
    .line 736
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    #@19
    if-eqz v0, :cond_2

    #@1b
    move v0, v1

    #@1c
    :goto_2
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@1f
    .line 737
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    #@21
    if-eqz v0, :cond_3

    #@23
    move v0, v1

    #@24
    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@27
    .line 738
    const/4 v0, 0x4

    #@28
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@2b
    .line 731
    return-void

    #@2c
    :cond_0
    move v0, v2

    #@2d
    .line 734
    goto :goto_0

    #@2e
    :cond_1
    move v0, v2

    #@2f
    .line 735
    goto :goto_1

    #@30
    :cond_2
    move v0, v2

    #@31
    .line 736
    goto :goto_2

    #@32
    :cond_3
    move v0, v2

    #@33
    .line 737
    goto :goto_3
.end method

.method private static encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/16 v5, 0x8

    #@3
    .line 869
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    #@5
    .line 870
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v4

    #@9
    mul-int/lit8 v4, v4, 0x4

    #@b
    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@e
    .line 871
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "result$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/telephony/cdma/CdmaSmsCbProgramResults;

    #@1e
    .line 872
    .local v1, "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategory()I

    #@21
    move-result v0

    #@22
    .line 873
    .local v0, "category":I
    shr-int/lit8 v4, v0, 0x8

    #@24
    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@27
    .line 874
    invoke-virtual {p1, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@2a
    .line 875
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getLanguage()I

    #@2d
    move-result v4

    #@2e
    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@31
    .line 876
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategoryResult()I

    #@34
    move-result v4

    #@35
    invoke-virtual {p1, v6, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@38
    .line 877
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    #@3b
    goto :goto_0

    #@3c
    .line 867
    .end local v0    # "category":I
    .end local v1    # "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    :cond_0
    return-void
.end method

.method private static encodeShiftJis(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 623
    :try_start_0
    const-string/jumbo v1, "Shift_JIS"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 624
    :catch_0
    move-exception v0

    #@9
    .line 625
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Shift-JIS encode failed: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1
.end method

.method private static encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x8c

    #@2
    const/16 v9, 0xa

    #@4
    const/16 v8, 0x8

    #@6
    const/4 v5, 0x1

    #@7
    const/4 v6, 0x0

    #@8
    .line 695
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@a
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    #@d
    .line 696
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@f
    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@11
    if-eqz v4, :cond_0

    #@13
    move v4, v5

    #@14
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    #@16
    .line 698
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@18
    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@1a
    array-length v4, v4

    #@1b
    if-le v4, v7, :cond_1

    #@1d
    .line 699
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "encoded user data too large ("

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    .line 700
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@2d
    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@2f
    array-length v6, v6

    #@30
    .line 699
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    .line 701
    const-string/jumbo v6, " > "

    #@37
    .line 699
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    .line 701
    const-string/jumbo v6, " bytes)"

    #@42
    .line 699
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v4

    #@4e
    :cond_0
    move v4, v6

    #@4f
    .line 696
    goto :goto_0

    #@50
    .line 711
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@52
    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@54
    array-length v4, v4

    #@55
    mul-int/lit8 v4, v4, 0x8

    #@57
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@59
    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    #@5b
    sub-int v0, v4, v7

    #@5d
    .line 712
    .local v0, "dataBits":I
    add-int/lit8 v2, v0, 0xd

    #@5f
    .line 713
    .local v2, "paramBits":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@61
    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@63
    if-eq v4, v5, :cond_2

    #@65
    .line 714
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@67
    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@69
    if-ne v4, v9, :cond_3

    #@6b
    .line 715
    :cond_2
    add-int/lit8 v2, v2, 0x8

    #@6d
    .line 717
    :cond_3
    div-int/lit8 v7, v2, 0x8

    #@6f
    rem-int/lit8 v4, v2, 0x8

    #@71
    if-lez v4, :cond_7

    #@73
    move v4, v5

    #@74
    :goto_1
    add-int v3, v7, v4

    #@76
    .line 718
    .local v3, "paramBytes":I
    mul-int/lit8 v4, v3, 0x8

    #@78
    sub-int v1, v4, v2

    #@7a
    .line 719
    .local v1, "paddingBits":I
    invoke-virtual {p1, v8, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@7d
    .line 720
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@7f
    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@81
    const/4 v7, 0x5

    #@82
    invoke-virtual {p1, v7, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@85
    .line 721
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@87
    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@89
    if-eq v4, v5, :cond_4

    #@8b
    .line 722
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@8d
    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@8f
    if-ne v4, v9, :cond_5

    #@91
    .line 723
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@93
    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    #@95
    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@98
    .line 725
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@9a
    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@9c
    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@9f
    .line 726
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@a1
    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@a3
    invoke-virtual {p1, v0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    #@a6
    .line 727
    if-lez v1, :cond_6

    #@a8
    invoke-virtual {p1, v1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@ab
    .line 688
    :cond_6
    return-void

    #@ac
    .end local v1    # "paddingBits":I
    .end local v3    # "paramBytes":I
    :cond_7
    move v4, v6

    #@ad
    .line 717
    goto :goto_1
.end method

.method private static encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 8
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 632
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@6
    if-nez v2, :cond_0

    #@8
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 633
    const-string/jumbo v2, "BearerData"

    #@f
    const-string/jumbo v3, "user data with null payloadStr"

    #@12
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 634
    const-string/jumbo v2, ""

    #@18
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@1a
    .line 637
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 638
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    #@21
    .line 639
    return-void

    #@22
    .line 642
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@24
    if-eqz v2, :cond_9

    #@26
    .line 643
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@28
    if-nez v2, :cond_3

    #@2a
    .line 644
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@2c
    if-nez v2, :cond_2

    #@2e
    .line 645
    const-string/jumbo v2, "BearerData"

    #@31
    const-string/jumbo v3, "user data with octet encoding but null payload"

    #@34
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 646
    new-array v2, v4, [B

    #@39
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@3b
    .line 647
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@3d
    .line 630
    :goto_0
    return-void

    #@3e
    .line 649
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@40
    array-length v2, v2

    #@41
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@43
    goto :goto_0

    #@44
    .line 652
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@46
    if-nez v2, :cond_4

    #@48
    .line 653
    const-string/jumbo v2, "BearerData"

    #@4b
    const-string/jumbo v3, "non-octet user data with null payloadStr"

    #@4e
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 654
    const-string/jumbo v2, ""

    #@54
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@56
    .line 656
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@58
    const/16 v3, 0x9

    #@5a
    if-ne v2, v3, :cond_5

    #@5c
    .line 657
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@5e
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    #@61
    move-result-object v1

    #@62
    .line 658
    .local v1, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    #@64
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@66
    .line 659
    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    #@68
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@6a
    goto :goto_0

    #@6b
    .line 660
    .end local v1    # "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@6d
    if-ne v2, v6, :cond_6

    #@6f
    .line 661
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@71
    invoke-static {v2, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    #@74
    move-result-object v2

    #@75
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@77
    .line 662
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@79
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@7c
    move-result v2

    #@7d
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@7f
    goto :goto_0

    #@80
    .line 663
    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@82
    if-ne v2, v7, :cond_7

    #@84
    .line 664
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@86
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    #@89
    move-result-object v2

    #@8a
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@8c
    .line 665
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@8e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@91
    move-result v2

    #@92
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@94
    goto :goto_0

    #@95
    .line 666
    :cond_7
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@97
    const/4 v3, 0x5

    #@98
    if-ne v2, v3, :cond_8

    #@9a
    .line 667
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@9c
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeShiftJis(Ljava/lang/String;)[B

    #@9f
    move-result-object v2

    #@a0
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@a2
    .line 668
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@a4
    array-length v2, v2

    #@a5
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@a7
    goto :goto_0

    #@a8
    .line 670
    :cond_8
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@aa
    new-instance v3, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v4, "unsupported user data encoding ("

    #@b2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    .line 671
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@b8
    .line 670
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    .line 671
    const-string/jumbo v4, ")"

    #@bf
    .line 670
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v3

    #@c3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v3

    #@c7
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v2

    #@cb
    .line 676
    :cond_9
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@cd
    const/4 v3, 0x0

    #@ce
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    #@d1
    move-result-object v2

    #@d2
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@d4
    .line 677
    const/4 v2, 0x2

    #@d5
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@d7
    .line 682
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@d9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@dc
    move-result v2

    #@dd
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    #@df
    .line 683
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@e1
    goto/16 :goto_0

    #@e3
    .line 678
    :catch_0
    move-exception v0

    #@e4
    .line 679
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@e6
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    #@e9
    move-result-object v2

    #@ea
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@ec
    .line 680
    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@ee
    goto :goto_1
.end method

.method private static encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 527
    :try_start_0
    const-string/jumbo v1, "utf-16be"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 528
    :catch_0
    move-exception v0

    #@9
    .line 529
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "UTF-16 encode failed: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1
.end method

.method private static encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    .line 823
    const/4 v0, 0x1

    #@3
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@6
    .line 824
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    #@8
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@b
    .line 821
    return-void
.end method

.method private static getBitsForNumFields(II)I
    .locals 3
    .param p0, "msgEncoding"    # I
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1759
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1776
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "unsupported message encoding ("

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const/16 v2, 0x29

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 1765
    :pswitch_1
    mul-int/lit8 v0, p1, 0x8

    #@25
    return v0

    #@26
    .line 1770
    :pswitch_2
    mul-int/lit8 v0, p1, 0x7

    #@28
    return v0

    #@29
    .line 1773
    :pswitch_3
    mul-int/lit8 v0, p1, 0x10

    #@2b
    return v0

    #@2c
    .line 1759
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getLanguageCodeForValue(I)Ljava/lang/String;
    .locals 1
    .param p0, "languageValue"    # I

    #@0
    .prologue
    .line 383
    packed-switch p0, :pswitch_data_0

    #@3
    .line 406
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 385
    :pswitch_0
    const-string/jumbo v0, "en"

    #@8
    return-object v0

    #@9
    .line 388
    :pswitch_1
    const-string/jumbo v0, "fr"

    #@c
    return-object v0

    #@d
    .line 391
    :pswitch_2
    const-string/jumbo v0, "es"

    #@10
    return-object v0

    #@11
    .line 394
    :pswitch_3
    const-string/jumbo v0, "ja"

    #@14
    return-object v0

    #@15
    .line 397
    :pswitch_4
    const-string/jumbo v0, "ko"

    #@18
    return-object v0

    #@19
    .line 400
    :pswitch_5
    const-string/jumbo v0, "zh"

    #@1c
    return-object v0

    #@1d
    .line 403
    :pswitch_6
    const-string/jumbo v0, "he"

    #@20
    return-object v0

    #@21
    .line 383
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static isCmasAlertCategory(I)Z
    .locals 2
    .param p0, "category"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1873
    const/16 v1, 0x1000

    #@3
    if-lt p0, v1, :cond_0

    #@5
    .line 1874
    const/16 v1, 0x10ff

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 1873
    :cond_0
    return v0
.end method

.method private static serviceCategoryToCmasMessageClass(I)I
    .locals 1
    .param p0, "serviceCategory"    # I

    #@0
    .prologue
    .line 1728
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1745
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 1730
    :pswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1733
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 1736
    :pswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 1739
    :pswitch_3
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 1742
    :pswitch_4
    const/4 v0, 0x4

    #@e
    return v0

    #@f
    .line 1728
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 374
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    #@2
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguageCodeForValue(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 413
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BearerData "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 414
    const-string/jumbo v1, "{ messageType="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    .line 415
    const-string/jumbo v1, ", messageId="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 416
    const-string/jumbo v1, ", priority="

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    #@2c
    if-eqz v1, :cond_0

    #@2e
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    #@30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v1

    #@34
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    .line 417
    const-string/jumbo v1, ", privacy="

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    #@40
    if-eqz v1, :cond_1

    #@42
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    #@44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v1

    #@48
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    .line 418
    const-string/jumbo v1, ", alert="

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    #@54
    if-eqz v1, :cond_2

    #@56
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    #@58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v1

    #@5c
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    .line 419
    const-string/jumbo v1, ", displayMode="

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    #@68
    if-eqz v1, :cond_3

    #@6a
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    #@6c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v1

    #@70
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    .line 420
    const-string/jumbo v1, ", language="

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    #@7c
    if-eqz v1, :cond_4

    #@7e
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    #@80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v1

    #@84
    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    .line 421
    const-string/jumbo v1, ", errorClass="

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    #@90
    if-eqz v1, :cond_5

    #@92
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    #@94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@97
    move-result-object v1

    #@98
    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    .line 422
    const-string/jumbo v1, ", msgStatus="

    #@9e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    #@a4
    if-eqz v1, :cond_6

    #@a6
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    #@a8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ab
    move-result-object v1

    #@ac
    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    .line 423
    const-string/jumbo v1, ", msgCenterTimeStamp="

    #@b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v2

    #@b6
    .line 424
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@b8
    if-eqz v1, :cond_7

    #@ba
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@bc
    .line 423
    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    .line 425
    const-string/jumbo v1, ", validityPeriodAbsolute="

    #@c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v2

    #@c6
    .line 426
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@c8
    if-eqz v1, :cond_8

    #@ca
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@cc
    .line 425
    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cf
    .line 427
    const-string/jumbo v1, ", validityPeriodRelative="

    #@d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v2

    #@d6
    .line 428
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    #@d8
    if-eqz v1, :cond_9

    #@da
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    #@dc
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@df
    move-result-object v1

    #@e0
    .line 427
    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e3
    .line 429
    const-string/jumbo v1, ", deferredDeliveryTimeAbsolute="

    #@e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v2

    #@ea
    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@ec
    if-eqz v1, :cond_a

    #@ee
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@f0
    .line 429
    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f3
    .line 431
    const-string/jumbo v1, ", deferredDeliveryTimeRelative="

    #@f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v2

    #@fa
    .line 432
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    #@fc
    if-eqz v1, :cond_b

    #@fe
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    #@100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@103
    move-result-object v1

    #@104
    .line 431
    :goto_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@107
    .line 433
    const-string/jumbo v1, ", userAckReq="

    #@10a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v1

    #@10e
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    #@110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@113
    .line 434
    const-string/jumbo v1, ", deliveryAckReq="

    #@116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v1

    #@11a
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    #@11c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11f
    .line 435
    const-string/jumbo v1, ", readAckReq="

    #@122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v1

    #@126
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    #@128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12b
    .line 436
    const-string/jumbo v1, ", reportReq="

    #@12e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v1

    #@132
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    #@134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@137
    .line 437
    const-string/jumbo v1, ", numberOfMessages="

    #@13a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v1

    #@13e
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    #@140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@143
    .line 438
    const-string/jumbo v1, ", callbackNumber="

    #@146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v1

    #@14a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@14c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14f
    .line 439
    const-string/jumbo v1, ", depositIndex="

    #@152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v1

    #@156
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    #@158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15b
    .line 440
    const-string/jumbo v1, ", hasUserDataHeader="

    #@15e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v1

    #@162
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    #@164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@167
    .line 441
    const-string/jumbo v1, ", userData="

    #@16a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v1

    #@16e
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@173
    .line 442
    const-string/jumbo v1, " }"

    #@176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v1

    #@17d
    return-object v1

    #@17e
    .line 416
    :cond_0
    const-string/jumbo v1, "unset"

    #@181
    goto/16 :goto_0

    #@183
    .line 417
    :cond_1
    const-string/jumbo v1, "unset"

    #@186
    goto/16 :goto_1

    #@188
    .line 418
    :cond_2
    const-string/jumbo v1, "unset"

    #@18b
    goto/16 :goto_2

    #@18d
    .line 419
    :cond_3
    const-string/jumbo v1, "unset"

    #@190
    goto/16 :goto_3

    #@192
    .line 420
    :cond_4
    const-string/jumbo v1, "unset"

    #@195
    goto/16 :goto_4

    #@197
    .line 421
    :cond_5
    const-string/jumbo v1, "unset"

    #@19a
    goto/16 :goto_5

    #@19c
    .line 422
    :cond_6
    const-string/jumbo v1, "unset"

    #@19f
    goto/16 :goto_6

    #@1a1
    .line 424
    :cond_7
    const-string/jumbo v1, "unset"

    #@1a4
    goto/16 :goto_7

    #@1a6
    .line 426
    :cond_8
    const-string/jumbo v1, "unset"

    #@1a9
    goto/16 :goto_8

    #@1ab
    .line 428
    :cond_9
    const-string/jumbo v1, "unset"

    #@1ae
    goto/16 :goto_9

    #@1b0
    .line 430
    :cond_a
    const-string/jumbo v1, "unset"

    #@1b3
    goto/16 :goto_a

    #@1b5
    .line 432
    :cond_b
    const-string/jumbo v1, "unset"

    #@1b8
    goto/16 :goto_b
.end method

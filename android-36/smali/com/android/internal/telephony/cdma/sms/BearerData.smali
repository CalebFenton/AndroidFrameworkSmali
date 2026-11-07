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
.field public static final blacklist ALERT_DEFAULT:I = 0x0

.field public static final blacklist ALERT_HIGH_PRIO:I = 0x3

.field public static final blacklist ALERT_LOW_PRIO:I = 0x1

.field public static final blacklist ALERT_MEDIUM_PRIO:I = 0x2

.field public static final blacklist DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final blacklist DISPLAY_MODE_IMMEDIATE:I = 0x0

.field public static final blacklist DISPLAY_MODE_USER:I = 0x2

.field public static final blacklist ERROR_NONE:I = 0x0

.field public static final blacklist ERROR_PERMANENT:I = 0x3

.field public static final blacklist ERROR_TEMPORARY:I = 0x2

.field public static final blacklist ERROR_UNDEFINED:I = 0xff

.field public static final blacklist LANGUAGE_CHINESE:I = 0x6

.field public static final blacklist LANGUAGE_ENGLISH:I = 0x1

.field public static final blacklist LANGUAGE_FRENCH:I = 0x2

.field public static final blacklist LANGUAGE_HEBREW:I = 0x7

.field public static final blacklist LANGUAGE_JAPANESE:I = 0x4

.field public static final blacklist LANGUAGE_KOREAN:I = 0x5

.field public static final blacklist LANGUAGE_SPANISH:I = 0x3

.field public static final blacklist LANGUAGE_UNKNOWN:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "BearerData"

.field public static final blacklist MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final blacklist MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final blacklist MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final blacklist MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final blacklist MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final blacklist MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final blacklist MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final blacklist MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final blacklist PRIORITY_EMERGENCY:I = 0x3

.field public static final blacklist PRIORITY_INTERACTIVE:I = 0x1

.field public static final blacklist PRIORITY_NORMAL:I = 0x0

.field public static final blacklist PRIORITY_URGENT:I = 0x2

.field public static final blacklist PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final blacklist PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final blacklist PRIVACY_RESTRICTED:I = 0x1

.field public static final blacklist PRIVACY_SECRET:I = 0x3

.field public static final blacklist RELATIVE_TIME_DAYS_LIMIT:I = 0xc4

.field public static final blacklist RELATIVE_TIME_HOURS_LIMIT:I = 0xa7

.field public static final blacklist RELATIVE_TIME_INDEFINITE:I = 0xf5

.field public static final blacklist RELATIVE_TIME_MINS_LIMIT:I = 0x8f

.field public static final blacklist RELATIVE_TIME_MOBILE_INACTIVE:I = 0xf7

.field public static final blacklist RELATIVE_TIME_NOW:I = 0xf6

.field public static final blacklist RELATIVE_TIME_RESERVED:I = 0xf8

.field public static final blacklist RELATIVE_TIME_WEEKS_LIMIT:I = 0xf4

.field public static final blacklist STATUS_ACCEPTED:I = 0x0

.field public static final blacklist STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final blacklist STATUS_CANCELLED:I = 0x3

.field public static final blacklist STATUS_CANCEL_FAILED:I = 0x6

.field public static final blacklist STATUS_DELIVERED:I = 0x2

.field public static final blacklist STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final blacklist STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final blacklist STATUS_INVALID_DESTINATION:I = 0xa

.field public static final blacklist STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final blacklist STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final blacklist STATUS_NETWORK_ERROR:I = 0x5

.field public static final blacklist STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final blacklist STATUS_UNDEFINED:I = 0xff

.field public static final blacklist STATUS_UNKNOWN_ERROR:I = 0x1f

.field private static final blacklist SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final blacklist SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final blacklist SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final blacklist SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final blacklist SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final blacklist SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final blacklist SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final blacklist SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final blacklist SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final blacklist SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final blacklist SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final blacklist SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final blacklist SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final blacklist SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final blacklist SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final blacklist SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final blacklist SUBPARAM_SERVICE_CATEGORY_PROGRAM_RESULTS:B = 0x13t

.field private static final blacklist SUBPARAM_USER_DATA:B = 0x1t

.field private static final blacklist SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final blacklist SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final blacklist SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# instance fields
.field public blacklist alert:I

.field public blacklist alertIndicatorSet:Z

.field public blacklist callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public blacklist cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field public blacklist deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public blacklist deferredDeliveryTimeRelative:I

.field public blacklist deferredDeliveryTimeRelativeSet:Z

.field public blacklist deliveryAckReq:Z

.field public blacklist depositIndex:I

.field public greylist displayMode:I

.field public blacklist displayModeSet:Z

.field public blacklist errorClass:I

.field public greylist hasUserDataHeader:Z

.field public blacklist language:I

.field public blacklist languageIndicatorSet:Z

.field public greylist messageId:I

.field public blacklist messageStatus:I

.field public blacklist messageStatusSet:Z

.field public blacklist messageType:I

.field public greylist msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public blacklist numberOfMessages:I

.field public greylist priority:I

.field public greylist priorityIndicatorSet:Z

.field public blacklist privacy:I

.field public blacklist privacyIndicatorSet:Z

.field public blacklist readAckReq:Z

.field public blacklist reportReq:Z

.field public blacklist serviceCategoryProgramData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist serviceCategoryProgramResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramResults;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist userAckReq:Z

.field public greylist userData:Lcom/android/internal/telephony/cdma/sms/UserData;

.field public blacklist userResponseCode:I

.field public blacklist userResponseCodeSet:Z

.field public blacklist validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public blacklist validityPeriodRelative:I

.field public blacklist validityPeriodRelativeSet:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 118
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 131
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 142
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 143
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 155
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 156
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 175
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 176
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 208
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 209
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 210
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 238
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 243
    return-void
.end method

.method public static blacklist calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 9
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z
    .param p2, "isEntireMsg"    # Z

    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, "newMsg":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 555
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x1110250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    .line 556
    invoke-static {p0, v3}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 558
    :cond_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 559
    move-object v0, p0

    .line 563
    :cond_1a
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v2

    .line 564
    .local v2, "septets":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_35

    const/16 v4, 0xa0

    if-gt v2, v4, :cond_35

    .line 565
    new-instance v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v4}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 566
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iput v3, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 567
    iput v2, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 568
    rsub-int v5, v2, 0xa0

    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 569
    iput v3, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_48

    .line 571
    .end local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_35
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 573
    .restart local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v5, v3, :cond_48

    iget v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v3, :cond_48

    if-eqz p2, :cond_48

    .line 577
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    return-object v3

    .line 580
    :cond_48
    :goto_48
    return-object v4
.end method

.method private static greylist countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .registers 7
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force"    # Z

    .line 533
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 534
    .local v0, "msgLen":I
    if-eqz p1, :cond_7

    return v0

    .line 535
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1b

    .line 536
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_18

    .line 537
    return v4

    .line 535
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 540
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public static blacklist decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .registers 2
    .param p0, "smsData"    # [B

    .line 2036
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .registers 13
    .param p0, "smsData"    # [B
    .param p1, "serviceCategory"    # I

    .line 2054
    const-string v0, "BearerData decode failed: "

    const-string v1, "BearerData"

    :try_start_4
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2055
    .local v2, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2056
    .local v3, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v4, 0x0

    .line 2057
    .local v4, "foundSubparamMask":I
    :goto_f
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5
    :try_end_13
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_4 .. :try_end_13} :catch_11b
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_4 .. :try_end_13} :catch_105

    const-string v6, ")"

    const/4 v7, 0x1

    if-lez v5, :cond_b9

    .line 2058
    const/16 v5, 0x8

    :try_start_1a
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 2059
    .local v5, "subparamId":I
    shl-int/2addr v7, v5

    .line 2066
    .local v7, "subparamIdBit":I
    and-int v8, v4, v7

    const/16 v9, 0x17

    if-eqz v8, :cond_47

    if-ltz v5, :cond_47

    if-le v5, v9, :cond_2a

    goto :goto_47

    .line 2069
    :cond_2a
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal duplicate subparameter ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "smsData":[B
    .end local p1    # "serviceCategory":I
    throw v8

    .line 2073
    .restart local p0    # "smsData":[B
    .restart local p1    # "serviceCategory":I
    :cond_47
    :goto_47
    packed-switch v5, :pswitch_data_134

    .line 2132
    :pswitch_4a
    invoke-static {v3, v2, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z

    move-result v6

    goto/16 :goto_b0

    .line 2093
    :pswitch_50
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2094
    .local v6, "decodeSuccess":Z
    goto/16 :goto_b0

    .line 2129
    .end local v6    # "decodeSuccess":Z
    :pswitch_56
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2130
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2126
    .end local v6    # "decodeSuccess":Z
    :pswitch_5b
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2127
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2117
    .end local v6    # "decodeSuccess":Z
    :pswitch_60
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2118
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2090
    .end local v6    # "decodeSuccess":Z
    :pswitch_65
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2091
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2114
    .end local v6    # "decodeSuccess":Z
    :pswitch_6a
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2115
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2123
    .end local v6    # "decodeSuccess":Z
    :pswitch_6f
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2124
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2087
    .end local v6    # "decodeSuccess":Z
    :pswitch_74
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2088
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2084
    .end local v6    # "decodeSuccess":Z
    :pswitch_79
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2085
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2111
    .end local v6    # "decodeSuccess":Z
    :pswitch_7e
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2112
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2120
    .end local v6    # "decodeSuccess":Z
    :pswitch_83
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2121
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2108
    .end local v6    # "decodeSuccess":Z
    :pswitch_88
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2109
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2105
    .end local v6    # "decodeSuccess":Z
    :pswitch_8d
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2106
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2102
    .end local v6    # "decodeSuccess":Z
    :pswitch_92
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2103
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2099
    .end local v6    # "decodeSuccess":Z
    :pswitch_97
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2100
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2096
    .end local v6    # "decodeSuccess":Z
    :pswitch_9c
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2097
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2081
    .end local v6    # "decodeSuccess":Z
    :pswitch_a1
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2082
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2078
    .end local v6    # "decodeSuccess":Z
    :pswitch_a6
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2079
    .restart local v6    # "decodeSuccess":Z
    goto :goto_b0

    .line 2075
    .end local v6    # "decodeSuccess":Z
    :pswitch_ab
    invoke-static {v3, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v6

    .line 2076
    .restart local v6    # "decodeSuccess":Z
    nop

    .line 2134
    :goto_b0
    if-eqz v6, :cond_b7

    if-ltz v5, :cond_b7

    if-gt v5, v9, :cond_b7

    .line 2137
    or-int/2addr v4, v7

    .line 2139
    .end local v5    # "subparamId":I
    .end local v6    # "decodeSuccess":Z
    .end local v7    # "subparamIdBit":I
    :cond_b7
    goto/16 :goto_f

    .line 2140
    :cond_b9
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_fd

    .line 2143
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v5, :cond_fc

    .line 2144
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->isCmasAlertCategory(I)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 2145
    invoke-static {v3, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V

    goto :goto_fc

    .line 2146
    :cond_cb
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v5, v7, :cond_f5

    .line 2147
    xor-int/lit8 v5, v4, 0x1

    xor-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_f1

    .line 2151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IS-91 must occur without extra subparams ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_f1
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_fc

    .line 2156
    :cond_f5
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v6, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 2159
    :cond_fc
    :goto_fc
    return-object v3

    .line 2141
    :cond_fd
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v6, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "smsData":[B
    .end local p1    # "serviceCategory":I
    throw v5
    :try_end_105
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1a .. :try_end_105} :catch_11b
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1a .. :try_end_105} :catch_105

    .line 2162
    .end local v2    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v3    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v4    # "foundSubparamMask":I
    .restart local p0    # "smsData":[B
    .restart local p1    # "serviceCategory":I
    :catch_105
    move-exception v2

    .line 2163
    .local v2, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131

    .line 2160
    .end local v2    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :catch_11b
    move-exception v2

    .line 2161
    .local v2, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    .end local v2    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    nop

    .line 2165
    :goto_131
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_a6
        :pswitch_a1
        :pswitch_9c
        :pswitch_97
        :pswitch_92
        :pswitch_8d
        :pswitch_88
        :pswitch_83
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_6f
        :pswitch_6a
        :pswitch_65
        :pswitch_60
        :pswitch_4a
        :pswitch_5b
        :pswitch_56
        :pswitch_4a
        :pswitch_50
    .end packed-switch
.end method

.method private static blacklist decode7bitAscii([BII)Ljava/lang/String;
    .registers 13
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1196
    mul-int/lit8 v0, p1, 0x8

    .line 1197
    .local v0, "offsetBits":I
    add-int/lit8 v1, v0, 0x6

    const/4 v2, 0x7

    :try_start_5
    div-int/2addr v1, v2

    .line 1198
    .local v1, "offsetSeptets":I
    sub-int/2addr p2, v1

    .line 1200
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1201
    .local v3, "strBuf":Ljava/lang/StringBuffer;
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v4, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1202
    .local v4, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    mul-int/lit8 v5, v1, 0x7

    mul-int/lit8 v6, p2, 0x7

    add-int/2addr v5, v6

    .line 1203
    .local v5, "wantedBits":I
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    if-lt v6, v5, :cond_55

    .line 1207
    mul-int/lit8 v6, v1, 0x7

    invoke-virtual {v4, v6}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1208
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_22
    if-ge v6, p2, :cond_50

    .line 1209
    invoke-virtual {v4, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 1210
    .local v7, "charCode":I
    const/16 v8, 0x20

    if-lt v7, v8, :cond_3a

    sget v9, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt v7, v9, :cond_3a

    .line 1212
    sget-object v8, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    add-int/lit8 v9, v7, -0x20

    aget-char v8, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4d

    .line 1213
    :cond_3a
    const/16 v9, 0xa

    if-ne v7, v9, :cond_42

    .line 1214
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4d

    .line 1215
    :cond_42
    const/16 v9, 0xd

    if-ne v7, v9, :cond_4a

    .line 1216
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4d

    .line 1219
    :cond_4a
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1208
    .end local v7    # "charCode":I
    :goto_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 1222
    .end local v6    # "i":I
    :cond_50
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1204
    :cond_55
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insufficient data (wanted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bits, but only have "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1205
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "data":[B
    .end local p1    # "offset":I
    .end local p2    # "numFields":I
    throw v2
    :try_end_82
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_5 .. :try_end_82} :catch_82

    .line 1223
    .end local v0    # "offsetBits":I
    .end local v1    # "offsetSeptets":I
    .end local v3    # "strBuf":Ljava/lang/StringBuffer;
    .end local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v5    # "wantedBits":I
    .restart local p0    # "data":[B
    .restart local p1    # "offset":I
    .restart local p2    # "numFields":I
    :catch_82
    move-exception v0

    .line 1224
    .local v0, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit ASCII decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist decode7bitGsm([BII)Ljava/lang/String;
    .registers 11
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1232
    mul-int/lit8 v0, p1, 0x8

    .line 1233
    .local v0, "offsetBits":I
    add-int/lit8 v1, v0, 0x6

    div-int/lit8 v1, v1, 0x7

    .line 1234
    .local v1, "offsetSeptets":I
    sub-int v4, p2, v1

    .line 1235
    .end local p2    # "numFields":I
    .local v4, "numFields":I
    mul-int/lit8 p2, v1, 0x7

    sub-int v5, p2, v0

    .line 1236
    .local v5, "paddingBits":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    .end local p0    # "data":[B
    .end local p1    # "offset":I
    .local v2, "data":[B
    .local v3, "offset":I
    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object p0

    .line 1238
    .local p0, "result":Ljava/lang/String;
    if-eqz p0, :cond_17

    .line 1241
    return-object p0

    .line 1239
    :cond_17
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string p2, "7bit GSM decoding failed"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 13
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1554
    const/16 v0, 0x8

    .line 1555
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    mul-int/2addr v2, v1

    .line 1556
    .local v2, "paramBits":I
    if-ge v2, v1, :cond_10

    .line 1557
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1558
    const/4 v1, 0x0

    return v1

    .line 1560
    :cond_10
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1561
    .local v3, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1562
    const/4 v5, 0x4

    .line 1563
    .local v5, "fieldBits":B
    const/4 v6, 0x1

    .line 1564
    .local v6, "consumedBits":B
    iget v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v7, v4, :cond_35

    .line 1565
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1566
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1567
    const/16 v5, 0x8

    .line 1568
    add-int/lit8 v7, v6, 0x7

    int-to-byte v6, v7

    .line 1570
    :cond_35
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1571
    add-int/lit8 v1, v6, 0x8

    int-to-byte v1, v1

    .line 1572
    .end local v6    # "consumedBits":B
    .local v1, "consumedBits":B
    sub-int v6, v2, v1

    .line 1573
    .local v6, "remainingBits":I
    iget v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v7, v5

    .line 1574
    .local v7, "dataBits":I
    sub-int v8, v6, v7

    .line 1575
    .local v8, "paddingBits":I
    if-lt v6, v7, :cond_56

    .line 1580
    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1581
    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1582
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1583
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1584
    return v4

    .line 1576
    :cond_56
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CALLBACK_NUMBER subparam encoding size error (remainingBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dataBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", paddingBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static blacklist decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;
    .registers 10
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

    .line 1173
    if-ltz p2, :cond_8

    mul-int v0, p2, p3

    add-int/2addr v0, p1

    array-length v1, p0

    if-le v0, v1, :cond_4c

    .line 1175
    :cond_8
    rem-int v0, p1, p3

    .line 1176
    .local v0, "padding":I
    array-length v1, p0

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    div-int/2addr v1, p3

    .line 1177
    .local v1, "maxNumFields":I
    if-ltz v1, :cond_72

    .line 1180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " decode error: offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numFields = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxNumFields = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    move p2, v1

    .line 1186
    .end local v0    # "padding":I
    .end local v1    # "maxNumFields":I
    :cond_4c
    :try_start_4c
    new-instance v0, Ljava/lang/String;

    mul-int v1, p2, p3

    invoke-direct {v0, p0, p1, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_53
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_53} :catch_54

    return-object v0

    .line 1187
    :catch_54
    move-exception v0

    .line 1188
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1178
    .local v0, "padding":I
    .restart local v1    # "maxNumFields":I
    :cond_72
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " decode failed: offset out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V
    .registers 19
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "serviceCategory"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1955
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1956
    .local v1, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_d3

    .line 1959
    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 1960
    .local v2, "protocolVersion":I
    if-nez v2, :cond_b9

    .line 1964
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryToCmasMessageClass(I)I

    move-result v5

    .line 1965
    .local v5, "messageClass":I
    const/4 v4, -0x1

    .line 1966
    .local v4, "category":I
    const/4 v6, -0x1

    .line 1967
    .local v6, "responseType":I
    const/4 v7, -0x1

    .line 1968
    .local v7, "severity":I
    const/4 v8, -0x1

    .line 1969
    .local v8, "urgency":I
    const/4 v9, -0x1

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v4

    .line 1971
    .end local v4    # "category":I
    .local v6, "category":I
    .local v7, "responseType":I
    .local v8, "severity":I
    .local v9, "urgency":I
    .local v10, "certainty":I
    :goto_27
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    const/16 v11, 0x10

    if-lt v4, v11, :cond_b1

    .line 1972
    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 1973
    .local v4, "recordType":I
    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 1974
    .local v11, "recordLen":I
    packed-switch v4, :pswitch_data_dc

    .line 2018
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skipping unsupported CMAS record type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "BearerData"

    invoke-static {v13, v12}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    mul-int/lit8 v12, v11, 0x8

    invoke-virtual {v1, v12}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto :goto_af

    .line 2009
    :pswitch_59
    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 2010
    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 2011
    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 2012
    invoke-virtual {v1, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .line 2013
    invoke-virtual {v1, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 2014
    mul-int/lit8 v12, v11, 0x8

    add-int/lit8 v12, v12, -0x1c

    invoke-virtual {v1, v12}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2015
    goto :goto_af

    .line 1976
    :pswitch_76
    new-instance v12, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v12}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1977
    .local v12, "alertUserData":Lcom/android/internal/telephony/cdma/sms/UserData;
    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    iput v14, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1978
    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1979
    const/4 v14, 0x0

    iput v14, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1982
    iget v15, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v15, :pswitch_data_e4

    .line 1999
    :pswitch_8d
    const/4 v15, 0x0

    .local v15, "numFields":I
    goto :goto_9d

    .line 1995
    .end local v15    # "numFields":I
    :pswitch_8f
    add-int/lit8 v15, v11, -0x1

    div-int/lit8 v15, v15, 0x2

    .line 1996
    .restart local v15    # "numFields":I
    goto :goto_9d

    .line 1991
    .end local v15    # "numFields":I
    :pswitch_94
    mul-int/lit8 v15, v11, 0x8

    sub-int/2addr v15, v13

    div-int/lit8 v15, v15, 0x7

    .line 1992
    .restart local v15    # "numFields":I
    goto :goto_9d

    .line 1985
    .end local v15    # "numFields":I
    :pswitch_9a
    add-int/lit8 v15, v11, -0x1

    .line 1986
    .restart local v15    # "numFields":I
    nop

    .line 2002
    :goto_9d
    iput v15, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2003
    mul-int/lit8 v16, v11, 0x8

    add-int/lit8 v13, v16, -0x5

    invoke-virtual {v1, v13}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v13

    iput-object v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2004
    invoke-static {v12, v14}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 2005
    iput-object v12, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 2006
    nop

    .line 2022
    .end local v4    # "recordType":I
    .end local v11    # "recordLen":I
    .end local v12    # "alertUserData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v15    # "numFields":I
    :goto_af
    goto/16 :goto_27

    .line 2024
    :cond_b1
    new-instance v4, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v4 .. v10}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 2026
    return-void

    .line 1961
    .end local v5    # "messageClass":I
    .end local v6    # "category":I
    .end local v7    # "responseType":I
    .end local v8    # "severity":I
    .end local v9    # "urgency":I
    .end local v10    # "certainty":I
    :cond_b9
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported CMAE_protocol_version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1957
    .end local v2    # "protocolVersion":I
    :cond_d3
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "emergency CB with no CMAE_protocol_version"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_76
        :pswitch_59
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_8d
        :pswitch_94
        :pswitch_94
        :pswitch_8f
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_9a
        :pswitch_94
    .end packed-switch
.end method

.method private static blacklist decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1648
    const/16 v0, 0x30

    .line 1649
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1650
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1651
    .local v3, "paramBits":I
    const/16 v2, 0x30

    if-lt v3, v2, :cond_1c

    .line 1652
    add-int/lit8 v3, v3, -0x30

    .line 1653
    const/4 v1, 0x1

    .line 1654
    nop

    .line 1655
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    .line 1654
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1657
    :cond_1c
    if-eqz v1, :cond_20

    if-lez v3, :cond_50

    .line 1658
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFERRED_DELIVERY_TIME_ABSOLUTE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1659
    if-eqz v1, :cond_31

    const-string/jumbo v4, "succeeded"

    goto :goto_33

    :cond_31
    const-string v4, "failed"

    :goto_33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1658
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :cond_50
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1663
    return v1
.end method

.method private static blacklist decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1688
    const/16 v0, 0x8

    .line 1689
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1690
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1691
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_15

    .line 1692
    add-int/lit8 v3, v3, -0x8

    .line 1693
    const/4 v1, 0x1

    .line 1694
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    .line 1696
    :cond_15
    if-eqz v1, :cond_19

    if-lez v3, :cond_49

    .line 1697
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFERRED_DELIVERY_TIME_RELATIVE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1698
    if-eqz v1, :cond_2a

    const-string/jumbo v4, "succeeded"

    goto :goto_2c

    :cond_2a
    const-string v4, "failed"

    :goto_2c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1697
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_49
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1702
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 1703
    return v1
.end method

.method private static blacklist decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1503
    const/16 v0, 0x10

    .line 1504
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1505
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1506
    .local v3, "paramBits":I
    const/16 v4, 0x10

    if-lt v3, v4, :cond_1d

    .line 1507
    add-int/lit8 v3, v3, -0x10

    .line 1508
    const/4 v1, 0x1

    .line 1509
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/2addr v4, v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    .line 1511
    :cond_1d
    if-eqz v1, :cond_21

    if-lez v3, :cond_51

    .line 1512
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_DEPOSIT_INDEX decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1513
    if-eqz v1, :cond_32

    const-string/jumbo v4, "succeeded"

    goto :goto_34

    :cond_32
    const-string v4, "failed"

    :goto_34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1512
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_51
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1517
    return v1
.end method

.method private static blacklist decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1749
    const/16 v0, 0x8

    .line 1750
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1751
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1752
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_1a

    .line 1753
    add-int/lit8 v3, v3, -0x8

    .line 1754
    const/4 v1, 0x1

    .line 1755
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 1756
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1758
    :cond_1a
    if-eqz v1, :cond_1e

    if-lez v3, :cond_4e

    .line 1759
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DISPLAY_MODE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1760
    if-eqz v1, :cond_2f

    const-string/jumbo v4, "succeeded"

    goto :goto_31

    :cond_2f
    const-string v4, "failed"

    :goto_31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1759
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_4e
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1764
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 1765
    return v1
.end method

.method private static blacklist decodeDtmfSmsAddress([BI)Ljava/lang/String;
    .registers 8
    .param p0, "rawData"    # [B
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1525
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1526
    .local v0, "strBuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, p1, :cond_63

    .line 1527
    div-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    rem-int/lit8 v3, v1, 0x2

    mul-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v3, v3, 0x4

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    .line 1528
    .local v2, "val":I
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-lt v2, v4, :cond_26

    const/16 v4, 0x9

    if-gt v2, v4, :cond_26

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 1529
    :cond_26
    if-ne v2, v3, :cond_2e

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 1530
    :cond_2e
    const/16 v3, 0xb

    if-ne v2, v3, :cond_38

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 1531
    :cond_38
    const/16 v3, 0xc

    if-ne v2, v3, :cond_44

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1526
    .end local v2    # "val":I
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1532
    .restart local v2    # "val":I
    :cond_44
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid SMS address DTMF code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1534
    .end local v1    # "i":I
    .end local v2    # "val":I
    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist decodeGsmDcs([BIII)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .param p3, "msgType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1259
    and-int/lit16 v0, p3, 0xc0

    const-string v1, ")"

    if-nez v0, :cond_3a

    .line 1264
    shr-int/lit8 v0, p3, 0x2

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_58

    .line 1272
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported user msgType encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1270
    :pswitch_2b
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1268
    :pswitch_30
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1266
    :pswitch_35
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1260
    :cond_3a
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported coding group ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_35
        :pswitch_30
        :pswitch_2b
    .end packed-switch
.end method

.method private static blacklist decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .registers 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1442
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    packed-switch v0, :pswitch_data_38

    .line 1454
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported IS-91 message type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :pswitch_2b
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1448
    goto :goto_37

    .line 1451
    :pswitch_2f
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1452
    goto :goto_37

    .line 1444
    :pswitch_33
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1445
    nop

    .line 1457
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x82
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_2f
    .end packed-switch
.end method

.method private static blacklist decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .registers 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1425
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1426
    .local v0, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 1427
    .local v1, "dataLen":I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1428
    .local v2, "numFields":I
    const/16 v3, 0xe

    if-gt v1, v3, :cond_33

    const/4 v3, 0x3

    if-lt v1, v3, :cond_33

    if-lt v1, v2, :cond_33

    .line 1431
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1432
    .local v3, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1433
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1434
    int-to-byte v4, v2

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1435
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1436
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1437
    return-void

    .line 1429
    .end local v3    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_33
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v4, "IS-91 voicemail status decoding failed"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .registers 9
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1402
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1403
    .local v0, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    const/4 v2, 0x6

    div-int/2addr v1, v2

    .line 1404
    .local v1, "dataLen":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1406
    .local v3, "numFields":I
    const/16 v4, 0xe

    if-gt v3, v4, :cond_38

    if-lt v1, v3, :cond_38

    .line 1409
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1410
    .local v4, "strbuf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    if-ge v5, v3, :cond_2f

    .line 1411
    sget-object v6, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    aget-char v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1410
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 1413
    .end local v5    # "i":I
    :cond_2f
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1414
    return-void

    .line 1407
    .end local v4    # "strbuf":Ljava/lang/StringBuffer;
    :cond_38
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v4, "IS-91 short message decoding failed"

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .registers 12
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1359
    const-string v0, "IS-91 voicemail status decoding failed: "

    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1360
    .local v1, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v2

    const/4 v3, 0x6

    div-int/2addr v2, v3

    .line 1361
    .local v2, "dataLen":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1362
    .local v4, "numFields":I
    const/16 v5, 0xe

    if-gt v2, v5, :cond_b4

    const/4 v5, 0x3

    if-lt v2, v5, :cond_b4

    if-lt v2, v4, :cond_b4

    .line 1366
    :try_start_1e
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1367
    .local v6, "strbuf":Ljava/lang/StringBuffer;
    :goto_23
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-lt v7, v3, :cond_35

    .line 1368
    sget-object v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_23

    .line 1370
    :cond_35
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1371
    .local v3, "data":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1372
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1373
    .local v9, "prioCode":C
    const/16 v10, 0x20

    if-ne v9, v10, :cond_50

    .line 1374
    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    goto :goto_56

    .line 1375
    :cond_50
    const/16 v7, 0x21

    if-ne v9, v7, :cond_65

    .line 1376
    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1381
    :goto_56
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1382
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    add-int/lit8 v8, v4, -0x3

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1387
    .end local v3    # "data":Ljava/lang/String;
    .end local v6    # "strbuf":Ljava/lang/StringBuffer;
    .end local v9    # "prioCode":C
    nop

    .line 1388
    return-void

    .line 1378
    .restart local v3    # "data":Ljava/lang/String;
    .restart local v6    # "strbuf":Ljava/lang/StringBuffer;
    .restart local v9    # "prioCode":C
    :cond_65
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IS-91 voicemail status decoding failed: illegal priority setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local v1    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v2    # "dataLen":I
    .end local v4    # "numFields":I
    .end local p0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    throw v5
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_84} :catch_9c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_84} :catch_84

    .line 1385
    .end local v3    # "data":Ljava/lang/String;
    .end local v6    # "strbuf":Ljava/lang/StringBuffer;
    .end local v9    # "prioCode":C
    .restart local v1    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v2    # "dataLen":I
    .restart local v4    # "numFields":I
    .restart local p0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    :catch_84
    move-exception v3

    .line 1386
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1383
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_9c
    move-exception v3

    .line 1384
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1363
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_b4
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "IS-91 voicemail status decoding failed"

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1729
    const/16 v0, 0x8

    .line 1730
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1731
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1732
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_15

    .line 1733
    add-int/lit8 v3, v3, -0x8

    .line 1734
    const/4 v1, 0x1

    .line 1735
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 1737
    :cond_15
    if-eqz v1, :cond_19

    if-lez v3, :cond_49

    .line 1738
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LANGUAGE_INDICATOR decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1739
    if-eqz v1, :cond_2a

    const-string/jumbo v4, "succeeded"

    goto :goto_2c

    :cond_2a
    const-string v4, "failed"

    :goto_2c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1738
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_49
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1743
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 1744
    return v1
.end method

.method private static blacklist decodeLatin([BII)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1247
    const/4 v0, 0x1

    const-string v1, "ISO-8859-1"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1092
    const/16 v0, 0x18

    .line 1093
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1094
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1095
    .local v3, "paramBits":I
    const/16 v4, 0x18

    if-lt v3, v4, :cond_37

    .line 1096
    add-int/lit8 v3, v3, -0x18

    .line 1097
    const/4 v1, 0x1

    .line 1098
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1099
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1100
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1101
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_30

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1102
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1104
    :cond_37
    if-eqz v1, :cond_3b

    if-lez v3, :cond_6b

    .line 1105
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_IDENTIFIER decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1106
    if-eqz v1, :cond_4c

    const-string/jumbo v4, "succeeded"

    goto :goto_4e

    :cond_4c
    const-string v4, "failed"

    :goto_4e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1105
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_6b
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1110
    return v1
.end method

.method private static blacklist decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1610
    const/16 v0, 0x30

    .line 1611
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1612
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1613
    .local v3, "paramBits":I
    const/16 v2, 0x30

    if-lt v3, v2, :cond_1b

    .line 1614
    add-int/lit8 v3, v3, -0x30

    .line 1615
    const/4 v1, 0x1

    .line 1616
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1618
    :cond_1b
    if-eqz v1, :cond_1f

    if-lez v3, :cond_4f

    .line 1619
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_CENTER_TIME_STAMP decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1620
    if-eqz v1, :cond_30

    const-string/jumbo v4, "succeeded"

    goto :goto_32

    :cond_30
    const-string v4, "failed"

    :goto_32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1619
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_4f
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1624
    return v1
.end method

.method private static blacklist decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1484
    const/16 v0, 0x8

    .line 1485
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1486
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1487
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_1a

    .line 1488
    add-int/lit8 v3, v3, -0x8

    .line 1489
    const/4 v1, 0x1

    .line 1490
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1492
    :cond_1a
    if-eqz v1, :cond_1e

    if-lez v3, :cond_4e

    .line 1493
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_OF_MESSAGES decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1494
    if-eqz v1, :cond_2f

    const-string/jumbo v4, "succeeded"

    goto :goto_31

    :cond_2f
    const-string v4, "failed"

    :goto_31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1493
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_4e
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1498
    return v1
.end method

.method private static blacklist decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1791
    const/16 v0, 0x8

    .line 1792
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1793
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1794
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_1a

    .line 1795
    add-int/lit8 v3, v3, -0x8

    .line 1796
    const/4 v1, 0x1

    .line 1797
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 1798
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1800
    :cond_1a
    if-eqz v1, :cond_1e

    if-lez v3, :cond_4e

    .line 1801
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALERT_ON_MESSAGE_DELIVERY decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1802
    if-eqz v1, :cond_2f

    const-string/jumbo v4, "succeeded"

    goto :goto_31

    :cond_2f
    const-string v4, "failed"

    :goto_31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1801
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_4e
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1806
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 1807
    return v1
.end method

.method private static blacklist decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1589
    const/16 v0, 0x8

    .line 1590
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1591
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1592
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_1d

    .line 1593
    add-int/lit8 v3, v3, -0x8

    .line 1594
    const/4 v1, 0x1

    .line 1595
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 1596
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 1598
    :cond_1d
    if-eqz v1, :cond_21

    if-lez v3, :cond_51

    .line 1599
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_STATUS decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1600
    if-eqz v1, :cond_32

    const-string/jumbo v4, "succeeded"

    goto :goto_34

    :cond_32
    const-string v4, "failed"

    :goto_34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1599
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_51
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1604
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 1605
    return v1
.end method

.method private static blacklist decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1770
    const/16 v0, 0x8

    .line 1771
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1772
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1773
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_1a

    .line 1774
    add-int/lit8 v3, v3, -0x8

    .line 1775
    const/4 v1, 0x1

    .line 1776
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1777
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1779
    :cond_1a
    if-eqz v1, :cond_1e

    if-lez v3, :cond_4e

    .line 1780
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRIORITY_INDICATOR decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1781
    if-eqz v1, :cond_2f

    const-string/jumbo v4, "succeeded"

    goto :goto_31

    :cond_2f
    const-string v4, "failed"

    :goto_31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1780
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_4e
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1785
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1786
    return v1
.end method

.method private static blacklist decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1708
    const/16 v0, 0x8

    .line 1709
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1710
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1711
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_1a

    .line 1712
    add-int/lit8 v3, v3, -0x8

    .line 1713
    const/4 v1, 0x1

    .line 1714
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 1715
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1717
    :cond_1a
    if-eqz v1, :cond_1e

    if-lez v3, :cond_4e

    .line 1718
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRIVACY_INDICATOR decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1719
    if-eqz v1, :cond_2f

    const-string/jumbo v4, "succeeded"

    goto :goto_31

    :cond_2f
    const-string v4, "failed"

    :goto_31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1718
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_4e
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1723
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 1724
    return v1
.end method

.method private static blacklist decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 8
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1461
    const/16 v0, 0x8

    .line 1462
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1463
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1464
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_40

    .line 1465
    add-int/lit8 v3, v3, -0x8

    .line 1466
    const/4 v1, 0x1

    .line 1467
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v2, :cond_19

    move v4, v2

    goto :goto_1a

    :cond_19
    move v4, v5

    :goto_1a
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1468
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_24

    move v4, v2

    goto :goto_25

    :cond_24
    move v4, v5

    :goto_25
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1469
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_2f

    move v4, v2

    goto :goto_30

    :cond_2f
    move v4, v5

    :goto_30
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1470
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_39

    goto :goto_3a

    :cond_39
    move v2, v5

    :goto_3a
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1471
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1473
    :cond_40
    if-eqz v1, :cond_44

    if-lez v3, :cond_74

    .line 1474
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REPLY_OPTION decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1475
    if-eqz v1, :cond_55

    const-string/jumbo v4, "succeeded"

    goto :goto_57

    :cond_55
    const-string v4, "failed"

    :goto_57
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1474
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_74
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1479
    return v1
.end method

.method private static blacklist decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z
    .registers 9
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .param p2, "subparamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, "decodeSuccess":Z
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    .line 1119
    .local v1, "subparamLen":I
    mul-int/lit8 v2, v1, 0x8

    .line 1120
    .local v2, "paramBits":I
    invoke-virtual {p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v3

    if-gt v2, v3, :cond_13

    .line 1121
    const/4 v0, 0x1

    .line 1122
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1124
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESERVED bearer data subparameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1125
    if-eqz v0, :cond_2e

    const-string/jumbo v5, "succeeded"

    goto :goto_30

    :cond_2e
    const-string v5, "failed"

    :goto_30
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (param bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1124
    const-string v5, "BearerData"

    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    if-eqz v0, :cond_50

    .line 1131
    return v0

    .line 1127
    :cond_50
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had invalid SUBPARAM_LEN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 21
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1833
    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    const/16 v2, 0xd

    const-string v3, " bits available"

    const-string v4, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    if-lt v1, v2, :cond_118

    .line 1838
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    mul-int/2addr v2, v1

    .line 1839
    .local v2, "paramBits":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 1840
    .local v5, "msgEncoding":I
    add-int/lit8 v2, v2, -0x5

    .line 1842
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    if-lt v6, v2, :cond_eb

    .line 1847
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    .local v4, "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    const/16 v6, 0x30

    .line 1850
    .local v6, "CATEGORY_FIELD_MIN_SIZE":I
    const/4 v7, 0x0

    .line 1851
    .local v7, "decodeSuccess":Z
    :goto_2a
    const/16 v8, 0x30

    if-lt v2, v8, :cond_ad

    .line 1852
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 1853
    .local v10, "operation":I
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    shl-int/2addr v9, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    or-int/2addr v11, v9

    .line 1854
    .local v11, "category":I
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 1855
    .local v12, "language":I
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    .line 1856
    .local v13, "maxMessages":I
    invoke-virtual {v0, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    .line 1857
    .local v14, "alertOption":I
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 1858
    .local v8, "numFields":I
    add-int/lit8 v2, v2, -0x30

    .line 1860
    invoke-static {v5, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getBitsForNumFields(II)I

    move-result v9

    .line 1861
    .local v9, "textBits":I
    if-lt v2, v9, :cond_83

    .line 1866
    new-instance v15, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v15}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1867
    .local v15, "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput v5, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1868
    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1869
    iput v8, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1870
    invoke-virtual {v0, v9}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v1

    iput-object v1, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1871
    sub-int/2addr v2, v9

    .line 1873
    const/4 v1, 0x0

    invoke-static {v15, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 1874
    move-object v1, v15

    .end local v15    # "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .local v1, "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iget-object v15, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1875
    .local v15, "categoryName":Ljava/lang/String;
    move/from16 v17, v9

    .end local v9    # "textBits":I
    .local v17, "textBits":I
    new-instance v9, Landroid/telephony/cdma/CdmaSmsCbProgramData;

    move/from16 v18, v17

    move-object/from16 v17, v1

    move/from16 v1, v18

    .local v1, "textBits":I
    .local v17, "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-direct/range {v9 .. v15}, Landroid/telephony/cdma/CdmaSmsCbProgramData;-><init>(IIIIILjava/lang/String;)V

    .line 1877
    .local v9, "programData":Landroid/telephony/cdma/CdmaSmsCbProgramData;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1879
    const/4 v7, 0x1

    .line 1880
    .end local v1    # "textBits":I
    .end local v8    # "numFields":I
    .end local v9    # "programData":Landroid/telephony/cdma/CdmaSmsCbProgramData;
    .end local v10    # "operation":I
    .end local v11    # "category":I
    .end local v12    # "language":I
    .end local v13    # "maxMessages":I
    .end local v14    # "alertOption":I
    .end local v15    # "categoryName":Ljava/lang/String;
    .end local v17    # "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    const/16 v1, 0x8

    goto :goto_2a

    .line 1862
    .restart local v8    # "numFields":I
    .local v9, "textBits":I
    .restart local v10    # "operation":I
    .restart local v11    # "category":I
    .restart local v12    # "language":I
    .restart local v13    # "maxMessages":I
    .restart local v14    # "alertOption":I
    :cond_83
    move v1, v9

    .end local v9    # "textBits":I
    .restart local v1    # "textBits":I
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v5

    .end local v5    # "msgEncoding":I
    .local v16, "msgEncoding":I
    const-string v5, "category name is "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " bits in length, but there are only "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1882
    .end local v1    # "textBits":I
    .end local v8    # "numFields":I
    .end local v10    # "operation":I
    .end local v11    # "category":I
    .end local v12    # "language":I
    .end local v13    # "maxMessages":I
    .end local v14    # "alertOption":I
    .end local v16    # "msgEncoding":I
    .restart local v5    # "msgEncoding":I
    :cond_ad
    move/from16 v16, v5

    .end local v5    # "msgEncoding":I
    .restart local v16    # "msgEncoding":I
    if-eqz v7, :cond_b3

    if-lez v2, :cond_e3

    .line 1883
    :cond_b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SERVICE_CATEGORY_PROGRAM_DATA decode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1884
    if-eqz v7, :cond_c4

    const-string/jumbo v3, "succeeded"

    goto :goto_c6

    :cond_c4
    const-string v3, "failed"

    :goto_c6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (extra bits = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1883
    const-string v3, "BearerData"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_e3
    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1889
    move-object/from16 v1, p0

    iput-object v4, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    .line 1890
    return v7

    .line 1843
    .end local v4    # "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    .end local v6    # "CATEGORY_FIELD_MIN_SIZE":I
    .end local v7    # "decodeSuccess":Z
    .end local v16    # "msgEncoding":I
    .restart local v5    # "msgEncoding":I
    :cond_eb
    move/from16 v16, v5

    .end local v5    # "msgEncoding":I
    .restart local v16    # "msgEncoding":I
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1844
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bits available ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bits expected)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1834
    .end local v2    # "paramBits":I
    .end local v16    # "msgEncoding":I
    :cond_118
    move-object/from16 v1, p0

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1835
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist decodeShiftJis([BII)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1253
    const/4 v0, 0x1

    const-string v1, "Shift_JIS"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .registers 6
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1538
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 1542
    :try_start_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v2, v2

    const-string v3, "US-ASCII"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_14} :catch_15

    .line 1545
    goto :goto_28

    .line 1543
    :catch_15
    move-exception v0

    .line 1544
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v2, "invalid SMS address ASCII code"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1547
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDtmfSmsAddress([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 1549
    :goto_28
    return-void
.end method

.method private static blacklist decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 8
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1137
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1138
    .local v1, "paramBits":I
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1139
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1140
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1141
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1142
    const/4 v2, 0x5

    .line 1143
    .local v2, "consumedBits":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v3, :cond_30

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3a

    .line 1145
    :cond_30
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1146
    add-int/lit8 v2, v2, 0x8

    .line 1148
    :cond_3a
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1149
    add-int/2addr v2, v0

    .line 1150
    sub-int v0, v1, v2

    .line 1151
    .local v0, "dataBits":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1152
    return v3
.end method

.method private static greylist decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    .registers 8
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "hasUserDataHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1281
    const/4 v0, 0x0

    .line 1282
    .local v0, "offset":I
    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    .line 1283
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    .line 1284
    .local v2, "udhLen":I
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v3

    .line 1285
    new-array v3, v2, [B

    .line 1286
    .local v3, "headerData":[B
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v5, 0x1

    invoke-static {v4, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1287
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1289
    .end local v2    # "udhLen":I
    .end local v3    # "headerData":[B
    :cond_1b
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v2, :pswitch_data_c4

    .line 1337
    :pswitch_20
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported user data encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1333
    :pswitch_42
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeGsmDcs([BIII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1335
    goto/16 :goto_c2

    .line 1324
    :pswitch_50
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1325
    goto :goto_c2

    .line 1327
    :pswitch_5b
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1328
    goto :goto_c2

    .line 1330
    :pswitch_66
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeShiftJis([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1331
    goto :goto_c2

    .line 1321
    :pswitch_71
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1322
    goto :goto_c2

    .line 1318
    :pswitch_7c
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1319
    goto :goto_c2

    .line 1294
    :pswitch_87
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1295
    const v3, 0x1110251

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1300
    .local v2, "decodingtypeUTF8":Z
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v3, v3, [B

    .line 1301
    .local v3, "payload":[B
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v5

    if-ge v4, v5, :cond_a0

    .line 1302
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_a3

    :cond_a0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    .line 1304
    .local v4, "copyLen":I
    :goto_a3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v5, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1305
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1307
    if-nez v2, :cond_b7

    .line 1310
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_c2

    .line 1312
    :cond_b7
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1314
    nop

    .line 1340
    .end local v2    # "decodingtypeUTF8":Z
    .end local v3    # "payload":[B
    .end local v4    # "copyLen":I
    :goto_c2
    return-void

    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_87
        :pswitch_20
        :pswitch_7c
        :pswitch_7c
        :pswitch_71
        :pswitch_66
        :pswitch_20
        :pswitch_20
        :pswitch_5b
        :pswitch_50
        :pswitch_42
    .end packed-switch
.end method

.method private static blacklist decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1812
    const/16 v0, 0x8

    .line 1813
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1814
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1815
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_15

    .line 1816
    add-int/lit8 v3, v3, -0x8

    .line 1817
    const/4 v1, 0x1

    .line 1818
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCode:I

    .line 1820
    :cond_15
    if-eqz v1, :cond_19

    if-lez v3, :cond_49

    .line 1821
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_RESPONSE_CODE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1822
    if-eqz v1, :cond_2a

    const-string/jumbo v4, "succeeded"

    goto :goto_2c

    :cond_2a
    const-string v4, "failed"

    :goto_2c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1821
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_49
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1826
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 1827
    return v1
.end method

.method private static blacklist decodeUtf16([BII)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1165
    rem-int/lit8 v0, p1, 0x2

    .line 1166
    .local v0, "padding":I
    add-int v1, p1, v0

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int/2addr p2, v1

    .line 1167
    const-string/jumbo v1, "utf-16be"

    invoke-static {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist decodeUtf8([BII)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1158
    const/4 v0, 0x1

    const-string v1, "UTF-8"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1629
    const/16 v0, 0x30

    .line 1630
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1631
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1632
    .local v3, "paramBits":I
    const/16 v2, 0x30

    if-lt v3, v2, :cond_1b

    .line 1633
    add-int/lit8 v3, v3, -0x30

    .line 1634
    const/4 v1, 0x1

    .line 1635
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1637
    :cond_1b
    if-eqz v1, :cond_1f

    if-lez v3, :cond_4f

    .line 1638
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VALIDITY_PERIOD_ABSOLUTE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1639
    if-eqz v1, :cond_30

    const-string/jumbo v4, "succeeded"

    goto :goto_32

    :cond_30
    const-string v4, "failed"

    :goto_32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1638
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_4f
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1643
    return v1
.end method

.method private static blacklist decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1668
    const/16 v0, 0x8

    .line 1669
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1670
    .local v1, "decodeSuccess":Z
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    .line 1671
    .local v3, "paramBits":I
    if-lt v3, v2, :cond_15

    .line 1672
    add-int/lit8 v3, v3, -0x8

    .line 1673
    const/4 v1, 0x1

    .line 1674
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    .line 1676
    :cond_15
    if-eqz v1, :cond_19

    if-lez v3, :cond_49

    .line 1677
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VALIDITY_PERIOD_RELATIVE decode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1678
    if-eqz v1, :cond_2a

    const-string/jumbo v4, "succeeded"

    goto :goto_2c

    :cond_2a
    const-string v4, "failed"

    :goto_2c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (extra bits = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1677
    const-string v4, "BearerData"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_49
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1682
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    .line 1683
    return v1
.end method

.method public static greylist encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B
    .registers 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 1023
    const-string v0, "BearerData encode failed: "

    const-string v1, "BearerData"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v2, :cond_12

    move v2, v3

    goto :goto_13

    :cond_12
    move v2, v4

    :goto_13
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1026
    :try_start_15
    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v5, 0xc8

    invoke-direct {v2, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1027
    .local v2, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v5, 0x8

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1028
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1029
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v4, :cond_2e

    .line 1030
    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1031
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1033
    :cond_2e
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v3, :cond_3a

    .line 1034
    const/16 v3, 0xe

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1035
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1037
    :cond_3a
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-nez v3, :cond_4a

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v3, :cond_4a

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-nez v3, :cond_4a

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v3, :cond_52

    .line 1038
    :cond_4a
    const/16 v3, 0xa

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1039
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1041
    :cond_52
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v3, :cond_5e

    .line 1042
    const/16 v3, 0xb

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1043
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1045
    :cond_5e
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v3, :cond_69

    .line 1046
    const/4 v3, 0x5

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1047
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1049
    :cond_69
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v3, :cond_75

    .line 1050
    const/16 v3, 0x9

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1051
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1053
    :cond_75
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v3, :cond_81

    .line 1054
    const/16 v3, 0xd

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1055
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1057
    :cond_81
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v3, :cond_8d

    .line 1058
    const/16 v3, 0xf

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1059
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1061
    :cond_8d
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v3, :cond_97

    .line 1062
    invoke-virtual {v2, v5, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1063
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1065
    :cond_97
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v3, :cond_a3

    .line 1066
    const/16 v3, 0xc

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1067
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1069
    :cond_a3
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v3, :cond_af

    .line 1070
    const/16 v3, 0x14

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1071
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1073
    :cond_af
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    if-eqz v3, :cond_bb

    .line 1074
    const/16 v3, 0x13

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1075
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1077
    :cond_bb
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v3, :cond_c6

    .line 1078
    const/4 v3, 0x3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1079
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1081
    :cond_c6
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_ca
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_15 .. :try_end_ca} :catch_e1
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_15 .. :try_end_ca} :catch_cb

    return-object v0

    .line 1084
    .end local v2    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_cb
    move-exception v2

    .line 1085
    .local v2, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 1082
    .end local v2    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :catch_e1
    move-exception v2

    .line 1083
    .local v2, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    .end local v2    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    nop

    .line 1087
    :goto_f7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .registers 10
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 672
    .local v0, "payload":[B
    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 673
    .local v1, "udhBytes":I
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    .line 674
    .local v3, "udhCodeUnits":I
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 675
    .local v4, "payloadCodeUnits":I
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 676
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 677
    add-int v5, v3, v4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 678
    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 679
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    int-to-byte v6, v6

    const/4 v7, 0x0

    aput-byte v6, v5, v7

    .line 680
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    invoke-static {p1, v7, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v0

    invoke-static {v0, v7, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 682
    return-void
.end method

.method private static greylist encode7bitAscii(Ljava/lang/String;Z)[B
    .registers 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 588
    :try_start_0
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 589
    .local v0, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 590
    .local v1, "msgLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_4f

    .line 591
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 592
    .local v3, "charCode":I
    const/4 v4, 0x7

    if-ne v3, v5, :cond_49

    .line 593
    if-eqz p1, :cond_26

    .line 594
    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_4c

    .line 596
    :cond_26
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot ASCII encode ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "msg":Ljava/lang/String;
    .end local p1    # "force":Z
    throw v4

    .line 599
    .restart local p0    # "msg":Ljava/lang/String;
    .restart local p1    # "force":Z
    :cond_49
    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 590
    .end local v3    # "charCode":I
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 602
    .end local v2    # "i":I
    :cond_4f
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_53
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_53} :catch_54

    return-object v2

    .line 603
    .end local v0    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    .end local v1    # "msgLen":I
    :catch_54
    move-exception v0

    .line 604
    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit ASCII encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .registers 16
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 688
    :try_start_0
    const-string v0, "BearerData"

    const-string v1, "encode7bitAsciiEms"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 690
    .local v0, "udhBytes":I
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    const/4 v3, 0x7

    div-int/2addr v2, v3

    .line 691
    .local v2, "udhSeptets":I
    mul-int/lit8 v4, v2, 0x7

    mul-int/lit8 v5, v0, 0x8

    sub-int/2addr v4, v5

    .line 692
    .local v4, "paddingBits":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 694
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 695
    .local v6, "msgLen":I
    new-instance v7, Lcom/android/internal/util/BitwiseOutputStream;

    .line 696
    const/4 v8, 0x0

    if-lez v4, :cond_22

    move v9, v1

    goto :goto_23

    :cond_22
    move v9, v8

    :goto_23
    add-int/2addr v9, v6

    invoke-direct {v7, v9}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 697
    .local v7, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {v7, v4, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 698
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2b
    if-ge v9, v6, :cond_6b

    .line 699
    sget-object v10, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 700
    .local v10, "charCode":I
    if-ne v10, v12, :cond_65

    .line 701
    if-eqz p2, :cond_42

    .line 702
    const/16 v11, 0x20

    invoke-virtual {v7, v3, v11}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_68

    .line 704
    :cond_42
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot ASCII encode ("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local p1    # "udhData":[B
    .end local p2    # "force":Z
    throw v1

    .line 707
    .restart local p0    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local p1    # "udhData":[B
    .restart local p2    # "force":Z
    :cond_65
    invoke-virtual {v7, v3, v10}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 698
    .end local v10    # "charCode":I
    :goto_68
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    .line 710
    .end local v9    # "i":I
    :cond_6b
    invoke-virtual {v7}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v3

    .line 711
    .local v3, "payload":[B
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 712
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 713
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v2

    iput v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 714
    array-length v9, v3

    add-int/2addr v9, v0

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 715
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v10, p1

    int-to-byte v10, v10

    aput-byte v10, v9, v8

    .line 716
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v10, p1

    invoke-static {p1, v8, v9, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 717
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v9, v3

    invoke-static {v3, v8, v1, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_95
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_95} :catch_97

    .line 720
    .end local v0    # "udhBytes":I
    .end local v2    # "udhSeptets":I
    .end local v3    # "payload":[B
    .end local v4    # "paddingBits":I
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "msgLen":I
    .end local v7    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    nop

    .line 721
    return-void

    .line 718
    :catch_97
    move-exception v0

    .line 719
    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit ASCII encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .registers 10
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 657
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 658
    .local v0, "udhBytes":I
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x7

    .line 659
    .local v2, "udhSeptets":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v3

    .line 660
    .local v3, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    const/16 v4, 0x9

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 661
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 662
    iget v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 663
    iget-object v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 664
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    .line 665
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    invoke-static {p1, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    return-void
.end method

.method private static blacklist encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .registers 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "septetOffset"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 643
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    :try_start_7
    invoke-static {p0, p1, v2, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v2

    .line 644
    .local v2, "fullData":[B
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData-IA;)V

    .line 645
    .local v3, "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v4, v2

    sub-int/2addr v4, v0

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 646
    iget-object v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    array-length v5, v2

    sub-int/2addr v5, v0

    invoke-static {v2, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_24
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7 .. :try_end_24} :catch_25

    .line 648
    return-object v3

    .line 649
    .end local v2    # "fullData":[B
    .end local v3    # "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :catch_25
    move-exception v0

    .line 650
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit GSM encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 12
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 908
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 909
    const/16 v1, 0x9

    .line 910
    .local v1, "paramBits":I
    const/4 v2, 0x0

    .line 911
    .local v2, "dataBits":I
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v3, v6, :cond_16

    .line 912
    add-int/lit8 v1, v1, 0x7

    .line 913
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v3, v5

    .end local v2    # "dataBits":I
    .local v3, "dataBits":I
    goto :goto_19

    .line 915
    .end local v3    # "dataBits":I
    .restart local v2    # "dataBits":I
    :cond_16
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v3, v4

    .line 917
    .end local v2    # "dataBits":I
    .restart local v3    # "dataBits":I
    :goto_19
    add-int/2addr v1, v3

    .line 918
    div-int/lit8 v2, v1, 0x8

    rem-int/lit8 v7, v1, 0x8

    const/4 v8, 0x0

    if-lez v7, :cond_23

    move v7, v6

    goto :goto_24

    :cond_23
    move v7, v8

    :goto_24
    add-int/2addr v2, v7

    .line 919
    .local v2, "paramBytes":I
    mul-int/lit8 v7, v2, 0x8

    sub-int/2addr v7, v1

    .line 920
    .local v7, "paddingBits":I
    invoke-virtual {p1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 921
    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v6, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 922
    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v9, v6, :cond_3f

    .line 923
    const/4 v6, 0x3

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v6, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 924
    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v4, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 926
    :cond_3f
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 927
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 928
    if-lez v7, :cond_4e

    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 929
    :cond_4e
    return-void
.end method

.method private static blacklist encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .registers 4
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 893
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 895
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_f} :catch_10

    .line 898
    goto :goto_21

    .line 896
    :catch_10
    move-exception v0

    .line 897
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v2, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 900
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 902
    :goto_21
    return-void
.end method

.method private static blacklist encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 971
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 972
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 973
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 974
    return-void
.end method

.method private static blacklist encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .registers 11
    .param p0, "address"    # Ljava/lang/String;

    .line 868
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 869
    .local v0, "digits":I
    mul-int/lit8 v1, v0, 0x4

    .line 870
    .local v1, "dataBits":I
    div-int/lit8 v2, v1, 0x8

    .line 871
    .local v2, "dataBytes":I
    rem-int/lit8 v3, v1, 0x8

    if-lez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    add-int/2addr v2, v3

    .line 872
    new-array v3, v2, [B

    .line 873
    .local v3, "rawData":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v0, :cond_4e

    .line 874
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 875
    .local v5, "c":C
    const/4 v6, 0x0

    .line 876
    .local v6, "val":I
    const/16 v7, 0x31

    if-lt v5, v7, :cond_25

    const/16 v7, 0x39

    if-gt v5, v7, :cond_25

    add-int/lit8 v6, v5, -0x30

    goto :goto_39

    .line 877
    :cond_25
    const/16 v7, 0x30

    if-ne v5, v7, :cond_2c

    const/16 v6, 0xa

    goto :goto_39

    .line 878
    :cond_2c
    const/16 v7, 0x2a

    if-ne v5, v7, :cond_33

    const/16 v6, 0xb

    goto :goto_39

    .line 879
    :cond_33
    const/16 v7, 0x23

    if-ne v5, v7, :cond_4c

    const/16 v6, 0xc

    .line 881
    :goto_39
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v3, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 873
    .end local v5    # "c":C
    .end local v6    # "val":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 880
    .restart local v5    # "c":C
    .restart local v6    # "val":I
    :cond_4c
    const/4 v7, 0x0

    return-object v7

    .line 883
    .end local v4    # "i":I
    .end local v5    # "c":C
    .end local v6    # "val":I
    :cond_4e
    return-object v3
.end method

.method private static blacklist encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .registers 5
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .line 727
    .local v0, "headerData":[B
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v1, :cond_49

    .line 728
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-ne v1, v2, :cond_15

    .line 729
    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_52

    .line 730
    :cond_15
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1e

    .line 731
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_52

    .line 732
    :cond_1e
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 733
    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_52

    .line 735
    :cond_27
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported EMS user data encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 740
    :cond_49
    const/4 v1, 0x0

    :try_start_4a
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_4d
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 743
    goto :goto_52

    .line 741
    :catch_4e
    move-exception v1

    .line 742
    .local v1, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    .line 745
    .end local v1    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :goto_52
    return-void
.end method

.method private static blacklist encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 964
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 965
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 966
    return-void
.end method

.method private static blacklist encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 523
    const/16 v0, 0x8

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 524
    const/4 v2, 0x4

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 525
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    shr-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 526
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 527
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 528
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 529
    return-void
.end method

.method private static blacklist encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1009
    const/16 v0, 0x8

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 1011
    return-void
.end method

.method private static blacklist encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 942
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 943
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 944
    return-void
.end method

.method private static blacklist encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 987
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 988
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 989
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 990
    return-void
.end method

.method private static blacklist encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 934
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 935
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 936
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 937
    return-void
.end method

.method private static blacklist encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 979
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 980
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 981
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 982
    return-void
.end method

.method private static blacklist encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 956
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 957
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 958
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 959
    return-void
.end method

.method private static blacklist encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 859
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 860
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 861
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 862
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 863
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 864
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 865
    return-void
.end method

.method private static blacklist encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 9
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 996
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 997
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/cdma/CdmaSmsCbProgramResults;

    .line 998
    .local v4, "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategory()I

    move-result v5

    .line 999
    .local v5, "category":I
    shr-int/lit8 v6, v5, 0x8

    invoke-virtual {p1, v3, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1000
    invoke-virtual {p1, v3, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1001
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getLanguage()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1002
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategoryResult()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1003
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1004
    .end local v4    # "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    .end local v5    # "category":I
    goto :goto_11

    .line 1005
    :cond_3b
    return-void
.end method

.method private static blacklist encodeShiftJis(Ljava/lang/String;)[B
    .registers 5
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 749
    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 750
    :catch_7
    move-exception v0

    .line 751
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shift-JIS encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 12
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    const/16 v3, 0x8c

    if-gt v0, v3, :cond_96

    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-ne v0, v3, :cond_36

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    mul-int/2addr v3, v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x7

    sub-int/2addr v3, v5

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    goto :goto_3a

    .line 834
    :cond_36
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    .line 837
    :goto_3a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    mul-int/2addr v0, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int/2addr v0, v3

    .line 838
    .local v0, "dataBits":I
    add-int/lit8 v3, v0, 0xd

    .line 839
    .local v3, "paramBits":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v6, 0xa

    if-eq v5, v1, :cond_55

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v5, v6, :cond_57

    .line 841
    :cond_55
    add-int/lit8 v3, v3, 0x8

    .line 843
    :cond_57
    div-int/lit8 v5, v3, 0x8

    rem-int/lit8 v7, v3, 0x8

    if-lez v7, :cond_5f

    move v7, v1

    goto :goto_60

    :cond_5f
    move v7, v2

    :goto_60
    add-int/2addr v5, v7

    .line 844
    .local v5, "paramBytes":I
    mul-int/lit8 v7, v5, 0x8

    sub-int/2addr v7, v3

    .line 845
    .local v7, "paddingBits":I
    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 846
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v9, 0x5

    invoke-virtual {p1, v9, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 847
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v8, v1, :cond_7b

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v1, v6, :cond_82

    .line 849
    :cond_7b
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 851
    :cond_82
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 852
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 853
    if-lez v7, :cond_95

    invoke-virtual {p1, v7, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 854
    :cond_95
    return-void

    .line 825
    .end local v0    # "dataBits":I
    .end local v3    # "paramBits":I
    .end local v5    # "paramBytes":I
    .end local v7    # "paddingBits":I
    :cond_96
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded user data too large ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .registers 8
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "BearerData"

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v0, :cond_14

    .line 759
    const-string/jumbo v0, "user data with null payloadStr"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 763
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_1c

    .line 764
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 765
    return-void

    .line 768
    :cond_1c
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_c1

    .line 769
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v0, :cond_41

    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v0, :cond_3a

    .line 771
    const-string/jumbo v0, "user data with octet encoding but null payload"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 773
    iput v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_e1

    .line 775
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_e1

    .line 778
    :cond_41
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v0, :cond_4c

    .line 779
    const-string v0, "non-octet user data with null payloadStr"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 782
    :cond_4c
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_62

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v6, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    .line 784
    .local v0, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 785
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 786
    .end local v0    # "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    goto/16 :goto_e1

    :cond_62
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v0, v3, :cond_77

    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_e1

    .line 789
    :cond_77
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v0, v4, :cond_8c

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_e1

    .line 792
    :cond_8c
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9f

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_e1

    .line 796
    :cond_9f
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported user data encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_c1
    :try_start_c1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 803
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_cb
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_c1 .. :try_end_cb} :catch_cc

    .line 807
    goto :goto_d7

    .line 804
    :catch_cc
    move-exception v0

    .line 805
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 806
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 808
    .end local v0    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :goto_d7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 809
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 811
    :goto_e1
    return-void
.end method

.method private static blacklist encodeUtf16(Ljava/lang/String;)[B
    .registers 5
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 612
    :try_start_0
    const-string/jumbo v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 613
    :catch_8
    move-exception v0

    .line 614
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 949
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 950
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 951
    return-void
.end method

.method private static greylist-max-r getBitsForNumFields(II)I
    .registers 5
    .param p0, "msgEncoding"    # I
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1926
    packed-switch p0, :pswitch_data_2c

    .line 1943
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported message encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1940
    :pswitch_23
    mul-int/lit8 v0, p1, 0x10

    return v0

    .line 1937
    :pswitch_26
    mul-int/lit8 v0, p1, 0x7

    return v0

    .line 1932
    :pswitch_29
    mul-int/lit8 v0, p1, 0x8

    return v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_3
        :pswitch_26
        :pswitch_26
        :pswitch_23
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method

.method private static blacklist getLanguageCodeForValue(I)Ljava/lang/String;
    .registers 2
    .param p0, "languageValue"    # I

    .line 457
    packed-switch p0, :pswitch_data_1c

    .line 480
    const/4 v0, 0x0

    return-object v0

    .line 477
    :pswitch_5
    const-string v0, "he"

    return-object v0

    .line 474
    :pswitch_8
    const-string/jumbo v0, "zh"

    return-object v0

    .line 471
    :pswitch_c
    const-string v0, "ko"

    return-object v0

    .line 468
    :pswitch_f
    const-string v0, "ja"

    return-object v0

    .line 465
    :pswitch_12
    const-string v0, "es"

    return-object v0

    .line 462
    :pswitch_15
    const-string v0, "fr"

    return-object v0

    .line 459
    :pswitch_18
    const-string v0, "en"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist isCmasAlertCategory(I)Z
    .registers 2
    .param p0, "category"    # I

    .line 2040
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_a

    const/16 v0, 0x10ff

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist serviceCategoryToCmasMessageClass(I)I
    .registers 2
    .param p0, "serviceCategory"    # I

    .line 1894
    packed-switch p0, :pswitch_data_10

    .line 1911
    const/4 v0, -0x1

    return v0

    .line 1908
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 1905
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 1902
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 1899
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 1896
    :pswitch_d
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1000
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 448
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguageCodeForValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "BearerData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ messageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    const-string/jumbo v3, "unset"

    if-eqz v2, :cond_54

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_55

    :cond_54
    move-object v2, v3

    :goto_55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privacy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v2, :cond_76

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_77

    :cond_76
    move-object v2, v3

    :goto_77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v2, :cond_98

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_99

    :cond_98
    move-object v2, v3

    :goto_99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", displayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v2, :cond_ba

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_bb

    :cond_ba
    move-object v2, v3

    :goto_bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v2, :cond_dc

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_dd

    :cond_dc
    move-object v2, v3

    :goto_dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", errorClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_fe

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_ff

    :cond_fe
    move-object v2, v3

    :goto_ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_120

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_121

    :cond_120
    move-object v2, v3

    :goto_121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgCenterTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 498
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_13e

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    goto :goto_13f

    :cond_13e
    move-object v2, v3

    :goto_13f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_15c

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    goto :goto_15d

    :cond_15c
    move-object v2, v3

    :goto_15d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 502
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v2, :cond_17e

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_17f

    :cond_17e
    move-object v2, v3

    :goto_17f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_19c

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    goto :goto_19d

    :cond_19c
    move-object v2, v3

    :goto_19d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 506
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    if-eqz v2, :cond_1bd

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1bd
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deliveryAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", readAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", reportReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", callbackNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BearerData"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", depositIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasUserDataHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

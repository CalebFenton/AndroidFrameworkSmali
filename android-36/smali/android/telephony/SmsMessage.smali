.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$MessageClass;,
        Landroid/telephony/SmsMessage$NoEmsSupportConfig;,
        Landroid/telephony/SmsMessage$Format;,
        Landroid/telephony/SmsMessage$EncodingSize;
    }
.end annotation


# static fields
.field public static final whitelist ENCODING_16BIT:I = 0x3

.field public static final whitelist ENCODING_7BIT:I = 0x1

.field public static final whitelist ENCODING_8BIT:I = 0x2

.field public static final whitelist ENCODING_KSC5601:I = 0x4

.field public static final whitelist ENCODING_UNKNOWN:I = 0x0

.field public static final whitelist FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final whitelist FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final whitelist MAX_USER_DATA_BYTES:I = 0x8c

.field public static final whitelist MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final whitelist MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final whitelist MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field private static greylist-max-o mIsNoEmsSupportConfigListLoaded:Z

.field private static greylist-max-o mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;


# instance fields
.field private greylist-max-r mSubId:I

.field public greylist mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1181
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 1182
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .registers 3
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 187
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 188
    return-void
.end method

.method public static whitelist calculateLength(Ljava/lang/CharSequence;Z)[I
    .registers 3
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 365
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateLength(Ljava/lang/CharSequence;ZI)[I
    .registers 8
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "subId"    # I

    .line 388
    invoke-static {p2}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 389
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_10

    .line 391
    :cond_c
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_10
    nop

    .line 393
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v2, 0x6

    new-array v2, v2, [I

    .line 394
    .local v2, "ret":[I
    const/4 v3, 0x0

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v4, v2, v3

    .line 395
    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v2, v1

    .line 396
    const/4 v1, 0x2

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v2, v1

    .line 397
    const/4 v1, 0x3

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v2, v1

    .line 398
    const/4 v1, 0x4

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    aput v3, v2, v1

    .line 399
    const/4 v1, 0x5

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    aput v3, v2, v1

    .line 400
    return-object v2
.end method

.method public static whitelist calculateLength(Ljava/lang/String;Z)[I
    .registers 3
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z

    .line 530
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateLength(Ljava/lang/String;ZI)[I
    .registers 4
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z
    .param p2, "subId"    # I

    .line 548
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .registers 3
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 270
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;
    .registers 5
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "subId"    # I

    .line 286
    invoke-static {p2}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 287
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_f

    .line 290
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_b
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 294
    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_f
    if-eqz v0, :cond_17

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1
.end method

.method public static whitelist createFromNativeSmsSubmitPdu([BZ)Landroid/telephony/SmsMessage;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "isCdma"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 313
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 314
    invoke-static {v0, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_c

    .line 318
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_8
    invoke-static {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 322
    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_c
    if-eqz v0, :cond_14

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method public static whitelist createFromPdu([B)Landroid/telephony/SmsMessage;
    .registers 5
    .param p0, "pdu"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    const/4 v0, 0x0

    .line 208
    .local v0, "message":Landroid/telephony/SmsMessage;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 209
    .local v1, "activePhone":I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_f

    .line 210
    const-string v2, "3gpp2"

    goto :goto_11

    :cond_f
    const-string v2, "3gpp"

    .line 211
    .local v2, "format":Ljava/lang/String;
    :goto_11
    invoke-static {p0, v2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .registers 3
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;Z)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createFromPdu([BLjava/lang/String;Z)Landroid/telephony/SmsMessage;
    .registers 8
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "fallbackToOtherFormat"    # Z

    .line 232
    const/4 v0, 0x0

    const-string v1, "SmsMessage"

    if-nez p0, :cond_b

    .line 233
    const-string v2, "createFromPdu(): pdu is null"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v0

    .line 237
    :cond_b
    const-string v2, "3gpp2"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "3gpp"

    if-eqz v3, :cond_17

    move-object v3, v4

    goto :goto_18

    .line 238
    :cond_17
    move-object v3, v2

    :goto_18
    nop

    .line 239
    .local v3, "otherFormat":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 240
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v2

    .local v2, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_2e

    .line 241
    .end local v2    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_24
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 242
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v2

    .line 248
    .restart local v2    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_2e
    if-eqz v2, :cond_36

    .line 249
    new-instance v0, Landroid/telephony/SmsMessage;

    invoke-direct {v0, v2}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v0

    .line 251
    :cond_36
    if-eqz p2, :cond_3e

    .line 252
    const/4 v0, 0x0

    invoke-static {p0, v3, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;Z)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0

    .line 254
    :cond_3e
    const-string v4, "createFromPdu(): wrappedMessage is null"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-object v0

    .line 244
    .end local v2    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromPdu(): unsupported message format "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-object v0
.end method

.method public static greylist fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 413
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 14
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 427
    invoke-static {p1}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v0

    .line 430
    .local v0, "isCdma":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 431
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    goto :goto_11

    .line 433
    :cond_d
    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    :goto_11
    nop

    .line 441
    .local v3, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v4, v2, :cond_39

    .line 443
    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v4, :cond_20

    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v4, :cond_20

    .line 444
    const/4 v4, 0x7

    .local v4, "udhLength":I
    goto :goto_2c

    .line 445
    .end local v4    # "udhLength":I
    :cond_20
    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v4, :cond_2b

    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v4, :cond_29

    goto :goto_2b

    .line 448
    :cond_29
    const/4 v4, 0x0

    .restart local v4    # "udhLength":I
    goto :goto_2c

    .line 446
    .end local v4    # "udhLength":I
    :cond_2b
    :goto_2b
    const/4 v4, 0x4

    .line 451
    .restart local v4    # "udhLength":I
    :goto_2c
    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v5, v2, :cond_32

    .line 452
    add-int/lit8 v4, v4, 0x6

    .line 455
    :cond_32
    if-eqz v4, :cond_36

    .line 456
    add-int/lit8 v4, v4, 0x1

    .line 459
    :cond_36
    rsub-int v4, v4, 0xa0

    .line 460
    .local v4, "limit":I
    goto :goto_50

    .line 461
    .end local v4    # "limit":I
    :cond_39
    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v4, v2, :cond_4e

    .line 462
    const/16 v4, 0x86

    .line 469
    .restart local v4    # "limit":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_50

    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_50

    .line 470
    add-int/lit8 v4, v4, -0x2

    goto :goto_50

    .line 473
    .end local v4    # "limit":I
    :cond_4e
    const/16 v4, 0x8c

    .line 477
    .restart local v4    # "limit":I
    :cond_50
    :goto_50
    const/4 v5, 0x0

    .line 478
    .local v5, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 479
    .local v6, "r":Landroid/content/res/Resources;
    const v7, 0x1110250

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 483
    if-eqz v0, :cond_65

    iget v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v7, v2, :cond_65

    move v1, v2

    :cond_65
    invoke-static {p0, v1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v5

    .line 485
    :cond_69
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 486
    move-object v5, p0

    .line 489
    :cond_70
    const/4 v1, 0x0

    .line 490
    .local v1, "pos":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 491
    .local v7, "textLen":I
    new-instance v8, Ljava/util/ArrayList;

    iget v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_7c
    if-ge v1, v7, :cond_e7

    .line 493
    const/4 v9, 0x0

    .line 494
    .local v9, "nextPos":I
    iget v10, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v10, v2, :cond_9a

    .line 495
    if-eqz v0, :cond_91

    iget v10, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v10, v2, :cond_91

    .line 497
    sub-int v10, v7, v1

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v1

    .end local v9    # "nextPos":I
    .local v10, "nextPos":I
    goto :goto_9e

    .line 500
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_91
    iget v10, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v11, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v5, v1, v4, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v10

    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    goto :goto_9e

    .line 504
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_9a
    invoke-static {v1, v4, v5}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v10

    .line 506
    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    :goto_9e
    if-le v10, v1, :cond_ac

    if-le v10, v7, :cond_a3

    goto :goto_ac

    .line 511
    :cond_a3
    invoke-virtual {v5, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    move v1, v10

    .line 513
    .end local v10    # "nextPos":I
    goto :goto_7c

    .line 507
    .restart local v10    # "nextPos":I
    :cond_ac
    :goto_ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText failed ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " >= "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " or "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "SmsMessage"

    invoke-static {v9, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    nop

    .line 514
    .end local v10    # "nextPos":I
    :cond_e7
    return-object v8
.end method

.method public static whitelist getSmsPdu(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 12
    .param p0, "subId"    # I
    .param p1, "status"    # I
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "date"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 672
    invoke-static {p0}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_19

    .line 673
    if-eq p1, v3, :cond_14

    if-ne p1, v2, :cond_f

    goto :goto_14

    .line 678
    :cond_f
    invoke-static {p2, p3, p4, v1, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_27

    .line 675
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_14
    :goto_14
    invoke-static {p3, p4, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_27

    .line 682
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_19
    if-eq p1, v3, :cond_23

    if-ne p1, v2, :cond_1e

    goto :goto_23

    .line 687
    :cond_1e
    invoke-static {p2, p3, p4, v1, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_27

    .line 684
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_23
    :goto_23
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 692
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_27
    if-eqz v0, :cond_2e

    new-instance v4, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v4, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    :cond_2e
    return-object v4
.end method

.method public static whitelist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 5
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .line 583
    nop

    .line 588
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 583
    invoke-static {p0, p1, p2, p3, v0}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 7
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "subId"    # I

    .line 607
    invoke-static {p4}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 608
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_10

    .line 611
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_c
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 615
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_10
    if-eqz v0, :cond_17

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    :cond_17
    return-object v1
.end method

.method public static whitelist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 7
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 635
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 636
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_f

    .line 639
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_b
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 643
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_f
    if-eqz v0, :cond_17

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1
.end method

.method public static whitelist getSubmitPduEncodedMessage(ZLjava/lang/String;Ljava/lang/String;IIIIII)[B
    .registers 23
    .param p0, "isTypeGsm"    # Z
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "encoding"    # I
    .param p4, "languageTable"    # I
    .param p5, "languageShiftTable"    # I
    .param p6, "refNumber"    # I
    .param p7, "seqNumber"    # I
    .param p8, "msgCount"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 727
    move/from16 v5, p3

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    move-object v8, v0

    .line 728
    .local v8, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v9, p6

    iput v9, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 729
    move/from16 v10, p7

    iput v10, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 730
    move/from16 v11, p8

    iput v11, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 737
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 738
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    move-object v12, v1

    .line 739
    .local v12, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v8, v12, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 746
    if-ne v5, v0, :cond_2a

    .line 747
    move/from16 v6, p4

    iput v6, v12, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 748
    move/from16 v7, p5

    iput v7, v12, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto :goto_2e

    .line 746
    :cond_2a
    move/from16 v6, p4

    move/from16 v7, p5

    .line 751
    :goto_2e
    const/4 v13, 0x0

    if-eqz p0, :cond_44

    .line 752
    nop

    .line 754
    invoke-static {v12}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 752
    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v3, p2

    .local v0, "data":[B
    goto :goto_61

    .line 757
    .end local v0    # "data":[B
    :cond_44
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 758
    .local v2, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v3, p2

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 759
    iput-object v12, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 760
    if-ne v5, v0, :cond_56

    .line 761
    const/16 v4, 0x9

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_59

    .line 763
    :cond_56
    const/4 v4, 0x4

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 765
    :goto_59
    iput-boolean v0, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 766
    invoke-static {p1, v2, v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 769
    .end local v2    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v0    # "data":[B
    :goto_61
    if-nez v0, :cond_66

    .line 770
    new-array v2, v13, [B

    return-object v2

    .line 772
    :cond_66
    return-object v0
.end method

.method public static whitelist getTPLayerLengthForPDU(Ljava/lang/String;)I
    .registers 2
    .param p0, "pdu"    # Ljava/lang/String;

    .line 333
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 334
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 336
    :cond_b
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o hasEmsSupport()Z
    .registers 12

    .line 1101
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1102
    return v1

    .line 1107
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1109
    .local v2, "identity":J
    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_5f

    .line 1112
    .local v4, "gid":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    nop

    .line 1115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 1116
    sget-object v5, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_2b
    if-ge v8, v6, :cond_5e

    aget-object v9, v5, v8

    .line 1117
    .local v9, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    if-nez v9, :cond_3a

    .line 1118
    const-string v10, "SmsMessage"

    const-string/jumbo v11, "hasEmsSupport currentConfig is null"

    invoke-static {v10, v11}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    goto :goto_5b

    .line 1122
    :cond_3a
    iget-object v10, v9, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5b

    iget-object v10, v9, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1123
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5a

    iget-object v10, v9, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1124
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5b

    iget-object v10, v9, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1125
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 1126
    :cond_5a
    return v7

    .line 1116
    .end local v9    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    :cond_5b
    :goto_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 1130
    :cond_5e
    return v1

    .line 1112
    .end local v0    # "simOperator":Ljava/lang/String;
    .end local v4    # "gid":Ljava/lang/String;
    :catchall_5f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    throw v0
.end method

.method private static greylist-max-o isCdmaVoice()Z
    .registers 1

    .line 1083
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isCdmaVoice(I)Z
    .registers 3
    .param p0, "subId"    # I

    .line 1092
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1093
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method private static greylist-max-o isNoEmsSupportConfigListExisted()Z
    .registers 9

    .line 1185
    const-class v0, Landroid/telephony/SmsMessage;

    monitor-enter v0

    .line 1186
    :try_start_3
    sget-boolean v1, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    const/4 v2, 0x1

    if-nez v1, :cond_39

    .line 1187
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1188
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_39

    .line 1189
    const v3, 0x1070104

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1191
    .local v3, "listArray":[Ljava/lang/String;
    if-eqz v3, :cond_37

    array-length v4, v3

    if-lez v4, :cond_37

    .line 1192
    array-length v4, v3

    new-array v4, v4, [Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    sput-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 1193
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    array-length v5, v3

    if-ge v4, v5, :cond_37

    .line 1194
    sget-object v5, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    new-instance v6, Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    aget-object v7, v3, v4

    const-string v8, ";"

    .line 1195
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/telephony/SmsMessage$NoEmsSupportConfig;-><init>([Ljava/lang/String;)V

    aput-object v6, v5, v4

    .line 1193
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1198
    .end local v4    # "i":I
    :cond_37
    sput-boolean v2, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    .line 1201
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v3    # "listArray":[Ljava/lang/String;
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_46

    .line 1203
    sget-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    if-eqz v0, :cond_44

    sget-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v0, v0

    if-eqz v0, :cond_44

    .line 1204
    return v2

    .line 1207
    :cond_44
    const/4 v0, 0x0

    return v0

    .line 1201
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public static greylist-max-o shouldAppendPageNumberAsPrefix()Z
    .registers 10

    .line 1138
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1139
    return v1

    .line 1144
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1146
    .local v2, "identity":J
    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_4f

    .line 1149
    .local v4, "gid":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    nop

    .line 1152
    sget-object v5, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v6, v5

    move v7, v1

    :goto_24
    if-ge v7, v6, :cond_4e

    aget-object v8, v5, v7

    .line 1153
    .local v8, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    iget-object v9, v8, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4b

    iget-object v9, v8, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1154
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_48

    iget-object v9, v8, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1155
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4b

    iget-object v9, v8, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1156
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 1157
    :cond_48
    iget-boolean v1, v8, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mIsPrefix:Z

    return v1

    .line 1152
    .end local v8    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    .line 1160
    :cond_4e
    return v1

    .line 1149
    .end local v0    # "simOperator":Ljava/lang/String;
    .end local v4    # "gid":Ljava/lang/String;
    :catchall_4f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    throw v0
.end method

.method private static greylist useCdmaFormatForMoSms()Z
    .registers 1

    .line 1054
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-r useCdmaFormatForMoSms(I)Z
    .registers 4
    .param p0, "subId"    # I

    .line 1068
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1069
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1071
    invoke-static {p0}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v1

    return v1

    .line 1074
    :cond_f
    const-string v1, "3gpp2"

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist getDisplayMessageBody()Ljava/lang/String;
    .registers 2

    .line 835
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayOriginatingAddress()Ljava/lang/String;
    .registers 2

    .line 805
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEmailBody()Ljava/lang/String;
    .registers 2

    .line 868
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEmailFrom()Ljava/lang/String;
    .registers 2

    .line 876
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIndexOnIcc()I
    .registers 2

    .line 990
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public whitelist getIndexOnSim()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 981
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public whitelist getMessageBody()Ljava/lang/String;
    .registers 2

    .line 813
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .registers 3

    .line 820
    sget-object v0, Landroid/telephony/SmsMessage$1;->$SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass:[I

    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 825
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 824
    :pswitch_14
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 823
    :pswitch_17
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 822
    :pswitch_1a
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 821
    :pswitch_1d
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method

.method public whitelist getOriginatingAddress()Ljava/lang/String;
    .registers 2

    .line 796
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPdu()[B
    .registers 2

    .line 942
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProtocolIdentifier()I
    .registers 2

    .line 883
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist getPseudoSubject()Ljava/lang/String;
    .registers 2

    .line 843
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReceivedEncodingType()I
    .registers 2

    .line 1032
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getReceivedEncodingType()I

    move-result v0

    return v0
.end method

.method public whitelist getRecipientAddress()Ljava/lang/String;
    .registers 2

    .line 1217
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getServiceCenterAddress()Ljava/lang/String;
    .registers 2

    .line 780
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 1006
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public whitelist getStatusOnIcc()I
    .registers 2

    .line 971
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public whitelist getStatusOnSim()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 957
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public greylist getSubId()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    return v0
.end method

.method public whitelist getTimestampMillis()J
    .registers 3

    .line 850
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getUserData()[B
    .registers 2

    .line 933
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist is3gpp()Z
    .registers 2

    .line 1041
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    return v0
.end method

.method public whitelist isCphsMwiMessage()Z
    .registers 2

    .line 901
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public whitelist isEmail()Z
    .registers 2

    .line 860
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public whitelist isMWIClearMessage()Z
    .registers 2

    .line 909
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public whitelist isMWISetMessage()Z
    .registers 2

    .line 917
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public whitelist isMwiDontStore()Z
    .registers 2

    .line 925
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public whitelist isReplace()Z
    .registers 2

    .line 891
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public whitelist isReplyPathPresent()Z
    .registers 2

    .line 1021
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public whitelist isStatusReportMessage()Z
    .registers 2

    .line 1013
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method

.method public greylist setSubId(I)V
    .registers 2
    .param p1, "subId"    # I

    .line 148
    iput p1, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 149
    return-void
.end method

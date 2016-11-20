.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$MessageClass;,
        Landroid/telephony/SmsMessage$NoEmsSupportConfig;,
        Landroid/telephony/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-SmsConstants$MessageClassSwitchesValues:[I = null

.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field private static mIsNoEmsSupportConfigListLoaded:Z

.field private static mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;


# instance fields
.field private mSubId:I

.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-SmsConstants$MessageClassSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/telephony/SmsMessage;->-com-android-internal-telephony-SmsConstants$MessageClassSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/telephony/SmsMessage;->-com-android-internal-telephony-SmsConstants$MessageClassSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->values()[Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3b
    :goto_4
    sput-object v0, Landroid/telephony/SmsMessage;->-com-android-internal-telephony-SmsConstants$MessageClassSwitchesValues:[I

    #@3d
    return-object v0

    #@3e
    :catch_0
    move-exception v1

    #@3f
    goto :goto_4

    #@40
    :catch_1
    move-exception v1

    #@41
    goto :goto_3

    #@42
    :catch_2
    move-exception v1

    #@43
    goto :goto_2

    #@44
    :catch_3
    move-exception v1

    #@45
    goto :goto_1

    #@46
    :catch_4
    move-exception v1

    #@47
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 865
    const/4 v0, 0x0

    #@1
    sput-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    #@3
    .line 866
    const/4 v0, 0x0

    #@4
    sput-boolean v0, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    #@6
    .line 42
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 1
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    #@0
    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    #@6
    .line 148
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@8
    .line 147
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 317
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 318
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@a
    move-result-object v1

    #@b
    .line 321
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    #@c
    new-array v0, v2, [I

    #@e
    .line 322
    .local v0, "ret":[I
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@10
    const/4 v3, 0x0

    #@11
    aput v2, v0, v3

    #@13
    .line 323
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    #@15
    aput v2, v0, v4

    #@17
    .line 324
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    #@19
    const/4 v3, 0x2

    #@1a
    aput v2, v0, v3

    #@1c
    .line 325
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@1e
    const/4 v3, 0x3

    #@1f
    aput v2, v0, v3

    #@21
    .line 326
    return-object v0

    #@22
    .line 320
    .end local v0    # "ret":[I
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@25
    move-result-object v1

    #@26
    .restart local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z

    #@0
    .prologue
    .line 439
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .locals 4
    .param p0, "index"    # I
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 259
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 260
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    #@a
    move-result-object v0

    #@b
    .line 267
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    #@d
    .line 268
    new-instance v1, Landroid/telephony/SmsMessage;

    #@f
    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    #@12
    return-object v1

    #@13
    .line 263
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    #@16
    move-result-object v0

    #@17
    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    #@18
    .line 270
    :cond_1
    const-string/jumbo v1, "SmsMessage"

    #@1b
    const-string/jumbo v2, "createFromEfRecord(): wrappedMessage is null"

    #@1e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 271
    return-object v3
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 5
    .param p0, "pdu"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 165
    const/4 v2, 0x0

    #@2
    .line 169
    .local v2, "message":Landroid/telephony/SmsMessage;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@9
    move-result v0

    #@a
    .line 170
    .local v0, "activePhone":I
    if-ne v4, v0, :cond_2

    #@c
    .line 171
    const-string/jumbo v1, "3gpp2"

    #@f
    .line 172
    .local v1, "format":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@12
    move-result-object v2

    #@13
    .line 174
    .local v2, "message":Landroid/telephony/SmsMessage;
    if-eqz v2, :cond_0

    #@15
    iget-object v3, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@17
    if-nez v3, :cond_1

    #@19
    .line 176
    :cond_0
    if-ne v4, v0, :cond_3

    #@1b
    .line 177
    const-string/jumbo v1, "3gpp"

    #@1e
    .line 178
    :goto_1
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@21
    move-result-object v2

    #@22
    .line 180
    :cond_1
    return-object v2

    #@23
    .line 171
    .end local v1    # "format":Ljava/lang/String;
    .local v2, "message":Landroid/telephony/SmsMessage;
    :cond_2
    const-string/jumbo v1, "3gpp"

    #@26
    goto :goto_0

    #@27
    .line 177
    .restart local v1    # "format":Ljava/lang/String;
    .local v2, "message":Landroid/telephony/SmsMessage;
    :cond_3
    const-string/jumbo v1, "3gpp2"

    #@2a
    goto :goto_1
.end method

.method public static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 5
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 198
    const-string/jumbo v1, "3gpp2"

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 199
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    #@d
    move-result-object v0

    #@e
    .line 207
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_2

    #@10
    .line 208
    new-instance v1, Landroid/telephony/SmsMessage;

    #@12
    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    #@15
    return-object v1

    #@16
    .line 200
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    const-string/jumbo v1, "3gpp"

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 201
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    #@22
    move-result-object v0

    #@23
    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    #@24
    .line 203
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    const-string/jumbo v1, "SmsMessage"

    #@27
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "createFromPdu(): unsupported message format "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 204
    return-object v4

    #@3f
    .line 210
    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_2
    const-string/jumbo v1, "SmsMessage"

    #@42
    const-string/jumbo v2, "createFromPdu(): wrappedMessage is null"

    #@45
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 211
    return-object v4
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
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
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 341
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    #@5
    move-result v9

    #@6
    if-eqz v9, :cond_7

    #@8
    .line 342
    invoke-static {p0, v10, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@b
    move-result-object v6

    #@c
    .line 350
    .local v6, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@e
    if-ne v9, v11, :cond_b

    #@10
    .line 352
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    #@12
    if-eqz v9, :cond_8

    #@14
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    #@16
    if-eqz v9, :cond_8

    #@18
    .line 353
    const/4 v8, 0x7

    #@19
    .line 360
    .local v8, "udhLength":I
    :goto_1
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@1b
    if-le v9, v11, :cond_0

    #@1d
    .line 361
    add-int/lit8 v8, v8, 0x6

    #@1f
    .line 364
    :cond_0
    if-eqz v8, :cond_1

    #@21
    .line 365
    add-int/lit8 v8, v8, 0x1

    #@23
    .line 368
    :cond_1
    rsub-int v0, v8, 0xa0

    #@25
    .line 386
    .end local v8    # "udhLength":I
    .local v0, "limit":I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    #@26
    .line 387
    .local v1, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@29
    move-result-object v4

    #@2a
    .line 388
    .local v4, "r":Landroid/content/res/Resources;
    const v9, 0x112009a

    #@2d
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@30
    move-result v9

    #@31
    if-eqz v9, :cond_3

    #@33
    .line 389
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 391
    .end local v1    # "newMsgBody":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3a
    move-result v9

    #@3b
    if-eqz v9, :cond_4

    #@3d
    .line 392
    move-object v1, p0

    #@3e
    .line 394
    :cond_4
    const/4 v3, 0x0

    #@3f
    .line 395
    .local v3, "pos":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@42
    move-result v7

    #@43
    .line 396
    .local v7, "textLen":I
    new-instance v5, Ljava/util/ArrayList;

    #@45
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@47
    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    #@4a
    .line 397
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v3, v7, :cond_6

    #@4c
    .line 398
    const/4 v2, 0x0

    #@4d
    .line 399
    .local v2, "nextPos":I
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@4f
    if-ne v9, v11, :cond_e

    #@51
    .line 400
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    #@54
    move-result v9

    #@55
    if-eqz v9, :cond_d

    #@57
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@59
    if-ne v9, v11, :cond_d

    #@5b
    .line 402
    sub-int v9, v7, v3

    #@5d
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    #@60
    move-result v9

    #@61
    add-int v2, v3, v9

    #@63
    .line 411
    :goto_4
    if-le v2, v3, :cond_5

    #@65
    if-le v2, v7, :cond_f

    #@67
    .line 412
    :cond_5
    const-string/jumbo v9, "SmsMessage"

    #@6a
    new-instance v10, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v11, "fragmentText failed ("

    #@72
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v10

    #@76
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v10

    #@7a
    const-string/jumbo v11, " >= "

    #@7d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v10

    #@81
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v10

    #@85
    const-string/jumbo v11, " or "

    #@88
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v10

    #@8c
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v10

    #@90
    .line 413
    const-string/jumbo v11, " >= "

    #@93
    .line 412
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v10

    #@97
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v10

    #@9b
    .line 413
    const-string/jumbo v11, ")"

    #@9e
    .line 412
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v10

    #@a2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v10

    #@a6
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 419
    .end local v2    # "nextPos":I
    :cond_6
    return-object v5

    #@aa
    .line 343
    .end local v0    # "limit":I
    .end local v3    # "pos":I
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v7    # "textLen":I
    :cond_7
    invoke-static {p0, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@ad
    move-result-object v6

    #@ae
    goto/16 :goto_0

    #@b0
    .line 354
    .restart local v6    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_8
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    #@b2
    if-nez v9, :cond_9

    #@b4
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    #@b6
    if-eqz v9, :cond_a

    #@b8
    .line 355
    :cond_9
    const/4 v8, 0x4

    #@b9
    .line 354
    .restart local v8    # "udhLength":I
    goto/16 :goto_1

    #@bb
    .line 357
    .end local v8    # "udhLength":I
    :cond_a
    const/4 v8, 0x0

    #@bc
    .restart local v8    # "udhLength":I
    goto/16 :goto_1

    #@be
    .line 370
    .end local v8    # "udhLength":I
    :cond_b
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@c0
    if-le v9, v11, :cond_c

    #@c2
    .line 371
    const/16 v0, 0x86

    #@c4
    .line 378
    .restart local v0    # "limit":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    #@c7
    move-result v9

    #@c8
    if-nez v9, :cond_2

    #@ca
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@cc
    const/16 v10, 0xa

    #@ce
    if-ge v9, v10, :cond_2

    #@d0
    .line 379
    const/16 v0, 0x84

    #@d2
    goto/16 :goto_2

    #@d4
    .line 382
    .end local v0    # "limit":I
    :cond_c
    const/16 v0, 0x8c

    #@d6
    .restart local v0    # "limit":I
    goto/16 :goto_2

    #@d8
    .line 406
    .restart local v2    # "nextPos":I
    .restart local v3    # "pos":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "textLen":I
    :cond_d
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    #@da
    iget v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    #@dc
    .line 405
    invoke-static {v1, v3, v0, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    #@df
    move-result v2

    #@e0
    goto :goto_4

    #@e1
    .line 409
    :cond_e
    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    #@e4
    move-result v2

    #@e5
    goto/16 :goto_4

    #@e7
    .line 416
    :cond_f
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ea
    move-result-object v9

    #@eb
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ee
    .line 417
    move v3, v2

    #@ef
    goto/16 :goto_3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    #@0
    .prologue
    .line 474
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 476
    const/4 v1, 0x0

    #@7
    .line 475
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@a
    move-result-object v0

    #@b
    .line 482
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    #@d
    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    #@10
    return-object v1

    #@11
    .line 478
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@14
    move-result-object v0

    #@15
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    #@0
    .prologue
    .line 503
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 504
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@9
    move-result-object v0

    #@a
    .line 511
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    #@c
    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    #@f
    return-object v1

    #@10
    .line 507
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@13
    move-result-object v0

    #@14
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 1
    .param p0, "pdu"    # Ljava/lang/String;

    #@0
    .prologue
    .line 283
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 284
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 286
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public static hasEmsSupport()Z
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 790
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 791
    return v10

    #@9
    .line 796
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v2

    #@d
    .line 798
    .local v2, "identity":J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 799
    .local v4, "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v1

    #@1d
    .line 801
    .local v1, "gid":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 804
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_3

    #@26
    .line 805
    sget-object v7, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    #@28
    array-length v8, v7

    #@29
    move v5, v6

    #@2a
    :goto_0
    if-ge v5, v8, :cond_3

    #@2c
    aget-object v0, v7, v5

    #@2e
    .line 806
    .local v0, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    iget-object v9, v0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    #@30
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@33
    move-result v9

    #@34
    if-eqz v9, :cond_2

    #@36
    .line 807
    iget-object v9, v0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    #@38
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3b
    move-result v9

    #@3c
    if-nez v9, :cond_1

    #@3e
    .line 808
    iget-object v9, v0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    #@40
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@43
    move-result v9

    #@44
    if-nez v9, :cond_2

    #@46
    .line 809
    iget-object v9, v0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    #@48
    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4b
    move-result v9

    #@4c
    .line 806
    if-eqz v9, :cond_2

    #@4e
    .line 810
    :cond_1
    return v6

    #@4f
    .line 800
    .end local v0    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v1    # "gid":Ljava/lang/String;
    .end local v4    # "simOperator":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@50
    .line 801
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 800
    throw v5

    #@54
    .line 805
    .restart local v0    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .restart local v1    # "gid":Ljava/lang/String;
    .restart local v4    # "simOperator":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@56
    goto :goto_0

    #@57
    .line 814
    .end local v0    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    :cond_3
    return v10
.end method

.method private static isCdmaVoice()Z
    .locals 2

    #@0
    .prologue
    .line 781
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    .line 782
    .local v0, "activePhone":I
    const/4 v1, 0x2

    #@9
    if-ne v1, v0, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method private static isNoEmsSupportConfigListExisted()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 869
    sget-boolean v3, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    #@4
    if-nez v3, :cond_1

    #@6
    .line 870
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@9
    move-result-object v2

    #@a
    .line 871
    .local v2, "r":Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    #@c
    .line 873
    const v3, 0x1070040

    #@f
    .line 872
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 874
    .local v1, "listArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@15
    array-length v3, v1

    #@16
    if-lez v3, :cond_0

    #@18
    .line 875
    array-length v3, v1

    #@19
    new-array v3, v3, [Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    #@1b
    sput-object v3, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    #@1d
    .line 876
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@1f
    if-ge v0, v3, :cond_0

    #@21
    .line 877
    sget-object v3, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    #@23
    new-instance v4, Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    #@25
    aget-object v5, v1, v0

    #@27
    const-string/jumbo v6, ";"

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-direct {v4, v5}, Landroid/telephony/SmsMessage$NoEmsSupportConfig;-><init>([Ljava/lang/String;)V

    #@31
    aput-object v4, v3, v0

    #@33
    .line 876
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 880
    .end local v0    # "i":I
    :cond_0
    sput-boolean v8, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    #@38
    .line 884
    .end local v1    # "listArray":[Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    #@3a
    if-eqz v3, :cond_2

    #@3c
    sget-object v3, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    #@3e
    array-length v3, v3

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 885
    return v8

    #@42
    .line 888
    :cond_2
    return v7
.end method

.method public static newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 4
    .param p0, "lines"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 227
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    #@4
    move-result-object v0

    #@5
    .line 229
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    if-eqz v0, :cond_0

    #@7
    .line 230
    new-instance v1, Landroid/telephony/SmsMessage;

    #@9
    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    #@c
    return-object v1

    #@d
    .line 232
    :cond_0
    const-string/jumbo v1, "SmsMessage"

    #@10
    const-string/jumbo v2, "newFromCMT(): wrappedMessage is null"

    #@13
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 233
    return-object v3
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 241
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    #@3
    move-result-object v0

    #@4
    .line 243
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    #@6
    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    #@9
    return-object v1
.end method

.method public static shouldAppendPageNumberAsPrefix()Z
    .locals 10

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 822
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    .line 823
    return v6

    #@8
    .line 828
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 830
    .local v2, "identity":J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 831
    .local v4, "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v1

    #@1c
    .line 833
    .local v1, "gid":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 836
    sget-object v7, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    #@21
    array-length v8, v7

    #@22
    move v5, v6

    #@23
    :goto_0
    if-ge v5, v8, :cond_3

    #@25
    aget-object v0, v7, v5

    #@27
    .line 837
    .local v0, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    iget-object v9, v0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    #@29
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2c
    move-result v9

    #@2d
    if-eqz v9, :cond_2

    #@2f
    .line 838
    iget-object v9, v0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    #@31
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@34
    move-result v9

    #@35
    if-nez v9, :cond_1

    #@37
    .line 839
    iget-object v9, v0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    #@39
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3c
    move-result v9

    #@3d
    if-nez v9, :cond_2

    #@3f
    .line 840
    iget-object v9, v0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    #@41
    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@44
    move-result v9

    #@45
    .line 837
    if-eqz v9, :cond_2

    #@47
    .line 841
    :cond_1
    iget-boolean v5, v0, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mIsPrefix:Z

    #@49
    return v5

    #@4a
    .line 832
    .end local v0    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v1    # "gid":Ljava/lang/String;
    .end local v4    # "simOperator":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@4b
    .line 833
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 832
    throw v5

    #@4f
    .line 836
    .restart local v0    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .restart local v1    # "gid":Ljava/lang/String;
    .restart local v4    # "simOperator":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@51
    goto :goto_0

    #@52
    .line 844
    .end local v0    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    :cond_3
    return v6
.end method

.method private static useCdmaFormatForMoSms()Z
    .locals 2

    #@0
    .prologue
    .line 767
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 769
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 772
    :cond_0
    const-string/jumbo v0, "3gpp2"

    #@12
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method


# virtual methods
.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 599
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 607
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    #@0
    .prologue
    .line 721
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 712
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 544
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    #@0
    .prologue
    .line 551
    invoke-static {}, Landroid/telephony/SmsMessage;->-getcom-android-internal-telephony-SmsConstants$MessageClassSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    #@d
    move-result v1

    #@e
    aget v0, v0, v1

    #@10
    packed-switch v0, :pswitch_data_0

    #@13
    .line 556
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    #@15
    return-object v0

    #@16
    .line 552
    :pswitch_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    #@18
    return-object v0

    #@19
    .line 553
    :pswitch_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    #@1b
    return-object v0

    #@1c
    .line 554
    :pswitch_2
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    #@1e
    return-object v0

    #@1f
    .line 555
    :pswitch_3
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    #@21
    return-object v0

    #@22
    .line 551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 527
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    #@0
    .prologue
    .line 614
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 574
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 741
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1

    #@0
    .prologue
    .line 702
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 688
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSubId()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    #@2
    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    #@0
    .prologue
    .line 581
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    #@0
    .prologue
    .line 664
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    #@0
    .prologue
    .line 632
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmail()Z
    .locals 1

    #@0
    .prologue
    .line 591
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    #@0
    .prologue
    .line 640
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    #@0
    .prologue
    .line 648
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    #@0
    .prologue
    .line 656
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReplace()Z
    .locals 1

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    #@0
    .prologue
    .line 756
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    #@0
    .prologue
    .line 748
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 113
    iput p1, p0, Landroid/telephony/SmsMessage;->mSubId:I

    #@2
    .line 112
    return-void
.end method

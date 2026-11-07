.class public Lcom/android/internal/telephony/VisualVoicemailSmsFilter;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;,
        Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

.field private static final blacklist PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static blacklist sPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetPSTN_CONNECTION_SERVICE_COMPONENT()Landroid/content/ComponentName;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 72
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    .line 104
    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist buildPatternsMap(Landroid/content/Context;)V
    .registers 11

    .line 254
    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    if-eqz v0, :cond_5

    goto :goto_60

    .line 257
    :cond_5
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10700e7

    .line 260
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 259
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1a
    if-ge v2, v0, :cond_60

    aget-object v3, p0, v2

    .line 261
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 264
    array-length v4, v5

    move v6, v1

    :goto_39
    if-ge v6, v4, :cond_5d

    aget-object v7, v5, v6

    .line 265
    sget-object v8, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4f

    .line 266
    sget-object v8, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_4f
    sget-object v8, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_60
    :goto_60
    return-void
.end method

.method public static blacklist filter(Landroid/content/Context;[[BLjava/lang/String;II)Z
    .registers 13

    .line 133
    const-string v0, "phone"

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 137
    invoke-virtual {v0, p4}, Landroid/telephony/TelephonyManager;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    const-string v3, "VvmSmsFilter"

    if-nez v0, :cond_27

    .line 140
    invoke-static {p1, p2}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->getFullMessage([[BLjava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 144
    iget-object p1, p1, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->fullMessageBody:Ljava/lang/String;

    invoke-static {p0, p4, p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->messageBodyMatchesVvmPattern(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 145
    const-string p0, "SMS matching VVM format received but the filter not been set yet"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_26
    return v2

    .line 152
    :cond_27
    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    invoke-interface {v4, p4, p0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;->fromSubId(ILandroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    if-nez v4, :cond_49

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to convert subId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to PhoneAccountHandle"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 160
    :cond_49
    iget-object v5, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->clientPrefix:Ljava/lang/String;

    .line 161
    invoke-static {p1, p2}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->getFullMessage([[BLjava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;

    move-result-object p2

    const/4 v6, 0x0

    if-nez p2, :cond_70

    .line 166
    const-string p2, "Unparsable SMS received"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->parseAsciiPduMessage([[B)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {p1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseAlternativeFormat(Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    move-result-object p2

    if-nez p2, :cond_6a

    .line 171
    const-string p2, "Attempt to parse ascii PDU"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v5, p1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    move-result-object p2

    :cond_6a
    if-eqz p2, :cond_6f

    .line 175
    invoke-static {p0, v0, v4, p2, v6}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    :cond_6f
    return v2

    .line 182
    :cond_70
    iget-object p1, p2, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->fullMessageBody:Ljava/lang/String;

    .line 184
    invoke-static {v5, p1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    move-result-object v5

    if-eqz v5, :cond_bd

    .line 186
    iget p1, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    const/4 p4, -0x2

    const/4 v7, -0x1

    if-ne p1, p4, :cond_86

    if-ne p3, v7, :cond_a1

    .line 190
    const-string p0, "SMS matching VVM format received but is not a DATA SMS"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_86
    if-eq p1, v7, :cond_a1

    if-eq p1, p3, :cond_a1

    .line 196
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SMS matching VVM format received but is not directed to port "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 202
    :cond_a1
    iget-object p1, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b9

    iget-object p1, p2, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    iget-object p2, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    .line 203
    invoke-static {p1, p2}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->isSmsFromNumbers(Landroid/telephony/SmsMessage;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_b9

    .line 204
    const-string p0, "SMS matching VVM format received but is not from originating numbers"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 208
    :cond_b9
    invoke-static {p0, v0, v4, v5, v6}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    return v1

    .line 212
    :cond_bd
    invoke-static {p0, p4, p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->messageBodyMatchesVvmPattern(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_cc

    .line 213
    const-string p2, "SMS matches pattern but has illegal format, still dropping as VVM SMS"

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {p0, v0, v4, v6, p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    return v1

    :cond_cc
    return v2
.end method

.method private static blacklist getFullMessage([[BLjava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;
    .registers 12

    .line 302
    new-instance v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;-><init>(Lcom/android/internal/telephony/VisualVoicemailSmsFilter-IA;)V

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 305
    array-length v4, p0

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_73

    aget-object v6, p0, v5

    .line 306
    invoke-static {v6, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v6

    if-nez v6, :cond_1e

    return-object v1

    .line 311
    :cond_1e
    iget-object v7, v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    if-nez v7, :cond_24

    .line 312
    iput-object v6, v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    .line 314
    :cond_24
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_37

    .line 324
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->is3gpp()Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 325
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getReceivedEncodingType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6b

    .line 326
    :cond_37
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v8

    if-eqz v8, :cond_6b

    .line 327
    const-string v7, "getFullMessage decode using UTF-8"

    const-string v8, "VvmSmsFilter"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 334
    :try_start_4c
    invoke-virtual {v3, v6}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_54
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_4c .. :try_end_54} :catch_55

    goto :goto_6b

    :catch_55
    move-exception p0

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFullMessage: got CharacterCodingException when decoding with UTF-8, e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_6b
    :goto_6b
    if-eqz v7, :cond_70

    .line 342
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 345
    :cond_73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->fullMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist isSmsFromNumbers(Landroid/telephony/SmsMessage;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 359
    const-string p0, "VvmSmsFilter"

    const-string p1, "Unable to create SmsMessage from PDU, cannot determine originating number"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 363
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_27
    return v0
.end method

.method private static blacklist messageBodyMatchesVvmPattern(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 5

    .line 223
    invoke-static {p0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->buildPatternsMap(Landroid/content/Context;)V

    .line 224
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    .line 226
    sget-object p1, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p0, :cond_53

    .line 227
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_53

    .line 231
    :cond_21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 232
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Incoming SMS matches pattern "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VvmSmsFilter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_53
    :goto_53
    return p1
.end method

.method private static blacklist parseAsciiPduMessage([[B)Ljava/lang/String;
    .registers 7

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_18

    aget-object v3, p0, v2

    .line 352
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 354
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V
    .registers 8

    .line 276
    const-string v0, "VvmSmsFilter"

    const-string v1, "VVM SMS received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.provider.action.VOICEMAIL_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    new-instance v1, Landroid/telephony/VisualVoicemailSms$Builder;

    invoke-direct {v1}, Landroid/telephony/VisualVoicemailSms$Builder;-><init>()V

    if-eqz p3, :cond_1f

    .line 280
    iget-object v2, p3, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/telephony/VisualVoicemailSms$Builder;->setPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;

    .line 281
    iget-object p3, p3, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->fields:Landroid/os/Bundle;

    invoke-virtual {v1, p3}, Landroid/telephony/VisualVoicemailSms$Builder;->setFields(Landroid/os/Bundle;)Landroid/telephony/VisualVoicemailSms$Builder;

    :cond_1f
    if-eqz p4, :cond_24

    .line 284
    invoke-virtual {v1, p4}, Landroid/telephony/VisualVoicemailSms$Builder;->setMessageBody(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;

    .line 286
    :cond_24
    invoke-virtual {v1, p2}, Landroid/telephony/VisualVoicemailSms$Builder;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/VisualVoicemailSms$Builder;

    .line 287
    const-string p2, "android.provider.extra.VOICEMAIL_SMS"

    invoke-virtual {v1}, Landroid/telephony/VisualVoicemailSms$Builder;->build()Landroid/telephony/VisualVoicemailSms;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    const-string p2, "android.provider.extra.TARGET_PACAKGE"

    iget-object p1, p1, Landroid/telephony/VisualVoicemailSmsFilterSettings;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string p1, "com.android.phone"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static blacklist setPhoneAccountHandleConverterForTest(Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;)V
    .registers 1

    if-nez p0, :cond_7

    .line 247
    sget-object p0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    sput-object p0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    return-void

    .line 249
    :cond_7
    sput-object p0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    return-void
.end method

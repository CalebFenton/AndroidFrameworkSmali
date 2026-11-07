.class public Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;
.super Ljava/lang/Object;
.source "MissedIncomingCallSmsFilter.java"


# static fields
.field private static final blacklist PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final blacklist TAG:Ljava/lang/String; = "MissedIncomingCallSmsFilter"


# instance fields
.field private blacklist mCarrierConfig:Landroid/os/PersistableBundle;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 65
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1d

    .line 84
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mCarrierConfig:Landroid/os/PersistableBundle;

    :cond_1d
    return-void
.end method

.method private blacklist createMissedIncomingCallEvent(JLjava/lang/String;)V
    .registers 8

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "telecom"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_31

    .line 263
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_23

    .line 266
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 268
    const-string v2, "android.telecom.extra.INCOMING_CALL_ADDRESS"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 273
    :cond_23
    const-string p3, "android.telecom.extra.CALL_CREATED_EPOCH_TIME_MILLIS"

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 274
    iget-object p1, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    :cond_31
    return-void
.end method

.method private blacklist getEpochTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 8

    .line 129
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p0

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 132
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_12
    const-string v0, "yyyyMMddHHmm"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-virtual {v0, p0}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 145
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;
    .registers 4

    .line 281
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 283
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 285
    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    sget-object v1, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 286
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0

    .line 288
    :cond_26
    new-instance p0, Landroid/telecom/PhoneAccountHandle;

    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 289
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist processSms(Landroid/telephony/SmsMessage;)Z
    .registers 20

    move-object/from16 v1, p0

    .line 157
    iget-object v0, v1, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "missed_incoming_call_sms_pattern_string_array"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_d9

    .line 159
    array-length v0, v7

    if-nez v0, :cond_12

    goto/16 :goto_d9

    .line 165
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->splitCalls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_cf

    .line 166
    array-length v0, v9

    if-lez v0, :cond_cf

    .line 167
    array-length v10, v9

    move v2, v8

    move v11, v2

    :goto_22
    if-ge v11, v10, :cond_ce

    aget-object v3, v9, v11

    .line 170
    array-length v4, v7

    move v5, v8

    :goto_28
    if-ge v5, v4, :cond_ca

    aget-object v6, v7, v5

    const/16 v0, 0x21

    .line 173
    :try_start_2e
    invoke-static {v6, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_32
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2e .. :try_end_32} :catch_a7

    .line 180
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_c6

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    .line 184
    :try_start_3f
    const-string v2, "month"

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_45} :catch_62

    .line 185
    :try_start_45
    const-string v3, "day"

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_4b} :catch_5f

    .line 186
    :try_start_4b
    const-string v4, "hour"

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_51} :catch_5d

    .line 187
    :try_start_51
    const-string v5, "minute"

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_57} :catch_65

    move-object v6, v5

    move-wide v15, v12

    :goto_59
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_6c

    :catch_5d
    move-object v4, v14

    goto :goto_65

    :catch_5f
    move-object v3, v14

    :goto_60
    move-object v4, v3

    goto :goto_65

    :catch_62
    move-object v2, v14

    move-object v3, v2

    goto :goto_60

    .line 197
    :catch_65
    :goto_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v15, v5

    move-object v6, v14

    goto :goto_59

    .line 202
    :goto_6c
    :try_start_6c
    const-string v2, "year"

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6c .. :try_end_72} :catch_73

    goto :goto_74

    :catch_73
    move-object v2, v14

    :goto_74
    cmp-long v17, v15, v12

    if-nez v17, :cond_93

    .line 209
    :try_start_78
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->getEpochTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v15

    cmp-long v2, v15, v12

    if-nez v2, :cond_93

    .line 211
    sget-object v2, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get the time. Use the current time."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8b} :catch_8c

    goto :goto_93

    .line 218
    :catch_8c
    sget-object v2, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get the time for missed incoming call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    :goto_93
    move-wide v2, v15

    .line 222
    :try_start_94
    const-string v4, "callerId"

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_94 .. :try_end_9a} :catch_9b

    goto :goto_a2

    .line 225
    :catch_9b
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v4, "Caller id is not provided or can\'t be parsed."

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_a2
    invoke-direct {v1, v2, v3, v14}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->createMissedIncomingCallEvent(JLjava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_ca

    :catch_a7
    move-exception v0

    .line 175
    sget-object v12, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Configuration error. Unexpected missed incoming call sms pattern: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", e="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_28

    :cond_ca
    :goto_ca
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_22

    :cond_ce
    move v8, v2

    :cond_cf
    if-nez v8, :cond_d8

    .line 235
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v1, "SMS did not match any missed incoming call SMS pattern."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    return v8

    .line 160
    :cond_d9
    :goto_d9
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v1, "Missed incoming call SMS pattern is not configured!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method private blacklist splitCalls(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_24

    .line 243
    const-string p0, "(\\n|\\s\\n)(\\n|\\s\\n)"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 244
    sget-object p1, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "splitTheMultipleCalls no of calls = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_18

    .line 245
    array-length v1, p0

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 246
    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist filter([[BLjava/lang/String;)Z
    .registers 6

    .line 98
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_37

    .line 103
    const-string v1, "missed_incoming_call_sms_originator_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 106
    aget-object p1, p1, v2

    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 108
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_37

    .line 109
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->processSms(Landroid/telephony/SmsMessage;)Z

    move-result p0

    return p0

    :cond_37
    return v2
.end method

.class public Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;
.super Ljava/lang/Object;
.source "PublishUtils.java"


# static fields
.field private static final blacklist DOMAIN_SEPARATOR:Ljava/lang/String; = "@"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist SCHEME_SIP:Ljava/lang/String; = "sip"

.field private static final blacklist SCHEME_TEL:Ljava/lang/String; = "tel"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PublishUtils"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 147
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "formatPhoneNumber: phone number is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_f
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist getCapabilityType(Landroid/content/Context;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 199
    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/util/UceUtils;->isPresenceSupported(Landroid/content/Context;I)Z

    move-result v0

    .line 200
    .local v0, "isPresenceSupported":Z
    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/util/UceUtils;->isSipOptionsSupported(Landroid/content/Context;I)Z

    move-result v1

    .line 201
    .local v1, "isSipOptionsSupported":Z
    if-eqz v0, :cond_c

    .line 202
    const/4 v2, 0x2

    return v2

    .line 203
    :cond_c
    if-eqz v1, :cond_10

    .line 204
    const/4 v2, 0x1

    return v2

    .line 207
    :cond_10
    const/4 v2, 0x0

    return v2
.end method

.method private static blacklist getContactUriFromIsim(Landroid/telephony/TelephonyManager;)Landroid/net/Uri;
    .registers 11
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .line 106
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getIsimImpu()[Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "impus":[Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4b

    if-nez v1, :cond_12

    goto :goto_4b

    .line 116
    :cond_12
    array-length v2, v1

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v2, :cond_43

    aget-object v5, v1, v4

    .line 117
    .local v5, "impu":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_40

    .line 118
    :cond_1f
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 119
    .local v6, "impuUri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "schemeSpecificPart":Ljava/lang/String;
    const-string v9, "sip"

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_40

    .line 122
    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 123
    return-object v6

    .line 116
    .end local v5    # "impu":Ljava/lang/String;
    .end local v6    # "impuUri":Landroid/net/Uri;
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v8    # "schemeSpecificPart":Ljava/lang/String;
    :cond_40
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 126
    :cond_43
    sget-object v2, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getContactUriFromIsim: there is no impu matching the domain"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v3

    .line 110
    :cond_4b
    :goto_4b
    sget-object v2, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContactUriFromIsim: domain is null="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v2, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContactUriFromIsim: impu is null="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 112
    if-eqz v1, :cond_7d

    array-length v5, v1

    if-nez v5, :cond_7a

    goto :goto_7d

    :cond_7a
    const-string v5, "false"

    goto :goto_7f

    :cond_7d
    :goto_7d
    const-string v5, "true"

    :goto_7f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v3
.end method

.method private static blacklist getContactUriFromLine1Number(Landroid/telephony/TelephonyManager;)Landroid/net/Uri;
    .registers 6
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .line 131
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 133
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Cannot get the phone number"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-object v2

    .line 137
    :cond_17
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "domain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sip"

    invoke-static {v4, v3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 141
    :cond_3f
    const-string v3, "tel"

    invoke-static {v3, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getConvertedTelUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 168
    if-nez p1, :cond_4

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 172
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 173
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 174
    return-object p1

    .line 177
    :cond_1f
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "numbers":Ljava/lang/String;
    const-string v2, "[@;:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "numberParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 181
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "simCountryIso":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_85

    .line 183
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 186
    .local v5, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_3e
    invoke-virtual {v5, v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v6

    .line 187
    .local v6, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v5, v6, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "telUri":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8
    :try_end_60
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_3e .. :try_end_60} :catch_62

    move-object p1, v8

    .line 192
    .end local v6    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v7    # "telUri":Ljava/lang/String;
    goto :goto_85

    .line 190
    :catch_62
    move-exception v6

    .line 191
    .local v6, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v7, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "formatNumber: could not format "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "manager":Landroid/telephony/TelephonyManager;
    .end local v1    # "numbers":Ljava/lang/String;
    .end local v2    # "numberParts":[Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "simCountryIso":Ljava/lang/String;
    .end local v5    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v6    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_85
    :goto_85
    return-object p1
.end method

.method public static blacklist getDeviceContactUri(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Z)Landroid/net/Uri;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "deviceCap"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p3, "isForPresence"    # Z

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "preferTelUri":Z
    if-eqz p3, :cond_7

    .line 56
    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/util/UceUtils;->isTelUriForPidfXmlEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 59
    :cond_7
    invoke-virtual {p2, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getImsAssociatedUri(Z)Landroid/net/Uri;

    move-result-object v1

    .line 60
    .local v1, "contactUri":Landroid/net/Uri;
    if-eqz v1, :cond_3f

    .line 61
    if-eqz v0, :cond_14

    invoke-static {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getConvertedTelUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    .line 62
    .local v2, "convertedUri":Landroid/net/Uri;
    :goto_15
    sget-object v3, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceContactUri: returning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 63
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string v5, "found"

    goto :goto_2d

    :cond_2b
    const-string v5, "converted"

    :goto_2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ims associated uri"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v1

    .line 69
    .end local v2    # "convertedUri":Landroid/net/Uri;
    :cond_3f
    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 70
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_4e

    .line 71
    sget-object v3, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getDeviceContactUri: TelephonyManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v3, 0x0

    return-object v3

    .line 74
    :cond_4e
    invoke-static {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getContactUriFromIsim(Landroid/telephony/TelephonyManager;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_63

    .line 76
    sget-object v3, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getDeviceContactUri: impu"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-eqz v0, :cond_62

    .line 78
    invoke-static {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getConvertedTelUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 80
    :cond_62
    return-object v1

    .line 83
    :cond_63
    sget-object v3, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getDeviceContactUri: line number"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz v0, :cond_75

    .line 85
    invoke-static {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getContactUriFromLine1Number(Landroid/telephony/TelephonyManager;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getConvertedTelUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 87
    :cond_75
    invoke-static {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getContactUriFromLine1Number(Landroid/telephony/TelephonyManager;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 155
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 156
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_c

    .line 157
    const/4 v1, 0x0

    return-object v1

    .line 159
    :cond_c
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist removeNumbersFromUris(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;

    .line 101
    const-string v0, "(?:sips?|tel):(\\+?[\\d\\-]+)"

    const-string v1, "[removed]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

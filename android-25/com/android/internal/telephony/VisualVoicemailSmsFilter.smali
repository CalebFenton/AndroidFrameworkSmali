.class public Lcom/android/internal/telephony/VisualVoicemailSmsFilter;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilter.java"


# static fields
.field private static final SYSTEM_VVM_CLIENT_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final TAG:Ljava/lang/String; = "VvmSmsFilter"

.field private static sPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static buildPatternsMap(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 117
    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 118
    return-void

    #@6
    .line 120
    :cond_0
    new-instance v4, Landroid/util/ArrayMap;

    #@8
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    #@b
    sput-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    #@d
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v4

    #@11
    .line 123
    const v5, 0x107004c

    #@14
    .line 122
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    array-length v9, v8

    #@19
    move v7, v6

    #@1a
    :goto_0
    if-ge v7, v9, :cond_3

    #@1c
    aget-object v0, v8, v7

    #@1e
    .line 124
    .local v0, "entry":Ljava/lang/String;
    const-string/jumbo v4, ";"

    #@21
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    aget-object v4, v4, v6

    #@27
    const-string/jumbo v5, ","

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 125
    .local v2, "mccMncList":[Ljava/lang/String;
    const-string/jumbo v4, ";"

    #@31
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    const/4 v5, 0x1

    #@36
    aget-object v4, v4, v5

    #@38
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3b
    move-result-object v3

    #@3c
    .line 127
    .local v3, "pattern":Ljava/util/regex/Pattern;
    array-length v10, v2

    #@3d
    move v5, v6

    #@3e
    :goto_1
    if-ge v5, v10, :cond_2

    #@40
    aget-object v1, v2, v5

    #@42
    .line 128
    .local v1, "mccMnc":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    #@44
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@47
    move-result v4

    #@48
    if-nez v4, :cond_1

    #@4a
    .line 129
    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    #@4c
    new-instance v11, Ljava/util/ArrayList;

    #@4e
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@51
    invoke-interface {v4, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 131
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    #@56
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v4

    #@5a
    check-cast v4, Ljava/util/List;

    #@5c
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5f
    .line 127
    add-int/lit8 v4, v5, 0x1

    #@61
    move v5, v4

    #@62
    goto :goto_1

    #@63
    .line 122
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v7, 0x1

    #@65
    move v7, v4

    #@66
    goto :goto_0

    #@67
    .line 116
    .end local v0    # "entry":Ljava/lang/String;
    .end local v2    # "mccMncList":[Ljava/lang/String;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    :cond_3
    return-void
.end method

.method public static filter(Landroid/content/Context;[[BLjava/lang/String;II)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "subId"    # I

    #@0
    .prologue
    .line 61
    const-string/jumbo v12, "phone"

    #@3
    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v10

    #@7
    check-cast v10, Landroid/telephony/TelephonyManager;

    #@9
    .line 64
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v11, "com.android.phone"

    #@c
    .line 67
    .local v11, "vvmClientPackage":Ljava/lang/String;
    move/from16 v0, p4

    #@e
    invoke-virtual {v10, v11, v0}, Landroid/telephony/TelephonyManager;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    #@11
    move-result-object v9

    #@12
    .line 68
    .local v9, "settings":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    if-nez v9, :cond_0

    #@14
    .line 69
    const/4 v12, 0x0

    #@15
    return v12

    #@16
    .line 73
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->getFullMessage([[BLjava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 75
    .local v4, "messageBody":Ljava/lang/String;
    if-nez v4, :cond_2

    #@1c
    .line 78
    const-string/jumbo v12, "VvmSmsFilter"

    #@1f
    const-string/jumbo v13, "Unparsable SMS received"

    #@22
    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 79
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->parseAsciiPduMessage([[B)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 80
    .local v1, "asciiMessage":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseAlternativeFormat(Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    #@2c
    move-result-object v5

    #@2d
    .line 82
    .local v5, "messageData":Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    if-eqz v5, :cond_1

    #@2f
    .line 83
    const/4 v12, 0x0

    #@30
    move/from16 v0, p4

    #@32
    invoke-static {p0, v11, v0, v5, v12}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    #@35
    .line 87
    :cond_1
    const/4 v12, 0x0

    #@36
    return v12

    #@37
    .line 89
    .end local v1    # "asciiMessage":Ljava/lang/String;
    .end local v5    # "messageData":Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    :cond_2
    iget-object v2, v9, Landroid/telephony/VisualVoicemailSmsFilterSettings;->clientPrefix:Ljava/lang/String;

    #@39
    .line 90
    .local v2, "clientPrefix":Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    #@3c
    move-result-object v5

    #@3d
    .line 92
    .restart local v5    # "messageData":Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    if-eqz v5, :cond_3

    #@3f
    .line 93
    const/4 v12, 0x0

    #@40
    move/from16 v0, p4

    #@42
    invoke-static {p0, v11, v0, v5, v12}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    #@45
    .line 94
    const/4 v12, 0x1

    #@46
    return v12

    #@47
    .line 97
    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->buildPatternsMap(Landroid/content/Context;)V

    #@4a
    .line 98
    move/from16 v0, p4

    #@4c
    invoke-virtual {v10, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 100
    .local v3, "mccMnc":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    #@52
    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v8

    #@56
    check-cast v8, Ljava/util/List;

    #@58
    .line 101
    .local v8, "patterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    if-eqz v8, :cond_4

    #@5a
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    #@5d
    move-result v12

    #@5e
    if-eqz v12, :cond_5

    #@60
    .line 102
    :cond_4
    const/4 v12, 0x0

    #@61
    return v12

    #@62
    .line 105
    :cond_5
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object v7

    #@66
    .local v7, "pattern$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result v12

    #@6a
    if-eqz v12, :cond_7

    #@6c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object v6

    #@70
    check-cast v6, Ljava/util/regex/Pattern;

    #@72
    .line 106
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@75
    move-result-object v12

    #@76
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    #@79
    move-result v12

    #@7a
    if-eqz v12, :cond_6

    #@7c
    .line 107
    const-string/jumbo v12, "VvmSmsFilter"

    #@7f
    new-instance v13, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v14, "Incoming SMS matches pattern "

    #@87
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v13

    #@8b
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v13

    #@8f
    const-string/jumbo v14, " but has illegal format, "

    #@92
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v13

    #@96
    .line 108
    const-string/jumbo v14, "still dropping as VVM SMS"

    #@99
    .line 107
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v13

    #@9d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v13

    #@a1
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    .line 109
    const/4 v12, 0x0

    #@a5
    move/from16 v0, p4

    #@a7
    invoke-static {p0, v11, v0, v12, v4}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    #@aa
    .line 110
    const/4 v12, 0x1

    #@ab
    return v12

    #@ac
    .line 113
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    :cond_7
    const/4 v12, 0x0

    #@ad
    return v12
.end method

.method private static getFullMessage([[BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pdus"    # [[B
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 158
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@7
    array-length v5, p0

    #@8
    :goto_0
    if-ge v4, v5, :cond_2

    #@a
    aget-object v3, p0, v4

    #@c
    .line 159
    .local v3, "pdu":[B
    invoke-static {v3, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@f
    move-result-object v2

    #@10
    .line 161
    .local v2, "message":Landroid/telephony/SmsMessage;
    if-nez v2, :cond_0

    #@12
    .line 163
    return-object v6

    #@13
    .line 165
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 166
    .local v0, "body":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@19
    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 158
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 170
    .end local v0    # "body":Ljava/lang/String;
    .end local v2    # "message":Landroid/telephony/SmsMessage;
    .end local v3    # "pdu":[B
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    return-object v4
.end method

.method private static parseAsciiPduMessage([[B)Ljava/lang/String;
    .locals 6
    .param p0, "pdus"    # [[B

    #@0
    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 175
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@6
    array-length v3, p0

    #@7
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    aget-object v1, p0, v2

    #@b
    .line 176
    .local v1, "pdu":[B
    new-instance v4, Ljava/lang/String;

    #@d
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@f
    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 175
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 178
    .end local v1    # "pdu":[B
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    return-object v2
.end method

.method private static sendVvmSmsBroadcast(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vvmClientPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "messageData"    # Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    .param p4, "messageBody"    # Ljava/lang/String;

    #@0
    .prologue
    .line 138
    const-string/jumbo v1, "VvmSmsFilter"

    #@3
    const-string/jumbo v2, "VVM SMS received"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 139
    new-instance v0, Landroid/content/Intent;

    #@b
    const-string/jumbo v1, "android.intent.action.VOICEMAIL_SMS_RECEIVED"

    #@e
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@11
    .line 140
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    #@13
    .line 141
    const-string/jumbo v1, "com.android.voicemail.extra.VOICEMAIL_SMS_PREFIX"

    #@16
    iget-object v2, p3, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->prefix:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    .line 142
    const-string/jumbo v1, "com.android.voicemail.extra.VOICEMAIL_SMS_FIELDS"

    #@1e
    iget-object v2, p3, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->fields:Landroid/os/Bundle;

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@23
    .line 144
    :cond_0
    if-eqz p4, :cond_1

    #@25
    .line 145
    const-string/jumbo v1, "com.android.voicemail.extra.VOICEMAIL_SMS_MESSAGE_BODY"

    #@28
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2b
    .line 147
    :cond_1
    const-string/jumbo v1, "com.android.voicemail.extra.VOICEMAIL_SMS_SUBID"

    #@2e
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@31
    .line 148
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@34
    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@37
    .line 137
    return-void
.end method

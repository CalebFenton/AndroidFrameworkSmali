.class public Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;
.super Ljava/lang/Object;
.source "PidfParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist PIDF_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist sLocalTimestampProxy:Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;

.field private static blacklist sOverrideTimestampProxy:Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PidfParser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->LOG_TAG:Ljava/lang/String;

    .line 63
    const-string v0, "\t|\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->PIDF_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    new-instance v0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->sLocalTimestampProxy:Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertToPidf(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/lang/String;
    .registers 8
    .param p0, "capabilities"    # Landroid/telephony/ims/RcsContactUceCapability;

    .line 92
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 95
    .local v0, "pidfWriter":Ljava/io/StringWriter;
    const/4 v1, 0x0

    :try_start_6
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 96
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 99
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 100
    const-string v4, ""

    const-string v5, "urn:ietf:params:xml:ns:pidf"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v4, "op"

    const-string v5, "urn:oma:xml:prs:pidf:oma-pres"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v4, "caps"

    const-string v5, "urn:ietf:params:xml:ns:pidf:caps"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getPresence(Landroid/telephony/ims/RcsContactUceCapability;)Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;

    move-result-object v4

    .line 108
    .local v4, "presence":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;
    const-string v5, "utf-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 109
    invoke-virtual {v4, v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 110
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 111
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_3d} :catch_48
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3d} :catch_43

    .line 119
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "presence":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;
    nop

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 116
    :catch_43
    move-exception v2

    .line 117
    .local v2, "ioException":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    return-object v1

    .line 113
    .end local v2    # "ioException":Ljava/io/IOException;
    :catch_48
    move-exception v2

    .line 114
    .local v2, "parserEx":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 115
    return-object v1
.end method

.method private static blacklist convertToRcsContactUceCapability(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;)Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;
    .registers 5
    .param p0, "presence"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;

    .line 198
    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 199
    sget-object v1, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->LOG_TAG:Ljava/lang/String;

    const-string v2, "convertToRcsContactUceCapability: The presence is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-object v0

    .line 202
    :cond_b
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->getEntity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 203
    sget-object v1, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->LOG_TAG:Ljava/lang/String;

    const-string v2, "convertToRcsContactUceCapability: The entity is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-object v0

    .line 207
    :cond_1d
    new-instance v0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;

    .line 208
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->getEntity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;-><init>(Landroid/net/Uri;II)V

    .line 212
    .local v0, "uceCapabilityWrapper":Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->getTupleList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->getEntity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->setEntityUri(Landroid/net/Uri;)V

    .line 224
    return-object v0
.end method

.method private static blacklist getRcsContactPresenceTuple(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Landroid/telephony/ims/RcsContactPresenceTuple;
    .registers 16
    .param p0, "tuple"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    .line 231
    if-nez p0, :cond_4

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_4
    const-string v0, "closed"

    .line 236
    .local v0, "status":Ljava/lang/String;
    const-string v1, "open"

    invoke-static {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getTupleStatus(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 237
    const-string v0, "open"

    .line 240
    :cond_14
    invoke-static {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getTupleServiceId(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "serviceId":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getTupleServiceVersion(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "serviceVersion":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getTupleServiceDescription(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "serviceDescription":Ljava/lang/String;
    new-instance v4, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    invoke-direct {v4, v0, v1, v2}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v4, "builder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    invoke-static {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getTupleContact(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "contact":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 250
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setContactUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    .line 254
    :cond_36
    invoke-static {}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->getTimestampProxy()Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;->getTimestamp()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setTime(Ljava/time/Instant;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    .line 257
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 258
    invoke-virtual {v4, v3}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setServiceDescription(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    .line 262
    :cond_4a
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getServiceCaps()Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;

    move-result-object v6

    .line 263
    .local v6, "serviceCaps":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;
    if-eqz v6, :cond_df

    .line 264
    invoke-virtual {v6}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->getElements()Ljava/util/List;

    move-result-object v7

    .line 265
    .local v7, "serviceCapsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;>;"
    if-eqz v7, :cond_df

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_df

    .line 266
    const/4 v8, 0x0

    .line 267
    .local v8, "isAudioSupported":Z
    const/4 v9, 0x0

    .line 268
    .local v9, "isVideoSupported":Z
    const/4 v10, 0x0

    .line 269
    .local v10, "supportedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 271
    .local v11, "notSupportedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_64
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;

    .line 272
    .local v13, "element":Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
    instance-of v14, v13, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;

    if-eqz v14, :cond_7c

    .line 273
    move-object v14, v13

    check-cast v14, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;

    invoke-virtual {v14}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;->isAudioSupported()Z

    move-result v8

    goto :goto_9a

    .line 274
    :cond_7c
    instance-of v14, v13, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Video;

    if-eqz v14, :cond_88

    .line 275
    move-object v14, v13

    check-cast v14, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Video;

    invoke-virtual {v14}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Video;->isVideoSupported()Z

    move-result v9

    goto :goto_9a

    .line 276
    :cond_88
    instance-of v14, v13, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;

    if-eqz v14, :cond_9a

    .line 277
    move-object v14, v13

    check-cast v14, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;

    invoke-virtual {v14}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->getSupportedTypes()Ljava/util/List;

    move-result-object v10

    .line 278
    move-object v14, v13

    check-cast v14, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;

    invoke-virtual {v14}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->getNotSupportedTypes()Ljava/util/List;

    move-result-object v11

    .line 280
    .end local v13    # "element":Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
    :cond_9a
    :goto_9a
    goto :goto_64

    .line 282
    :cond_9b
    new-instance v12, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    invoke-direct {v12, v8, v9}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;-><init>(ZZ)V

    .line 285
    .local v12, "capabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    if-eqz v10, :cond_bc

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_bc

    .line 286
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_ac
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_bc

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 287
    .local v14, "supportedType":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->addSupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    .line 288
    .end local v14    # "supportedType":Ljava/lang/String;
    goto :goto_ac

    .line 291
    :cond_bc
    if-eqz v11, :cond_d8

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d8

    .line 292
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 293
    .local v14, "notSupportedType":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->addUnsupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    .line 294
    .end local v14    # "notSupportedType":Ljava/lang/String;
    goto :goto_c8

    .line 296
    :cond_d8
    invoke-virtual {v12}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    .line 299
    .end local v7    # "serviceCapsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;>;"
    .end local v8    # "isAudioSupported":Z
    .end local v9    # "isVideoSupported":Z
    .end local v10    # "supportedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "notSupportedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "capabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    :cond_df
    invoke-virtual {v4}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v7

    return-object v7
.end method

.method public static blacklist getRcsContactUceCapabilityWrapper(Ljava/lang/String;)Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;
    .registers 8
    .param p0, "pidf"    # Ljava/lang/String;

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 129
    sget-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getRcsContactUceCapabilityWrapper: The given pidf is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v1

    .line 134
    :cond_f
    sget-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->PIDF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 135
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "formattedPidf":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 137
    sget-object v3, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getRcsContactUceCapabilityWrapper: The formatted pidf is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v1

    .line 141
    :cond_29
    const/4 v3, 0x0

    .line 144
    .local v3, "reader":Ljava/io/Reader;
    :try_start_2a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 145
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v5, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 146
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 147
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 150
    invoke-static {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->parsePidf(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;

    move-result-object v5

    .line 153
    .local v5, "presence":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;
    invoke-static {v5}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->convertToRcsContactUceCapability(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;)Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;

    move-result-object v1
    :try_end_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_49} :catch_55
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_49} :catch_55
    .catchall {:try_start_2a .. :try_end_49} :catchall_53

    .line 158
    nop

    .line 160
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 163
    goto :goto_52

    .line 161
    :catch_4e
    move-exception v6

    .line 162
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 153
    .end local v6    # "e":Ljava/io/IOException;
    :goto_52
    return-object v1

    .line 158
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "presence":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;
    :catchall_53
    move-exception v1

    goto :goto_65

    .line 155
    :catch_55
    move-exception v4

    .line 156
    .local v4, "e":Ljava/lang/Exception;
    :try_start_56
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_53

    .line 158
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_64

    .line 160
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 163
    :goto_5e
    goto :goto_64

    .line 161
    :catch_5f
    move-exception v4

    .line 162
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5e

    .line 166
    :cond_64
    :goto_64
    return-object v1

    .line 158
    :goto_65
    if-eqz v3, :cond_6f

    .line 160
    :try_start_67
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 163
    goto :goto_6f

    .line 161
    :catch_6b
    move-exception v4

    .line 162
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6f
    :goto_6f
    throw v1
.end method

.method private static blacklist getTimestampProxy()Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;
    .registers 1

    .line 85
    sget-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->sOverrideTimestampProxy:Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->sOverrideTimestampProxy:Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->sLocalTimestampProxy:Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;

    :goto_9
    return-object v0
.end method

.method static synthetic blacklist lambda$convertToRcsContactUceCapability$1(Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)V
    .registers 3
    .param p0, "uceCapabilityWrapper"    # Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;
    .param p1, "tuple"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    .line 214
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getMalformed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 215
    invoke-static {p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->getRcsContactPresenceTuple(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v0

    .line 216
    .local v0, "capabilityTuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    if-eqz v0, :cond_f

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->addCapabilityTuple(Landroid/telephony/ims/RcsContactPresenceTuple;)V

    .line 219
    .end local v0    # "capabilityTuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    :cond_f
    goto :goto_13

    .line 220
    :cond_10
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->setMalformedContents()V

    .line 222
    :goto_13
    return-void
.end method

.method static synthetic blacklist lambda$static$0()Ljava/time/Instant;
    .registers 1

    .line 74
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parsePidf(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "presence":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 173
    .local v1, "nextType":I
    const/4 v2, 0x0

    .line 176
    .local v2, "findPresenceTag":Z
    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_20

    .line 177
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "presence"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 178
    const/4 v2, 0x1

    .line 179
    new-instance v3, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;

    invoke-direct {v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;-><init>()V

    move-object v0, v3

    .line 180
    invoke-virtual {v0, p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 181
    goto :goto_27

    .line 183
    :cond_20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 184
    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 186
    :goto_27
    if-nez v2, :cond_30

    .line 187
    sget-object v3, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->LOG_TAG:Ljava/lang/String;

    const-string v4, "parsePidf: The presence start tag not found."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_30
    return-object v0
.end method

.method public static blacklist setTimestampProxy(Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;)V
    .registers 1
    .param p0, "proxy"    # Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;

    .line 81
    sput-object p0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->sOverrideTimestampProxy:Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;

    .line 82
    return-void
.end method

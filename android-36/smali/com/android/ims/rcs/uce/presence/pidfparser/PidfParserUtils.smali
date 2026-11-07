.class public Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;
.super Ljava/lang/Object;
.source "PidfParserUtils.java"


# static fields
.field private static blacklist REQUEST_RESULT_REASON_NOT_FOUND:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 52
    const-string v0, "noresource"

    const-string v1, "rejected"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->REQUEST_RESULT_REASON_NOT_FOUND:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getNotFoundContactCapabilities(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 4
    .param p0, "contact"    # Landroid/net/Uri;

    .line 316
    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;-><init>(Landroid/net/Uri;II)V

    .line 320
    .local v0, "builder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    invoke-virtual {v0}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v1

    return-object v1
.end method

.method static blacklist getPresence(Landroid/telephony/ims/RcsContactUceCapability;)Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;
    .registers 6
    .param p0, "capabilities"    # Landroid/telephony/ims/RcsContactUceCapability;

    .line 59
    new-instance v0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;

    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactUceCapability;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;-><init>(Landroid/net/Uri;)V

    .line 61
    .local v0, "presence":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;
    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityTuples()Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, "tupleList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactPresenceTuple;>;"
    if-eqz v1, :cond_31

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_31

    .line 66
    :cond_16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsContactPresenceTuple;

    .line 67
    .local v3, "presenceTuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    invoke-static {v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getTupleElement(Landroid/telephony/ims/RcsContactPresenceTuple;)Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    move-result-object v4

    .line 68
    .local v4, "tupleElement":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    if-eqz v4, :cond_2f

    .line 69
    invoke-virtual {v0, v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->addTuple(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)V

    .line 71
    .end local v3    # "presenceTuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    .end local v4    # "tupleElement":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    :cond_2f
    goto :goto_1a

    .line 73
    :cond_30
    return-object v0

    .line 63
    :cond_31
    :goto_31
    return-object v0
.end method

.method public static blacklist getTerminatedCapability(Landroid/net/Uri;Ljava/lang/String;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 5
    .param p0, "contact"    # Landroid/net/Uri;
    .param p1, "reason"    # Ljava/lang/String;

    .line 300
    if-nez p1, :cond_4

    const-string p1, ""

    .line 301
    :cond_4
    sget-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->REQUEST_RESULT_REASON_NOT_FOUND:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 302
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    .line 303
    const/4 v0, 0x2

    goto :goto_1d

    .line 304
    :cond_1c
    move v0, v2

    :goto_1d
    nop

    .line 306
    .local v0, "requestResult":I
    new-instance v1, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    invoke-direct {v1, p0, v2, v0}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;-><init>(Landroid/net/Uri;II)V

    .line 309
    .local v1, "builder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    invoke-virtual {v1}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getTupleContact(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Ljava/lang/String;
    .registers 3
    .param p0, "tuple"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    .line 262
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 263
    return-object v0

    .line 265
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getContact()Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;

    move-result-object v1

    .line 266
    .local v1, "contact":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;
    if-eqz v1, :cond_f

    .line 267
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->getContact()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_f
    return-object v0
.end method

.method private static blacklist getTupleElement(Landroid/telephony/ims/RcsContactPresenceTuple;)Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    .registers 5
    .param p0, "presenceTuple"    # Landroid/telephony/ims/RcsContactPresenceTuple;

    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_4
    new-instance v0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;-><init>()V

    .line 86
    .local v0, "tupleElement":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactPresenceTuple;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->handleTupleStatusElement(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceId()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceDescription()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->handleTupleServiceDescriptionElement(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceCapabilities()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->handleServiceCapsElement(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)V

    .line 96
    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactPresenceTuple;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->handleTupleContactElement(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;Landroid/net/Uri;)V

    .line 98
    return-object v0
.end method

.method public static blacklist getTupleMalformedStatus(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Z
    .registers 2
    .param p0, "tuple"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    .line 290
    if-nez p0, :cond_4

    .line 291
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getMalformed()Z

    move-result v0

    return v0
.end method

.method public static blacklist getTupleServiceDescription(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Ljava/lang/String;
    .registers 4
    .param p0, "tuple"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    .line 245
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 246
    return-object v0

    .line 248
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getServiceDescription()Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

    move-result-object v1

    .line 249
    .local v1, "servDescription":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;
    if-eqz v1, :cond_15

    .line 250
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->getDescription()Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;

    move-result-object v2

    .line 251
    .local v2, "description":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;
    if-eqz v2, :cond_15

    .line 252
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    .end local v2    # "description":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;
    :cond_15
    return-object v0
.end method

.method public static blacklist getTupleServiceId(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Ljava/lang/String;
    .registers 4
    .param p0, "tuple"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    .line 211
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 212
    return-object v0

    .line 214
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getServiceDescription()Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

    move-result-object v1

    .line 215
    .local v1, "servDescription":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;
    if-eqz v1, :cond_15

    .line 216
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->getServiceId()Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;

    move-result-object v2

    .line 217
    .local v2, "serviceId":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;
    if-eqz v2, :cond_15

    .line 218
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    .end local v2    # "serviceId":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;
    :cond_15
    return-object v0
.end method

.method public static blacklist getTupleServiceVersion(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Ljava/lang/String;
    .registers 4
    .param p0, "tuple"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    .line 228
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 229
    return-object v0

    .line 231
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getServiceDescription()Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

    move-result-object v1

    .line 232
    .local v1, "servDescription":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;
    if-eqz v1, :cond_15

    .line 233
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->getVersion()Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;

    move-result-object v2

    .line 234
    .local v2, "version":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;
    if-eqz v2, :cond_15

    .line 235
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    .end local v2    # "version":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;
    :cond_15
    return-object v0
.end method

.method public static blacklist getTupleStatus(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Ljava/lang/String;
    .registers 4
    .param p0, "tuple"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    .line 194
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 195
    return-object v0

    .line 197
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getStatus()Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;

    move-result-object v1

    .line 198
    .local v1, "status":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;
    if-eqz v1, :cond_15

    .line 199
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->getBasic()Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;

    move-result-object v2

    .line 200
    .local v2, "basic":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;
    if-eqz v2, :cond_15

    .line 201
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    .end local v2    # "basic":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;
    :cond_15
    return-object v0
.end method

.method public static blacklist getTupleTimestamp(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)Ljava/lang/String;
    .registers 3
    .param p0, "tuple"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    .line 276
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 277
    return-object v0

    .line 279
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getTimestamp()Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;

    move-result-object v1

    .line 280
    .local v1, "timestamp":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;
    if-eqz v1, :cond_f

    .line 281
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 283
    :cond_f
    return-object v0
.end method

.method private static blacklist handleServiceCapsElement(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)V
    .registers 10
    .param p0, "tupleElement"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    .param p1, "serviceCaps"    # Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    .line 160
    if-nez p1, :cond_3

    .line 161
    return-void

    .line 164
    :cond_3
    new-instance v0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;-><init>()V

    .line 167
    .local v0, "servCapsElement":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;
    new-instance v1, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;

    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->isAudioCapable()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;-><init>(Z)V

    .line 168
    .local v1, "audioElement":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;
    new-instance v2, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Video;

    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->isVideoCapable()Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Video;-><init>(Z)V

    .line 169
    .local v2, "videoElement":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Video;
    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->addElement(Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;)V

    .line 170
    invoke-virtual {v0, v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->addElement(Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;)V

    .line 173
    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->getSupportedDuplexModes()Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, "supportedDuplexModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->getUnsupportedDuplexModes()Ljava/util/List;

    move-result-object v4

    .line 175
    .local v4, "UnsupportedDuplexModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_30

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_38

    :cond_30
    if-eqz v4, :cond_5f

    .line 176
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5f

    .line 177
    :cond_38
    new-instance v5, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;

    invoke-direct {v5}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;-><init>()V

    .line 178
    .local v5, "duplex":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_4d

    .line 179
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->addSupportedType(Ljava/lang/String;)V

    .line 181
    :cond_4d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5c

    .line 182
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->addNotSupportedType(Ljava/lang/String;)V

    .line 184
    :cond_5c
    invoke-virtual {v0, v5}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->addElement(Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;)V

    .line 187
    .end local v5    # "duplex":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;
    :cond_5f
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->setServiceCaps(Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;)V

    .line 188
    return-void
.end method

.method private static blacklist handleTupleContactElement(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;Landroid/net/Uri;)V
    .registers 4
    .param p0, "tupleElement"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 102
    if-nez p1, :cond_3

    .line 103
    return-void

    .line 105
    :cond_3
    new-instance v0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;-><init>()V

    .line 106
    .local v0, "contactElement":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->setContact(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->setContact(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;)V

    .line 108
    return-void
.end method

.method private static blacklist handleTupleServiceDescriptionElement(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "tupleElement"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "serviceIdElement":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;
    const/4 v1, 0x0

    .line 124
    .local v1, "versionElement":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;
    const/4 v2, 0x0

    .line 127
    .local v2, "descriptionElement":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 128
    new-instance v3, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;

    invoke-direct {v3, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 132
    :cond_f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 133
    const-string v3, "\\."

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "versionAry":[Ljava/lang/String;
    if-eqz v3, :cond_35

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_35

    .line 135
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 136
    .local v4, "majorVersion":I
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 137
    .local v5, "minorVersion":I
    new-instance v6, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;

    invoke-direct {v6, v4, v5}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;-><init>(II)V

    move-object v1, v6

    .line 142
    .end local v3    # "versionAry":[Ljava/lang/String;
    .end local v4    # "majorVersion":I
    .end local v5    # "minorVersion":I
    :cond_35
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 143
    new-instance v3, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;

    invoke-direct {v3, p3}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 147
    :cond_41
    if-eqz v0, :cond_58

    if-eqz v1, :cond_58

    .line 148
    new-instance v3, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

    invoke-direct {v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;-><init>()V

    .line 149
    .local v3, "serviceDescription":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;
    invoke-virtual {v3, v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->setServiceId(Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;)V

    .line 150
    invoke-virtual {v3, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->setVersion(Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;)V

    .line 151
    if-eqz v2, :cond_55

    .line 152
    invoke-virtual {v3, v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->setDescription(Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;)V

    .line 154
    :cond_55
    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->setServiceDescription(Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;)V

    .line 156
    .end local v3    # "serviceDescription":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;
    :cond_58
    return-void
.end method

.method private static blacklist handleTupleStatusElement(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;Ljava/lang/String;)V
    .registers 4
    .param p0, "tupleElement"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    .param p1, "status"    # Ljava/lang/String;

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    return-void

    .line 114
    :cond_7
    new-instance v0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;

    invoke-direct {v0, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "basicElement":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;
    new-instance v1, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;-><init>()V

    .line 116
    .local v1, "statusElement":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;
    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->setBasic(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;)V

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->setStatus(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;)V

    .line 118
    return-void
.end method

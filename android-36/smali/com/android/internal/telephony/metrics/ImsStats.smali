.class public Lcom/android/internal/telephony/metrics/ImsStats;
.super Ljava/lang/Object;
.source "ImsStats.java"


# static fields
.field private static final blacklist PATTERN_HOSTNAME:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_IMEI:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_IPV4:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_IPV6:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_UNKNOWN_ID:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_UNSEGMENTED_IMEI_IMSI:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_URI:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_UUID:Ljava/util/regex/Pattern;

.field private static final blacklist TAG:Ljava/lang/String; = "ImsStats"


# instance fields
.field private blacklist mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private blacklist mLastRegistrationState:I

.field private blacklist mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

.field private blacklist mLastTimestamp:J

.field blacklist mLastTransportType:I

.field private final blacklist mLastWlanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private final blacklist mLastWwanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private final blacklist mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private final blacklist mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 80
    const-string v0, "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UUID:Ljava/util/regex/Pattern;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "([a-zA-Z]{2,}:)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 94
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_URI:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    .line 106
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IPV4:Ljava/util/regex/Pattern;

    .line 121
    const-string v0, "([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,6}(:[0-9a-fA-F]{1,4}){1,6}|([0-9a-fA-F]{1,4}:){1,7}:|:(:[0-9a-fA-F]{1,4}){1,7}"

    .line 122
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IPV6:Ljava/util/regex/Pattern;

    .line 140
    const-string v0, "(^|[^0-9])(?:[0-9]{8}-[0-9]{6}-[0-9][0-9]?|[0-9]{2}-[0-9]{6}-[0-9]{6}-[0-9][0-9]?|[0-9]{16})($|[^0-9])"

    .line 141
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IMEI:Ljava/util/regex/Pattern;

    .line 158
    const-string v0, "(^|[^0-9])[0-9]{15}($|[^0-9])"

    .line 159
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UNSEGMENTED_IMEI_IMSI:Ljava/util/regex/Pattern;

    .line 172
    const-string v0, "([0-9a-zA-Z][0-9a-zA-Z_\\-]{0,61}[0-9a-zA-Z]\\.){2,}[a-zA-Z]{2,}"

    .line 173
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_HOSTNAME:Ljava/util/regex/Pattern;

    .line 188
    const-string v0, "(^|[^0-9a-fA-F])(([-\\.]?0)*[1-9a-fA-F]([-\\.]?[0-9a-fA-F]){5,}|0*[1-9a-fA-F]([0-9a-fA-F]){4,})"

    .line 189
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UNKNOWN_ID:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .registers 4

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    const/4 v0, -0x1

    .line 203
    iput v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastTransportType:I

    .line 205
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 209
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWwanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 210
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWlanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 213
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 216
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getDefaultImsRegistrationStats()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 217
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->updateImsRegistrationStats()V

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastTimestamp:J

    return-void
.end method

.method private blacklist convertRegistrationTechToNetworkType(I)I
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_29

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    .line 493
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "convertRegistrationTechToNetworkType: unknown radio tech %d"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getWwanPsRat()I

    move-result p0

    return p0

    :cond_20
    const/16 p0, 0x14

    return p0

    :cond_23
    const/16 p0, 0x12

    return p0

    :cond_26
    const/16 p0, 0xd

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist convertTransportTypeToNetworkType(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 p0, 0x2

    if-eq p1, p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/16 p0, 0x12

    return p0

    .line 427
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getWwanPsRat()I

    move-result p0

    return p0
.end method

.method private static blacklist copyOfDimensionsOnly(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 3

    .line 499
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;-><init>()V

    .line 501
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    .line 502
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    .line 503
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    .line 504
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    iput-boolean p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    return-object v0
.end method

.method public static blacklist filterExtraMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 517
    const-string p0, ""

    return-object p0

    .line 520
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UUID:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<UUID_REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 521
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_URI:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1<REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 522
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_HOSTNAME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<HOSTNAME_REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 523
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IPV4:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<IPV4_REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 524
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IPV6:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<IPV6_REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 525
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IMEI:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1<IMEI_REDACTED>$2"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 526
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UNSEGMENTED_IMEI_IMSI:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1<IMEI_IMSI_REDACTED>$2"

    .line 527
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 528
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UNKNOWN_ID:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1<ID_REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 530
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_72

    const/4 v0, 0x0

    .line 531
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_72
    return-object p0
.end method

.method private blacklist getDefaultImsRegistrationStats()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 2

    .line 443
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    .line 444
    new-instance p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;-><init>()V

    const/4 v0, 0x0

    .line 445
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    return-object p0
.end method

.method private blacklist getLastCapableFeaturesForNetworkType(I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 3

    if-eqz p1, :cond_c

    const/16 v0, 0x12

    if-eq p1, v0, :cond_9

    .line 476
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWwanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object p0

    .line 474
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWlanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getLastCapableFeaturesForTech(I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    .line 464
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWwanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object p0

    .line 462
    :cond_c
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWlanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getRatAtEnd(I)I
    .registers 3

    const/16 v0, 0x12

    if-ne p1, v0, :cond_5

    return p1

    .line 420
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getWwanPsRat()I

    move-result p0

    return p0
.end method

.method private blacklist getWwanPsRat()I
    .registers 2

    .line 437
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    const/4 v0, 0x2

    .line 437
    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result p0

    return p0
.end method

.method private varargs blacklist loge(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 540
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private varargs blacklist logw(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 536
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist updateImsRegistrationStats()V
    .registers 4

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    .line 452
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist conclude()V
    .registers 15

    monitor-enter p0

    .line 228
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getTimeMillis()J

    move-result-wide v0

    .line 230
    iget-wide v2, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastTimestamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gez v4, :cond_21

    .line 232
    const-string v4, "conclude: discarding transient stats, duration=%d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/metrics/ImsStats;->logw(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_cd

    :catchall_1e
    move-exception v0

    goto/16 :goto_d1

    .line 234
    :cond_21
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-static {v4}, Lcom/android/internal/telephony/metrics/ImsStats;->copyOfDimensionsOnly(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object v4

    .line 236
    iget v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    if-nez v5, :cond_3c

    .line 237
    const-string v4, "conclude: discarding UNKNOWN RAT, duration=%d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/metrics/ImsStats;->logw(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastTimestamp:J
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_1e

    .line 239
    monitor-exit p0

    return-void

    .line 242
    :cond_3c
    :try_start_3c
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    iput v6, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    const/4 v6, 0x0

    .line 244
    iput v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    .line 246
    iget v5, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    if-eqz v5, :cond_c6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_51

    goto/16 :goto_c8

    .line 248
    :cond_51
    iput-wide v2, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 251
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v5, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v5

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_5f

    move-wide v10, v2

    goto :goto_60

    :cond_5f
    move-wide v10, v8

    :goto_60
    iput-wide v10, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 253
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v5, v7}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v5

    if-eqz v5, :cond_6c

    move-wide v10, v2

    goto :goto_6d

    :cond_6c
    move-wide v10, v8

    :goto_6d
    iput-wide v10, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 255
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v5

    if-eqz v5, :cond_7a

    move-wide v11, v2

    goto :goto_7b

    :cond_7a
    move-wide v11, v8

    :goto_7b
    iput-wide v11, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 257
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v5

    if-eqz v5, :cond_89

    move-wide v12, v2

    goto :goto_8a

    :cond_89
    move-wide v12, v8

    :goto_8a
    iput-wide v12, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 260
    iget v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    const/16 v12, 0x12

    if-ne v5, v12, :cond_95

    .line 261
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWlanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    goto :goto_97

    .line 262
    :cond_95
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWwanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 264
    :goto_97
    invoke-virtual {v5, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v6

    if-eqz v6, :cond_9f

    move-wide v12, v2

    goto :goto_a0

    :cond_9f
    move-wide v12, v8

    :goto_a0
    iput-wide v12, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 266
    invoke-virtual {v5, v7}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v6

    if-eqz v6, :cond_aa

    move-wide v6, v2

    goto :goto_ab

    :cond_aa
    move-wide v6, v8

    :goto_ab
    iput-wide v6, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 268
    invoke-virtual {v5, v10}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v6

    if-eqz v6, :cond_b5

    move-wide v6, v2

    goto :goto_b6

    :cond_b5
    move-wide v6, v8

    :goto_b6
    iput-wide v6, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 270
    invoke-virtual {v5, v11}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v5

    if-eqz v5, :cond_bf

    goto :goto_c0

    :cond_bf
    move-wide v2, v8

    :goto_c0
    iput-wide v2, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    goto :goto_c8

    .line 273
    :cond_c3
    iput-wide v2, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    goto :goto_c8

    .line 276
    :cond_c6
    iput-wide v2, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    .line 279
    :goto_c8
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V

    .line 282
    :goto_cd
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastTimestamp:J
    :try_end_cf
    .catchall {:try_start_3c .. :try_end_cf} :catchall_1e

    .line 283
    monitor-exit p0

    return-void

    :goto_d1
    :try_start_d1
    monitor-exit p0
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_1e

    throw v0
.end method

.method public declared-synchronized blacklist getImsVoiceRadioTech()I
    .registers 3

    monitor-enter p0

    .line 411
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x1

    .line 412
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 415
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    goto :goto_1a

    .line 413
    :cond_17
    :goto_17
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_15

    throw v0
.end method

.method protected blacklist getTimeMillis()J
    .registers 3

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist onImsCapabilitiesChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 9

    monitor-enter p0

    .line 288
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    .line 291
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->convertRegistrationTechToNetworkType(I)I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    .line 295
    :goto_11
    iput v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastTransportType:I

    .line 296
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v4, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    const/4 v5, 0x0

    if-eq v4, v0, :cond_20

    .line 297
    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    move v0, v3

    goto :goto_21

    :catchall_1e
    move-exception p1

    goto :goto_51

    :cond_20
    move v0, v5

    :goto_21
    if-ne p1, v2, :cond_25

    move p1, v3

    goto :goto_26

    :cond_25
    move p1, v5

    .line 300
    :goto_26
    iput-boolean p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    .line 302
    invoke-virtual {p2, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p1

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 304
    invoke-virtual {v1, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eq v1, p1, :cond_35

    goto :goto_36

    :cond_35
    move v3, v5

    .line 305
    :goto_36
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    if-eqz v0, :cond_3c

    if-nez p1, :cond_3e

    :cond_3c
    if-eqz v3, :cond_4f

    .line 310
    :cond_3e
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceStateStats()Lcom/android/internal/telephony/metrics/ServiceStateStats;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->onImsVoiceRegistrationChanged()V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_1e

    .line 313
    :cond_4f
    monitor-exit p0

    return-void

    :goto_51
    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_1e

    throw p1
.end method

.method public declared-synchronized blacklist onImsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 6

    monitor-enter p0

    .line 342
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    goto :goto_e

    :catchall_c
    move-exception p1

    goto :goto_3a

    .line 348
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    .line 350
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastTransportType:I

    .line 352
    iget v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    if-nez v0, :cond_1e

    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->updateImsRegistrationStats()V

    .line 356
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 357
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/metrics/ImsStats;->convertTransportTypeToNetworkType(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result p1

    if-ne p1, v2, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    .line 360
    iput v2, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_c

    .line 361
    monitor-exit p0

    return-void

    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_c

    throw p1
.end method

.method public declared-synchronized blacklist onImsRegistering(I)V
    .registers 3

    monitor-enter p0

    .line 331
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    .line 333
    iput p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastTransportType:I

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->updateImsRegistrationStats()V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->convertTransportTypeToNetworkType(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    const/4 p1, 0x1

    .line 336
    iput p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 337
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized blacklist onImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7

    monitor-enter p0

    .line 365
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    .line 368
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;-><init>()V

    .line 369
    iget v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    if-eqz v1, :cond_24

    .line 370
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    iput v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    .line 371
    iget v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/ImsStats;->getRatAtEnd(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    .line 372
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget-boolean v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isIwlanCrossSim:Z

    goto :goto_30

    :catchall_22
    move-exception p1

    goto :goto_74

    .line 375
    :cond_24
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    .line 377
    :goto_30
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/ImsStats;->getRatAtEnd(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    .line 378
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    .line 379
    iget v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_49

    move v1, v4

    goto :goto_4a

    :cond_49
    move v1, v3

    :goto_4a
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    .line 380
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    .line 381
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    .line 382
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ImsStats;->filterExtraMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    .line 383
    iput v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    .line 384
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationTermination(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V

    .line 387
    iput v3, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    .line 388
    new-instance p1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_22

    .line 389
    monitor-exit p0

    return-void

    :goto_74
    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_22

    throw p1
.end method

.method public declared-synchronized blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3

    monitor-enter p0

    .line 393
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    .line 395
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p1

    .line 396
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->getLastCapableFeaturesForNetworkType(I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    goto :goto_1a

    :catchall_13
    move-exception p1

    goto :goto_1c

    .line 401
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_13

    .line 403
    :goto_1a
    monitor-exit p0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_13

    throw p1
.end method

.method public declared-synchronized blacklist onSetFeatureResponse(III)V
    .registers 5

    monitor-enter p0

    .line 318
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/ImsStats;->getLastCapableFeaturesForTech(I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_13

    .line 322
    invoke-virtual {p2, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    goto :goto_16

    :catchall_11
    move-exception p1

    goto :goto_18

    .line 324
    :cond_13
    invoke-virtual {p2, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_11

    .line 327
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_11

    throw p1
.end method

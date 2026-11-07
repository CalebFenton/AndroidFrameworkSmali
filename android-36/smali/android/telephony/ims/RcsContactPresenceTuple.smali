.class public final Landroid/telephony/ims/RcsContactPresenceTuple;
.super Ljava/lang/Object;
.source "RcsContactPresenceTuple.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;,
        Landroid/telephony/ims/RcsContactPresenceTuple$Builder;,
        Landroid/telephony/ims/RcsContactPresenceTuple$BasicStatus;,
        Landroid/telephony/ims/RcsContactPresenceTuple$ServiceId;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RcsContactPresenceTuple"

.field public static final whitelist SERVICE_ID_CALL_COMPOSER:Ljava/lang/String; = "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callcomposer"

.field public static final whitelist SERVICE_ID_CHATBOT:Ljava/lang/String; = "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot"

.field public static final whitelist SERVICE_ID_CHATBOT_ROLE:Ljava/lang/String; = "org.gsma.rcs.isbot"

.field public static final whitelist SERVICE_ID_CHATBOT_STANDALONE:Ljava/lang/String; = " org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot.sa"

.field public static final whitelist SERVICE_ID_CHAT_V1:Ljava/lang/String; = "org.openmobilealliance:IM-session"

.field public static final whitelist SERVICE_ID_CHAT_V2:Ljava/lang/String; = "org.openmobilealliance:ChatSession"

.field public static final whitelist SERVICE_ID_FT:Ljava/lang/String; = "org.openmobilealliance:File-Transfer-HTTP"

.field public static final whitelist SERVICE_ID_FT_OVER_SMS:Ljava/lang/String; = "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.ftsms"

.field public static final whitelist SERVICE_ID_GEO_PUSH:Ljava/lang/String; = "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geopush"

.field public static final whitelist SERVICE_ID_GEO_PUSH_VIA_SMS:Ljava/lang/String; = "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geosms"

.field public static final whitelist SERVICE_ID_MMTEL:Ljava/lang/String; = "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel"

.field public static final whitelist SERVICE_ID_POST_CALL:Ljava/lang/String; = "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callunanswered"

.field public static final blacklist SERVICE_ID_PRESENCE:Ljava/lang/String; = "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcse.dp"

.field public static final whitelist SERVICE_ID_SHARED_MAP:Ljava/lang/String; = "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedmap"

.field public static final whitelist SERVICE_ID_SHARED_SKETCH:Ljava/lang/String; = "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedsketch"

.field public static final whitelist SERVICE_ID_SLM:Ljava/lang/String; = "org.openmobilealliance:StandaloneMsg"

.field public static final whitelist TUPLE_BASIC_STATUS_CLOSED:Ljava/lang/String; = "closed"

.field public static final whitelist TUPLE_BASIC_STATUS_OPEN:Ljava/lang/String; = "open"


# instance fields
.field private blacklist mContactUri:Landroid/net/Uri;

.field private blacklist mServiceCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

.field private blacklist mServiceDescription:Ljava/lang/String;

.field private blacklist mServiceId:Ljava/lang/String;

.field private blacklist mServiceVersion:Ljava/lang/String;

.field private blacklist mStatus:Ljava/lang/String;

.field private blacklist mTimestamp:Ljava/time/Instant;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmContactUri(Landroid/telephony/ims/RcsContactPresenceTuple;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mContactUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple;Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceDescription(Landroid/telephony/ims/RcsContactPresenceTuple;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceDescription:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimestamp(Landroid/telephony/ims/RcsContactPresenceTuple;Ljava/time/Instant;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mTimestamp:Ljava/time/Instant;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 476
    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsContactPresenceTuple$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsContactPresenceTuple;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mContactUri:Landroid/net/Uri;

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/ims/RcsContactPresenceTuple;->convertStringFormatTimeToInstant(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mTimestamp:Ljava/time/Instant;

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mStatus:Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceId:Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceVersion:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceDescription:Ljava/lang/String;

    .line 457
    const-class v0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    .line 458
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsContactPresenceTuple-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsContactPresenceTuple;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "serviceVersion"    # Ljava/lang/String;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mStatus:Ljava/lang/String;

    .line 446
    iput-object p2, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceId:Ljava/lang/String;

    .line 447
    iput-object p3, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceVersion:Ljava/lang/String;

    .line 448
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/RcsContactPresenceTuple-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/RcsContactPresenceTuple;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist convertInstantToStringFormat(Ljava/time/Instant;)Ljava/lang/String;
    .registers 3
    .param p1, "instant"    # Ljava/time/Instant;

    .line 491
    if-nez p1, :cond_5

    .line 492
    const-string v0, ""

    return-object v0

    .line 494
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist convertStringFormatTimeToInstant(Ljava/lang/String;)Ljava/time/Instant;
    .registers 5
    .param p1, "timestamp"    # Ljava/lang/String;

    .line 499
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 500
    return-object v1

    .line 503
    :cond_8
    :try_start_8
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    new-instance v2, Landroid/telephony/ims/RcsContactPresenceTuple$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/telephony/ims/RcsContactPresenceTuple$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v2}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;
    :try_end_15
    .catch Ljava/time/format/DateTimeParseException; {:try_start_8 .. :try_end_15} :catch_16

    return-object v0

    .line 504
    :catch_16
    move-exception v0

    .line 505
    .local v0, "e":Ljava/time/format/DateTimeParseException;
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getContactUri()Landroid/net/Uri;
    .registers 2

    .line 526
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getServiceCapabilities()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    .registers 2

    .line 541
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    return-object v0
.end method

.method public whitelist getServiceDescription()Ljava/lang/String;
    .registers 2

    .line 536
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceId()Ljava/lang/String;
    .registers 2

    .line 516
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceVersion()Ljava/lang/String;
    .registers 2

    .line 521
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStatus()Ljava/lang/String;
    .registers 2

    .line 511
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTime()Ljava/time/Instant;
    .registers 2

    .line 531
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mTimestamp:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    const-string/jumbo v2, "u="

    if-eqz v1, :cond_18

    .line 548
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 551
    :cond_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_22

    const-string v1, "XXX"

    goto :goto_25

    :cond_22
    const-string/jumbo v1, "null"

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :goto_28
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v1, ", v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mTimestamp:Ljava/time/Instant;

    if-eqz v1, :cond_54

    .line 561
    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mTimestamp:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    :cond_54
    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceDescription:Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 565
    const-string v1, ", servDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_62
    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    if-eqz v1, :cond_70

    .line 569
    const-string v1, ", servCaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 572
    :cond_70
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 462
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 463
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mTimestamp:Ljava/time/Instant;

    invoke-direct {p0, v0}, Landroid/telephony/ims/RcsContactPresenceTuple;->convertInstantToStringFormat(Ljava/time/Instant;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple;->mServiceCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 469
    return-void
.end method

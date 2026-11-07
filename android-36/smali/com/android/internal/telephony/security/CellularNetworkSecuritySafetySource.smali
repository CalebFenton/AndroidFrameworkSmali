.class public Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;
.super Ljava/lang/Object;
.source "CellularNetworkSecuritySafetySource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;,
        Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;
    }
.end annotation


# static fields
.field private static final blacklist CELLULAR_NETWORK_SECURITY_SETTINGS_INTENT:Landroid/content/Intent;

.field private static blacklist sInstance:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;


# instance fields
.field private blacklist mIdentifierDisclosureIssuesEnabled:Z

.field private blacklist mIdentifierDisclosures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNullCipherStateIssuesEnabled:Z

.field private blacklist mNullCipherStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSafetyCenterManagerWrapper:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;

.field private final blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method public static synthetic blacklist $r8$lambda$87rWVyIbTjwLAVRxiUjgJKsHlhk(I)[Landroid/safetycenter/SafetySourceIssue;
    .registers 1

    .line 190
    new-array p0, p0, [Landroid/safetycenter/SafetySourceIssue;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9S3b8WeTuhPtXx6fIOVNhtypnh0(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;Landroid/content/Context;Ljava/util/Map$Entry;)Ljava/util/Optional;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->lambda$getSafetySourceData$1(Landroid/content/Context;Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Y4hTamFTmlj2_xVOGHOmn_IhLvA(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;Landroid/content/Context;Ljava/util/Map$Entry;)Ljava/util/Optional;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->lambda$getSafetySourceData$0(Landroid/content/Context;Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CELLULAR_NETWORK_SECURITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->CELLULAR_NETWORK_SECURITY_SETTINGS_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mNullCipherStates:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mIdentifierDisclosures:Ljava/util/HashMap;

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mSafetyCenterManagerWrapper:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    return-void
.end method

.method private blacklist getCurrentTime()Ljava/lang/String;
    .registers 3

    .line 351
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "hh:mm"

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 352
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 353
    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getIdentifierDisclosureIssue(Landroid/content/Context;ILcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;)Ljava/util/Optional;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/safetycenter/SafetySourceIssue;",
            ">;"
        }
    .end annotation

    .line 297
    iget-boolean v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mIdentifierDisclosureIssuesEnabled:Z

    if-eqz v0, :cond_be

    invoke-static {p3}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->-$$Nest$mgetDisclosureCount(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;)I

    move-result p3

    if-nez p3, :cond_c

    goto/16 :goto_be

    .line 301
    :cond_c
    iget-object p3, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 302
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p3

    .line 305
    new-instance v0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;

    const v1, 0x1040978

    .line 307
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-direct {p0}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x1040977

    .line 308
    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {v0}, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Notification;

    move-result-object v0

    .line 312
    new-instance v2, Landroid/safetycenter/SafetySourceIssue$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "identifier_disclosure_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->getCurrentTime()Ljava/lang/String;

    move-result-object p2

    .line 319
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x1040976

    .line 316
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12c

    const-string v7, "identifier_disclosure"

    invoke-direct/range {v2 .. v7}, Landroid/safetycenter/SafetySourceIssue$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V

    const/16 p2, 0x12c

    .line 322
    invoke-virtual {v2, p2}, Landroid/safetycenter/SafetySourceIssue$Builder;->setNotificationBehavior(I)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object p2

    const/16 p3, 0x190

    .line 324
    invoke-virtual {p2, p3}, Landroid/safetycenter/SafetySourceIssue$Builder;->setIssueCategory(I)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object p2

    .line 325
    invoke-virtual {p2, v0}, Landroid/safetycenter/SafetySourceIssue$Builder;->setCustomNotification(Landroid/safetycenter/SafetySourceIssue$Notification;)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object p2

    new-instance p3, Landroid/safetycenter/SafetySourceIssue$Action$Builder;

    const v0, 0x104097b

    .line 329
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mSafetyCenterManagerWrapper:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;

    sget-object v2, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->CELLULAR_NETWORK_SECURITY_SETTINGS_INTENT:Landroid/content/Intent;

    .line 331
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;->getActivityPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "cellular_security_settings"

    invoke-direct {p3, v2, v0, v1}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 334
    invoke-virtual {p3}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Action;

    move-result-object p3

    .line 326
    invoke-virtual {p2, p3}, Landroid/safetycenter/SafetySourceIssue$Builder;->addAction(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object p2

    .line 336
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->getLearnMoreIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_b5

    .line 338
    new-instance v0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;

    const v1, 0x104097a

    .line 341
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mSafetyCenterManagerWrapper:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;

    .line 342
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;->getActivityPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "learn_more"

    invoke-direct {v0, p1, v1, p0}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 343
    invoke-virtual {v0}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Action;

    move-result-object p0

    .line 338
    invoke-virtual {p2, p0}, Landroid/safetycenter/SafetySourceIssue$Builder;->addAction(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/safetycenter/SafetySourceIssue$Builder;

    .line 347
    :cond_b5
    invoke-virtual {p2}, Landroid/safetycenter/SafetySourceIssue$Builder;->build()Landroid/safetycenter/SafetySourceIssue;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 298
    :cond_be
    :goto_be
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;
    .registers 4

    const-class v0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    monitor-enter v0

    .line 98
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->sInstance:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    if-nez v1, :cond_16

    .line 99
    new-instance v1, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    new-instance v2, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;-><init>(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;)V

    sput-object v1, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->sInstance:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_1a

    .line 102
    :cond_16
    :goto_16
    sget-object p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->sInstance:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_14

    monitor-exit v0

    return-object p0

    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw p0
.end method

.method private blacklist getLearnMoreIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    const p0, 0x1040973

    const/4 v0, 0x0

    .line 364
    :try_start_4
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_8} :catch_1b

    .line 369
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    return-object v0

    .line 373
    :cond_f
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object p1

    :catch_1b
    return-object v0
.end method

.method private blacklist getNullCipherIssue(Landroid/content/Context;II)Ljava/util/Optional;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/Optional<",
            "Landroid/safetycenter/SafetySourceIssue;",
            ">;"
        }
    .end annotation

    .line 213
    iget-boolean v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mNullCipherStateIssuesEnabled:Z

    if-nez v0, :cond_9

    .line 214
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 217
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 218
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-eqz p3, :cond_119

    const/4 v1, 0x1

    .line 221
    const-string v2, "null_cipher_non_encrypted_"

    if-eq p3, v1, :cond_6a

    const/4 v1, 0x2

    if-ne p3, v1, :cond_64

    .line 225
    new-instance v3, Landroid/safetycenter/SafetySourceIssue$Builder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const p2, 0x1040980

    .line 227
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const v1, 0x104097e

    .line 229
    invoke-virtual {p1, v1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12c

    const-string v8, "null_cipher_non_encrypted"

    invoke-direct/range {v3 .. v8}, Landroid/safetycenter/SafetySourceIssue$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 234
    new-instance p3, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;

    .line 236
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 239
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x104097f

    .line 237
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p3}, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Notification;

    move-result-object p2

    goto :goto_c2

    .line 264
    :cond_64
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 243
    :cond_6a
    new-instance v1, Landroid/safetycenter/SafetySourceIssue$Builder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x104097d

    .line 245
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v7, 0x104097c

    .line 248
    invoke-virtual {p1, v7, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    const-string v6, "null_cipher_encrypted"

    invoke-direct/range {v1 .. v6}, Landroid/safetycenter/SafetySourceIssue$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 253
    new-instance p2, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;

    .line 257
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 255
    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 260
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 258
    invoke-virtual {p1, v7, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {p2}, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Notification;

    move-result-object p2

    move-object v3, v1

    :goto_c2
    const/16 p3, 0x12c

    .line 267
    invoke-virtual {v3, p3}, Landroid/safetycenter/SafetySourceIssue$Builder;->setNotificationBehavior(I)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object p3

    const/16 v0, 0x190

    .line 269
    invoke-virtual {p3, v0}, Landroid/safetycenter/SafetySourceIssue$Builder;->setIssueCategory(I)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object p3

    .line 270
    invoke-virtual {p3, p2}, Landroid/safetycenter/SafetySourceIssue$Builder;->setCustomNotification(Landroid/safetycenter/SafetySourceIssue$Notification;)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object p2

    new-instance p3, Landroid/safetycenter/SafetySourceIssue$Action$Builder;

    const v0, 0x104097b

    .line 274
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mSafetyCenterManagerWrapper:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;

    sget-object v2, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->CELLULAR_NETWORK_SECURITY_SETTINGS_INTENT:Landroid/content/Intent;

    .line 275
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;->getActivityPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "cellular_security_settings"

    invoke-direct {p3, v2, v0, v1}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 277
    invoke-virtual {p3}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Action;

    move-result-object p3

    .line 271
    invoke-virtual {p2, p3}, Landroid/safetycenter/SafetySourceIssue$Builder;->addAction(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/safetycenter/SafetySourceIssue$Builder;

    .line 279
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->getLearnMoreIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_110

    .line 281
    new-instance p3, Landroid/safetycenter/SafetySourceIssue$Action$Builder;

    const v0, 0x104097a

    .line 284
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mSafetyCenterManagerWrapper:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;->getActivityPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "learn_more"

    invoke-direct {p3, p1, v0, p0}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 288
    invoke-virtual {p3}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Action;

    move-result-object p0

    .line 281
    invoke-virtual {v3, p0}, Landroid/safetycenter/SafetySourceIssue$Builder;->addAction(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/safetycenter/SafetySourceIssue$Builder;

    .line 291
    :cond_110
    invoke-virtual {v3}, Landroid/safetycenter/SafetySourceIssue$Builder;->build()Landroid/safetycenter/SafetySourceIssue;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 223
    :cond_119
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSafetySourceData(Landroid/content/Context;)Landroid/safetycenter/SafetySourceData;
    .registers 8

    .line 176
    invoke-direct {p0}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->isSafetySourceHidden()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mNullCipherStates:Ljava/util/HashMap;

    .line 183
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;Landroid/content/Context;)V

    .line 184
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mIdentifierDisclosures:Ljava/util/HashMap;

    .line 186
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;Landroid/content/Context;)V

    .line 187
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda2;-><init>()V

    .line 189
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$$ExternalSyntheticLambda3;-><init>()V

    .line 190
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/safetycenter/SafetySourceIssue;

    .line 192
    new-instance v1, Landroid/safetycenter/SafetySourceData$Builder;

    invoke-direct {v1}, Landroid/safetycenter/SafetySourceData$Builder;-><init>()V

    .line 194
    array-length v2, v0

    const/16 v3, 0xc8

    const/4 v4, 0x0

    :goto_4f
    if-ge v4, v2, :cond_61

    aget-object v5, v0, v4

    .line 195
    invoke-virtual {v1, v5}, Landroid/safetycenter/SafetySourceData$Builder;->addIssue(Landroid/safetycenter/SafetySourceIssue;)Landroid/safetycenter/SafetySourceData$Builder;

    .line 196
    invoke-virtual {v5}, Landroid/safetycenter/SafetySourceIssue;->getSeverityLevel()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 199
    :cond_61
    new-instance v0, Landroid/safetycenter/SafetySourceStatus$Builder;

    const v2, 0x1040975

    .line 201
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x1040974

    .line 202
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4, v3}, Landroid/safetycenter/SafetySourceStatus$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mSafetyCenterManagerWrapper:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;

    sget-object v2, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->CELLULAR_NETWORK_SECURITY_SETTINGS_INTENT:Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;->getActivityPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/safetycenter/SafetySourceStatus$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Landroid/safetycenter/SafetySourceStatus$Builder;->build()Landroid/safetycenter/SafetySourceStatus;

    move-result-object p0

    .line 199
    invoke-virtual {v1, p0}, Landroid/safetycenter/SafetySourceData$Builder;->setStatus(Landroid/safetycenter/SafetySourceStatus;)Landroid/safetycenter/SafetySourceData$Builder;

    .line 207
    invoke-virtual {v1}, Landroid/safetycenter/SafetySourceData$Builder;->build()Landroid/safetycenter/SafetySourceData;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isSafetySourceHidden()Z
    .registers 2

    .line 172
    iget-boolean v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mNullCipherStateIssuesEnabled:Z

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mIdentifierDisclosureIssuesEnabled:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$getSafetySourceData$0(Landroid/content/Context;Ljava/util/Map$Entry;)Ljava/util/Optional;
    .registers 4

    .line 184
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->getNullCipherIssue(Landroid/content/Context;II)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getSafetySourceData$1(Landroid/content/Context;Ljava/util/Map$Entry;)Ljava/util/Optional;
    .registers 4

    .line 187
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->getIdentifierDisclosureIssue(Landroid/content/Context;ILcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private blacklist updateSafetyCenter(Landroid/content/Context;)V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mSafetyCenterManagerWrapper:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->getSafetySourceData(Landroid/content/Context;)Landroid/safetycenter/SafetySourceData;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;->setSafetySourceData(Landroid/safetycenter/SafetySourceData;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist clearIdentifierDisclosure(Landroid/content/Context;I)V
    .registers 4

    monitor-enter p0

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mIdentifierDisclosures:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->updateSafetyCenter(Landroid/content/Context;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 159
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist clearNullCipherState(Landroid/content/Context;I)V
    .registers 4

    monitor-enter p0

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mNullCipherStates:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->updateSafetyCenter(Landroid/content/Context;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 132
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist refresh(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 163
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mSafetyCenterManagerWrapper:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;

    .line 164
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->getSafetySourceData(Landroid/content/Context;)Landroid/safetycenter/SafetySourceData;

    move-result-object p1

    .line 163
    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;->setRefreshedSafetySourceData(Ljava/lang/String;Landroid/safetycenter/SafetySourceData;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 165
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized blacklist setIdentifierDisclosure(Landroid/content/Context;IILjava/time/Instant;Ljava/time/Instant;)V
    .registers 8

    monitor-enter p0

    .line 150
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, p5, v1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;-><init>(ILjava/time/Instant;Ljava/time/Instant;Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource-IA;)V

    .line 151
    iget-object p3, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mIdentifierDisclosures:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->updateSafetyCenter(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 153
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public declared-synchronized blacklist setIdentifierDisclosureIssueEnabled(Landroid/content/Context;Z)V
    .registers 4

    monitor-enter p0

    .line 140
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mIdentifierDisclosureIssuesEnabled:Z

    if-eq p2, v0, :cond_12

    .line 141
    iput-boolean p2, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mIdentifierDisclosureIssuesEnabled:Z

    .line 142
    iget-object p2, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mIdentifierDisclosures:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->updateSafetyCenter(Landroid/content/Context;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception p1

    goto :goto_14

    .line 145
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_10

    throw p1
.end method

.method public declared-synchronized blacklist setNullCipherIssueEnabled(Landroid/content/Context;Z)V
    .registers 3

    monitor-enter p0

    .line 114
    :try_start_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mNullCipherStateIssuesEnabled:Z

    .line 115
    iget-object p2, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mNullCipherStates:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->updateSafetyCenter(Landroid/content/Context;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 117
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized blacklist setNullCipherState(Landroid/content/Context;II)V
    .registers 5

    monitor-enter p0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->mNullCipherStates:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->updateSafetyCenter(Landroid/content/Context;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 124
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

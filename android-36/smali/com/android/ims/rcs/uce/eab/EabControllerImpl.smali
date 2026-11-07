.class public Lcom/android/ims/rcs/uce/eab/EabControllerImpl;
.super Ljava/lang/Object;
.source "EabControllerImpl.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/eab/EabController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;
    }
.end annotation


# static fields
.field private static final blacklist CLEAN_UP_LEGACY_CAPABILITY_DELAY_MILLI_SEC:I = 0x7530

.field private static final blacklist CLEAN_UP_LEGACY_CAPABILITY_SEC:I = 0x93a80

.field private static final blacklist DEFAULT_AVAILABILITY_CACHE_EXPIRATION_SEC:I = 0x3c

.field private static final blacklist DEFAULT_CAPABILITY_CACHE_EXPIRATION_SEC:I = 0x15180

.field private static final blacklist DEFAULT_NON_RCS_CAPABILITY_CACHE_EXPIRATION_SEC:I = 0x93a80

.field private static final blacklist TAG:Ljava/lang/String; = "EabControllerImpl"


# instance fields
.field public final blacklist mCapabilityCleanupRunnable:Ljava/lang/Runnable;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

.field private blacklist mExpirationTimeFactory:Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private volatile blacklist mIsSetDestroyedFlag:Z

.field private final blacklist mSubId:I

.field private blacklist mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$B7mu78tP12ctFG2DPCG3NW_ftGU(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->lambda$new$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SOGfgPbJSqToEs6cKTCWMev-R7Q(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;Landroid/database/Cursor;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->isAvailabilityExpired(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$m63_0TZK0qvoEGTTUpxHf3juaHA(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;Landroid/database/Cursor;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->isCapabilityExpired(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "c"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    .line 86
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mExpirationTimeFactory:Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

    .line 88
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mCapabilityCleanupRunnable:Ljava/lang/Runnable;

    .line 100
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    .line 101
    iput p2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 102
    iput-object p3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v1, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    new-instance v5, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;

    invoke-direct {v5}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;-><init>()V

    iget-object v6, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    iget-object v7, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mHandler:Landroid/os/Handler;

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;-><init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/eab/EabControllerImpl;Lcom/android/ims/rcs/uce/eab/EabContactSyncController;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Handler;)V

    iput-object v1, v4, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    .line 109
    return-void
.end method

.method private blacklist cleanupCapabilities(JLjava/util/List;)V
    .registers 10
    .param p1, "rcsCapabilitiesExpiredTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 829
    .local p3, "commonIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9e

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eab_common_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 832
    const-string v2, ","

    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")  AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "presence_request_timestamp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "<?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "presenceClause":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 837
    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "options_request_timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 840
    .local v1, "optionClause":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/ims/rcs/uce/eab/EabProvider;->PRESENCE_URI:Landroid/net/Uri;

    .line 843
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 840
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 845
    .local v2, "deletePresenceCount":I
    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/ims/rcs/uce/eab/EabProvider;->OPTIONS_URI:Landroid/net/Uri;

    .line 848
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 845
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 850
    .local v3, "deleteOptionsCount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleanup capabilities. deletePresenceCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",deleteOptionsCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EabControllerImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    .end local v0    # "presenceClause":Ljava/lang/String;
    .end local v1    # "optionClause":Ljava/lang/String;
    .end local v2    # "deletePresenceCount":I
    .end local v3    # "deleteOptionsCount":I
    :cond_9e
    return-void
.end method

.method private blacklist cleanupExpiredCapabilities()V
    .registers 9

    .line 815
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    iget v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 816
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getCapabilityCacheExpiration(I)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x93a80

    sub-long/2addr v0, v2

    .line 820
    .local v0, "rcsCapabilitiesExpiredTime":J
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v4

    iget v6, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 821
    invoke-direct {p0, v6}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNonRcsCapabilityCacheExpiration(I)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    sub-long/2addr v4, v2

    .line 824
    .local v4, "nonRcsCapabilitiesExpiredTime":J
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getRcsCommonIdList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->cleanupCapabilities(JLjava/util/List;)V

    .line 825
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNonRcsCommonIdList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v4, v5, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->cleanupCapabilities(JLjava/util/List;)V

    .line 826
    return-void
.end method

.method private blacklist createNewBuilder(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;
    .registers 10
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 431
    const-string v0, "mechanism"

    invoke-direct {p0, p2, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 432
    .local v0, "mechanism":I
    const-string v1, "request_result"

    invoke-direct {p0, p2, v1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 433
    .local v1, "result":I
    new-instance v2, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;

    invoke-direct {v2, v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;-><init>(I)V

    .line 436
    .local v2, "builderWrapper":Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;
    const/4 v3, 0x1

    if-ne v0, v3, :cond_39

    .line 437
    new-instance v4, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    invoke-direct {v4, p1, v3, v1}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;-><init>(Landroid/net/Uri;II)V

    .line 439
    .local v4, "builder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createPresenceTuple(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v3

    .line 440
    .local v3, "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    if-eqz v3, :cond_22

    .line 441
    invoke-virtual {v4, v3}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->addCapabilityTuple(Landroid/telephony/ims/RcsContactPresenceTuple;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 443
    :cond_22
    const-string v5, "entity_uri"

    invoke-direct {p0, p2, v5}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "entityUri":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 445
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->setEntityUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 447
    :cond_35
    invoke-virtual {v2, v4}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->setPresenceBuilder(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;)V

    .line 448
    .end local v3    # "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    .end local v4    # "builder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .end local v5    # "entityUri":Ljava/lang/String;
    goto :goto_4b

    .line 449
    :cond_39
    new-instance v4, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    invoke-direct {v4, p1, v3}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;-><init>(Landroid/net/Uri;I)V

    .line 450
    .local v4, "builder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    invoke-virtual {v4, v1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->setRequestResult(I)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 451
    invoke-direct {p0, p2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createOptionTuple(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->addFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 452
    invoke-virtual {v2, v4}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->setOptionsBuilder(Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;)V

    .line 454
    .end local v4    # "builder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    :goto_4b
    return-object v2
.end method

.method private blacklist createOptionTuple(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 458
    const-string v0, "feature_tag"

    invoke-direct {p0, p1, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createPresenceTuple(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telephony/ims/RcsContactPresenceTuple;
    .registers 24
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 463
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "EabControllerImpl"

    const-string v0, "basic_status"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "status":Ljava/lang/String;
    const-string v0, "service_id"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, "serviceId":Ljava/lang/String;
    const-string v0, "service_version"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 466
    .local v7, "version":Ljava/lang/String;
    const-string v0, "description"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 467
    .local v8, "description":Ljava/lang/String;
    const-string v0, "presence_request_timestamp"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 471
    .local v9, "timeStamp":Ljava/lang/String;
    const-string v0, "audio_capable"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_32

    move v0, v11

    goto :goto_33

    :cond_32
    move v0, v10

    :goto_33
    move v12, v0

    .line 473
    .local v12, "audioCapable":Z
    const-string v0, "video_capable"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v11, :cond_3e

    move v0, v11

    goto :goto_3f

    :cond_3e
    move v0, v10

    :goto_3f
    move v13, v0

    .line 475
    .local v13, "videoCapable":Z
    const-string v0, "duplex_mode"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 477
    .local v14, "duplexModes":Ljava/lang/String;
    const-string v0, "unsupported_duplex_mode"

    invoke-direct {v1, v3, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 481
    .local v15, "unsupportedDuplexModes":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v11, ","

    if-nez v0, :cond_5b

    .line 482
    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .local v0, "duplexModeList":[Ljava/lang/String;
    goto :goto_5f

    .line 484
    .end local v0    # "duplexModeList":[Ljava/lang/String;
    :cond_5b
    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 486
    .local v17, "duplexModeList":[Ljava/lang/String;
    :goto_5f
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 487
    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .local v0, "unsupportedDuplexModeList":[Ljava/lang/String;
    goto :goto_6e

    .line 489
    .end local v0    # "unsupportedDuplexModeList":[Ljava/lang/String;
    :cond_6b
    new-array v0, v10, [Ljava/lang/String;

    move-object v11, v0

    .line 494
    .local v11, "unsupportedDuplexModeList":[Ljava/lang/String;
    :goto_6e
    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    invoke-direct {v0, v12, v13}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;-><init>(ZZ)V

    move-object/from16 v18, v0

    .line 496
    .local v18, "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 497
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    goto :goto_87

    :cond_82
    move-object/from16 v10, v17

    move-object/from16 v1, v18

    goto :goto_b0

    .line 498
    :cond_87
    :goto_87
    move-object/from16 v10, v17

    .end local v17    # "duplexModeList":[Ljava/lang/String;
    .local v10, "duplexModeList":[Ljava/lang/String;
    array-length v0, v10

    const/4 v1, 0x0

    :goto_8b
    if-ge v1, v0, :cond_9e

    move/from16 v19, v0

    aget-object v0, v10, v1

    .line 499
    .local v0, "duplexMode":Ljava/lang/String;
    move/from16 v20, v1

    move-object/from16 v1, v18

    .end local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .local v1, "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    invoke-virtual {v1, v0}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->addSupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    .line 498
    .end local v0    # "duplexMode":Ljava/lang/String;
    add-int/lit8 v0, v20, 0x1

    move v1, v0

    move/from16 v0, v19

    goto :goto_8b

    .line 501
    .end local v1    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .restart local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    :cond_9e
    move-object/from16 v1, v18

    .end local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .restart local v1    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    array-length v0, v11

    const/4 v3, 0x0

    :goto_a2
    if-ge v3, v0, :cond_b0

    move/from16 v18, v0

    aget-object v0, v11, v3

    .line 502
    .local v0, "unsupportedDuplex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->addUnsupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    .line 501
    .end local v0    # "unsupportedDuplex":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v18

    goto :goto_a2

    .line 505
    :cond_b0
    :goto_b0
    invoke-virtual {v1}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    move-result-object v3

    .line 508
    .local v3, "serviceCapabilities":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 509
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c9

    const/16 v16, 0x1

    goto :goto_cb

    :cond_c9
    const/16 v16, 0x0

    .line 510
    .local v16, "isTupleEmpty":Z
    :goto_cb
    if-nez v16, :cond_112

    .line 511
    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    invoke-direct {v0, v5, v6, v7}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v0

    .line 513
    .local v17, "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    if-eqz v8, :cond_de

    .line 514
    move-object/from16 v18, v1

    move-object/from16 v1, v17

    .end local v17    # "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .local v1, "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .restart local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    invoke-virtual {v1, v8}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setServiceDescription(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    goto :goto_e2

    .line 513
    .end local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .local v1, "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .restart local v17    # "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    :cond_de
    move-object/from16 v18, v1

    move-object/from16 v1, v17

    .line 516
    .end local v17    # "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .local v1, "rcsContactPresenceTupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .restart local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    :goto_e2
    if-eqz v2, :cond_e7

    .line 517
    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setContactUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    .line 519
    :cond_e7
    if-eqz v3, :cond_ec

    .line 520
    invoke-virtual {v1, v3}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    .line 522
    :cond_ec
    if-eqz v9, :cond_10d

    .line 524
    :try_start_ee
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    .line 525
    .local v0, "instant":Ljava/time/Instant;
    invoke-virtual {v1, v0}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setTime(Ljava/time/Instant;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    :try_end_f9
    .catch Ljava/lang/NumberFormatException; {:try_start_ee .. :try_end_f9} :catch_104
    .catch Ljava/time/format/DateTimeParseException; {:try_start_ee .. :try_end_f9} :catch_fb

    .line 530
    nop

    .end local v0    # "instant":Ljava/time/Instant;
    goto :goto_10d

    .line 528
    :catch_fb
    move-exception v0

    .line 529
    .local v0, "e":Ljava/time/format/DateTimeParseException;
    move-object/from16 v17, v0

    .end local v0    # "e":Ljava/time/format/DateTimeParseException;
    .local v17, "e":Ljava/time/format/DateTimeParseException;
    const-string v0, "Create presence tuple: parse timestamp failed"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .line 526
    .end local v17    # "e":Ljava/time/format/DateTimeParseException;
    :catch_104
    move-exception v0

    .line 527
    .local v0, "ex":Ljava/lang/NumberFormatException;
    move-object/from16 v17, v0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .local v17, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "Create presence tuple: NumberFormatException"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v17    # "ex":Ljava/lang/NumberFormatException;
    nop

    .line 532
    :cond_10d
    :goto_10d
    invoke-virtual {v1}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v0

    return-object v0

    .line 534
    .end local v18    # "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .local v1, "serviceCapabilitiesBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    :cond_112
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist deleteOldOptionCapability(I)V
    .registers 9
    .param p1, "contactId"    # I

    .line 767
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 771
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    .line 767
    const-string v4, "eab_contact_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 773
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_49

    .line 774
    :goto_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 775
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 776
    .local v2, "commonId":I
    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/ims/rcs/uce/eab/EabProvider;->OPTIONS_URI:Landroid/net/Uri;

    .line 779
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 776
    const-string v6, "eab_common_id=?"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 780
    .end local v2    # "commonId":I
    goto :goto_25

    .line 783
    :cond_49
    if-eqz v1, :cond_4e

    .line 784
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 786
    :cond_4e
    return-void
.end method

.method private blacklist deleteOldPresenceCapability(I)V
    .registers 9
    .param p1, "id"    # I

    .line 657
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    .line 657
    const-string v4, "eab_contact_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 663
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_49

    .line 664
    :goto_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 665
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 666
    .local v2, "commonId":I
    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/ims/rcs/uce/eab/EabProvider;->PRESENCE_URI:Landroid/net/Uri;

    .line 669
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 666
    const-string v6, "eab_common_id=?"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 670
    .end local v2    # "commonId":I
    goto :goto_25

    .line 673
    :cond_49
    if-eqz v1, :cond_4e

    .line 674
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_4e
    return-void
.end method

.method static blacklist formatNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 911
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 912
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, "simCountryIso":Ljava/lang/String;
    if-eqz v1, :cond_44

    .line 914
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 915
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 917
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_16
    invoke-virtual {v2, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 918
    .local v3, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4
    :try_end_20
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_16 .. :try_end_20} :catch_21

    return-object v4

    .line 919
    .end local v3    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_21
    move-exception v3

    .line 920
    .local v3, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "formatNumber: could not format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EabControllerImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v2    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v3    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_44
    return-object p1
.end method

.method private blacklist generateDestroyedResult(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation

    .line 304
    .local p1, "contactUri":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v0, "destroyedResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 306
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_9

    .line 311
    :cond_20
    return-object v0
.end method

.method private blacklist generateEabResult(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 12
    .param p1, "contactUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/function/Predicate<",
            "Landroid/database/Cursor;",
            ">;)",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;"
        }
    .end annotation

    .line 316
    .local p2, "isExpiredMethod":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    .line 320
    .local v0, "builder":Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;
    sget-object v1, Lcom/android/ims/rcs/uce/eab/EabProvider;->ALL_DATA_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 321
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    .line 322
    invoke-static {v2, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNumberFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 323
    .local v4, "queryUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 326
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    if-eqz v1, :cond_76

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_76

    .line 327
    :goto_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 328
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 329
    goto :goto_2e

    .line 332
    :cond_3b
    if-nez v0, :cond_42

    .line 333
    invoke-direct {p0, p1, v1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createNewBuilder(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;

    move-result-object v0

    goto :goto_2e

    .line 335
    :cond_42
    invoke-direct {p0, p1, v1, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->updateCapability(Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;)V

    goto :goto_2e

    .line 338
    :cond_46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 340
    if-nez v0, :cond_52

    .line 341
    new-instance v3, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v5, 0x2

    invoke-direct {v3, p1, v5, v2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    .local v3, "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    goto :goto_7c

    .line 345
    .end local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_52
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getMechanism()I

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_68

    .line 346
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getPresenceBuilder()Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    move-result-object v2

    .line 347
    .local v2, "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    new-instance v3, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    .line 349
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v6

    invoke-direct {v3, p1, v5, v6}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    .line 350
    .end local v2    # "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .restart local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    goto :goto_7c

    .line 351
    .end local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_68
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getOptionsBuilder()Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    move-result-object v2

    .line 352
    .local v2, "optionsBuilder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    new-instance v3, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    .line 354
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v6

    invoke-direct {v3, p1, v5, v6}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    .line 355
    .end local v2    # "optionsBuilder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    .restart local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    goto :goto_7c

    .line 359
    .end local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_76
    new-instance v3, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v5, 0x3

    invoke-direct {v3, p1, v5, v2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    .line 362
    .restart local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :goto_7c
    return-object v3
.end method

.method private blacklist generateEabResultIncludingExpired(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 13
    .param p1, "contactUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/function/Predicate<",
            "Landroid/database/Cursor;",
            ">;)",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;"
        }
    .end annotation

    .line 367
    .local p2, "isExpiredMethod":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    .line 369
    .local v0, "builder":Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .line 372
    .local v1, "isExpired":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Boolean;>;"
    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->ALL_DATA_URI:Landroid/net/Uri;

    iget v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 373
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    .line 374
    invoke-static {v3, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNumberFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 375
    .local v5, "queryUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 377
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_8d

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_8d

    .line 378
    :goto_31
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 380
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_49

    .line 381
    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 383
    :cond_49
    if-nez v0, :cond_50

    .line 384
    invoke-direct {p0, p1, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createNewBuilder(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;

    move-result-object v0

    goto :goto_31

    .line 386
    :cond_50
    invoke-direct {p0, p1, v2, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->updateCapability(Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;)V

    goto :goto_31

    .line 389
    :cond_54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 392
    const/4 v3, 0x0

    .line 393
    .local v3, "eabResult":I
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 394
    const/4 v3, 0x2

    .line 397
    :cond_6a
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getMechanism()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7f

    .line 398
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getPresenceBuilder()Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    move-result-object v4

    .line 399
    .local v4, "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    new-instance v6, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    invoke-virtual {v4}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v7

    invoke-direct {v6, p1, v3, v7}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    .line 400
    .end local v4    # "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .local v6, "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    goto :goto_8c

    .line 401
    .end local v6    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_7f
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getOptionsBuilder()Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    move-result-object v4

    .line 402
    .local v4, "optionsBuilder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    new-instance v6, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    invoke-virtual {v4}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v7

    invoke-direct {v6, p1, v3, v7}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    .line 404
    .end local v3    # "eabResult":I
    .end local v4    # "optionsBuilder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    .restart local v6    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :goto_8c
    goto :goto_95

    .line 405
    .end local v6    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_8d
    new-instance v3, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v4, 0x3

    const/4 v6, 0x0

    invoke-direct {v3, p1, v4, v6}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    move-object v6, v3

    .line 408
    .restart local v6    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :goto_95
    return-object v6
.end method

.method private blacklist getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "column"    # Ljava/lang/String;

    .line 898
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private blacklist getNonRcsCapabilityCacheExpiration(I)I
    .registers 6
    .param p1, "subId"    # I

    .line 601
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    .line 602
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 604
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_17

    .line 605
    const-string v1, "ims.non_rcs_capabilities_cache_expiration_sec_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "value":I
    goto :goto_21

    .line 608
    .end local v1    # "value":I
    :cond_17
    const v1, 0x93a80

    .line 609
    .restart local v1    # "value":I
    const-string v2, "EabControllerImpl"

    const-string v3, "getNonRcsCapabilityCacheExpiration: CarrierConfig is null, returning default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_21
    return v1
.end method

.method private blacklist getNonRcsCommonIdList()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 875
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    .line 880
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 876
    const/4 v4, 0x0

    const-string v5, "request_result=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 883
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_21

    return-object v0

    .line 885
    :cond_21
    :goto_21
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 886
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 888
    :cond_39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 890
    return-object v0
.end method

.method private static blacklist getNumberFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 902
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "number":Ljava/lang/String;
    const-string v1, "[@;:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, "numberParts":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_f

    .line 905
    const/4 v2, 0x0

    return-object v2

    .line 907
    :cond_f
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {p0, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->formatNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getRcsCommonIdList()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    .line 861
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 857
    const/4 v4, 0x0

    const-string v5, "request_result<>?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 864
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_21

    return-object v0

    .line 866
    :cond_21
    :goto_21
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 867
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 869
    :cond_39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 871
    return-object v0
.end method

.method private blacklist getRequestTimestamp(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "expiredTimestamp":Ljava/lang/String;
    const-string v1, "mechanism"

    invoke-direct {p0, p1, v1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 589
    .local v1, "mechanism":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 590
    const-string v2, "presence_request_timestamp"

    invoke-direct {p0, p1, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 593
    :cond_11
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 594
    const-string v2, "options_request_timestamp"

    invoke-direct {p0, p1, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method private blacklist getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "column"    # Ljava/lang/String;

    .line 894
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist insertAllTuples(ILandroid/telephony/ims/RcsContactUceCapability;)V
    .registers 13
    .param p1, "commonId"    # I
    .param p2, "capability"    # Landroid/telephony/ims/RcsContactUceCapability;

    .line 712
    nop

    .line 713
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityTuples()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 715
    .local v0, "presenceContent":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_c0

    .line 716
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityTuples()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsContactPresenceTuple;

    .line 719
    .local v2, "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceCapabilities()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    move-result-object v3

    .line 720
    .local v3, "serviceCapabilities":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    const/4 v4, 0x0

    .local v4, "duplexMode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 721
    .local v5, "unsupportedDuplexMode":Ljava/lang/String;
    if-eqz v3, :cond_41

    .line 722
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->getSupportedDuplexModes()Ljava/util/List;

    move-result-object v6

    .line 723
    .local v6, "duplexModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, ","

    if-eqz v7, :cond_31

    .line 724
    invoke-static {v8, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 727
    :cond_31
    nop

    .line 728
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->getUnsupportedDuplexModes()Ljava/util/List;

    move-result-object v7

    .line 729
    .local v7, "unsupportedDuplexModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_41

    .line 730
    nop

    .line 731
    invoke-static {v8, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 735
    .end local v6    # "duplexModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "unsupportedDuplexModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 736
    .local v6, "contentValues":Landroid/content/ContentValues;
    const-string v7, "eab_common_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    const-string v7, "basic_status"

    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v7, "service_id"

    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    nop

    .line 740
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceVersion()Ljava/lang/String;

    move-result-object v7

    .line 739
    const-string v8, "service_version"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    nop

    .line 742
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceDescription()Ljava/lang/String;

    move-result-object v7

    .line 741
    const-string v8, "description"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v7, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mExpirationTimeFactory:Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

    .line 747
    invoke-interface {v7}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;->getExpirationTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 746
    const-string v8, "presence_request_timestamp"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 748
    nop

    .line 749
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getContactUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 748
    const-string v8, "contact_uri"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    if-eqz v3, :cond_ba

    .line 751
    const-string v7, "duplex_mode"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v7, "unsupported_duplex_mode"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    nop

    .line 756
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->isAudioCapable()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 755
    const-string v8, "audio_capable"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 757
    nop

    .line 758
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->isVideoCapable()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 757
    const-string v8, "video_capable"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 760
    :cond_ba
    aput-object v6, v0, v1

    .line 715
    .end local v2    # "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    .end local v3    # "serviceCapabilities":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    .end local v4    # "duplexMode":Ljava/lang/String;
    .end local v5    # "unsupportedDuplexMode":Ljava/lang/String;
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 762
    .end local v1    # "i":I
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert into presence table. count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EabControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 764
    return-void
.end method

.method private blacklist insertEmptyTuple(I)V
    .registers 5
    .param p1, "commonId"    # I

    .line 701
    const-string v0, "EabControllerImpl"

    const-string v1, "Insert empty tuple into presence table."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 703
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "eab_common_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 706
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mExpirationTimeFactory:Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

    .line 707
    invoke-interface {v1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;->getExpirationTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 706
    const-string v2, "presence_request_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 708
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 709
    return-void
.end method

.method private blacklist insertNewContact(Ljava/lang/String;)I
    .registers 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 650
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 651
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 653
    .local v1, "result":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private blacklist insertNewOptionCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V
    .registers 11
    .param p1, "contactId"    # I
    .param p2, "capability"    # Landroid/telephony/ims/RcsContactUceCapability;

    .line 789
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 790
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "eab_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 791
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mechanism"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 792
    iget v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "subscription_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    nop

    .line 794
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getRequestResult()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 793
    const-string v2, "request_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 797
    .local v1, "result":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 798
    .local v2, "commonId":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v3, "optionContentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getFeatureTags()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 800
    .local v5, "feature":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v0, v6

    .line 801
    const-string v6, "eab_common_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    const-string v6, "feature_tag"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    nop

    .line 804
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 803
    const-string v7, "options_request_timestamp"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 805
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    .end local v5    # "feature":Ljava/lang/String;
    goto :goto_56

    .line 808
    :cond_8c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    .line 809
    .local v4, "optionContent":[Landroid/content/ContentValues;
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, [Landroid/content/ContentValues;

    .line 810
    iget-object v5, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/ims/rcs/uce/eab/EabProvider;->OPTIONS_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 811
    return-void
.end method

.method private blacklist insertNewPresenceCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V
    .registers 8
    .param p1, "contactId"    # I
    .param p2, "capability"    # Landroid/telephony/ims/RcsContactUceCapability;

    .line 679
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 680
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "eab_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mechanism"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    iget v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "subscription_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 683
    nop

    .line 684
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getRequestResult()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 683
    const-string v2, "request_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getEntityUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 686
    nop

    .line 687
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getEntityUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    const-string v2, "entity_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_45
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 690
    .local v1, "result":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 691
    .local v2, "commonId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert into common table. Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EabControllerImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityTuples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7f

    .line 694
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertEmptyTuple(I)V

    goto :goto_82

    .line 696
    :cond_7f
    invoke-direct {p0, v2, p2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertAllTuples(ILandroid/telephony/ims/RcsContactUceCapability;)V

    .line 698
    :goto_82
    return-void
.end method

.method private blacklist isAvailabilityExpired(Landroid/database/Cursor;)Z
    .registers 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, "expired":Z
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getRequestTimestamp(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "requestTimeStamp":Ljava/lang/String;
    const-string v2, "EabControllerImpl"

    if-eqz v1, :cond_4b

    .line 574
    nop

    .line 575
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v3

    iget v4, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    .line 576
    invoke-virtual {p0, v4}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getAvailabilityCacheExpiration(I)J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    .line 577
    .local v3, "expiredTimestamp":Ljava/time/Instant;
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Availability insertedTimestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 579
    invoke-virtual {v3}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expired:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v3    # "expiredTimestamp":Ljava/time/Instant;
    goto :goto_50

    .line 581
    :cond_4b
    const-string v3, "Capability requestTimeStamp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_50
    return v0
.end method

.method private blacklist isCapabilityExpired(Landroid/database/Cursor;)Z
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, "expired":Z
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getRequestTimestamp(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "requestTimeStamp":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->isNonRcsCapability(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 544
    iget v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNonRcsCapabilityCacheExpiration(I)I

    move-result v2

    .local v2, "capabilityCacheExpiration":I
    goto :goto_18

    .line 546
    .end local v2    # "capabilityCacheExpiration":I
    :cond_12
    iget v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mSubId:I

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getCapabilityCacheExpiration(I)I

    move-result v2

    .line 549
    .restart local v2    # "capabilityCacheExpiration":I
    :goto_18
    const-string v3, "EabControllerImpl"

    if-eqz v1, :cond_71

    .line 550
    nop

    .line 551
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v4

    int-to-long v5, v2

    sget-object v7, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    .line 552
    invoke-virtual {v4, v5, v6, v7}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v4

    .line 553
    .local v4, "expiredTimestamp":Ljava/time/Instant;
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Capability expiredTimestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isNonRcsCapability: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 555
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->isNonRcsCapability(Landroid/database/Cursor;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", capabilityCacheExpiration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", expired:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 554
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .end local v4    # "expiredTimestamp":Ljava/time/Instant;
    goto :goto_76

    .line 559
    :cond_71
    const-string v4, "Capability requestTimeStamp is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_76
    return v0
.end method

.method private blacklist isNonRcsCapability(Landroid/database/Cursor;)Z
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 565
    const-string v0, "request_result"

    invoke-direct {p0, p1, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 566
    .local v0, "result":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method static synthetic blacklist lambda$new$0()J
    .registers 2

    .line 86
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic blacklist lambda$new$1()V
    .registers 3

    .line 90
    const-string v0, "EabControllerImpl"

    const-string v1, "Cleanup Capabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->cleanupExpiredCapabilities()V

    .line 92
    return-void
.end method

.method private blacklist updateCapability(Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;)V
    .registers 6
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "builderWrapper"    # Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;

    .line 413
    invoke-virtual {p3}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getMechanism()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 414
    invoke-virtual {p3}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getPresenceBuilder()Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    move-result-object v0

    .line 415
    .local v0, "builder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    if-nez v0, :cond_e

    .line 416
    return-void

    .line 418
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createPresenceTuple(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v1

    .line 419
    .local v1, "presenceTuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    if-eqz v1, :cond_17

    .line 420
    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->addCapabilityTuple(Landroid/telephony/ims/RcsContactPresenceTuple;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 422
    .end local v0    # "builder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .end local v1    # "presenceTuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    :cond_17
    goto :goto_25

    .line 423
    :cond_18
    invoke-virtual {p3}, Lcom/android/ims/rcs/uce/eab/RcsUceCapabilityBuilderWrapper;->getOptionsBuilder()Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    move-result-object v0

    .line 424
    .local v0, "builder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    if-eqz v0, :cond_25

    .line 425
    invoke-direct {p0, p2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->createOptionTuple(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->addFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 428
    .end local v0    # "builder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public blacklist cleanupOrphanedRows()V
    .registers 7

    .line 289
    const-string v0, " (SELECT eab_common_id FROM eab_presence) "

    .line 292
    .local v0, "presenceSelection":Ljava/lang/String;
    const-string v1, " (SELECT eab_common_id FROM eab_options) "

    .line 296
    .local v1, "optionSelection":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id NOT IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NOT IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method public blacklist getAvailability(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 5
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 200
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    if-eqz v0, :cond_16

    .line 202
    const-string v0, "EabControllerImpl"

    const-string v1, "EabController destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    return-object v0

    .line 208
    :cond_16
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V

    invoke-direct {p0, p1, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateEabResult(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getAvailabilityCacheExpiration(I)J
    .registers 8
    .param p1, "subId"    # I

    .line 633
    const-string v0, "EabControllerImpl"

    const-wide/16 v1, -0x1

    .line 635
    .local v1, "value":J
    :try_start_4
    invoke-static {p1}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v3

    .line 636
    .local v3, "pm":Landroid/telephony/ims/ProvisioningManager;
    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_10

    int-to-long v1, v4

    .line 640
    .end local v3    # "pm":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_27

    .line 638
    :catch_10
    move-exception v3

    .line 639
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getAvailabilityCacheExpiration(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_27
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_34

    .line 643
    const-wide/16 v1, 0x3c

    .line 644
    const-string v3, "The Availability expiration cannot be less than 0."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_34
    return-wide v1
.end method

.method public blacklist getAvailabilityIncludingExpired(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 5
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    if-eqz v0, :cond_16

    .line 219
    const-string v0, "EabControllerImpl"

    const-string v1, "EabController destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;-><init>(Landroid/net/Uri;ILandroid/telephony/ims/RcsContactUceCapability;)V

    return-object v0

    .line 225
    :cond_16
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V

    invoke-direct {p0, p1, v0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateEabResultIncludingExpired(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCapabilities(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation

    .line 156
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    const-string v1, "EabControllerImpl"

    if-eqz v0, :cond_13

    .line 158
    const-string v0, "EabController destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateDestroyedResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 162
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities uri size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "capabilityResultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 166
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V

    invoke-direct {p0, v2, v3}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateEabResult(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v3

    .line 167
    .local v3, "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    goto :goto_36

    .line 169
    :cond_4f
    return-object v0
.end method

.method public blacklist getCapabilitiesIncludingExpired(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation

    .line 178
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    const-string v1, "EabControllerImpl"

    if-eqz v0, :cond_13

    .line 180
    const-string v0, "EabController destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateDestroyedResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 184
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilitiesIncludingExpired uri size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "capabilityResultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 188
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/rcs/uce/eab/EabControllerImpl;)V

    invoke-direct {p0, v2, v3}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->generateEabResultIncludingExpired(Landroid/net/Uri;Ljava/util/function/Predicate;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v3

    .line 190
    .local v3, "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "result":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    goto :goto_36

    .line 192
    :cond_4f
    return-object v0
.end method

.method protected blacklist getCapabilityCacheExpiration(I)I
    .registers 7
    .param p1, "subId"    # I

    .line 616
    const-string v0, "EabControllerImpl"

    const/4 v1, -0x1

    .line 618
    .local v1, "value":I
    :try_start_3
    invoke-static {p1}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v2

    .line 619
    .local v2, "pm":Landroid/telephony/ims/ProvisioningManager;
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_f

    move v1, v3

    .line 623
    .end local v2    # "pm":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_26

    .line 621
    :catch_f
    move-exception v2

    .line 622
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getCapabilityCacheExpiration(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_26
    if-gtz v1, :cond_30

    .line 626
    const v1, 0x15180

    .line 627
    const-string v2, "The capability expiration cannot be less than 0."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_30
    return v1
.end method

.method public blacklist onCarrierConfigChanged()V
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mCapabilityCleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->cleanupOrphanedRows()V

    .line 132
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    if-nez v0, :cond_11

    .line 133
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->onCarrierConfigChanged()V

    .line 135
    :cond_11
    return-void
.end method

.method public blacklist onDestroy()V
    .registers 3

    .line 121
    const-string v0, "EabControllerImpl"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    .line 123
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->onDestroy()V

    .line 124
    return-void
.end method

.method public blacklist onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V
    .registers 2
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 113
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .registers 1

    .line 117
    return-void
.end method

.method public blacklist saveCapabilities(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p1, "contactCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    const-string v1, "EabControllerImpl"

    if-eqz v0, :cond_f

    .line 235
    const-string v0, "EabController destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 239
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save capabilities: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsContactUceCapability;

    .line 243
    .local v2, "capability":Landroid/telephony/ims/RcsContactUceCapability;
    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getNumberFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "phoneNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v7, 0x0

    const-string v8, "phone_number=?"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 249
    .local v4, "c":Landroid/database/Cursor;
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_8b

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 250
    const-string v7, "_id"

    invoke-direct {p0, v4, v7}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 251
    .local v7, "contactId":I
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityMechanism()I

    move-result v8

    if-ne v8, v6, :cond_79

    .line 252
    const-string v5, "Insert presence capability"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0, v7}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->deleteOldPresenceCapability(I)V

    .line 254
    invoke-direct {p0, v7, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertNewPresenceCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V

    goto :goto_8a

    .line 255
    :cond_79
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityMechanism()I

    move-result v6

    if-ne v6, v5, :cond_8a

    .line 256
    const-string v5, "Insert options capability"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0, v7}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->deleteOldOptionCapability(I)V

    .line 258
    invoke-direct {p0, v7, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertNewOptionCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V

    .line 260
    .end local v7    # "contactId":I
    :cond_8a
    :goto_8a
    goto :goto_a7

    .line 261
    :cond_8b
    const-string v7, "The phone number can\'t find in contact table. "

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertNewContact(Ljava/lang/String;)I

    move-result v7

    .line 263
    .restart local v7    # "contactId":I
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityMechanism()I

    move-result v8

    if-ne v8, v6, :cond_9e

    .line 264
    invoke-direct {p0, v7, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertNewPresenceCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V

    goto :goto_a7

    .line 265
    :cond_9e
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityMechanism()I

    move-result v6

    if-ne v6, v5, :cond_a7

    .line 266
    invoke-direct {p0, v7, v2}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->insertNewOptionCapability(ILandroid/telephony/ims/RcsContactUceCapability;)V

    .line 270
    .end local v7    # "contactId":I
    :cond_a7
    :goto_a7
    if-eqz v4, :cond_ac

    .line 271
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 273
    .end local v2    # "capability":Landroid/telephony/ims/RcsContactUceCapability;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    .end local v4    # "c":Landroid/database/Cursor;
    :cond_ac
    goto :goto_2d

    .line 274
    :cond_ad
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->cleanupOrphanedRows()V

    .line 275
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->updateExpiredTimeAlert()V

    .line 277
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mCapabilityCleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 278
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mCapabilityCleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    :cond_c6
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mCapabilityCleanupRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    return-void
.end method

.method public blacklist setExpirationTimeFactory(Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;)V
    .registers 2
    .param p1, "factory"    # Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

    .line 928
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mExpirationTimeFactory:Lcom/android/ims/rcs/uce/eab/EabControllerImpl$ExpirationTimeFactory;

    .line 929
    return-void
.end method

.method public blacklist setUceRequestCallback(Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)V
    .registers 4
    .param p1, "c"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mIsSetDestroyedFlag:Z

    if-eqz v0, :cond_f

    .line 144
    const-string v0, "EabControllerImpl"

    const-string v1, "EabController destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_f
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mUceControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 148
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->mEabBulkCapabilityUpdater:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->setUceRequestCallback(Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)V

    .line 149
    return-void
.end method

.class public Landroid/app/BroadcastOptions;
.super Landroid/app/ComponentOptions;
.source "BroadcastOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BroadcastOptions$DeferralPolicy;,
        Landroid/app/BroadcastOptions$DeliveryGroupPolicy;,
        Landroid/app/BroadcastOptions$Flags;
    }
.end annotation


# static fields
.field public static final blacklist CHANGE_ALWAYS_DISABLED:J = 0xc916a0fL

.field public static final blacklist CHANGE_ALWAYS_ENABLED:J = 0xc82a338L

.field public static final blacklist CHANGE_INVALID:J = -0x8000000000000000L

.field public static final whitelist DEFERRAL_POLICY_DEFAULT:I = 0x0

.field public static final whitelist DEFERRAL_POLICY_NONE:I = 0x1

.field public static final whitelist DEFERRAL_POLICY_UNTIL_ACTIVE:I = 0x2

.field public static final whitelist DELIVERY_GROUP_POLICY_ALL:I = 0x0

.field public static final blacklist DELIVERY_GROUP_POLICY_MERGED:I = 0x2

.field public static final whitelist DELIVERY_GROUP_POLICY_MOST_RECENT:I = 0x1

.field private static final blacklist FLAG_ALLOW_BACKGROUND_ACTIVITY_STARTS:I = 0x2

.field private static final blacklist FLAG_DEBUG_LOG:I = 0x40

.field private static final blacklist FLAG_DONT_SEND_TO_RESTRICTED_APPS:I = 0x1

.field private static final blacklist FLAG_INTERACTIVE:I = 0x20

.field private static final blacklist FLAG_IS_ALARM_BROADCAST:I = 0x8

.field private static final blacklist FLAG_REQUIRE_COMPAT_CHANGE_ENABLED:I = 0x4

.field private static final blacklist FLAG_SHARE_IDENTITY:I = 0x10

.field private static final blacklist KEY_DEFERRAL_POLICY:Ljava/lang/String; = "android:broadcast.deferralPolicy"

.field private static final blacklist KEY_DELIVERY_GROUP_EXTRAS_MERGER:Ljava/lang/String; = "android:broadcast.deliveryGroupExtrasMerger"

.field private static final blacklist KEY_DELIVERY_GROUP_KEY:Ljava/lang/String; = "android:broadcast.deliveryGroupMatchingKey"

.field private static final blacklist KEY_DELIVERY_GROUP_MATCHING_FILTER:Ljava/lang/String; = "android:broadcast.deliveryGroupMatchingFilter"

.field private static final blacklist KEY_DELIVERY_GROUP_NAMESPACE:Ljava/lang/String; = "android:broadcast.deliveryGroupMatchingNamespace"

.field private static final blacklist KEY_DELIVERY_GROUP_POLICY:Ljava/lang/String; = "android:broadcast.deliveryGroupPolicy"

.field private static final blacklist KEY_FLAGS:Ljava/lang/String; = "android:broadcast.flags"

.field private static final blacklist KEY_ID_FOR_RESPONSE_EVENT:Ljava/lang/String; = "android:broadcast.idForResponseEvent"

.field private static final greylist-max-o KEY_MAX_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.maxManifestReceiverApiLevel"

.field private static final greylist-max-o KEY_MIN_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.minManifestReceiverApiLevel"

.field public static final blacklist KEY_REQUIRE_ALL_OF_PERMISSIONS:Ljava/lang/String; = "android:broadcast.requireAllOfPermissions"

.field private static final blacklist KEY_REQUIRE_COMPAT_CHANGE_ID:Ljava/lang/String; = "android:broadcast.requireCompatChangeId"

.field public static final blacklist KEY_REQUIRE_NONE_OF_PERMISSIONS:Ljava/lang/String; = "android:broadcast.requireNoneOfPermissions"

.field private static final blacklist KEY_TEMPORARY_APP_ALLOWLIST_DURATION:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistDuration"

.field private static final blacklist KEY_TEMPORARY_APP_ALLOWLIST_REASON:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistReason"

.field private static final blacklist KEY_TEMPORARY_APP_ALLOWLIST_REASON_CODE:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistReasonCode"

.field private static final blacklist KEY_TEMPORARY_APP_ALLOWLIST_TYPE:Ljava/lang/String; = "android:broadcast.temporaryAppAllowlistType"

.field public static final blacklist TEMPORARY_WHITELIST_TYPE_FOREGROUND_SERVICE_ALLOWED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TEMPORARY_WHITELIST_TYPE_FOREGROUND_SERVICE_NOT_ALLOWED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private blacklist mDeferralPolicy:I

.field private blacklist mDeliveryGroupExtrasMerger:Landroid/os/BundleMerger;

.field private blacklist mDeliveryGroupMatchingFilter:Landroid/content/IntentFilter;

.field private blacklist mDeliveryGroupMatchingKeyFragment:Ljava/lang/String;

.field private blacklist mDeliveryGroupMatchingNamespaceFragment:Ljava/lang/String;

.field private blacklist mDeliveryGroupPolicy:I

.field private blacklist mFlags:I

.field private blacklist mIdForResponseEvent:J

.field private greylist-max-o mMaxManifestReceiverApiLevel:I

.field private greylist-max-o mMinManifestReceiverApiLevel:I

.field private blacklist mRequireAllOfPermissions:[Ljava/lang/String;

.field private blacklist mRequireCompatChangeId:J

.field private blacklist mRequireNoneOfPermissions:[Ljava/lang/String;

.field private blacklist mTemporaryAppAllowlistDuration:J

.field private blacklist mTemporaryAppAllowlistReason:Ljava/lang/String;

.field private blacklist mTemporaryAppAllowlistReasonCode:I

.field private blacklist mTemporaryAppAllowlistType:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 323
    invoke-direct {p0}, Landroid/app/ComponentOptions;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 60
    const/16 v0, 0x2710

    iput v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 63
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    .line 324
    invoke-direct {p0}, Landroid/app/BroadcastOptions;->resetTemporaryAppAllowlist()V

    .line 325
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 330
    invoke-direct {p0, p1}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 60
    const/16 v1, 0x2710

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 63
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    .line 332
    const-string v4, "android:broadcast.flags"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/BroadcastOptions;->mFlags:I

    .line 333
    const-string v4, "android:broadcast.temporaryAppAllowlistDuration"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 334
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    .line 335
    const-string v4, "android:broadcast.temporaryAppAllowlistType"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    .line 336
    const-string v4, "android:broadcast.temporaryAppAllowlistReasonCode"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    .line 338
    const-string v4, "android:broadcast.temporaryAppAllowlistReason"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    goto :goto_40

    .line 340
    :cond_3d
    invoke-direct {p0}, Landroid/app/BroadcastOptions;->resetTemporaryAppAllowlist()V

    .line 342
    :goto_40
    const-string v4, "android:broadcast.minManifestReceiverApiLevel"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 343
    const-string v4, "android:broadcast.maxManifestReceiverApiLevel"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 345
    const-string v1, "android:broadcast.requireAllOfPermissions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BroadcastOptions;->mRequireAllOfPermissions:[Ljava/lang/String;

    .line 346
    const-string v1, "android:broadcast.requireNoneOfPermissions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BroadcastOptions;->mRequireNoneOfPermissions:[Ljava/lang/String;

    .line 347
    const-string v1, "android:broadcast.requireCompatChangeId"

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    .line 348
    const-string v1, "android:broadcast.idForResponseEvent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    .line 349
    const-string v1, "android:broadcast.deliveryGroupPolicy"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupPolicy:I

    .line 351
    const-string v1, "android:broadcast.deliveryGroupMatchingNamespace"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingNamespaceFragment:Ljava/lang/String;

    .line 352
    const-string v1, "android:broadcast.deliveryGroupMatchingKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingKeyFragment:Ljava/lang/String;

    .line 353
    const-string v1, "android:broadcast.deliveryGroupExtrasMerger"

    const-class v2, Landroid/os/BundleMerger;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BundleMerger;

    iput-object v1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupExtrasMerger:Landroid/os/BundleMerger;

    .line 355
    const-string v1, "android:broadcast.deliveryGroupMatchingFilter"

    const-class v2, Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    iput-object v1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingFilter:Landroid/content/IntentFilter;

    .line 357
    const-string v1, "android:broadcast.deferralPolicy"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/BroadcastOptions;->mDeferralPolicy:I

    .line 358
    return-void
.end method

.method public static whitelist fromBundle(Landroid/os/Bundle;)Landroid/app/BroadcastOptions;
    .registers 2
    .param p0, "options"    # Landroid/os/Bundle;

    .line 1189
    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0, p0}, Landroid/app/BroadcastOptions;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static blacklist fromBundleNullable(Landroid/os/Bundle;)Landroid/app/BroadcastOptions;
    .registers 2
    .param p0, "options"    # Landroid/os/Bundle;

    .line 1194
    if-eqz p0, :cond_8

    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0, p0}, Landroid/app/BroadcastOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private blacklist isTemporaryAppAllowlistSet()Z
    .registers 5

    .line 421
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    iget v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static whitelist makeBasic()Landroid/app/BroadcastOptions;
    .registers 1

    .line 316
    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    .line 317
    .local v0, "opts":Landroid/app/BroadcastOptions;
    return-object v0
.end method

.method public static blacklist makeWithDeferUntilActive(Z)Landroid/app/BroadcastOptions;
    .registers 3
    .param p0, "deferUntilActive"    # Z

    .line 363
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 364
    .local v0, "opts":Landroid/app/BroadcastOptions;
    if-eqz p0, :cond_a

    .line 365
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 367
    :cond_a
    return-object v0
.end method

.method private blacklist resetTemporaryAppAllowlist()V
    .registers 3

    .line 427
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    .line 428
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    .line 429
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    .line 431
    return-void
.end method


# virtual methods
.method public blacklist allowsBackgroundActivityStarts()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist clearDeferralPolicy()V
    .registers 2

    .line 816
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mDeferralPolicy:I

    .line 817
    return-void
.end method

.method public blacklist clearDeliveryGroupExtrasMerger()V
    .registers 2

    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupExtrasMerger:Landroid/os/BundleMerger;

    .line 993
    return-void
.end method

.method public blacklist clearDeliveryGroupMatchingFilter()V
    .registers 2

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingFilter:Landroid/content/IntentFilter;

    .line 956
    return-void
.end method

.method public whitelist clearDeliveryGroupMatchingKey()V
    .registers 2

    .line 912
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingNamespaceFragment:Ljava/lang/String;

    .line 913
    iput-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingKeyFragment:Ljava/lang/String;

    .line 914
    return-void
.end method

.method public whitelist clearDeliveryGroupPolicy()V
    .registers 2

    .line 843
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupPolicy:I

    .line 844
    return-void
.end method

.method public whitelist clearRequireCompatChange()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 661
    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/BroadcastOptions;->setRequireCompatChange(JZ)V

    .line 662
    return-void
.end method

.method public whitelist getDeferralPolicy()I
    .registers 2

    .line 808
    iget v0, p0, Landroid/app/BroadcastOptions;->mDeferralPolicy:I

    return v0
.end method

.method public blacklist getDeliveryGroupExtrasMerger()Landroid/os/BundleMerger;
    .registers 2

    .line 983
    iget-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupExtrasMerger:Landroid/os/BundleMerger;

    return-object v0
.end method

.method public blacklist getDeliveryGroupMatchingFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 945
    iget-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public whitelist getDeliveryGroupMatchingKey()Ljava/lang/String;
    .registers 4

    .line 873
    iget-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingNamespaceFragment:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingKeyFragment:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_1d

    .line 877
    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingNamespaceFragment:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingKeyFragment:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, ":"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 875
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeliveryGroupMatchingKeyFragment()Ljava/lang/String;
    .registers 2

    .line 904
    iget-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingKeyFragment:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeliveryGroupMatchingNamespaceFragment()Ljava/lang/String;
    .registers 2

    .line 891
    iget-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingNamespaceFragment:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeliveryGroupPolicy()I
    .registers 2

    .line 834
    iget v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupPolicy:I

    return v0
.end method

.method public blacklist getIdForResponseEvent()J
    .registers 3

    .line 791
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    return-wide v0
.end method

.method public greylist-max-o getMaxManifestReceiverApiLevel()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    iget v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return v0
.end method

.method public greylist-max-o getMinManifestReceiverApiLevel()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    iget v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    return v0
.end method

.method public whitelist getPendingIntentBackgroundActivityStartMode()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1084
    invoke-super {p0}, Landroid/app/ComponentOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    return v0
.end method

.method public blacklist getRequireCompatChangeId()J
    .registers 3

    .line 750
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    return-wide v0
.end method

.method public blacklist getTemporaryAppAllowlistDuration()J
    .registers 3

    .line 439
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    return-wide v0
.end method

.method public blacklist getTemporaryAppAllowlistReason()Ljava/lang/String;
    .registers 2

    .line 466
    iget-object v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTemporaryAppAllowlistReasonCode()I
    .registers 2

    .line 457
    iget v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    return v0
.end method

.method public blacklist getTemporaryAppAllowlistType()I
    .registers 2

    .line 448
    iget v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    return v0
.end method

.method public blacklist isAlarmBroadcast()Z
    .registers 2

    .line 686
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isDebugLogEnabled()Z
    .registers 2

    .line 1112
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isDontSendToRestrictedApps()Z
    .registers 3

    .line 561
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isInteractive()Z
    .registers 2

    .line 1022
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isPendingIntentBackgroundActivityLaunchAllowed()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1051
    invoke-super {p0}, Landroid/app/ComponentOptions;->isPendingIntentBackgroundActivityLaunchAllowed()Z

    move-result v0

    return v0
.end method

.method public blacklist isPushMessagingBroadcast()Z
    .registers 3

    .line 733
    iget v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isPushMessagingOverQuotaBroadcast()Z
    .registers 3

    .line 744
    iget v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isShareIdentityEnabled()Z
    .registers 2

    .line 723
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist recordResponseEventWhileInBackground(J)V
    .registers 3
    .param p1, "id"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 785
    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    .line 786
    return-void
.end method

.method public blacklist setAlarmBroadcast(Z)V
    .registers 3
    .param p1, "senderIsAlarm"    # Z

    .line 673
    if-eqz p1, :cond_9

    .line 674
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    goto :goto_f

    .line 676
    :cond_9
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    .line 678
    :goto_f
    return-void
.end method

.method public whitelist setBackgroundActivityStartsAllowed(Z)V
    .registers 3
    .param p1, "allowBackgroundActivityStarts"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 572
    if-eqz p1, :cond_9

    .line 573
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    goto :goto_f

    .line 575
    :cond_9
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    .line 577
    :goto_f
    return-void
.end method

.method public blacklist setDebugLogEnabled(Z)Landroid/app/BroadcastOptions;
    .registers 3
    .param p1, "enabled"    # Z

    .line 1097
    if-eqz p1, :cond_9

    .line 1098
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    goto :goto_f

    .line 1100
    :cond_9
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    .line 1102
    :goto_f
    return-object p0
.end method

.method public whitelist setDeferralPolicy(I)Landroid/app/BroadcastOptions;
    .registers 2
    .param p1, "deferralPolicy"    # I

    .line 799
    iput p1, p0, Landroid/app/BroadcastOptions;->mDeferralPolicy:I

    .line 800
    return-object p0
.end method

.method public blacklist setDeliveryGroupExtrasMerger(Landroid/os/BundleMerger;)Landroid/app/BroadcastOptions;
    .registers 3
    .param p1, "extrasMerger"    # Landroid/os/BundleMerger;

    .line 969
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BundleMerger;

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupExtrasMerger:Landroid/os/BundleMerger;

    .line 970
    return-object p0
.end method

.method public blacklist setDeliveryGroupMatchingFilter(Landroid/content/IntentFilter;)Landroid/app/BroadcastOptions;
    .registers 3
    .param p1, "matchingFilter"    # Landroid/content/IntentFilter;

    .line 931
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingFilter:Landroid/content/IntentFilter;

    .line 932
    return-object p0
.end method

.method public whitelist setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 859
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingNamespaceFragment:Ljava/lang/String;

    .line 860
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingKeyFragment:Ljava/lang/String;

    .line 861
    return-object p0
.end method

.method public whitelist setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;
    .registers 2
    .param p1, "policy"    # I

    .line 825
    iput p1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupPolicy:I

    .line 826
    return-object p0
.end method

.method public whitelist setDontSendToRestrictedApps(Z)V
    .registers 3
    .param p1, "dontSendToRestrictedApps"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 549
    if-eqz p1, :cond_9

    .line 550
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    goto :goto_f

    .line 552
    :cond_9
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    .line 554
    :goto_f
    return-void
.end method

.method public blacklist setInteractive(Z)Landroid/app/BroadcastOptions;
    .registers 3
    .param p1, "interactive"    # Z

    .line 1005
    if-eqz p1, :cond_9

    .line 1006
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    goto :goto_f

    .line 1008
    :cond_9
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    .line 1010
    :goto_f
    return-object p0
.end method

.method public greylist-max-o setMaxManifestReceiverApiLevel(I)V
    .registers 2
    .param p1, "apiLevel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    iput p1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    .line 521
    return-void
.end method

.method public greylist-max-o setMinManifestReceiverApiLevel(I)V
    .registers 2
    .param p1, "apiLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 484
    iput p1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    .line 485
    return-void
.end method

.method public whitelist setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .registers 2
    .param p1, "allowed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1036
    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1037
    return-void
.end method

.method public whitelist setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;
    .registers 2
    .param p1, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1070
    invoke-super {p0, p1}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;

    .line 1071
    return-object p0
.end method

.method public bridge synthetic blacklist setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setRequireAllOfPermissions([Ljava/lang/String;)V
    .registers 2
    .param p1, "requiredPermissions"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 604
    iput-object p1, p0, Landroid/app/BroadcastOptions;->mRequireAllOfPermissions:[Ljava/lang/String;

    .line 605
    return-void
.end method

.method public whitelist setRequireCompatChange(JZ)V
    .registers 5
    .param p1, "changeId"    # J
    .param p3, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 646
    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    .line 647
    if-eqz p3, :cond_b

    .line 648
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    goto :goto_11

    .line 650
    :cond_b
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    .line 652
    :goto_11
    return-void
.end method

.method public whitelist setRequireNoneOfPermissions([Ljava/lang/String;)V
    .registers 2
    .param p1, "excludedPermissions"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 623
    iput-object p1, p0, Landroid/app/BroadcastOptions;->mRequireNoneOfPermissions:[Ljava/lang/String;

    .line 624
    return-void
.end method

.method public whitelist setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;
    .registers 3
    .param p1, "shareIdentityEnabled"    # Z

    .line 706
    if-eqz p1, :cond_9

    .line 707
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    goto :goto_f

    .line 709
    :cond_9
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    .line 711
    :goto_f
    return-object p0
.end method

.method public whitelist setTemporaryAppAllowlist(JIILjava/lang/String;)V
    .registers 7
    .param p1, "duration"    # J
    .param p3, "type"    # I
    .param p4, "reasonCode"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 410
    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    .line 411
    iput p3, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    .line 412
    iput p4, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    .line 413
    iput-object p5, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    .line 415
    invoke-direct {p0}, Landroid/app/BroadcastOptions;->isTemporaryAppAllowlistSet()Z

    move-result v0

    if-nez v0, :cond_11

    .line 416
    invoke-direct {p0}, Landroid/app/BroadcastOptions;->resetTemporaryAppAllowlist()V

    .line 418
    :cond_11
    return-void
.end method

.method public whitelist setTemporaryAppWhitelistDuration(J)V
    .registers 9
    .param p1, "duration"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 383
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    .end local p1    # "duration":J
    .local v1, "duration":J
    invoke-virtual/range {v0 .. v5}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 386
    return-void
.end method

.method public blacklist testRequireCompatChange(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 762
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 763
    iget v0, p0, Landroid/app/BroadcastOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 764
    .local v0, "requireEnabled":Z
    :goto_13
    iget-wide v3, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    invoke-static {v3, v4, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-ne v3, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1

    .line 766
    .end local v0    # "requireEnabled":Z
    :cond_1e
    return v1
.end method

.method public whitelist toBundle()Landroid/os/Bundle;
    .registers 6

    .line 1129
    invoke-super {p0}, Landroid/app/ComponentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 1130
    .local v0, "b":Landroid/os/Bundle;
    iget v1, p0, Landroid/app/BroadcastOptions;->mFlags:I

    if-eqz v1, :cond_f

    .line 1131
    const-string v1, "android:broadcast.flags"

    iget v2, p0, Landroid/app/BroadcastOptions;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1133
    :cond_f
    invoke-direct {p0}, Landroid/app/BroadcastOptions;->isTemporaryAppAllowlistSet()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1134
    const-string v1, "android:broadcast.temporaryAppAllowlistDuration"

    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1135
    const-string v1, "android:broadcast.temporaryAppAllowlistType"

    iget v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1136
    const-string v1, "android:broadcast.temporaryAppAllowlistReasonCode"

    iget v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReasonCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1137
    const-string v1, "android:broadcast.temporaryAppAllowlistReason"

    iget-object v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppAllowlistReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_31
    iget v1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    if-eqz v1, :cond_3c

    .line 1140
    const-string v1, "android:broadcast.minManifestReceiverApiLevel"

    iget v2, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1142
    :cond_3c
    iget v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    const/16 v2, 0x2710

    if-eq v1, v2, :cond_49

    .line 1143
    const-string v1, "android:broadcast.maxManifestReceiverApiLevel"

    iget v2, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1145
    :cond_49
    iget-object v1, p0, Landroid/app/BroadcastOptions;->mRequireAllOfPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_54

    .line 1146
    const-string v1, "android:broadcast.requireAllOfPermissions"

    iget-object v2, p0, Landroid/app/BroadcastOptions;->mRequireAllOfPermissions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1148
    :cond_54
    iget-object v1, p0, Landroid/app/BroadcastOptions;->mRequireNoneOfPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_5f

    .line 1149
    const-string v1, "android:broadcast.requireNoneOfPermissions"

    iget-object v2, p0, Landroid/app/BroadcastOptions;->mRequireNoneOfPermissions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1151
    :cond_5f
    iget-wide v1, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6e

    .line 1152
    const-string v1, "android:broadcast.requireCompatChangeId"

    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mRequireCompatChangeId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1154
    :cond_6e
    iget-wide v1, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7d

    .line 1155
    const-string v1, "android:broadcast.idForResponseEvent"

    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mIdForResponseEvent:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1157
    :cond_7d
    iget v1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupPolicy:I

    if-eqz v1, :cond_88

    .line 1158
    const-string v1, "android:broadcast.deliveryGroupPolicy"

    iget v2, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupPolicy:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1160
    :cond_88
    iget-object v1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingNamespaceFragment:Ljava/lang/String;

    if-eqz v1, :cond_93

    .line 1161
    const-string v1, "android:broadcast.deliveryGroupMatchingNamespace"

    iget-object v2, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingNamespaceFragment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :cond_93
    iget-object v1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingKeyFragment:Ljava/lang/String;

    if-eqz v1, :cond_9e

    .line 1164
    const-string v1, "android:broadcast.deliveryGroupMatchingKey"

    iget-object v2, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingKeyFragment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :cond_9e
    iget v1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupPolicy:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b7

    .line 1167
    iget-object v1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupExtrasMerger:Landroid/os/BundleMerger;

    if-eqz v1, :cond_af

    .line 1168
    const-string v1, "android:broadcast.deliveryGroupExtrasMerger"

    iget-object v2, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupExtrasMerger:Landroid/os/BundleMerger;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_b7

    .line 1171
    :cond_af
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Extras merger cannot be empty when delivery group policy is \'MERGED\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1175
    :cond_b7
    :goto_b7
    iget-object v1, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingFilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_c2

    .line 1176
    const-string v1, "android:broadcast.deliveryGroupMatchingFilter"

    iget-object v2, p0, Landroid/app/BroadcastOptions;->mDeliveryGroupMatchingFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1178
    :cond_c2
    iget v1, p0, Landroid/app/BroadcastOptions;->mDeferralPolicy:I

    if-eqz v1, :cond_cd

    .line 1179
    const-string v1, "android:broadcast.deferralPolicy"

    iget v2, p0, Landroid/app/BroadcastOptions;->mDeferralPolicy:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1181
    :cond_cd
    return-object v0
.end method

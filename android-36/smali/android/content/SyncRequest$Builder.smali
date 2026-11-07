.class public Landroid/content/SyncRequest$Builder;
.super Ljava/lang/Object;
.source "SyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final greylist-max-o SYNC_TARGET_ADAPTER:I = 0x2

.field private static final greylist-max-o SYNC_TARGET_UNKNOWN:I = 0x0

.field private static final greylist-max-o SYNC_TYPE_ONCE:I = 0x2

.field private static final greylist-max-o SYNC_TYPE_PERIODIC:I = 0x1

.field private static final greylist-max-o SYNC_TYPE_UNKNOWN:I


# instance fields
.field private greylist-max-o mAccount:Landroid/accounts/Account;

.field private greylist-max-o mAuthority:Ljava/lang/String;

.field private greylist-max-o mCustomExtras:Landroid/os/Bundle;

.field private greylist-max-o mDisallowMetered:Z

.field private greylist-max-o mExpedited:Z

.field private greylist-max-o mIgnoreBackoff:Z

.field private greylist-max-o mIgnoreSettings:Z

.field private greylist-max-o mIsManual:Z

.field private greylist-max-o mNoRetry:Z

.field private greylist-max-o mRequiresCharging:Z

.field private blacklist mScheduleAsExpeditedJob:Z

.field private greylist-max-o mSyncConfigExtras:Landroid/os/Bundle;

.field private greylist-max-o mSyncFlexTimeSecs:J

.field private greylist-max-o mSyncRunTimeSecs:J

.field private greylist-max-o mSyncTarget:I

.field private greylist-max-o mSyncType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccount(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;
    .registers 1

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthority(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomExtras(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisallowMetered(Landroid/content/SyncRequest$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpedited(Landroid/content/SyncRequest$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScheduleAsExpeditedJob(Landroid/content/SyncRequest$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/SyncRequest$Builder;->mScheduleAsExpeditedJob:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncConfigExtras(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncFlexTimeSecs(Landroid/content/SyncRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncRunTimeSecs(Landroid/content/SyncRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncTarget(Landroid/content/SyncRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncType(Landroid/content/SyncRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 239
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    .line 281
    return-void
.end method

.method private greylist-max-o setupInterval(JJ)V
    .registers 7
    .param p1, "at"    # J
    .param p3, "before"    # J

    .line 353
    cmp-long v0, p3, p1

    if-gtz v0, :cond_9

    .line 357
    iput-wide p1, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    .line 358
    iput-wide p3, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    .line 359
    return-void

    .line 354
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified run time for the sync must be after the specified flex time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/content/SyncRequest;
    .registers 6

    .line 547
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 548
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    const-string/jumbo v1, "ignore_backoff"

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 549
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 551
    :cond_14
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    if-eqz v0, :cond_1f

    .line 552
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v3, "allow_metered"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 554
    :cond_1f
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mRequiresCharging:Z

    if-eqz v0, :cond_2b

    .line 555
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "require_charging"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 557
    :cond_2b
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    const-string/jumbo v3, "ignore_settings"

    if-eqz v0, :cond_37

    .line 558
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 560
    :cond_37
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    if-eqz v0, :cond_42

    .line 561
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v4, "do_not_retry"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 563
    :cond_42
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    if-eqz v0, :cond_4d

    .line 564
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v4, "expedited"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 566
    :cond_4d
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mScheduleAsExpeditedJob:Z

    const-string/jumbo v4, "schedule_as_expedited_job"

    if-eqz v0, :cond_59

    .line 567
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 570
    :cond_59
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    if-eqz v0, :cond_67

    .line 571
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 572
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    :cond_67
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    if-nez v0, :cond_72

    .line 576
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    .line 579
    :cond_72
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 581
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    const-string v1, "Illegal extras were set"

    if-ne v0, v2, :cond_94

    .line 582
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 583
    invoke-static {v0}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto :goto_94

    .line 584
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_94
    :goto_94
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mScheduleAsExpeditedJob:Z

    if-eqz v0, :cond_b0

    .line 590
    :cond_a0
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->hasInvalidScheduleAsEjExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 591
    invoke-static {v0}, Landroid/content/ContentResolver;->hasInvalidScheduleAsEjExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 596
    :cond_b0
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    if-eqz v0, :cond_ba

    .line 600
    new-instance v0, Landroid/content/SyncRequest;

    invoke-direct {v0, p0}, Landroid/content/SyncRequest;-><init>(Landroid/content/SyncRequest$Builder;)V

    return-object v0

    .line 597
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an adapter with setSyncAdapter(Account, String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_c2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDisallowMetered(Z)Landroid/content/SyncRequest$Builder;
    .registers 4
    .param p1, "disallow"    # Z

    .line 368
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    if-eqz v0, :cond_10

    if-nez p1, :cond_7

    goto :goto_10

    .line 369
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setDisallowMetered(true) after having specified that settings are ignored."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_10
    :goto_10
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    .line 373
    return-object p0
.end method

.method public whitelist setExpedited(Z)Landroid/content/SyncRequest$Builder;
    .registers 2
    .param p1, "expedited"    # Z

    .line 518
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    .line 519
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 442
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    .line 443
    return-object p0
.end method

.method public whitelist setIgnoreBackoff(Z)Landroid/content/SyncRequest$Builder;
    .registers 2
    .param p1, "ignoreBackoff"    # Z

    .line 492
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    .line 493
    return-object p0
.end method

.method public whitelist setIgnoreSettings(Z)Landroid/content/SyncRequest$Builder;
    .registers 4
    .param p1, "ignoreSettings"    # Z

    .line 472
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    if-eqz v0, :cond_10

    if-nez p1, :cond_7

    goto :goto_10

    .line 473
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setIgnoreSettings(true) after having specified sync settings with this builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_10
    :goto_10
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    .line 477
    return-object p0
.end method

.method public whitelist setManual(Z)Landroid/content/SyncRequest$Builder;
    .registers 2
    .param p1, "isManual"    # Z

    .line 505
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    .line 506
    return-object p0
.end method

.method public whitelist setNoRetry(Z)Landroid/content/SyncRequest$Builder;
    .registers 2
    .param p1, "noRetry"    # Z

    .line 456
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    .line 457
    return-object p0
.end method

.method public whitelist setRequiresCharging(Z)Landroid/content/SyncRequest$Builder;
    .registers 2
    .param p1, "requiresCharging"    # Z

    .line 381
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mRequiresCharging:Z

    .line 382
    return-object p0
.end method

.method public whitelist setScheduleAsExpeditedJob(Z)Landroid/content/SyncRequest$Builder;
    .registers 2
    .param p1, "scheduleAsExpeditedJob"    # Z

    .line 534
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mScheduleAsExpeditedJob:Z

    .line 535
    return-object p0
.end method

.method public whitelist setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .line 394
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    if-nez v0, :cond_1d

    .line 397
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 398
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_15
    :goto_15
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    .line 401
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    .line 402
    iput-object p2, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    .line 403
    return-object p0

    .line 395
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync target has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist syncOnce()Landroid/content/SyncRequest$Builder;
    .registers 3

    .line 292
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-nez v0, :cond_d

    .line 295
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 296
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    .line 297
    return-object p0

    .line 293
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync type has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist syncPeriodic(JJ)Landroid/content/SyncRequest$Builder;
    .registers 7
    .param p1, "pollFrequency"    # J
    .param p3, "beforeSeconds"    # J

    .line 344
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-nez v0, :cond_b

    .line 347
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 348
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    .line 349
    return-object p0

    .line 345
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync type has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

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
.field private static final SYNC_TARGET_ADAPTER:I = 0x2

.field private static final SYNC_TARGET_UNKNOWN:I = 0x0

.field private static final SYNC_TYPE_ONCE:I = 0x2

.field private static final SYNC_TYPE_PERIODIC:I = 0x1

.field private static final SYNC_TYPE_UNKNOWN:I


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mCustomExtras:Landroid/os/Bundle;

.field private mDisallowMetered:Z

.field private mExpedited:Z

.field private mIgnoreBackoff:Z

.field private mIgnoreSettings:Z

.field private mIsManual:Z

.field private mNoRetry:Z

.field private mSyncConfigExtras:Landroid/os/Bundle;

.field private mSyncFlexTimeSecs:J

.field private mSyncRunTimeSecs:J

.field private mSyncTarget:I

.field private mSyncType:I


# direct methods
.method static synthetic -get0(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/content/SyncRequest$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/content/SyncRequest$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/content/SyncRequest$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    #@2
    return-wide v0
.end method

.method static synthetic -get7(Landroid/content/SyncRequest$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    #@2
    return-wide v0
.end method

.method static synthetic -get8(Landroid/content/SyncRequest$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/content/SyncRequest$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    #@2
    return v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 216
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    #@6
    .line 218
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    #@8
    .line 250
    return-void
.end method

.method private setupInterval(JJ)V
    .locals 3
    .param p1, "at"    # J
    .param p3, "before"    # J

    #@0
    .prologue
    .line 321
    cmp-long v0, p3, p1

    #@2
    if-lez v0, :cond_0

    #@4
    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Specified run time for the sync must be after the specified flex time."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 325
    :cond_0
    iput-wide p1, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    #@f
    .line 326
    iput-wide p3, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    #@11
    .line 320
    return-void
.end method


# virtual methods
.method public build()Landroid/content/SyncRequest;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 490
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    #@3
    invoke-static {v0}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    #@6
    .line 491
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 492
    new-instance v0, Landroid/os/Bundle;

    #@c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@f
    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    #@11
    .line 495
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@16
    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    #@18
    .line 496
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 497
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    #@1e
    const-string/jumbo v1, "ignore_backoff"

    #@21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@24
    .line 499
    :cond_1
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 500
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    #@2a
    const-string/jumbo v1, "allow_metered"

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@30
    .line 502
    :cond_2
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 503
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    #@36
    const-string/jumbo v1, "ignore_settings"

    #@39
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@3c
    .line 505
    :cond_3
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    #@3e
    if-eqz v0, :cond_4

    #@40
    .line 506
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    #@42
    const-string/jumbo v1, "do_not_retry"

    #@45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@48
    .line 508
    :cond_4
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    #@4a
    if-eqz v0, :cond_5

    #@4c
    .line 509
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    #@4e
    const-string/jumbo v1, "expedited"

    #@51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@54
    .line 511
    :cond_5
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    #@56
    if-eqz v0, :cond_6

    #@58
    .line 512
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    #@5a
    const-string/jumbo v1, "ignore_backoff"

    #@5d
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@60
    .line 513
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    #@62
    const-string/jumbo v1, "ignore_settings"

    #@65
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@68
    .line 515
    :cond_6
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    #@6a
    if-ne v0, v2, :cond_8

    #@6c
    .line 517
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    #@6e
    invoke-static {v0}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    #@71
    move-result v0

    #@72
    if-nez v0, :cond_7

    #@74
    .line 518
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    #@76
    invoke-static {v0}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    #@79
    move-result v0

    #@7a
    .line 517
    if-eqz v0, :cond_8

    #@7c
    .line 519
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7e
    const-string/jumbo v1, "Illegal extras were set"

    #@81
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@84
    throw v0

    #@85
    .line 523
    :cond_8
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    #@87
    if-nez v0, :cond_9

    #@89
    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8b
    const-string/jumbo v1, "Must specify an adapter with setSyncAdapter(Account, String"

    #@8e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@91
    throw v0

    #@92
    .line 527
    :cond_9
    new-instance v0, Landroid/content/SyncRequest;

    #@94
    invoke-direct {v0, p0}, Landroid/content/SyncRequest;-><init>(Landroid/content/SyncRequest$Builder;)V

    #@97
    return-object v0
.end method

.method public setDisallowMetered(Z)Landroid/content/SyncRequest$Builder;
    .locals 2
    .param p1, "disallow"    # Z

    #@0
    .prologue
    .line 336
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    if-eqz p1, :cond_0

    #@6
    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "setDisallowMetered(true) after havingspecified that settings are ignored."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 340
    :cond_0
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    #@11
    .line 341
    return-object p0
.end method

.method public setExpedited(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "expedited"    # Z

    #@0
    .prologue
    .line 477
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    #@2
    .line 478
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 401
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    #@2
    .line 402
    return-object p0
.end method

.method public setIgnoreBackoff(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "ignoreBackoff"    # Z

    #@0
    .prologue
    .line 451
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    #@2
    .line 452
    return-object p0
.end method

.method public setIgnoreSettings(Z)Landroid/content/SyncRequest$Builder;
    .locals 2
    .param p1, "ignoreSettings"    # Z

    #@0
    .prologue
    .line 431
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    if-eqz p1, :cond_0

    #@6
    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "setIgnoreSettings(true) after having specified sync settings with this builder."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 435
    :cond_0
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    #@11
    .line 436
    return-object p0
.end method

.method public setManual(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "isManual"    # Z

    #@0
    .prologue
    .line 464
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    #@2
    .line 465
    return-object p0
.end method

.method public setNoRetry(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "noRetry"    # Z

    #@0
    .prologue
    .line 415
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    #@2
    .line 416
    return-object p0
.end method

.method public setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 353
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Sync target has already been defined."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 356
    :cond_0
    if-eqz p2, :cond_1

    #@f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "Authority must be non-empty"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 359
    :cond_1
    const/4 v0, 0x2

    #@1f
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    #@21
    .line 360
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    #@23
    .line 361
    iput-object p2, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    #@25
    .line 362
    return-object p0
.end method

.method public syncOnce()Landroid/content/SyncRequest$Builder;
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 262
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Sync type has already been defined."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 265
    :cond_0
    const/4 v0, 0x2

    #@10
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    #@12
    .line 266
    invoke-direct {p0, v2, v3, v2, v3}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    #@15
    .line 267
    return-object p0
.end method

.method public syncPeriodic(JJ)Landroid/content/SyncRequest$Builder;
    .locals 3
    .param p1, "pollFrequency"    # J
    .param p3, "beforeSeconds"    # J

    #@0
    .prologue
    .line 312
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Sync type has already been defined."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 315
    :cond_0
    const/4 v0, 0x1

    #@e
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    #@10
    .line 316
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    #@13
    .line 317
    return-object p0
.end method

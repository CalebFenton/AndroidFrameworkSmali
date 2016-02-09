.class public Landroid/test/SyncBaseInstrumentation;
.super Landroid/test/InstrumentationTestCase;
.source "SyncBaseInstrumentation.java"


# static fields
.field private static final MAX_TIME_FOR_SYNC_IN_MINS:I = 0x14


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field private mTargetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected cancelSyncsandDisableAutoSync()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 76
    const/4 v0, 0x0

    #@2
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    #@5
    .line 77
    invoke-static {v1, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    #@8
    .line 75
    return-void
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->setUp()V

    #@3
    .line 39
    invoke-virtual {p0}, Landroid/test/SyncBaseInstrumentation;->getInstrumentation()Landroid/app/Instrumentation;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mTargetContext:Landroid/content/Context;

    #@d
    .line 40
    iget-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mTargetContext:Landroid/content/Context;

    #@f
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mContentResolver:Landroid/content/ContentResolver;

    #@15
    .line 37
    return-void
.end method

.method protected syncProvider(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    new-instance v4, Landroid/os/Bundle;

    #@2
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 49
    .local v4, "extras":Landroid/os/Bundle;
    const-string/jumbo v5, "ignore_settings"

    #@8
    const/4 v8, 0x1

    #@9
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    .line 50
    new-instance v0, Landroid/accounts/Account;

    #@e
    const-string/jumbo v5, "com.google"

    #@11
    invoke-direct {v0, p2, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 52
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {v0, p3, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@17
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1a
    move-result-wide v6

    #@1b
    .line 54
    .local v6, "startTimeInMillis":J
    const-wide/32 v8, 0x124f80

    #@1e
    add-long v2, v6, v8

    #@20
    .line 56
    .local v2, "endTimeInMillis":J
    const/4 v1, 0x0

    #@21
    .line 59
    .local v1, "counter":I
    :goto_0
    const/4 v5, 0x2

    #@22
    if-ge v1, v5, :cond_0

    #@24
    .line 61
    const-wide/16 v8, 0x3e8

    #@26
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    #@29
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2c
    move-result-wide v8

    #@2d
    cmp-long v5, v8, v2

    #@2f
    if-lez v5, :cond_1

    #@31
    .line 47
    :cond_0
    return-void

    #@32
    .line 67
    :cond_1
    invoke-static {v0, p3}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_2

    #@38
    .line 68
    const/4 v1, 0x0

    #@39
    .line 69
    goto :goto_0

    #@3a
    .line 71
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0
.end method

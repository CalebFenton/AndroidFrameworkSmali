.class public abstract Landroid/content/ContentResolver;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentResolver$CursorWrapperInner;,
        Landroid/content/ContentResolver$OpenResourceIdResult;,
        Landroid/content/ContentResolver$ParcelFileDescriptorInner;
    }
.end annotation


# static fields
.field public static final ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

.field public static final ANY_CURSOR_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/*"

.field public static final CONTENT_SERVICE_NAME:Ljava/lang/String; = "content"

.field public static final CURSOR_DIR_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir"

.field public static final CURSOR_ITEM_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item"

.field private static final ENABLE_CONTENT_SAMPLE:Z = false

.field public static final EXTRA_SIZE:Ljava/lang/String; = "android.content.extra.SIZE"

.field public static final NOTIFY_SKIP_NOTIFY_FOR_DESCENDANTS:I = 0x2

.field public static final NOTIFY_SYNC_TO_NETWORK:I = 0x1

.field public static final SCHEME_ANDROID_RESOURCE:Ljava/lang/String; = "android.resource"

.field public static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field public static final SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final SLOW_THRESHOLD_MILLIS:I = 0x1f4

.field public static final SYNC_ERROR_AUTHENTICATION:I = 0x2

.field public static final SYNC_ERROR_CONFLICT:I = 0x5

.field public static final SYNC_ERROR_INTERNAL:I = 0x8

.field public static final SYNC_ERROR_IO:I = 0x3

.field private static final SYNC_ERROR_NAMES:[Ljava/lang/String;

.field public static final SYNC_ERROR_PARSE:I = 0x4

.field public static final SYNC_ERROR_SYNC_ALREADY_IN_PROGRESS:I = 0x1

.field public static final SYNC_ERROR_TOO_MANY_DELETIONS:I = 0x6

.field public static final SYNC_ERROR_TOO_MANY_RETRIES:I = 0x7

.field public static final SYNC_EXTRAS_ACCOUNT:Ljava/lang/String; = "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_EXTRAS_DISALLOW_METERED:Ljava/lang/String; = "allow_metered"

.field public static final SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS:Ljava/lang/String; = "discard_deletions"

.field public static final SYNC_EXTRAS_DO_NOT_RETRY:Ljava/lang/String; = "do_not_retry"

.field public static final SYNC_EXTRAS_EXPECTED_DOWNLOAD:Ljava/lang/String; = "expected_download"

.field public static final SYNC_EXTRAS_EXPECTED_UPLOAD:Ljava/lang/String; = "expected_upload"

.field public static final SYNC_EXTRAS_EXPEDITED:Ljava/lang/String; = "expedited"

.field public static final SYNC_EXTRAS_FORCE:Ljava/lang/String; = "force"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_EXTRAS_IGNORE_BACKOFF:Ljava/lang/String; = "ignore_backoff"

.field public static final SYNC_EXTRAS_IGNORE_SETTINGS:Ljava/lang/String; = "ignore_settings"

.field public static final SYNC_EXTRAS_INITIALIZE:Ljava/lang/String; = "initialize"

.field public static final SYNC_EXTRAS_MANUAL:Ljava/lang/String; = "force"

.field public static final SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS:Ljava/lang/String; = "deletions_override"

.field public static final SYNC_EXTRAS_PRIORITY:Ljava/lang/String; = "sync_priority"

.field public static final SYNC_EXTRAS_REQUIRE_CHARGING:Ljava/lang/String; = "require_charging"

.field public static final SYNC_EXTRAS_UPLOAD:Ljava/lang/String; = "upload"

.field public static final SYNC_OBSERVER_TYPE_ACTIVE:I = 0x4

.field public static final SYNC_OBSERVER_TYPE_ALL:I = 0x7fffffff

.field public static final SYNC_OBSERVER_TYPE_PENDING:I = 0x2

.field public static final SYNC_OBSERVER_TYPE_SETTINGS:I = 0x1

.field public static final SYNC_OBSERVER_TYPE_STATUS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ContentResolver"

.field private static sContentService:Landroid/content/IContentService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mPackageName:Ljava/lang/String;

.field private final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 178
    sput-object v0, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    #@a
    .line 253
    const/16 v0, 0x8

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    .line 254
    const-string/jumbo v1, "already-in-progress"

    #@11
    const/4 v2, 0x0

    #@12
    aput-object v1, v0, v2

    #@14
    .line 255
    const-string/jumbo v1, "authentication-error"

    #@17
    const/4 v2, 0x1

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 256
    const-string/jumbo v1, "io-error"

    #@1d
    const/4 v2, 0x2

    #@1e
    aput-object v1, v0, v2

    #@20
    .line 257
    const-string/jumbo v1, "parse-error"

    #@23
    const/4 v2, 0x3

    #@24
    aput-object v1, v0, v2

    #@26
    .line 258
    const-string/jumbo v1, "conflict"

    #@29
    const/4 v2, 0x4

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 259
    const-string/jumbo v1, "too-many-deletions"

    #@2f
    const/4 v2, 0x5

    #@30
    aput-object v1, v0, v2

    #@32
    .line 260
    const-string/jumbo v1, "too-many-retries"

    #@35
    const/4 v2, 0x6

    #@36
    aput-object v1, v0, v2

    #@38
    .line 261
    const-string/jumbo v1, "internal-error"

    #@3b
    const/4 v2, 0x7

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 253
    sput-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    #@40
    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 326
    new-instance v0, Ljava/util/Random;

    #@5
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/ContentResolver;->mRandom:Ljava/util/Random;

    #@a
    .line 329
    if-eqz p1, :cond_0

    #@c
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    iput-object p1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@e
    .line 330
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@16
    .line 328
    return-void

    #@17
    .line 329
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@1a
    move-result-object p1

    #@1b
    goto :goto_0
.end method

.method public static addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 7
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "pollFrequency"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2148
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    #@4
    .line 2149
    const-string/jumbo v0, "force"

    #@7
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 2150
    const-string/jumbo v0, "do_not_retry"

    #@10
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@13
    move-result v0

    #@14
    .line 2149
    if-nez v0, :cond_0

    #@16
    .line 2151
    const-string/jumbo v0, "ignore_backoff"

    #@19
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@1c
    move-result v0

    #@1d
    .line 2149
    if-nez v0, :cond_0

    #@1f
    .line 2152
    const-string/jumbo v0, "ignore_settings"

    #@22
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@25
    move-result v0

    #@26
    .line 2149
    if-nez v0, :cond_0

    #@28
    .line 2153
    const-string/jumbo v0, "initialize"

    #@2b
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@2e
    move-result v0

    #@2f
    .line 2149
    if-nez v0, :cond_0

    #@31
    .line 2154
    const-string/jumbo v0, "force"

    #@34
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@37
    move-result v0

    #@38
    .line 2149
    if-nez v0, :cond_0

    #@3a
    .line 2155
    const-string/jumbo v0, "expedited"

    #@3d
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@40
    move-result v0

    #@41
    .line 2149
    if-eqz v0, :cond_1

    #@43
    .line 2156
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@45
    const-string/jumbo v1, "illegal extras were set"

    #@48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    .line 2159
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@4f
    move-result-object v0

    #@50
    move-object v1, p0

    #@51
    move-object v2, p1

    #@52
    move-object v3, p2

    #@53
    move-wide v4, p3

    #@54
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 2147
    :goto_0
    return-void

    #@58
    .line 2160
    :catch_0
    move-exception v6

    #@59
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;
    .locals 4
    .param p0, "mask"    # I
    .param p1, "callback"    # Landroid/content/SyncStatusObserver;

    #@0
    .prologue
    .line 2489
    if-nez p1, :cond_0

    #@2
    .line 2490
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "you passed in a null callback"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 2493
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentResolver$1;

    #@d
    invoke-direct {v1, p1}, Landroid/content/ContentResolver$1;-><init>(Landroid/content/SyncStatusObserver;)V

    #@10
    .line 2498
    .local v1, "observer":Landroid/content/ISyncStatusObserver$Stub;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2, p0, v1}, Landroid/content/IContentService;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2499
    return-object v1

    #@18
    .line 2500
    .end local v1    # "observer":Landroid/content/ISyncStatusObserver$Stub;
    :catch_0
    move-exception v0

    #@19
    .line 2501
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@1b
    const-string/jumbo v3, "the ContentService should always be reachable"

    #@1e
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@21
    throw v2
.end method

.method public static cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2003
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 2001
    :goto_0
    return-void

    #@9
    .line 2004
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static cancelSync(Landroid/content/SyncRequest;)V
    .locals 3
    .param p0, "request"    # Landroid/content/SyncRequest;

    #@0
    .prologue
    .line 2219
    if-nez p0, :cond_0

    #@2
    .line 2220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "request cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2223
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1, p0}, Landroid/content/IContentService;->cancelRequest(Landroid/content/SyncRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 2218
    :goto_0
    return-void

    #@13
    .line 2224
    :catch_0
    move-exception v0

    #@14
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2014
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v1, p0, p1, v2, p2}, Landroid/content/IContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 2012
    :goto_0
    return-void

    #@9
    .line 2015
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getContentService()Landroid/content/IContentService;
    .locals 2

    #@0
    .prologue
    .line 2673
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2674
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    #@6
    return-object v1

    #@7
    .line 2676
    :cond_0
    const-string/jumbo v1, "content"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 2678
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IContentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    #@14
    .line 2680
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    #@16
    return-object v1
.end method

.method public static getCurrentSync()Landroid/content/SyncInfo;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2382
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    .line 2383
    .local v1, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 2384
    const/4 v2, 0x0

    #@f
    return-object v2

    #@10
    .line 2386
    :cond_0
    const/4 v2, 0x0

    #@11
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/content/SyncInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    return-object v2

    #@18
    .line 2387
    :catch_0
    move-exception v0

    #@19
    .line 2388
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@1b
    const-string/jumbo v3, "the ContentService should always be reachable"

    #@1e
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@21
    throw v2
.end method

.method public static getCurrentSyncs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2403
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 2404
    :catch_0
    move-exception v0

    #@a
    .line 2405
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@f
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public static getCurrentSyncsAsUser(I)Ljava/util/List;
    .locals 3
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2415
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0}, Landroid/content/IContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 2416
    :catch_0
    move-exception v0

    #@a
    .line 2417
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@f
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public static getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2255
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2256
    :catch_0
    move-exception v0

    #@a
    .line 2257
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@f
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public static getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2268
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2269
    :catch_0
    move-exception v0

    #@a
    .line 2270
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@f
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public static getMasterSyncAutomatically()Z
    .locals 3

    #@0
    .prologue
    .line 2299
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/content/IContentService;->getMasterSyncAutomatically()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2300
    :catch_0
    move-exception v0

    #@a
    .line 2301
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@f
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public static getMasterSyncAutomaticallyAsUser(I)Z
    .locals 3
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 2311
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0}, Landroid/content/IContentService;->getMasterSyncAutomaticallyAsUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2312
    :catch_0
    move-exception v0

    #@a
    .line 2313
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@f
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public static getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2241
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 2242
    :catch_0
    move-exception v0

    #@b
    .line 2243
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@10
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method public static getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2051
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1}, Landroid/content/IContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 2052
    :catch_0
    move-exception v0

    #@a
    .line 2054
    .local v0, "e":Landroid/os/RemoteException;
    const-class v1, Ljava/lang/String;

    #@c
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, [Ljava/lang/String;

    #@12
    return-object v1
.end method

.method public static getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 3

    #@0
    .prologue
    .line 2025
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 2026
    :catch_0
    move-exception v0

    #@a
    .line 2027
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@f
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public static getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .locals 3
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 2037
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0}, Landroid/content/IContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 2038
    :catch_0
    move-exception v0

    #@a
    .line 2039
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@f
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public static getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2068
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1}, Landroid/content/IContentService;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2069
    :catch_0
    move-exception v0

    #@a
    .line 2070
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@f
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public static getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2081
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2082
    :catch_0
    move-exception v0

    #@a
    .line 2083
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@f
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method public static getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2430
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 2431
    :catch_0
    move-exception v0

    #@b
    .line 2432
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@10
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method public static getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2443
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v1, p0, p1, v2, p2}, Landroid/content/IContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 2444
    :catch_0
    move-exception v0

    #@b
    .line 2445
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@10
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method public static invalidPeriodicExtras(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2174
    const-string/jumbo v0, "force"

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 2175
    const-string/jumbo v0, "do_not_retry"

    #@d
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@10
    move-result v0

    #@11
    .line 2174
    if-nez v0, :cond_0

    #@13
    .line 2176
    const-string/jumbo v0, "ignore_backoff"

    #@16
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@19
    move-result v0

    #@1a
    .line 2174
    if-nez v0, :cond_0

    #@1c
    .line 2177
    const-string/jumbo v0, "ignore_settings"

    #@1f
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@22
    move-result v0

    #@23
    .line 2174
    if-nez v0, :cond_0

    #@25
    .line 2178
    const-string/jumbo v0, "initialize"

    #@28
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@2b
    move-result v0

    #@2c
    .line 2174
    if-nez v0, :cond_0

    #@2e
    .line 2179
    const-string/jumbo v0, "force"

    #@31
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@34
    move-result v0

    #@35
    .line 2174
    if-nez v0, :cond_0

    #@37
    .line 2180
    const-string/jumbo v0, "expedited"

    #@3a
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@3d
    move-result v0

    #@3e
    .line 2174
    if-eqz v0, :cond_1

    #@40
    .line 2181
    :cond_0
    const/4 v0, 0x1

    #@41
    return v0

    #@42
    .line 2183
    :cond_1
    return v1
.end method

.method public static isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2352
    if-nez p0, :cond_0

    #@2
    .line 2353
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2355
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 2356
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "authority must not be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 2360
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@19
    move-result-object v1

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 2361
    :catch_0
    move-exception v0

    #@21
    .line 2362
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@23
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@26
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw v1
.end method

.method public static isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2458
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2468
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v1, p0, p1, v2, p2}, Landroid/content/IContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 2469
    :catch_0
    move-exception v0

    #@b
    .line 2470
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@10
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method private maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "durationMillis"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2558
    return-void
.end method

.method private maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "durationMillis"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "operation"    # Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2598
    return-void
.end method

.method public static removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2197
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    #@3
    .line 2199
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 2196
    return-void

    #@b
    .line 2200
    :catch_0
    move-exception v0

    #@c
    .line 2201
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "the ContentService should always be reachable"

    #@11
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v1
.end method

.method public static removeStatusChangeListener(Ljava/lang/Object;)V
    .locals 3
    .param p0, "handle"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2510
    if-nez p0, :cond_0

    #@2
    .line 2511
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "you passed in a null handle"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2514
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@e
    move-result-object v1

    #@f
    check-cast p0, Landroid/content/ISyncStatusObserver$Stub;

    #@11
    .end local p0    # "handle":Ljava/lang/Object;
    invoke-interface {v1, p0}, Landroid/content/IContentService;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 2509
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    #@15
    .line 2515
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    #@16
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1908
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0, p2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    #@7
    .line 1907
    return-void
.end method

.method public static requestSync(Landroid/content/SyncRequest;)V
    .locals 2
    .param p0, "request"    # Landroid/content/SyncRequest;

    #@0
    .prologue
    .line 1939
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0}, Landroid/content/IContentService;->sync(Landroid/content/SyncRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1937
    :goto_0
    return-void

    #@8
    .line 1940
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1917
    if-nez p3, :cond_0

    #@2
    .line 1918
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Must specify extras."

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1921
    :cond_0
    new-instance v2, Landroid/content/SyncRequest$Builder;

    #@d
    invoke-direct {v2}, Landroid/content/SyncRequest$Builder;-><init>()V

    #@10
    invoke-virtual {v2, p0, p1}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    #@1f
    move-result-object v1

    #@20
    .line 1927
    .local v1, "request":Landroid/content/SyncRequest;
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v2, v1, p2}, Landroid/content/IContentService;->syncAsUser(Landroid/content/SyncRequest;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 1916
    :goto_0
    return-void

    #@28
    .line 1928
    :catch_0
    move-exception v0

    #@29
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private samplePercentForDuration(J)I
    .locals 5
    .param p1, "durationMillis"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x1f4

    #@2
    .line 2549
    cmp-long v0, p1, v2

    #@4
    if-ltz v0, :cond_0

    #@6
    .line 2550
    const/16 v0, 0x64

    #@8
    return v0

    #@9
    .line 2552
    :cond_0
    const-wide/16 v0, 0x64

    #@b
    mul-long/2addr v0, p1

    #@c
    div-long/2addr v0, v2

    #@d
    long-to-int v0, v0

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    return v0
.end method

.method public static setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "syncable"    # I

    #@0
    .prologue
    .line 2282
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2280
    :goto_0
    return-void

    #@8
    .line 2283
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static setMasterSyncAutomatically(Z)V
    .locals 1
    .param p0, "sync"    # Z

    #@0
    .prologue
    .line 2326
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    #@7
    .line 2325
    return-void
.end method

.method public static setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 2
    .param p0, "sync"    # Z
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2335
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1}, Landroid/content/IContentService;->setMasterSyncAutomaticallyAsUser(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2333
    :goto_0
    return-void

    #@8
    .line 2336
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    #@0
    .prologue
    .line 2097
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    #@7
    .line 2096
    return-void
.end method

.method public static setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2107
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2105
    :goto_0
    return-void

    #@8
    .line 2108
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static syncErrorStringToInt(Ljava/lang/String;)I
    .locals 6
    .param p0, "error"    # Ljava/lang/String;

    #@0
    .prologue
    .line 274
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    sget-object v3, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    #@3
    array-length v2, v3

    #@4
    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@6
    .line 275
    sget-object v3, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    #@8
    aget-object v3, v3, v1

    #@a
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 276
    add-int/lit8 v3, v1, 0x1

    #@12
    return v3

    #@13
    .line 274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 279
    :cond_1
    if-eqz p0, :cond_2

    #@18
    .line 281
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v3

    #@1c
    return v3

    #@1d
    .line 282
    :catch_0
    move-exception v0

    #@1e
    .line 283
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "ContentResolver"

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "error parsing sync error: "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 286
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v3, 0x0

    #@39
    return v3
.end method

.method public static syncErrorToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    #@0
    .prologue
    .line 266
    const/4 v0, 0x1

    #@1
    if-lt p0, v0, :cond_0

    #@3
    sget-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    #@5
    array-length v0, v0

    #@6
    if-le p0, v0, :cond_1

    #@8
    .line 267
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 269
    :cond_1
    sget-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    #@f
    add-int/lit8 v1, p0, -0x1

    #@11
    aget-object v0, v0, v1

    #@13
    return-object v0
.end method

.method public static validateSyncExtrasBundle(Landroid/os/Bundle;)V
    .locals 8
    .param p0, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1961
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@3
    move-result-object v5

    #@4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_1

    #@e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/String;

    #@14
    .line 1962
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    .line 1963
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    #@1a
    .line 1964
    instance-of v5, v4, Ljava/lang/Long;

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 1965
    instance-of v5, v4, Ljava/lang/Integer;

    #@20
    if-nez v5, :cond_0

    #@22
    .line 1966
    instance-of v5, v4, Ljava/lang/Boolean;

    #@24
    if-nez v5, :cond_0

    #@26
    .line 1967
    instance-of v5, v4, Ljava/lang/Float;

    #@28
    if-nez v5, :cond_0

    #@2a
    .line 1968
    instance-of v5, v4, Ljava/lang/Double;

    #@2c
    if-nez v5, :cond_0

    #@2e
    .line 1969
    instance-of v5, v4, Ljava/lang/String;

    #@30
    if-nez v5, :cond_0

    #@32
    .line 1970
    instance-of v5, v4, Landroid/accounts/Account;

    #@34
    if-nez v5, :cond_0

    #@36
    .line 1971
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@38
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v7, "unexpected value type: "

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    .line 1972
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    .line 1971
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@58
    .line 1974
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@59
    .line 1975
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    #@5a
    .line 1976
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    #@5b
    .line 1977
    .local v1, "exc":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@5d
    const-string/jumbo v6, "error unparceling Bundle"

    #@60
    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    throw v5

    #@64
    .line 1959
    .end local v1    # "exc":Ljava/lang/RuntimeException;
    .restart local v3    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public final acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1544
    const-string/jumbo v1, "uri"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1545
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v0

    #@b
    .line 1546
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    #@d
    .line 1547
    new-instance v1, Landroid/content/ContentProviderClient;

    #@f
    const/4 v2, 0x1

    #@10
    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    #@13
    return-object v1

    #@14
    .line 1549
    :cond_0
    return-object v2
.end method

.method public final acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1565
    const-string/jumbo v1, "name"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1566
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    #@a
    move-result-object v0

    #@b
    .line 1567
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    #@d
    .line 1568
    new-instance v1, Landroid/content/ContentProviderClient;

    #@f
    const/4 v2, 0x1

    #@10
    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    #@13
    return-object v1

    #@14
    .line 1571
    :cond_0
    return-object v2
.end method

.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1484
    const-string/jumbo v1, "content"

    #@4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1485
    return-object v3

    #@f
    .line 1487
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1488
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@15
    .line 1489
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 1491
    :cond_1
    return-object v3
.end method

.method protected abstract acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1465
    const-string/jumbo v1, "content"

    #@4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1466
    return-object v3

    #@f
    .line 1468
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1469
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@15
    .line 1470
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 1472
    :cond_1
    return-object v3
.end method

.method public final acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1498
    if-nez p1, :cond_0

    #@3
    .line 1499
    return-object v0

    #@4
    .line 1501
    :cond_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public final acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1592
    const-string/jumbo v1, "uri"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1593
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v0

    #@b
    .line 1594
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    #@d
    .line 1595
    new-instance v1, Landroid/content/ContentProviderClient;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    #@13
    return-object v1

    #@14
    .line 1598
    :cond_0
    return-object v2
.end method

.method public final acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1619
    const-string/jumbo v1, "name"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1620
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    #@a
    move-result-object v0

    #@b
    .line 1621
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    #@d
    .line 1622
    new-instance v1, Landroid/content/ContentProviderClient;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    #@13
    return-object v1

    #@14
    .line 1625
    :cond_0
    return-object v2
.end method

.method protected abstract acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1512
    const-string/jumbo v1, "content"

    #@4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1513
    return-object v3

    #@f
    .line 1515
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1516
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@15
    .line 1517
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 1519
    :cond_1
    return-object v3
.end method

.method public final acquireUnstableProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1526
    if-nez p1, :cond_0

    #@3
    .line 1527
    return-object v0

    #@4
    .line 1529
    :cond_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .locals 2
    .param p1, "icp"    # Landroid/content/IContentProvider;

    #@0
    .prologue
    .line 358
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "appNotRespondingViaProvider"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1308
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v1, "authority"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1309
    const-string/jumbo v1, "operations"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1310
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    #@f
    move-result-object v0

    #@10
    .line 1311
    .local v0, "provider":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    #@12
    .line 1312
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Unknown authority "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 1315
    :cond_0
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result-object v1

    #@30
    .line 1317
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    #@33
    .line 1315
    return-object v1

    #@34
    .line 1316
    :catchall_0
    move-exception v1

    #@35
    .line 1317
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    #@38
    .line 1316
    throw v1
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Write;
        .end annotation
    .end param
    .param p2, "values"    # [Landroid/content/ContentValues;

    #@0
    .prologue
    .line 1333
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1334
    const-string/jumbo v1, "values"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1335
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@f
    move-result-object v7

    #@10
    .line 1336
    .local v7, "provider":Landroid/content/IContentProvider;
    if-nez v7, :cond_0

    #@12
    .line 1337
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Unknown URL "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 1340
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2f
    move-result-wide v10

    #@30
    .line 1341
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@32
    invoke-interface {v7, v1, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    #@35
    move-result v8

    #@36
    .line 1342
    .local v8, "rowsCreated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@39
    move-result-wide v4

    #@3a
    sub-long v2, v4, v10

    #@3c
    .line 1343
    .local v2, "durationMillis":J
    const-string/jumbo v5, "bulkinsert"

    #@3f
    const/4 v6, 0x0

    #@40
    move-object v1, p0

    #@41
    move-object v4, p1

    #@42
    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 1350
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@48
    .line 1344
    return v8

    #@49
    .line 1345
    .end local v2    # "durationMillis":J
    .end local v8    # "rowsCreated":I
    .end local v10    # "startTime":J
    :catch_0
    move-exception v0

    #@4a
    .line 1348
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@4b
    .line 1350
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@4e
    .line 1348
    return v1

    #@4f
    .line 1349
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@50
    .line 1350
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@53
    .line 1349
    throw v1
.end method

.method public final call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1438
    const-string/jumbo v3, "uri"

    #@4
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1439
    const-string/jumbo v3, "method"

    #@a
    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 1440
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@10
    move-result-object v1

    #@11
    .line 1441
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    #@13
    .line 1442
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "Unknown URI "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v3

    #@2d
    .line 1445
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@2f
    invoke-interface {v1, v3, p2, p3, p4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@32
    move-result-object v2

    #@33
    .line 1446
    .local v2, "res":Landroid/os/Bundle;
    const/4 v3, 0x1

    #@34
    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 1453
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@3a
    .line 1447
    return-object v2

    #@3b
    .line 1448
    .end local v2    # "res":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    #@3c
    .line 1453
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@3f
    .line 1451
    return-object v4

    #@40
    .line 1452
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@41
    .line 1453
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@44
    .line 1452
    throw v3
.end method

.method public cancelSync(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1990
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :goto_0
    invoke-static {v1, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    #@a
    .line 1989
    return-void

    #@b
    :cond_0
    move-object v0, v1

    #@c
    .line 1990
    goto :goto_0
.end method

.method public final canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 613
    const-string/jumbo v2, "url"

    #@4
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 614
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v1

    #@b
    .line 615
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    #@d
    .line 616
    return-object v3

    #@e
    .line 620
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@10
    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v2

    #@14
    .line 626
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@17
    .line 620
    return-object v2

    #@18
    .line 621
    :catch_0
    move-exception v0

    #@19
    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@1c
    .line 624
    return-object v3

    #@1d
    .line 625
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@1e
    .line 626
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@21
    .line 625
    throw v2
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Write;
        .end annotation
    .end param
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1366
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1367
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@9
    move-result-object v7

    #@a
    .line 1368
    .local v7, "provider":Landroid/content/IContentProvider;
    if-nez v7, :cond_0

    #@c
    .line 1369
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "Unknown URL "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 1372
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@29
    move-result-wide v10

    #@2a
    .line 1373
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@2c
    invoke-interface {v7, v1, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@2f
    move-result v8

    #@30
    .line 1374
    .local v8, "rowsDeleted":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@33
    move-result-wide v4

    #@34
    sub-long v2, v4, v10

    #@36
    .line 1375
    .local v2, "durationMillis":J
    const-string/jumbo v5, "delete"

    #@39
    move-object v1, p0

    #@3a
    move-object v4, p1

    #@3b
    move-object v6, p2

    #@3c
    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 1382
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@42
    .line 1376
    return v8

    #@43
    .line 1377
    .end local v2    # "durationMillis":J
    .end local v8    # "rowsDeleted":I
    .end local v10    # "startTime":J
    :catch_0
    move-exception v0

    #@44
    .line 1380
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@45
    .line 1382
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@48
    .line 1380
    return v1

    #@49
    .line 1381
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4a
    .line 1382
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@4d
    .line 1381
    throw v1
.end method

.method public getCache(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 5
    .param p1, "key"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2534
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v2

    #@4
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 2535
    iget-object v4, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    #@f
    move-result v4

    #@10
    .line 2534
    invoke-interface {v2, v3, p1, v4}, Landroid/content/IContentService;->getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    #@13
    move-result-object v0

    #@14
    .line 2536
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@16
    iget-object v2, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 2537
    :cond_0
    return-object v0

    #@20
    .line 2538
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    #@21
    .line 2539
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@24
    move-result-object v2

    #@25
    throw v2
.end method

.method public getOutgoingPersistedUriPermissions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1847
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1848
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@6
    const/4 v3, 0x0

    #@7
    .line 1847
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 1849
    :catch_0
    move-exception v0

    #@11
    .line 1850
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@13
    const-string/jumbo v2, "Activity manager has died"

    #@16
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19
    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2685
    iget-object v0, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPersistedUriPermissions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1831
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1832
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@6
    const/4 v3, 0x1

    #@7
    .line 1831
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 1833
    :catch_0
    move-exception v0

    #@11
    .line 1834
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@13
    const-string/jumbo v2, "Activity manager has died"

    #@16
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19
    throw v1
.end method

.method public getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1220
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1222
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v8

    #@a
    if-eqz v8, :cond_0

    #@c
    .line 1223
    new-instance v8, Ljava/io/FileNotFoundException;

    #@e
    new-instance v9, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v10, "No authority: "

    #@16
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v9

    #@1a
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v9

    #@1e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v9

    #@22
    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@25
    throw v8

    #@26
    .line 1226
    :cond_0
    :try_start_0
    iget-object v8, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@28
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2b
    move-result-object v8

    #@2c
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result-object v6

    #@30
    .line 1231
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@33
    move-result-object v5

    #@34
    .line 1232
    .local v5, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    #@36
    .line 1233
    new-instance v8, Ljava/io/FileNotFoundException;

    #@38
    new-instance v9, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v10, "No path: "

    #@40
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v9

    #@4c
    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v8

    #@50
    .line 1227
    .end local v5    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    #@51
    .line 1228
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/io/FileNotFoundException;

    #@53
    new-instance v9, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v10, "No package found for authority: "

    #@5b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v9

    #@63
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v9

    #@67
    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v8

    #@6b
    .line 1235
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "r":Landroid/content/res/Resources;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@6e
    move-result v4

    #@6f
    .line 1237
    .local v4, "len":I
    if-ne v4, v10, :cond_2

    #@71
    .line 1239
    const/4 v8, 0x0

    #@72
    :try_start_1
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@75
    move-result-object v8

    #@76
    check-cast v8, Ljava/lang/String;

    #@78
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@7b
    move-result v3

    #@7c
    .line 1248
    .local v3, "id":I
    :goto_0
    if-nez v3, :cond_4

    #@7e
    .line 1249
    new-instance v8, Ljava/io/FileNotFoundException;

    #@80
    new-instance v9, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v10, "No resource found for: "

    #@88
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v9

    #@8c
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v9

    #@90
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v9

    #@94
    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@97
    throw v8

    #@98
    .line 1240
    .end local v3    # "id":I
    :catch_1
    move-exception v1

    #@99
    .line 1241
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/io/FileNotFoundException;

    #@9b
    new-instance v9, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v10, "Single path segment is not a resource ID: "

    #@a3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v9

    #@a7
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v9

    #@ab
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v9

    #@af
    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v8

    #@b3
    .line 1243
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v8, 0x2

    #@b4
    if-ne v4, v8, :cond_3

    #@b6
    .line 1244
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b9
    move-result-object v8

    #@ba
    check-cast v8, Ljava/lang/String;

    #@bc
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@bf
    move-result-object v9

    #@c0
    check-cast v9, Ljava/lang/String;

    #@c2
    invoke-virtual {v6, v8, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@c5
    move-result v3

    #@c6
    .restart local v3    # "id":I
    goto :goto_0

    #@c7
    .line 1246
    .end local v3    # "id":I
    :cond_3
    new-instance v8, Ljava/io/FileNotFoundException;

    #@c9
    new-instance v9, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v10, "More than two path segments: "

    #@d1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v9

    #@d5
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v9

    #@d9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v9

    #@dd
    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@e0
    throw v8

    #@e1
    .line 1251
    .restart local v3    # "id":I
    :cond_4
    new-instance v7, Landroid/content/ContentResolver$OpenResourceIdResult;

    #@e3
    invoke-direct {v7, p0}, Landroid/content/ContentResolver$OpenResourceIdResult;-><init>(Landroid/content/ContentResolver;)V

    #@e6
    .line 1252
    .local v7, "res":Landroid/content/ContentResolver$OpenResourceIdResult;
    iput-object v6, v7, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    #@e8
    .line 1253
    iput v3, v7, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    #@ea
    .line 1254
    return-object v7
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 422
    const-string/jumbo v2, "url"

    #@4
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 423
    const-string/jumbo v2, "mimeTypeFilter"

    #@a
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 425
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@10
    move-result-object v1

    #@11
    .line 426
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    #@13
    .line 427
    return-object v3

    #@14
    .line 431
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v2

    #@18
    .line 437
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@1b
    .line 431
    return-object v2

    #@1c
    .line 432
    :catch_0
    move-exception v0

    #@1d
    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@20
    .line 435
    return-object v3

    #@21
    .line 436
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@22
    .line 437
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@25
    .line 436
    throw v2
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 369
    const-string/jumbo v4, "url"

    #@4
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 372
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v2

    #@b
    .line 373
    .local v2, "provider":Landroid/content/IContentProvider;
    if-eqz v2, :cond_0

    #@d
    .line 375
    :try_start_0
    invoke-interface {v2, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v4

    #@11
    .line 382
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@14
    .line 375
    return-object v4

    #@15
    .line 378
    :catch_0
    move-exception v1

    #@16
    .line 379
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "ContentResolver"

    #@19
    new-instance v5, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v6, "Failed to get type for: "

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    const-string/jumbo v6, " ("

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    const-string/jumbo v6, ")"

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .line 382
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@49
    .line 380
    return-object v7

    #@4a
    .line 376
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@4b
    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@4e
    .line 377
    return-object v7

    #@4f
    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@50
    .line 382
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@53
    .line 381
    throw v4

    #@54
    .line 386
    :cond_0
    const-string/jumbo v4, "content"

    #@57
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v4

    #@5f
    if-nez v4, :cond_1

    #@61
    .line 387
    return-object v7

    #@62
    .line 391
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@65
    move-result-object v4

    #@66
    .line 392
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    #@6d
    move-result v6

    #@6e
    .line 391
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@71
    move-result-object v3

    #@72
    .line 393
    .local v3, "type":Ljava/lang/String;
    return-object v3

    #@73
    .line 398
    .end local v3    # "type":Ljava/lang/String;
    :catch_2
    move-exception v1

    #@74
    .line 399
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ContentResolver"

    #@77
    new-instance v5, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v6, "Failed to get type for: "

    #@7f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    const-string/jumbo v6, " ("

    #@8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v5

    #@96
    const-string/jumbo v6, ")"

    #@99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v5

    #@9d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v5

    #@a1
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    .line 400
    return-object v7

    #@a5
    .line 394
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    #@a6
    .line 397
    .restart local v0    # "e":Landroid/os/RemoteException;
    return-object v7
.end method

.method public getTypeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2702
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/util/MimeIconUtils;->loadMimeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Write;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1269
    const-string/jumbo v1, "url"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1270
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v8

    #@b
    .line 1271
    .local v8, "provider":Landroid/content/IContentProvider;
    if-nez v8, :cond_0

    #@d
    .line 1272
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "Unknown URL "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 1275
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2a
    move-result-wide v10

    #@2b
    .line 1276
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@2d
    invoke-interface {v8, v1, p1, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@30
    move-result-object v0

    #@31
    .line 1277
    .local v0, "createdRow":Landroid/net/Uri;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@34
    move-result-wide v4

    #@35
    sub-long v2, v4, v10

    #@37
    .line 1278
    .local v2, "durationMillis":J
    const-string/jumbo v5, "insert"

    #@3a
    const/4 v6, 0x0

    #@3b
    move-object v1, p0

    #@3c
    move-object v4, p1

    #@3d
    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 1285
    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@43
    .line 1279
    return-object v0

    #@44
    .line 1280
    .end local v0    # "createdRow":Landroid/net/Uri;
    .end local v2    # "durationMillis":J
    .end local v10    # "startTime":J
    :catch_0
    move-exception v7

    #@45
    .line 1285
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@48
    .line 1283
    return-object v9

    #@49
    .line 1284
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4a
    .line 1285
    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@4d
    .line 1284
    throw v1
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 1693
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    #@4
    .line 1692
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1740
    const-string/jumbo v0, "uri"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1742
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@9
    move-result-object v0

    #@a
    .line 1745
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@d
    move-result v1

    #@e
    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@11
    move-result v1

    #@12
    .line 1741
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;II)V

    #@15
    .line 1739
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;II)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1773
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@4
    move-result-object v0

    #@5
    .line 1774
    if-nez p2, :cond_0

    #@7
    .line 1775
    :goto_0
    if-eqz p2, :cond_1

    #@9
    invoke-virtual {p2}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    #@c
    move-result v3

    #@d
    :goto_1
    move-object v1, p1

    #@e
    move v4, p3

    #@f
    move v5, p4

    #@10
    .line 1773
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZII)V

    #@13
    .line 1771
    :goto_2
    return-void

    #@14
    .line 1774
    :cond_0
    invoke-virtual {p2}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v2

    #@18
    goto :goto_0

    #@19
    .line 1775
    :cond_1
    const/4 v3, 0x0

    #@1a
    goto :goto_1

    #@1b
    .line 1777
    :catch_0
    move-exception v6

    #@1c
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z

    #@0
    .prologue
    .line 1714
    const-string/jumbo v0, "uri"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1716
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@9
    move-result-object v0

    #@a
    .line 1719
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@d
    move-result v1

    #@e
    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@11
    move-result v1

    #@12
    .line 1715
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    #@15
    .line 1713
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z
    .param p4, "userHandle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1756
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@5
    move-result-object v0

    #@6
    .line 1757
    if-nez p2, :cond_1

    #@8
    .line 1758
    :goto_0
    if-eqz p2, :cond_2

    #@a
    invoke-virtual {p2}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    #@d
    move-result v3

    #@e
    .line 1759
    :goto_1
    if-eqz p3, :cond_0

    #@10
    const/4 v4, 0x1

    #@11
    :cond_0
    move-object v1, p1

    #@12
    move v5, p4

    #@13
    .line 1756
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZII)V

    #@16
    .line 1754
    :goto_2
    return-void

    #@17
    .line 1757
    :cond_1
    invoke-virtual {p2}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v2

    #@1b
    goto :goto_0

    #@1c
    :cond_2
    move v3, v4

    #@1d
    .line 1758
    goto :goto_1

    #@1e
    .line 1761
    :catch_0
    move-exception v6

    #@1f
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public final openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 907
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 964
    const-string/jumbo v4, "uri"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 965
    const-string/jumbo v4, "mode"

    #@b
    move-object/from16 v0, p2

    #@d
    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 967
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@13
    move-result-object v17

    #@14
    .line 968
    .local v17, "scheme":Ljava/lang/String;
    const-string/jumbo v4, "android.resource"

    #@17
    move-object/from16 v0, v17

    #@19
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 969
    const-string/jumbo v4, "r"

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v4

    #@28
    if-nez v4, :cond_0

    #@2a
    .line 970
    new-instance v4, Ljava/io/FileNotFoundException;

    #@2c
    new-instance v6, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v7, "Can\'t write resources: "

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    move-object/from16 v0, p1

    #@3a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@45
    throw v4

    #@46
    .line 972
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    #@49
    move-result-object v15

    #@4a
    .line 974
    .local v15, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_0
    iget-object v4, v15, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    #@4c
    iget v6, v15, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    #@4e
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    move-result-object v4

    #@52
    return-object v4

    #@53
    .line 975
    :catch_0
    move-exception v13

    #@54
    .line 976
    .local v13, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v4, Ljava/io/FileNotFoundException;

    #@56
    new-instance v6, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v7, "Resource does not exist: "

    #@5e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    move-object/from16 v0, p1

    #@64
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v4

    #@70
    .line 978
    .end local v13    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v15    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_1
    const-string/jumbo v4, "file"

    #@73
    move-object/from16 v0, v17

    #@75
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v4

    #@79
    if-eqz v4, :cond_2

    #@7b
    .line 980
    new-instance v4, Ljava/io/File;

    #@7d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@84
    invoke-static/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    #@87
    move-result v6

    #@88
    .line 979
    invoke-static {v4, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@8b
    move-result-object v5

    #@8c
    .line 981
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Landroid/content/res/AssetFileDescriptor;

    #@8e
    const-wide/16 v6, 0x0

    #@90
    const-wide/16 v8, -0x1

    #@92
    invoke-direct/range {v4 .. v9}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    #@95
    return-object v4

    #@96
    .line 983
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    const-string/jumbo v4, "r"

    #@99
    move-object/from16 v0, p2

    #@9b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v4

    #@9f
    if-eqz v4, :cond_3

    #@a1
    .line 984
    const-string/jumbo v4, "*/*"

    #@a4
    const/4 v6, 0x0

    #@a5
    move-object/from16 v0, p0

    #@a7
    move-object/from16 v1, p1

    #@a9
    move-object/from16 v2, p3

    #@ab
    invoke-virtual {v0, v1, v4, v6, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@ae
    move-result-object v4

    #@af
    return-object v4

    #@b0
    .line 986
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@b3
    move-result-object v19

    #@b4
    .line 987
    .local v19, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v19, :cond_4

    #@b6
    .line 988
    new-instance v4, Ljava/io/FileNotFoundException;

    #@b8
    new-instance v6, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v7, "No content provider: "

    #@c0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    move-object/from16 v0, p1

    #@c6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v6

    #@ca
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v6

    #@ce
    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v4

    #@d2
    .line 990
    :cond_4
    const/16 v18, 0x0

    #@d4
    .line 991
    .local v18, "stableProvider":Landroid/content/IContentProvider;
    const/4 v14, 0x0

    #@d5
    .line 994
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    const/16 v16, 0x0

    #@d7
    .line 995
    .local v16, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_5

    #@d9
    .line 996
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@dc
    .line 997
    invoke-interface/range {v19 .. v19}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@df
    move-result-object v16

    #@e0
    .line 998
    .local v16, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p3

    #@e2
    move-object/from16 v1, v16

    #@e4
    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e7
    .line 1003
    .end local v16    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    #@e9
    iget-object v4, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@eb
    .line 1002
    move-object/from16 v0, v19

    #@ed
    move-object/from16 v1, p1

    #@ef
    move-object/from16 v2, p2

    #@f1
    move-object/from16 v3, v16

    #@f3
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@f6
    move-result-object v14

    #@f7
    .line 1004
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v14, :cond_f

    #@f9
    .line 1006
    const/4 v4, 0x0

    #@fa
    .line 1047
    if-eqz p3, :cond_6

    #@fc
    .line 1048
    const/4 v6, 0x0

    #@fd
    move-object/from16 v0, p3

    #@ff
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@102
    .line 1053
    :cond_6
    if-eqz v19, :cond_7

    #@104
    .line 1054
    move-object/from16 v0, p0

    #@106
    move-object/from16 v1, v19

    #@108
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@10b
    .line 1006
    :cond_7
    return-object v4

    #@10c
    .line 1008
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v10

    #@10d
    .line 1012
    .local v10, "e":Landroid/os/DeadObjectException;
    :try_start_3
    move-object/from16 v0, p0

    #@10f
    move-object/from16 v1, v19

    #@111
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@114
    .line 1013
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@117
    move-result-object v18

    #@118
    .line 1014
    .local v18, "stableProvider":Landroid/content/IContentProvider;
    if-nez v18, :cond_b

    #@11a
    .line 1015
    new-instance v4, Ljava/io/FileNotFoundException;

    #@11c
    new-instance v6, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    const-string/jumbo v7, "No content provider: "

    #@124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v6

    #@128
    move-object/from16 v0, p1

    #@12a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v6

    #@12e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v6

    #@132
    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@135
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@136
    .line 1040
    .end local v10    # "e":Landroid/os/DeadObjectException;
    .end local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v18    # "stableProvider":Landroid/content/IContentProvider;
    .end local v19    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_2
    move-exception v11

    #@137
    .line 1042
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Ljava/io/FileNotFoundException;

    #@139
    .line 1043
    new-instance v6, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v7, "Failed opening content provider: "

    #@141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v6

    #@145
    move-object/from16 v0, p1

    #@147
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v6

    #@14b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e
    move-result-object v6

    #@14f
    .line 1042
    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@152
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@153
    .line 1046
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@154
    .line 1047
    if-eqz p3, :cond_8

    #@156
    .line 1048
    const/4 v6, 0x0

    #@157
    move-object/from16 v0, p3

    #@159
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@15c
    .line 1050
    :cond_8
    if-eqz v18, :cond_9

    #@15e
    .line 1051
    move-object/from16 v0, p0

    #@160
    move-object/from16 v1, v18

    #@162
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@165
    .line 1053
    :cond_9
    if-eqz v19, :cond_a

    #@167
    .line 1054
    move-object/from16 v0, p0

    #@169
    move-object/from16 v1, v19

    #@16b
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@16e
    .line 1046
    :cond_a
    throw v4

    #@16f
    .line 1018
    .restart local v10    # "e":Landroid/os/DeadObjectException;
    .restart local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v18    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v19    # "unstableProvider":Landroid/content/IContentProvider;
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    #@171
    iget-object v4, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@173
    .line 1017
    move-object/from16 v0, v18

    #@175
    move-object/from16 v1, p1

    #@177
    move-object/from16 v2, p2

    #@179
    move-object/from16 v3, v16

    #@17b
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@17e
    move-result-object v14

    #@17f
    .line 1019
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v14, :cond_f

    #@181
    .line 1021
    const/4 v4, 0x0

    #@182
    .line 1047
    if-eqz p3, :cond_c

    #@184
    .line 1048
    const/4 v6, 0x0

    #@185
    move-object/from16 v0, p3

    #@187
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@18a
    .line 1050
    :cond_c
    if-eqz v18, :cond_d

    #@18c
    .line 1051
    move-object/from16 v0, p0

    #@18e
    move-object/from16 v1, v18

    #@190
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@193
    .line 1053
    :cond_d
    if-eqz v19, :cond_e

    #@195
    .line 1054
    move-object/from16 v0, p0

    #@197
    move-object/from16 v1, v19

    #@199
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@19c
    .line 1021
    :cond_e
    return-object v4

    #@19d
    .line 1025
    .end local v10    # "e":Landroid/os/DeadObjectException;
    .end local v18    # "stableProvider":Landroid/content/IContentProvider;
    :cond_f
    if-nez v18, :cond_10

    #@19f
    .line 1026
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@1a2
    move-result-object v18

    #@1a3
    .line 1028
    :cond_10
    move-object/from16 v0, p0

    #@1a5
    move-object/from16 v1, v19

    #@1a7
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@1aa
    .line 1029
    const/16 v19, 0x0

    #@1ac
    .line 1030
    .local v19, "unstableProvider":Landroid/content/IContentProvider;
    new-instance v5, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    #@1ae
    .line 1031
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@1b1
    move-result-object v4

    #@1b2
    .line 1030
    move-object/from16 v0, p0

    #@1b4
    move-object/from16 v1, v18

    #@1b6
    invoke-direct {v5, v0, v4, v1}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    #@1b9
    .line 1035
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/16 v18, 0x0

    #@1bb
    .line 1037
    .local v18, "stableProvider":Landroid/content/IContentProvider;
    new-instance v4, Landroid/content/res/AssetFileDescriptor;

    #@1bd
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@1c0
    move-result-wide v6

    #@1c1
    .line 1038
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@1c4
    move-result-wide v8

    #@1c5
    .line 1037
    invoke-direct/range {v4 .. v9}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1c8
    .line 1047
    if-eqz p3, :cond_11

    #@1ca
    .line 1048
    const/4 v6, 0x0

    #@1cb
    move-object/from16 v0, p3

    #@1cd
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@1d0
    .line 1037
    :cond_11
    return-object v4

    #@1d1
    .line 1044
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v18    # "stableProvider":Landroid/content/IContentProvider;
    .end local v19    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_3
    move-exception v12

    #@1d2
    .line 1045
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public final openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 791
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 837
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@4
    move-result-object v0

    #@5
    .line 838
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    #@7
    .line 839
    return-object v2

    #@8
    .line 842
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@b
    move-result-wide v2

    #@c
    const-wide/16 v4, 0x0

    #@e
    cmp-long v2, v2, v4

    #@10
    if-gez v2, :cond_1

    #@12
    .line 844
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 850
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 854
    :goto_0
    new-instance v2, Ljava/io/FileNotFoundException;

    #@1c
    const-string/jumbo v3, "Not a whole file"

    #@1f
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 851
    :catch_0
    move-exception v1

    #@24
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public final openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 687
    const-string/jumbo v7, "uri"

    #@4
    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 688
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    .line 689
    .local v4, "scheme":Ljava/lang/String;
    const-string/jumbo v7, "android.resource"

    #@e
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_0

    #@14
    .line 692
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    #@17
    move-result-object v3

    #@18
    .line 694
    .local v3, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_0
    iget-object v6, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    #@1a
    iget v7, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    #@1c
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v5

    #@20
    .line 695
    .local v5, "stream":Ljava/io/InputStream;
    return-object v5

    #@21
    .line 696
    .end local v5    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@22
    .line 697
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v6, Ljava/io/FileNotFoundException;

    #@24
    new-instance v7, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v8, "Resource does not exist: "

    #@2c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v6

    #@3c
    .line 699
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_0
    const-string/jumbo v7, "file"

    #@3f
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_1

    #@45
    .line 702
    new-instance v6, Ljava/io/FileInputStream;

    #@47
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@4e
    return-object v6

    #@4f
    .line 704
    :cond_1
    const-string/jumbo v7, "r"

    #@52
    invoke-virtual {p0, p1, v7, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@55
    move-result-object v2

    #@56
    .line 706
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v2, :cond_2

    #@58
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@5b
    move-result-object v6

    #@5c
    :cond_2
    return-object v6

    #@5d
    .line 707
    :catch_1
    move-exception v0

    #@5e
    .line 708
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/io/FileNotFoundException;

    #@60
    const-string/jumbo v7, "Unable to create stream"

    #@63
    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@66
    throw v6
.end method

.method public final openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 720
    const-string/jumbo v0, "w"

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 744
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@4
    move-result-object v1

    #@5
    .line 746
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_0

    #@7
    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    :cond_0
    return-object v2

    #@c
    .line 747
    :catch_0
    move-exception v0

    #@d
    .line 748
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/FileNotFoundException;

    #@f
    const-string/jumbo v3, "Unable to create stream"

    #@12
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1091
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1128
    const-string/jumbo v3, "uri"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 1129
    const-string/jumbo v3, "mimeType"

    #@b
    move-object/from16 v0, p2

    #@d
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1131
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@13
    move-result-object v2

    #@14
    .line 1132
    .local v2, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v2, :cond_0

    #@16
    .line 1133
    new-instance v3, Ljava/io/FileNotFoundException;

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "No content provider: "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3

    #@32
    .line 1135
    :cond_0
    const/4 v8, 0x0

    #@33
    .line 1136
    .local v8, "stableProvider":Landroid/content/IContentProvider;
    const/16 v19, 0x0

    #@35
    .line 1139
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v7, 0x0

    #@36
    .line 1140
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_1

    #@38
    .line 1141
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@3b
    .line 1142
    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@3e
    move-result-object v7

    #@3f
    .line 1143
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p4

    #@41
    invoke-virtual {v0, v7}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 1148
    .end local v7    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@46
    iget-object v3, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@48
    move-object/from16 v4, p1

    #@4a
    move-object/from16 v5, p2

    #@4c
    move-object/from16 v6, p3

    #@4e
    .line 1147
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    move-result-object v19

    #@52
    .line 1149
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v19, :cond_b

    #@54
    .line 1151
    const/4 v3, 0x0

    #@55
    .line 1192
    if-eqz p4, :cond_2

    #@57
    .line 1193
    const/4 v4, 0x0

    #@58
    move-object/from16 v0, p4

    #@5a
    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@5d
    .line 1198
    :cond_2
    if-eqz v2, :cond_3

    #@5f
    .line 1199
    move-object/from16 v0, p0

    #@61
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@64
    .line 1151
    :cond_3
    return-object v3

    #@65
    .line 1153
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v16

    #@66
    .line 1157
    .local v16, "e":Landroid/os/DeadObjectException;
    :try_start_2
    move-object/from16 v0, p0

    #@68
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@6b
    .line 1158
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@6e
    move-result-object v8

    #@6f
    .line 1159
    .local v8, "stableProvider":Landroid/content/IContentProvider;
    if-nez v8, :cond_7

    #@71
    .line 1160
    new-instance v3, Ljava/io/FileNotFoundException;

    #@73
    new-instance v4, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v5, "No content provider: "

    #@7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    move-object/from16 v0, p1

    #@81
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8d
    .line 1185
    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v8    # "stableProvider":Landroid/content/IContentProvider;
    .end local v16    # "e":Landroid/os/DeadObjectException;
    .end local v19    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v17

    #@8e
    .line 1187
    .local v17, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v3, Ljava/io/FileNotFoundException;

    #@90
    .line 1188
    new-instance v4, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v5, "Failed opening content provider: "

    #@98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    move-object/from16 v0, p1

    #@9e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    .line 1187
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@aa
    .line 1191
    .end local v17    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@ab
    .line 1192
    if-eqz p4, :cond_4

    #@ad
    .line 1193
    const/4 v4, 0x0

    #@ae
    move-object/from16 v0, p4

    #@b0
    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@b3
    .line 1195
    :cond_4
    if-eqz v8, :cond_5

    #@b5
    .line 1196
    move-object/from16 v0, p0

    #@b7
    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@ba
    .line 1198
    :cond_5
    if-eqz v2, :cond_6

    #@bc
    .line 1199
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@c1
    .line 1191
    :cond_6
    throw v3

    #@c2
    .line 1163
    .restart local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v8    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v16    # "e":Landroid/os/DeadObjectException;
    .restart local v19    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    #@c4
    iget-object v9, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@c6
    move-object/from16 v10, p1

    #@c8
    move-object/from16 v11, p2

    #@ca
    move-object/from16 v12, p3

    #@cc
    move-object v13, v7

    #@cd
    .line 1162
    invoke-interface/range {v8 .. v13}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d0
    move-result-object v19

    #@d1
    .line 1164
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v19, :cond_b

    #@d3
    .line 1166
    const/4 v3, 0x0

    #@d4
    .line 1192
    if-eqz p4, :cond_8

    #@d6
    .line 1193
    const/4 v4, 0x0

    #@d7
    move-object/from16 v0, p4

    #@d9
    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@dc
    .line 1195
    :cond_8
    if-eqz v8, :cond_9

    #@de
    .line 1196
    move-object/from16 v0, p0

    #@e0
    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@e3
    .line 1198
    :cond_9
    if-eqz v2, :cond_a

    #@e5
    .line 1199
    move-object/from16 v0, p0

    #@e7
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@ea
    .line 1166
    :cond_a
    return-object v3

    #@eb
    .line 1170
    .end local v8    # "stableProvider":Landroid/content/IContentProvider;
    .end local v16    # "e":Landroid/os/DeadObjectException;
    :cond_b
    if-nez v8, :cond_c

    #@ed
    .line 1171
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@f0
    move-result-object v8

    #@f1
    .line 1173
    :cond_c
    move-object/from16 v0, p0

    #@f3
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@f6
    .line 1174
    const/4 v2, 0x0

    #@f7
    .line 1175
    .local v2, "unstableProvider":Landroid/content/IContentProvider;
    new-instance v11, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    #@f9
    .line 1176
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@fc
    move-result-object v3

    #@fd
    .line 1175
    move-object/from16 v0, p0

    #@ff
    invoke-direct {v11, v0, v3, v8}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    #@102
    .line 1180
    .local v11, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v8, 0x0

    #@103
    .line 1182
    .local v8, "stableProvider":Landroid/content/IContentProvider;
    new-instance v10, Landroid/content/res/AssetFileDescriptor;

    #@105
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@108
    move-result-wide v12

    #@109
    .line 1183
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@10c
    move-result-wide v14

    #@10d
    .line 1182
    invoke-direct/range {v10 .. v15}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@110
    .line 1192
    if-eqz p4, :cond_d

    #@112
    .line 1193
    const/4 v3, 0x0

    #@113
    move-object/from16 v0, p4

    #@115
    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@118
    .line 1182
    :cond_d
    return-object v10

    #@119
    .line 1189
    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v8    # "stableProvider":Landroid/content/IContentProvider;
    .end local v11    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v18

    #@11a
    .line 1190
    .local v18, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    throw v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public putCache(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "value"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2524
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 2525
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    #@f
    move-result v3

    #@10
    .line 2524
    invoke-interface {v1, v2, p1, p2, v3}, Landroid/content/IContentService;->putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 2522
    return-void

    #@14
    .line 2526
    :catch_0
    move-exception v0

    #@15
    .line 2527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@18
    move-result-object v1

    #@19
    throw v1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Read;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 474
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 27
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Read;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 515
    const-string/jumbo v5, "uri"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-static {v0, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 516
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@b
    move-result-object v4

    #@c
    .line 517
    .local v4, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v4, :cond_0

    #@e
    .line 518
    const/4 v5, 0x0

    #@f
    return-object v5

    #@10
    .line 520
    :cond_0
    const/4 v12, 0x0

    #@11
    .line 521
    .local v12, "stableProvider":Landroid/content/IContentProvider;
    const/16 v23, 0x0

    #@13
    .line 523
    .local v23, "qCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v24

    #@17
    .line 525
    .local v24, "startTime":J
    const/4 v11, 0x0

    #@18
    .line 526
    .local v11, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p6, :cond_1

    #@1a
    .line 527
    invoke-virtual/range {p6 .. p6}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@1d
    .line 528
    invoke-interface {v4}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@20
    move-result-object v11

    #@21
    .line 529
    .local v11, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p6

    #@23
    invoke-virtual {v0, v11}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 532
    .end local v11    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@28
    iget-object v5, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@2a
    move-object/from16 v6, p1

    #@2c
    move-object/from16 v7, p2

    #@2e
    move-object/from16 v8, p3

    #@30
    move-object/from16 v9, p4

    #@32
    move-object/from16 v10, p5

    #@34
    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result-object v23

    #@38
    .line 546
    .end local v12    # "stableProvider":Landroid/content/IContentProvider;
    .local v23, "qCursor":Landroid/database/Cursor;
    :goto_0
    if-nez v23, :cond_a

    #@3a
    .line 547
    const/4 v5, 0x0

    #@3b
    .line 567
    if-eqz v23, :cond_2

    #@3d
    .line 568
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    #@40
    .line 570
    :cond_2
    if-eqz p6, :cond_3

    #@42
    .line 571
    const/4 v6, 0x0

    #@43
    move-object/from16 v0, p6

    #@45
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@48
    .line 573
    :cond_3
    if-eqz v4, :cond_4

    #@4a
    .line 574
    move-object/from16 v0, p0

    #@4c
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@4f
    .line 576
    :cond_4
    if-eqz v12, :cond_5

    #@51
    .line 577
    move-object/from16 v0, p0

    #@53
    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@56
    .line 547
    :cond_5
    return-object v5

    #@57
    .line 534
    .restart local v12    # "stableProvider":Landroid/content/IContentProvider;
    .local v23, "qCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v20

    #@58
    .line 538
    .local v20, "e":Landroid/os/DeadObjectException;
    :try_start_2
    move-object/from16 v0, p0

    #@5a
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@5d
    .line 539
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    move-result-object v12

    #@61
    .line 540
    .local v12, "stableProvider":Landroid/content/IContentProvider;
    if-nez v12, :cond_9

    #@63
    .line 541
    const/4 v5, 0x0

    #@64
    .line 570
    if-eqz p6, :cond_6

    #@66
    .line 571
    const/4 v6, 0x0

    #@67
    move-object/from16 v0, p6

    #@69
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@6c
    .line 573
    :cond_6
    if-eqz v4, :cond_7

    #@6e
    .line 574
    move-object/from16 v0, p0

    #@70
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@73
    .line 576
    :cond_7
    if-eqz v12, :cond_8

    #@75
    .line 577
    move-object/from16 v0, p0

    #@77
    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@7a
    .line 541
    :cond_8
    return-object v5

    #@7b
    .line 543
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    #@7d
    iget-object v13, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@7f
    move-object/from16 v14, p1

    #@81
    move-object/from16 v15, p2

    #@83
    move-object/from16 v16, p3

    #@85
    move-object/from16 v17, p4

    #@87
    move-object/from16 v18, p5

    #@89
    move-object/from16 v19, v11

    #@8b
    invoke-interface/range {v12 .. v19}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@8e
    move-result-object v23

    #@8f
    .local v23, "qCursor":Landroid/database/Cursor;
    goto :goto_0

    #@90
    .line 551
    .end local v12    # "stableProvider":Landroid/content/IContentProvider;
    .end local v20    # "e":Landroid/os/DeadObjectException;
    :cond_a
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    #@93
    .line 552
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@96
    move-result-wide v6

    #@97
    sub-long v14, v6, v24

    #@99
    .local v14, "durationMillis":J
    move-object/from16 v13, p0

    #@9b
    move-object/from16 v16, p1

    #@9d
    move-object/from16 v17, p2

    #@9f
    move-object/from16 v18, p3

    #@a1
    move-object/from16 v19, p5

    #@a3
    .line 553
    invoke-direct/range {v13 .. v19}, Landroid/content/ContentResolver;->maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a6
    .line 556
    if-eqz v12, :cond_d

    #@a8
    move-object/from16 v22, v12

    #@aa
    .line 558
    .local v22, "provider":Landroid/content/IContentProvider;
    :goto_1
    new-instance v26, Landroid/content/ContentResolver$CursorWrapperInner;

    #@ac
    move-object/from16 v0, v26

    #@ae
    move-object/from16 v1, p0

    #@b0
    move-object/from16 v2, v23

    #@b2
    move-object/from16 v3, v22

    #@b4
    invoke-direct {v0, v1, v2, v3}, Landroid/content/ContentResolver$CursorWrapperInner;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b7
    .line 559
    .local v26, "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    const/4 v12, 0x0

    #@b8
    .line 560
    .local v12, "stableProvider":Landroid/content/IContentProvider;
    const/16 v23, 0x0

    #@ba
    .line 570
    .local v23, "qCursor":Landroid/database/Cursor;
    if-eqz p6, :cond_b

    #@bc
    .line 571
    const/4 v5, 0x0

    #@bd
    move-object/from16 v0, p6

    #@bf
    invoke-virtual {v0, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@c2
    .line 573
    :cond_b
    if-eqz v4, :cond_c

    #@c4
    .line 574
    move-object/from16 v0, p0

    #@c6
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@c9
    .line 561
    :cond_c
    return-object v26

    #@ca
    .line 557
    .end local v12    # "stableProvider":Landroid/content/IContentProvider;
    .end local v22    # "provider":Landroid/content/IContentProvider;
    .end local v26    # "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    .local v23, "qCursor":Landroid/database/Cursor;
    :cond_d
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@cd
    move-result-object v22

    #@ce
    .restart local v22    # "provider":Landroid/content/IContentProvider;
    goto :goto_1

    #@cf
    .line 562
    .end local v14    # "durationMillis":J
    .end local v22    # "provider":Landroid/content/IContentProvider;
    .end local v23    # "qCursor":Landroid/database/Cursor;
    .end local v24    # "startTime":J
    :catch_1
    move-exception v21

    #@d0
    .line 565
    .local v21, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    #@d1
    .line 567
    if-eqz v23, :cond_e

    #@d3
    .line 568
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    #@d6
    .line 570
    :cond_e
    if-eqz p6, :cond_f

    #@d8
    .line 571
    const/4 v6, 0x0

    #@d9
    move-object/from16 v0, p6

    #@db
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@de
    .line 573
    :cond_f
    if-eqz v4, :cond_10

    #@e0
    .line 574
    move-object/from16 v0, p0

    #@e2
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@e5
    .line 576
    :cond_10
    if-eqz v12, :cond_11

    #@e7
    .line 577
    move-object/from16 v0, p0

    #@e9
    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@ec
    .line 565
    :cond_11
    return-object v5

    #@ed
    .line 566
    .end local v21    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@ee
    .line 567
    if-eqz v23, :cond_12

    #@f0
    .line 568
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    #@f3
    .line 570
    :cond_12
    if-eqz p6, :cond_13

    #@f5
    .line 571
    const/4 v6, 0x0

    #@f6
    move-object/from16 v0, p6

    #@f8
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@fb
    .line 573
    :cond_13
    if-eqz v4, :cond_14

    #@fd
    .line 574
    move-object/from16 v0, p0

    #@ff
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@102
    .line 576
    :cond_14
    if-eqz v12, :cond_15

    #@104
    .line 577
    move-object/from16 v0, p0

    #@106
    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@109
    .line 566
    :cond_15
    throw v5
.end method

.method public final registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 1643
    const-string/jumbo v0, "uri"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1644
    const-string/jumbo v0, "observer"

    #@9
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1646
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 1649
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@13
    move-result v1

    #@14
    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@17
    move-result v1

    #@18
    .line 1645
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1b
    .line 1642
    return-void
.end method

.method public final registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;
    .param p4, "userHandle"    # I

    #@0
    .prologue
    .line 1656
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    .line 1657
    invoke-virtual {p3}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    #@7
    move-result-object v2

    #@8
    .line 1656
    invoke-interface {v1, p1, p2, v2, p4}, Landroid/content/IContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1654
    :goto_0
    return-void

    #@c
    .line 1658
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    #@0
    .prologue
    .line 1811
    const-string/jumbo v1, "uri"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1813
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v1

    #@a
    .line 1814
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    #@11
    move-result v3

    #@12
    .line 1813
    invoke-interface {v1, v2, p2, v3}, Landroid/app/IActivityManager;->releasePersistableUriPermission(Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1810
    :goto_0
    return-void

    #@16
    .line 1815
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public abstract releaseProvider(Landroid/content/IContentProvider;)Z
.end method

.method public abstract releaseUnstableProvider(Landroid/content/IContentProvider;)Z
.end method

.method public resolveUserId(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2697
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    #@5
    move-result v0

    #@6
    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1876
    const/4 v0, 0x0

    #@2
    .line 1877
    .local v0, "account":Landroid/accounts/Account;
    if-eqz p2, :cond_1

    #@4
    .line 1878
    const-string/jumbo v3, "account"

    #@7
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1879
    .local v1, "accountName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 1881
    new-instance v0, Landroid/accounts/Account;

    #@13
    .end local v0    # "account":Landroid/accounts/Account;
    const-string/jumbo v3, "com.google"

    #@16
    invoke-direct {v0, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 1883
    :cond_0
    const-string/jumbo v3, "account"

    #@1c
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@1f
    .line 1885
    .end local v1    # "accountName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    #@21
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    :cond_2
    invoke-static {v0, v2, p2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@28
    .line 1875
    return-void
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    #@0
    .prologue
    .line 1793
    const-string/jumbo v1, "uri"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1795
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v1

    #@a
    .line 1796
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    #@11
    move-result v3

    #@12
    .line 1795
    invoke-interface {v1, v2, p2, v3}, Landroid/app/IActivityManager;->takePersistableUriPermission(Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1792
    :goto_0
    return-void

    #@16
    .line 1797
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 649
    const-string/jumbo v2, "url"

    #@4
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 650
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v1

    #@b
    .line 651
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    #@d
    .line 652
    return-object v3

    #@e
    .line 656
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@10
    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v2

    #@14
    .line 662
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@17
    .line 656
    return-object v2

    #@18
    .line 657
    :catch_0
    move-exception v0

    #@19
    .line 662
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@1c
    .line 660
    return-object v3

    #@1d
    .line 661
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@1e
    .line 662
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@21
    .line 661
    throw v2
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 1669
    const-string/jumbo v2, "observer"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1671
    :try_start_0
    invoke-virtual {p1}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    #@9
    move-result-object v0

    #@a
    .line 1672
    .local v0, "contentObserver":Landroid/database/IContentObserver;
    if-eqz v0, :cond_0

    #@c
    .line 1673
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2, v0}, Landroid/content/IContentService;->unregisterContentObserver(Landroid/database/IContentObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1668
    .end local v0    # "contentObserver":Landroid/database/IContentObserver;
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1676
    :catch_0
    move-exception v1

    #@15
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public abstract unstableProviderDied(Landroid/content/IContentProvider;)V
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Write;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1402
    const-string/jumbo v1, "uri"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1403
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@9
    move-result-object v0

    #@a
    .line 1404
    .local v0, "provider":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    #@c
    .line 1405
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "Unknown URI "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 1408
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@29
    move-result-wide v10

    #@2a
    .line 1409
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@2c
    move-object v2, p1

    #@2d
    move-object v3, p2

    #@2e
    move-object v4, p3

    #@2f
    move-object/from16 v5, p4

    #@31
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@34
    move-result v8

    #@35
    .line 1410
    .local v8, "rowsUpdated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@38
    move-result-wide v4

    #@39
    sub-long v2, v4, v10

    #@3b
    .line 1411
    .local v2, "durationMillis":J
    const-string/jumbo v5, "update"

    #@3e
    move-object v1, p0

    #@3f
    move-object v4, p1

    #@40
    move-object v6, p3

    #@41
    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 1418
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@47
    .line 1412
    return v8

    #@48
    .line 1413
    .end local v2    # "durationMillis":J
    .end local v8    # "rowsUpdated":I
    .end local v10    # "startTime":J
    :catch_0
    move-exception v7

    #@49
    .line 1416
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@4a
    .line 1418
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@4d
    .line 1416
    return v1

    #@4e
    .line 1417
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4f
    .line 1418
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@52
    .line 1417
    throw v1
.end method

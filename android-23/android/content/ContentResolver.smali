.class public abstract Landroid/content/ContentResolver;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentResolver$OpenResourceIdResult;,
        Landroid/content/ContentResolver$CursorWrapperInner;,
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
    .line 164
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 163
    sput-object v0, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    #@a
    .line 238
    const/16 v0, 0x8

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    .line 239
    const-string/jumbo v1, "already-in-progress"

    #@11
    const/4 v2, 0x0

    #@12
    aput-object v1, v0, v2

    #@14
    .line 240
    const-string/jumbo v1, "authentication-error"

    #@17
    const/4 v2, 0x1

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 241
    const-string/jumbo v1, "io-error"

    #@1d
    const/4 v2, 0x2

    #@1e
    aput-object v1, v0, v2

    #@20
    .line 242
    const-string/jumbo v1, "parse-error"

    #@23
    const/4 v2, 0x3

    #@24
    aput-object v1, v0, v2

    #@26
    .line 243
    const-string/jumbo v1, "conflict"

    #@29
    const/4 v2, 0x4

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 244
    const-string/jumbo v1, "too-many-deletions"

    #@2f
    const/4 v2, 0x5

    #@30
    aput-object v1, v0, v2

    #@32
    .line 245
    const-string/jumbo v1, "too-many-retries"

    #@35
    const/4 v2, 0x6

    #@36
    aput-object v1, v0, v2

    #@38
    .line 246
    const-string/jumbo v1, "internal-error"

    #@3b
    const/4 v2, 0x7

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 238
    sput-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    #@40
    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 286
    new-instance v0, Ljava/util/Random;

    #@5
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/ContentResolver;->mRandom:Ljava/util/Random;

    #@a
    .line 289
    if-eqz p1, :cond_0

    #@c
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    iput-object p1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@e
    .line 290
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@16
    .line 288
    return-void

    #@17
    .line 289
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
    .line 2051
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    #@4
    .line 2052
    const-string/jumbo v0, "force"

    #@7
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 2053
    const-string/jumbo v0, "do_not_retry"

    #@10
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@13
    move-result v0

    #@14
    .line 2052
    if-nez v0, :cond_0

    #@16
    .line 2054
    const-string/jumbo v0, "ignore_backoff"

    #@19
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@1c
    move-result v0

    #@1d
    .line 2052
    if-nez v0, :cond_0

    #@1f
    .line 2055
    const-string/jumbo v0, "ignore_settings"

    #@22
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@25
    move-result v0

    #@26
    .line 2052
    if-nez v0, :cond_0

    #@28
    .line 2056
    const-string/jumbo v0, "initialize"

    #@2b
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@2e
    move-result v0

    #@2f
    .line 2052
    if-nez v0, :cond_0

    #@31
    .line 2057
    const-string/jumbo v0, "force"

    #@34
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@37
    move-result v0

    #@38
    .line 2052
    if-nez v0, :cond_0

    #@3a
    .line 2058
    const-string/jumbo v0, "expedited"

    #@3d
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@40
    move-result v0

    #@41
    .line 2052
    if-eqz v0, :cond_1

    #@43
    .line 2059
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@45
    const-string/jumbo v1, "illegal extras were set"

    #@48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    .line 2062
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
    .line 2050
    :goto_0
    return-void

    #@58
    .line 2063
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
    .line 2390
    if-nez p1, :cond_0

    #@2
    .line 2391
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "you passed in a null callback"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 2394
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentResolver$1;

    #@d
    invoke-direct {v1, p1}, Landroid/content/ContentResolver$1;-><init>(Landroid/content/SyncStatusObserver;)V

    #@10
    .line 2399
    .local v1, "observer":Landroid/content/ISyncStatusObserver$Stub;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2, p0, v1}, Landroid/content/IContentService;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2400
    return-object v1

    #@18
    .line 2401
    .end local v1    # "observer":Landroid/content/ISyncStatusObserver$Stub;
    :catch_0
    move-exception v0

    #@19
    .line 2402
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
    .line 1908
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
    .line 1906
    :goto_0
    return-void

    #@9
    .line 1909
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
    .line 2122
    if-nez p0, :cond_0

    #@2
    .line 2123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "request cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2126
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
    .line 2121
    :goto_0
    return-void

    #@13
    .line 2127
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
    .line 1919
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
    .line 1917
    :goto_0
    return-void

    #@9
    .line 1920
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
    .line 2563
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2564
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    #@6
    return-object v1

    #@7
    .line 2566
    :cond_0
    const-string/jumbo v1, "content"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 2568
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IContentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    #@14
    .line 2570
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
    .line 2284
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    .line 2285
    .local v1, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 2286
    const/4 v2, 0x0

    #@f
    return-object v2

    #@10
    .line 2288
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
    .line 2289
    :catch_0
    move-exception v0

    #@19
    .line 2290
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
    .line 2305
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
    .line 2306
    :catch_0
    move-exception v0

    #@a
    .line 2307
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
    .line 2317
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
    .line 2318
    :catch_0
    move-exception v0

    #@a
    .line 2319
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
    .line 2158
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
    .line 2159
    :catch_0
    move-exception v0

    #@a
    .line 2160
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
    .line 2170
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
    .line 2171
    :catch_0
    move-exception v0

    #@a
    .line 2172
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
    .line 2201
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
    .line 2202
    :catch_0
    move-exception v0

    #@a
    .line 2203
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
    .line 2213
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
    .line 2214
    :catch_0
    move-exception v0

    #@a
    .line 2215
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
    .line 2144
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
    .line 2145
    :catch_0
    move-exception v0

    #@b
    .line 2146
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
    .line 1955
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
    .line 1956
    :catch_0
    move-exception v0

    #@a
    .line 1958
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
    .line 1930
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
    .line 1931
    :catch_0
    move-exception v0

    #@a
    .line 1932
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
    .line 1942
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
    .line 1943
    :catch_0
    move-exception v0

    #@a
    .line 1944
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
    .line 1972
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
    .line 1973
    :catch_0
    move-exception v0

    #@a
    .line 1974
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
    .line 1985
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
    .line 1986
    :catch_0
    move-exception v0

    #@a
    .line 1987
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
    .line 2332
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
    .line 2333
    :catch_0
    move-exception v0

    #@b
    .line 2334
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
    .line 2345
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
    .line 2346
    :catch_0
    move-exception v0

    #@b
    .line 2347
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
    .line 2077
    const-string/jumbo v0, "force"

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 2078
    const-string/jumbo v0, "do_not_retry"

    #@d
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@10
    move-result v0

    #@11
    .line 2077
    if-nez v0, :cond_0

    #@13
    .line 2079
    const-string/jumbo v0, "ignore_backoff"

    #@16
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@19
    move-result v0

    #@1a
    .line 2077
    if-nez v0, :cond_0

    #@1c
    .line 2080
    const-string/jumbo v0, "ignore_settings"

    #@1f
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@22
    move-result v0

    #@23
    .line 2077
    if-nez v0, :cond_0

    #@25
    .line 2081
    const-string/jumbo v0, "initialize"

    #@28
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@2b
    move-result v0

    #@2c
    .line 2077
    if-nez v0, :cond_0

    #@2e
    .line 2082
    const-string/jumbo v0, "force"

    #@31
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@34
    move-result v0

    #@35
    .line 2077
    if-nez v0, :cond_0

    #@37
    .line 2083
    const-string/jumbo v0, "expedited"

    #@3a
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@3d
    move-result v0

    #@3e
    .line 2077
    if-eqz v0, :cond_1

    #@40
    .line 2084
    :cond_0
    const/4 v0, 0x1

    #@41
    return v0

    #@42
    .line 2086
    :cond_1
    return v1
.end method

.method public static isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2254
    if-nez p0, :cond_0

    #@2
    .line 2255
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2257
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 2258
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "authority must not be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 2262
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
    .line 2263
    :catch_0
    move-exception v0

    #@21
    .line 2264
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
    .line 2360
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
    .line 2369
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
    .line 2370
    :catch_0
    move-exception v0

    #@b
    .line 2371
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
    .line 2437
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
    .line 2477
    return-void
.end method

.method public static removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2100
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    #@3
    .line 2102
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 2099
    return-void

    #@b
    .line 2103
    :catch_0
    move-exception v0

    #@c
    .line 2104
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
    .line 2411
    if-nez p0, :cond_0

    #@2
    .line 2412
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "you passed in a null handle"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2415
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
    .line 2410
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    #@15
    .line 2416
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
    .line 1813
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0, p2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    #@7
    .line 1812
    return-void
.end method

.method public static requestSync(Landroid/content/SyncRequest;)V
    .locals 2
    .param p0, "request"    # Landroid/content/SyncRequest;

    #@0
    .prologue
    .line 1844
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0}, Landroid/content/IContentService;->sync(Landroid/content/SyncRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1842
    :goto_0
    return-void

    #@8
    .line 1845
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
    .line 1822
    if-nez p3, :cond_0

    #@2
    .line 1823
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Must specify extras."

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1826
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
    .line 1832
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
    .line 1821
    :goto_0
    return-void

    #@28
    .line 1833
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
    .line 2428
    cmp-long v0, p1, v2

    #@4
    if-ltz v0, :cond_0

    #@6
    .line 2429
    const/16 v0, 0x64

    #@8
    return v0

    #@9
    .line 2431
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
    .line 2184
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2182
    :goto_0
    return-void

    #@8
    .line 2185
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
    .line 2228
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    #@7
    .line 2227
    return-void
.end method

.method public static setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 2
    .param p0, "sync"    # Z
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2237
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1}, Landroid/content/IContentService;->setMasterSyncAutomaticallyAsUser(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2235
    :goto_0
    return-void

    #@8
    .line 2238
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
    .line 2001
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    #@7
    .line 2000
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
    .line 2011
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2009
    :goto_0
    return-void

    #@8
    .line 2012
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
    .line 259
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
    .line 260
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
    .line 261
    add-int/lit8 v3, v1, 0x1

    #@12
    return v3

    #@13
    .line 259
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 264
    :cond_1
    if-eqz p0, :cond_2

    #@18
    .line 266
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v3

    #@1c
    return v3

    #@1d
    .line 267
    :catch_0
    move-exception v0

    #@1e
    .line 268
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
    .line 271
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
    .line 251
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
    .line 252
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 254
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
    .line 1866
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
    .line 1867
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    .line 1868
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    #@1a
    .line 1869
    instance-of v5, v4, Ljava/lang/Long;

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 1870
    instance-of v5, v4, Ljava/lang/Integer;

    #@20
    if-nez v5, :cond_0

    #@22
    .line 1871
    instance-of v5, v4, Ljava/lang/Boolean;

    #@24
    if-nez v5, :cond_0

    #@26
    .line 1872
    instance-of v5, v4, Ljava/lang/Float;

    #@28
    if-nez v5, :cond_0

    #@2a
    .line 1873
    instance-of v5, v4, Ljava/lang/Double;

    #@2c
    if-nez v5, :cond_0

    #@2e
    .line 1874
    instance-of v5, v4, Ljava/lang/String;

    #@30
    if-nez v5, :cond_0

    #@32
    .line 1875
    instance-of v5, v4, Landroid/accounts/Account;

    #@34
    if-nez v5, :cond_0

    #@36
    .line 1876
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
    .line 1877
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    .line 1876
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
    .line 1879
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@59
    .line 1880
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    #@5a
    .line 1881
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    #@5b
    .line 1882
    .local v1, "exc":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@5d
    const-string/jumbo v6, "error unparceling Bundle"

    #@60
    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    throw v5

    #@64
    .line 1864
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
    .line 1495
    const-string/jumbo v1, "uri"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1496
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v0

    #@b
    .line 1497
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    #@d
    .line 1498
    new-instance v1, Landroid/content/ContentProviderClient;

    #@f
    const/4 v2, 0x1

    #@10
    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    #@13
    return-object v1

    #@14
    .line 1500
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
    .line 1516
    const-string/jumbo v1, "name"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1517
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    #@a
    move-result-object v0

    #@b
    .line 1518
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    #@d
    .line 1519
    new-instance v1, Landroid/content/ContentProviderClient;

    #@f
    const/4 v2, 0x1

    #@10
    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    #@13
    return-object v1

    #@14
    .line 1522
    :cond_0
    return-object v2
.end method

.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 304
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
    .line 1435
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
    .line 1436
    return-object v3

    #@f
    .line 1438
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1439
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@15
    .line 1440
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 1442
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
    .line 1416
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
    .line 1417
    return-object v3

    #@f
    .line 1419
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1420
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@15
    .line 1421
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 1423
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
    .line 1449
    if-nez p1, :cond_0

    #@3
    .line 1450
    return-object v0

    #@4
    .line 1452
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
    .line 1543
    const-string/jumbo v1, "uri"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1544
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v0

    #@b
    .line 1545
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    #@d
    .line 1546
    new-instance v1, Landroid/content/ContentProviderClient;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    #@13
    return-object v1

    #@14
    .line 1549
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
    .line 1570
    const-string/jumbo v1, "name"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1571
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    #@a
    move-result-object v0

    #@b
    .line 1572
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    #@d
    .line 1573
    new-instance v1, Landroid/content/ContentProviderClient;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    #@13
    return-object v1

    #@14
    .line 1576
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
    .line 1463
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
    .line 1464
    return-object v3

    #@f
    .line 1466
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1467
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@15
    .line 1468
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
    .line 1470
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
    .line 1477
    if-nez p1, :cond_0

    #@3
    .line 1478
    return-object v0

    #@4
    .line 1480
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
    .line 318
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
    .line 1263
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v1, "authority"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1264
    const-string/jumbo v1, "operations"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1265
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    #@f
    move-result-object v0

    #@10
    .line 1266
    .local v0, "provider":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    #@12
    .line 1267
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
    .line 1270
    :cond_0
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result-object v1

    #@30
    .line 1272
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    #@33
    .line 1270
    return-object v1

    #@34
    .line 1271
    :catchall_0
    move-exception v1

    #@35
    .line 1272
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    #@38
    .line 1271
    throw v1
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    #@0
    .prologue
    .line 1287
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1288
    const-string/jumbo v1, "values"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1289
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@f
    move-result-object v7

    #@10
    .line 1290
    .local v7, "provider":Landroid/content/IContentProvider;
    if-nez v7, :cond_0

    #@12
    .line 1291
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
    .line 1294
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2f
    move-result-wide v10

    #@30
    .line 1295
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@32
    invoke-interface {v7, v1, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    #@35
    move-result v8

    #@36
    .line 1296
    .local v8, "rowsCreated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@39
    move-result-wide v4

    #@3a
    sub-long v2, v4, v10

    #@3c
    .line 1297
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
    .line 1304
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@48
    .line 1298
    return v8

    #@49
    .line 1299
    .end local v2    # "durationMillis":J
    .end local v8    # "rowsCreated":I
    .end local v10    # "startTime":J
    :catch_0
    move-exception v0

    #@4a
    .line 1302
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@4b
    .line 1304
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@4e
    .line 1302
    return v1

    #@4f
    .line 1303
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@50
    .line 1304
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@53
    .line 1303
    throw v1
.end method

.method public final call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1391
    const-string/jumbo v2, "uri"

    #@4
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1392
    const-string/jumbo v2, "method"

    #@a
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 1393
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@10
    move-result-object v1

    #@11
    .line 1394
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    #@13
    .line 1395
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Unknown URI "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 1398
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@2f
    invoke-interface {v1, v2, p2, p3, p4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result-object v2

    #@33
    .line 1404
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@36
    .line 1398
    return-object v2

    #@37
    .line 1399
    :catch_0
    move-exception v0

    #@38
    .line 1404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@3b
    .line 1402
    return-object v3

    #@3c
    .line 1403
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@3d
    .line 1404
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@40
    .line 1403
    throw v2
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
    .line 1895
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :goto_0
    invoke-static {v1, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    #@a
    .line 1894
    return-void

    #@b
    :cond_0
    move-object v0, v1

    #@c
    .line 1895
    goto :goto_0
.end method

.method public final canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 571
    const-string/jumbo v2, "url"

    #@4
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 572
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v1

    #@b
    .line 573
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    #@d
    .line 574
    return-object v3

    #@e
    .line 578
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
    .line 584
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@17
    .line 578
    return-object v2

    #@18
    .line 579
    :catch_0
    move-exception v0

    #@19
    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@1c
    .line 582
    return-object v3

    #@1d
    .line 583
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@1e
    .line 584
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@21
    .line 583
    throw v2
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1320
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1321
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@9
    move-result-object v7

    #@a
    .line 1322
    .local v7, "provider":Landroid/content/IContentProvider;
    if-nez v7, :cond_0

    #@c
    .line 1323
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
    .line 1326
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@29
    move-result-wide v10

    #@2a
    .line 1327
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@2c
    invoke-interface {v7, v1, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@2f
    move-result v8

    #@30
    .line 1328
    .local v8, "rowsDeleted":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@33
    move-result-wide v4

    #@34
    sub-long v2, v4, v10

    #@36
    .line 1329
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
    .line 1336
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@42
    .line 1330
    return v8

    #@43
    .line 1331
    .end local v2    # "durationMillis":J
    .end local v8    # "rowsDeleted":I
    .end local v10    # "startTime":J
    :catch_0
    move-exception v0

    #@44
    .line 1334
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@45
    .line 1336
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@48
    .line 1334
    return v1

    #@49
    .line 1335
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4a
    .line 1336
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@4d
    .line 1335
    throw v1
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
    .line 1753
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1754
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@6
    const/4 v3, 0x0

    #@7
    .line 1753
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
    .line 1755
    :catch_0
    move-exception v0

    #@11
    .line 1756
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
    .line 2575
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
    .line 1738
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1739
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@6
    const/4 v3, 0x1

    #@7
    .line 1738
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
    .line 1740
    :catch_0
    move-exception v0

    #@11
    .line 1741
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
    .line 1176
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1178
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v8

    #@a
    if-eqz v8, :cond_0

    #@c
    .line 1179
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
    .line 1182
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
    .line 1187
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@33
    move-result-object v5

    #@34
    .line 1188
    .local v5, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    #@36
    .line 1189
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
    .line 1183
    .end local v5    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    #@51
    .line 1184
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
    .line 1191
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "r":Landroid/content/res/Resources;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@6e
    move-result v4

    #@6f
    .line 1193
    .local v4, "len":I
    if-ne v4, v10, :cond_2

    #@71
    .line 1195
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
    .line 1204
    .local v3, "id":I
    :goto_0
    if-nez v3, :cond_4

    #@7e
    .line 1205
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
    .line 1196
    .end local v3    # "id":I
    :catch_1
    move-exception v1

    #@99
    .line 1197
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
    .line 1199
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v8, 0x2

    #@b4
    if-ne v4, v8, :cond_3

    #@b6
    .line 1200
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
    .line 1202
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
    .line 1207
    .restart local v3    # "id":I
    :cond_4
    new-instance v7, Landroid/content/ContentResolver$OpenResourceIdResult;

    #@e3
    invoke-direct {v7, p0}, Landroid/content/ContentResolver$OpenResourceIdResult;-><init>(Landroid/content/ContentResolver;)V

    #@e6
    .line 1208
    .local v7, "res":Landroid/content/ContentResolver$OpenResourceIdResult;
    iput-object v6, v7, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    #@e8
    .line 1209
    iput v3, v7, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    #@ea
    .line 1210
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
    .line 382
    const-string/jumbo v2, "url"

    #@4
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 383
    const-string/jumbo v2, "mimeTypeFilter"

    #@a
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 385
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@10
    move-result-object v1

    #@11
    .line 386
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    #@13
    .line 387
    return-object v3

    #@14
    .line 391
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v2

    #@18
    .line 397
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@1b
    .line 391
    return-object v2

    #@1c
    .line 392
    :catch_0
    move-exception v0

    #@1d
    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@20
    .line 395
    return-object v3

    #@21
    .line 396
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@22
    .line 397
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@25
    .line 396
    throw v2
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 329
    const-string/jumbo v4, "url"

    #@4
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 332
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v2

    #@b
    .line 333
    .local v2, "provider":Landroid/content/IContentProvider;
    if-eqz v2, :cond_0

    #@d
    .line 335
    :try_start_0
    invoke-interface {v2, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v4

    #@11
    .line 342
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@14
    .line 335
    return-object v4

    #@15
    .line 338
    :catch_0
    move-exception v1

    #@16
    .line 339
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
    .line 342
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@49
    .line 340
    return-object v7

    #@4a
    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@4b
    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@4e
    .line 337
    return-object v7

    #@4f
    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@50
    .line 342
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@53
    .line 341
    throw v4

    #@54
    .line 346
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
    .line 347
    return-object v7

    #@62
    .line 351
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@65
    move-result-object v4

    #@66
    .line 352
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    #@6d
    move-result v6

    #@6e
    .line 351
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@71
    move-result-object v3

    #@72
    .line 353
    .local v3, "type":Ljava/lang/String;
    return-object v3

    #@73
    .line 358
    .end local v3    # "type":Ljava/lang/String;
    :catch_2
    move-exception v1

    #@74
    .line 359
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
    .line 360
    return-object v7

    #@a5
    .line 354
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    #@a6
    .line 357
    .restart local v0    # "e":Landroid/os/RemoteException;
    return-object v7
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1224
    const-string/jumbo v1, "url"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1225
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v8

    #@b
    .line 1226
    .local v8, "provider":Landroid/content/IContentProvider;
    if-nez v8, :cond_0

    #@d
    .line 1227
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
    .line 1230
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2a
    move-result-wide v10

    #@2b
    .line 1231
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@2d
    invoke-interface {v8, v1, p1, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@30
    move-result-object v0

    #@31
    .line 1232
    .local v0, "createdRow":Landroid/net/Uri;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@34
    move-result-wide v4

    #@35
    sub-long v2, v4, v10

    #@37
    .line 1233
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
    .line 1240
    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@43
    .line 1234
    return-object v0

    #@44
    .line 1235
    .end local v0    # "createdRow":Landroid/net/Uri;
    .end local v2    # "durationMillis":J
    .end local v10    # "startTime":J
    :catch_0
    move-exception v7

    #@45
    .line 1240
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@48
    .line 1238
    return-object v9

    #@49
    .line 1239
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4a
    .line 1240
    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@4d
    .line 1239
    throw v1
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 1644
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    #@4
    .line 1643
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z

    #@0
    .prologue
    .line 1665
    const-string/jumbo v0, "uri"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1667
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@9
    move-result-object v0

    #@a
    .line 1670
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@d
    move-result v1

    #@e
    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@11
    move-result v1

    #@12
    .line 1666
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    #@15
    .line 1664
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
    const/4 v2, 0x0

    #@1
    .line 1681
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@4
    move-result-object v0

    #@5
    .line 1682
    if-nez p2, :cond_0

    #@7
    .line 1683
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
    .line 1681
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V

    #@13
    .line 1679
    :goto_2
    return-void

    #@14
    .line 1682
    :cond_0
    invoke-virtual {p2}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v2

    #@18
    goto :goto_0

    #@19
    .line 1683
    :cond_1
    const/4 v3, 0x0

    #@1a
    goto :goto_1

    #@1b
    .line 1685
    :catch_0
    move-exception v6

    #@1c
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
    .line 865
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
    .line 922
    const-string/jumbo v4, "uri"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 923
    const-string/jumbo v4, "mode"

    #@b
    move-object/from16 v0, p2

    #@d
    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 925
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@13
    move-result-object v17

    #@14
    .line 926
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
    .line 927
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
    .line 928
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
    .line 930
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    #@49
    move-result-object v15

    #@4a
    .line 932
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
    .line 933
    :catch_0
    move-exception v13

    #@54
    .line 934
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
    .line 936
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
    .line 938
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
    .line 937
    invoke-static {v4, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@8b
    move-result-object v5

    #@8c
    .line 939
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
    .line 941
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
    .line 942
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
    .line 944
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@b3
    move-result-object v19

    #@b4
    .line 945
    .local v19, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v19, :cond_4

    #@b6
    .line 946
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
    .line 948
    :cond_4
    const/16 v18, 0x0

    #@d4
    .line 949
    .local v18, "stableProvider":Landroid/content/IContentProvider;
    const/4 v14, 0x0

    #@d5
    .line 952
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    const/16 v16, 0x0

    #@d7
    .line 953
    .local v16, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_5

    #@d9
    .line 954
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@dc
    .line 955
    invoke-interface/range {v19 .. v19}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@df
    move-result-object v16

    #@e0
    .line 956
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
    .line 961
    .end local v16    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    #@e9
    iget-object v4, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@eb
    .line 960
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
    .line 962
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v14, :cond_f

    #@f9
    .line 964
    const/4 v4, 0x0

    #@fa
    .line 1004
    if-eqz p3, :cond_6

    #@fc
    .line 1005
    const/4 v6, 0x0

    #@fd
    move-object/from16 v0, p3

    #@ff
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@102
    .line 1010
    :cond_6
    if-eqz v19, :cond_7

    #@104
    .line 1011
    move-object/from16 v0, p0

    #@106
    move-object/from16 v1, v19

    #@108
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@10b
    .line 964
    :cond_7
    return-object v4

    #@10c
    .line 966
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v10

    #@10d
    .line 970
    .local v10, "e":Landroid/os/DeadObjectException;
    :try_start_3
    move-object/from16 v0, p0

    #@10f
    move-object/from16 v1, v19

    #@111
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@114
    .line 971
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@117
    move-result-object v18

    #@118
    .line 972
    .local v18, "stableProvider":Landroid/content/IContentProvider;
    if-nez v18, :cond_b

    #@11a
    .line 973
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
    .line 997
    .end local v10    # "e":Landroid/os/DeadObjectException;
    .end local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v18    # "stableProvider":Landroid/content/IContentProvider;
    :catch_2
    move-exception v11

    #@137
    .line 999
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Ljava/io/FileNotFoundException;

    #@139
    .line 1000
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
    .line 999
    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@152
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@153
    .line 1003
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@154
    .line 1004
    if-eqz p3, :cond_8

    #@156
    .line 1005
    const/4 v6, 0x0

    #@157
    move-object/from16 v0, p3

    #@159
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@15c
    .line 1007
    :cond_8
    if-eqz v18, :cond_9

    #@15e
    .line 1008
    move-object/from16 v0, p0

    #@160
    move-object/from16 v1, v18

    #@162
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@165
    .line 1010
    :cond_9
    if-eqz v19, :cond_a

    #@167
    .line 1011
    move-object/from16 v0, p0

    #@169
    move-object/from16 v1, v19

    #@16b
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@16e
    .line 1003
    :cond_a
    throw v4

    #@16f
    .line 976
    .restart local v10    # "e":Landroid/os/DeadObjectException;
    .restart local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v18    # "stableProvider":Landroid/content/IContentProvider;
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    #@171
    iget-object v4, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@173
    .line 975
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
    .line 977
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v14, :cond_f

    #@181
    .line 979
    const/4 v4, 0x0

    #@182
    .line 1004
    if-eqz p3, :cond_c

    #@184
    .line 1005
    const/4 v6, 0x0

    #@185
    move-object/from16 v0, p3

    #@187
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@18a
    .line 1007
    :cond_c
    if-eqz v18, :cond_d

    #@18c
    .line 1008
    move-object/from16 v0, p0

    #@18e
    move-object/from16 v1, v18

    #@190
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@193
    .line 1010
    :cond_d
    if-eqz v19, :cond_e

    #@195
    .line 1011
    move-object/from16 v0, p0

    #@197
    move-object/from16 v1, v19

    #@199
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@19c
    .line 979
    :cond_e
    return-object v4

    #@19d
    .line 983
    .end local v10    # "e":Landroid/os/DeadObjectException;
    .end local v18    # "stableProvider":Landroid/content/IContentProvider;
    :cond_f
    if-nez v18, :cond_10

    #@19f
    .line 984
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@1a2
    move-result-object v18

    #@1a3
    .line 986
    :cond_10
    move-object/from16 v0, p0

    #@1a5
    move-object/from16 v1, v19

    #@1a7
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@1aa
    .line 987
    new-instance v5, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    #@1ac
    .line 988
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@1af
    move-result-object v4

    #@1b0
    .line 987
    move-object/from16 v0, p0

    #@1b2
    move-object/from16 v1, v18

    #@1b4
    invoke-direct {v5, v0, v4, v1}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    #@1b7
    .line 992
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/16 v18, 0x0

    #@1b9
    .line 994
    .local v18, "stableProvider":Landroid/content/IContentProvider;
    new-instance v4, Landroid/content/res/AssetFileDescriptor;

    #@1bb
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@1be
    move-result-wide v6

    #@1bf
    .line 995
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@1c2
    move-result-wide v8

    #@1c3
    .line 994
    invoke-direct/range {v4 .. v9}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1c6
    .line 1004
    if-eqz p3, :cond_11

    #@1c8
    .line 1005
    const/4 v6, 0x0

    #@1c9
    move-object/from16 v0, p3

    #@1cb
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@1ce
    .line 1010
    :cond_11
    if-eqz v19, :cond_12

    #@1d0
    .line 1011
    move-object/from16 v0, p0

    #@1d2
    move-object/from16 v1, v19

    #@1d4
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@1d7
    .line 994
    :cond_12
    return-object v4

    #@1d8
    .line 1001
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v18    # "stableProvider":Landroid/content/IContentProvider;
    :catch_3
    move-exception v12

    #@1d9
    .line 1002
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
    .line 749
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
    .line 795
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@4
    move-result-object v0

    #@5
    .line 796
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    #@7
    .line 797
    return-object v2

    #@8
    .line 800
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
    .line 802
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 808
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 812
    :goto_0
    new-instance v2, Ljava/io/FileNotFoundException;

    #@1c
    const-string/jumbo v3, "Not a whole file"

    #@1f
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 809
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
    .line 645
    const-string/jumbo v7, "uri"

    #@4
    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 646
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    .line 647
    .local v4, "scheme":Ljava/lang/String;
    const-string/jumbo v7, "android.resource"

    #@e
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_0

    #@14
    .line 650
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    #@17
    move-result-object v3

    #@18
    .line 652
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
    .line 653
    .local v5, "stream":Ljava/io/InputStream;
    return-object v5

    #@21
    .line 654
    .end local v5    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@22
    .line 655
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
    .line 657
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
    .line 660
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
    .line 662
    :cond_1
    const-string/jumbo v7, "r"

    #@52
    invoke-virtual {p0, p1, v7, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@55
    move-result-object v2

    #@56
    .line 664
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
    .line 665
    :catch_1
    move-exception v0

    #@5e
    .line 666
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
    .line 678
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
    .line 702
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@4
    move-result-object v1

    #@5
    .line 704
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
    .line 705
    :catch_0
    move-exception v0

    #@d
    .line 706
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
    .line 1048
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
    .line 1085
    const-string/jumbo v3, "uri"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 1086
    const-string/jumbo v3, "mimeType"

    #@b
    move-object/from16 v0, p2

    #@d
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1088
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@13
    move-result-object v2

    #@14
    .line 1089
    .local v2, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v2, :cond_0

    #@16
    .line 1090
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
    .line 1092
    :cond_0
    const/4 v8, 0x0

    #@33
    .line 1093
    .local v8, "stableProvider":Landroid/content/IContentProvider;
    const/16 v19, 0x0

    #@35
    .line 1096
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v7, 0x0

    #@36
    .line 1097
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_1

    #@38
    .line 1098
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@3b
    .line 1099
    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@3e
    move-result-object v7

    #@3f
    .line 1100
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p4

    #@41
    invoke-virtual {v0, v7}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 1105
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
    .line 1104
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    move-result-object v19

    #@52
    .line 1106
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v19, :cond_b

    #@54
    .line 1108
    const/4 v3, 0x0

    #@55
    .line 1148
    if-eqz p4, :cond_2

    #@57
    .line 1149
    const/4 v4, 0x0

    #@58
    move-object/from16 v0, p4

    #@5a
    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@5d
    .line 1154
    :cond_2
    if-eqz v2, :cond_3

    #@5f
    .line 1155
    move-object/from16 v0, p0

    #@61
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@64
    .line 1108
    :cond_3
    return-object v3

    #@65
    .line 1110
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v16

    #@66
    .line 1114
    .local v16, "e":Landroid/os/DeadObjectException;
    :try_start_2
    move-object/from16 v0, p0

    #@68
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@6b
    .line 1115
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@6e
    move-result-object v8

    #@6f
    .line 1116
    .local v8, "stableProvider":Landroid/content/IContentProvider;
    if-nez v8, :cond_7

    #@71
    .line 1117
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
    .line 1141
    .end local v8    # "stableProvider":Landroid/content/IContentProvider;
    .end local v16    # "e":Landroid/os/DeadObjectException;
    .end local v19    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v17

    #@8e
    .line 1143
    .local v17, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v3, Ljava/io/FileNotFoundException;

    #@90
    .line 1144
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
    .line 1143
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@aa
    .line 1147
    .end local v17    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@ab
    .line 1148
    if-eqz p4, :cond_4

    #@ad
    .line 1149
    const/4 v4, 0x0

    #@ae
    move-object/from16 v0, p4

    #@b0
    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@b3
    .line 1151
    :cond_4
    if-eqz v8, :cond_5

    #@b5
    .line 1152
    move-object/from16 v0, p0

    #@b7
    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@ba
    .line 1154
    :cond_5
    if-eqz v2, :cond_6

    #@bc
    .line 1155
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@c1
    .line 1147
    :cond_6
    throw v3

    #@c2
    .line 1120
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
    .line 1119
    invoke-interface/range {v8 .. v13}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d0
    move-result-object v19

    #@d1
    .line 1121
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v19, :cond_b

    #@d3
    .line 1123
    const/4 v3, 0x0

    #@d4
    .line 1148
    if-eqz p4, :cond_8

    #@d6
    .line 1149
    const/4 v4, 0x0

    #@d7
    move-object/from16 v0, p4

    #@d9
    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@dc
    .line 1151
    :cond_8
    if-eqz v8, :cond_9

    #@de
    .line 1152
    move-object/from16 v0, p0

    #@e0
    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@e3
    .line 1154
    :cond_9
    if-eqz v2, :cond_a

    #@e5
    .line 1155
    move-object/from16 v0, p0

    #@e7
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@ea
    .line 1123
    :cond_a
    return-object v3

    #@eb
    .line 1127
    .end local v8    # "stableProvider":Landroid/content/IContentProvider;
    .end local v16    # "e":Landroid/os/DeadObjectException;
    :cond_b
    if-nez v8, :cond_c

    #@ed
    .line 1128
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@f0
    move-result-object v8

    #@f1
    .line 1130
    :cond_c
    move-object/from16 v0, p0

    #@f3
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@f6
    .line 1131
    new-instance v11, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    #@f8
    .line 1132
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@fb
    move-result-object v3

    #@fc
    .line 1131
    move-object/from16 v0, p0

    #@fe
    invoke-direct {v11, v0, v3, v8}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    #@101
    .line 1136
    .local v11, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v8, 0x0

    #@102
    .line 1138
    .local v8, "stableProvider":Landroid/content/IContentProvider;
    new-instance v10, Landroid/content/res/AssetFileDescriptor;

    #@104
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@107
    move-result-wide v12

    #@108
    .line 1139
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@10b
    move-result-wide v14

    #@10c
    .line 1138
    invoke-direct/range {v10 .. v15}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@10f
    .line 1148
    if-eqz p4, :cond_d

    #@111
    .line 1149
    const/4 v3, 0x0

    #@112
    move-object/from16 v0, p4

    #@114
    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@117
    .line 1154
    :cond_d
    if-eqz v2, :cond_e

    #@119
    .line 1155
    move-object/from16 v0, p0

    #@11b
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@11e
    .line 1138
    :cond_e
    return-object v10

    #@11f
    .line 1145
    .end local v8    # "stableProvider":Landroid/content/IContentProvider;
    .end local v11    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v18

    #@120
    .line 1146
    .local v18, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    throw v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 434
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
    .locals 26
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 474
    const-string/jumbo v5, "uri"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-static {v0, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 475
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@b
    move-result-object v4

    #@c
    .line 476
    .local v4, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v4, :cond_0

    #@e
    .line 477
    const/4 v5, 0x0

    #@f
    return-object v5

    #@10
    .line 479
    :cond_0
    const/4 v12, 0x0

    #@11
    .line 480
    .local v12, "stableProvider":Landroid/content/IContentProvider;
    const/16 v22, 0x0

    #@13
    .line 482
    .local v22, "qCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v24

    #@17
    .line 484
    .local v24, "startTime":J
    const/4 v11, 0x0

    #@18
    .line 485
    .local v11, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p6, :cond_1

    #@1a
    .line 486
    invoke-virtual/range {p6 .. p6}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@1d
    .line 487
    invoke-interface {v4}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@20
    move-result-object v11

    #@21
    .line 488
    .local v11, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p6

    #@23
    invoke-virtual {v0, v11}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 491
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
    move-result-object v22

    #@38
    .line 505
    .end local v12    # "stableProvider":Landroid/content/IContentProvider;
    .local v22, "qCursor":Landroid/database/Cursor;
    :goto_0
    if-nez v22, :cond_a

    #@3a
    .line 506
    const/4 v5, 0x0

    #@3b
    .line 525
    if-eqz v22, :cond_2

    #@3d
    .line 526
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    #@40
    .line 528
    :cond_2
    if-eqz p6, :cond_3

    #@42
    .line 529
    const/4 v6, 0x0

    #@43
    move-object/from16 v0, p6

    #@45
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@48
    .line 531
    :cond_3
    if-eqz v4, :cond_4

    #@4a
    .line 532
    move-object/from16 v0, p0

    #@4c
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@4f
    .line 534
    :cond_4
    if-eqz v12, :cond_5

    #@51
    .line 535
    move-object/from16 v0, p0

    #@53
    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@56
    .line 506
    :cond_5
    return-object v5

    #@57
    .line 493
    .restart local v12    # "stableProvider":Landroid/content/IContentProvider;
    .local v22, "qCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v20

    #@58
    .line 497
    .local v20, "e":Landroid/os/DeadObjectException;
    :try_start_2
    move-object/from16 v0, p0

    #@5a
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@5d
    .line 498
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    move-result-object v12

    #@61
    .line 499
    .local v12, "stableProvider":Landroid/content/IContentProvider;
    if-nez v12, :cond_9

    #@63
    .line 500
    const/4 v5, 0x0

    #@64
    .line 528
    if-eqz p6, :cond_6

    #@66
    .line 529
    const/4 v6, 0x0

    #@67
    move-object/from16 v0, p6

    #@69
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@6c
    .line 531
    :cond_6
    if-eqz v4, :cond_7

    #@6e
    .line 532
    move-object/from16 v0, p0

    #@70
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@73
    .line 534
    :cond_7
    if-eqz v12, :cond_8

    #@75
    .line 535
    move-object/from16 v0, p0

    #@77
    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@7a
    .line 500
    :cond_8
    return-object v5

    #@7b
    .line 502
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
    move-result-object v22

    #@8f
    .local v22, "qCursor":Landroid/database/Cursor;
    goto :goto_0

    #@90
    .line 510
    .end local v12    # "stableProvider":Landroid/content/IContentProvider;
    .end local v20    # "e":Landroid/os/DeadObjectException;
    :cond_a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    #@93
    .line 511
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
    .line 512
    invoke-direct/range {v13 .. v19}, Landroid/content/ContentResolver;->maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a6
    .line 515
    new-instance v23, Landroid/content/ContentResolver$CursorWrapperInner;

    #@a8
    .line 516
    if-eqz v12, :cond_d

    #@aa
    move-object v5, v12

    #@ab
    .line 515
    :goto_1
    move-object/from16 v0, v23

    #@ad
    move-object/from16 v1, p0

    #@af
    move-object/from16 v2, v22

    #@b1
    invoke-direct {v0, v1, v2, v5}, Landroid/content/ContentResolver$CursorWrapperInner;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b4
    .line 517
    .local v23, "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    const/4 v12, 0x0

    #@b5
    .line 518
    .local v12, "stableProvider":Landroid/content/IContentProvider;
    const/16 v22, 0x0

    #@b7
    .line 528
    .local v22, "qCursor":Landroid/database/Cursor;
    if-eqz p6, :cond_b

    #@b9
    .line 529
    const/4 v5, 0x0

    #@ba
    move-object/from16 v0, p6

    #@bc
    invoke-virtual {v0, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@bf
    .line 531
    :cond_b
    if-eqz v4, :cond_c

    #@c1
    .line 532
    move-object/from16 v0, p0

    #@c3
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@c6
    .line 519
    :cond_c
    return-object v23

    #@c7
    .line 516
    .end local v12    # "stableProvider":Landroid/content/IContentProvider;
    .end local v23    # "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    .local v22, "qCursor":Landroid/database/Cursor;
    :cond_d
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ca
    move-result-object v5

    #@cb
    goto :goto_1

    #@cc
    .line 520
    .end local v14    # "durationMillis":J
    .end local v22    # "qCursor":Landroid/database/Cursor;
    .end local v24    # "startTime":J
    :catch_1
    move-exception v21

    #@cd
    .line 523
    .local v21, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    #@ce
    .line 525
    if-eqz v22, :cond_e

    #@d0
    .line 526
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    #@d3
    .line 528
    :cond_e
    if-eqz p6, :cond_f

    #@d5
    .line 529
    const/4 v6, 0x0

    #@d6
    move-object/from16 v0, p6

    #@d8
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@db
    .line 531
    :cond_f
    if-eqz v4, :cond_10

    #@dd
    .line 532
    move-object/from16 v0, p0

    #@df
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@e2
    .line 534
    :cond_10
    if-eqz v12, :cond_11

    #@e4
    .line 535
    move-object/from16 v0, p0

    #@e6
    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@e9
    .line 523
    :cond_11
    return-object v5

    #@ea
    .line 524
    .end local v21    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@eb
    .line 525
    if-eqz v22, :cond_12

    #@ed
    .line 526
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    #@f0
    .line 528
    :cond_12
    if-eqz p6, :cond_13

    #@f2
    .line 529
    const/4 v6, 0x0

    #@f3
    move-object/from16 v0, p6

    #@f5
    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@f8
    .line 531
    :cond_13
    if-eqz v4, :cond_14

    #@fa
    .line 532
    move-object/from16 v0, p0

    #@fc
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@ff
    .line 534
    :cond_14
    if-eqz v12, :cond_15

    #@101
    .line 535
    move-object/from16 v0, p0

    #@103
    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@106
    .line 524
    :cond_15
    throw v5
.end method

.method public final registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 1594
    const-string/jumbo v0, "uri"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1595
    const-string/jumbo v0, "observer"

    #@9
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1597
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 1600
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@13
    move-result v1

    #@14
    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@17
    move-result v1

    #@18
    .line 1596
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1b
    .line 1593
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
    .line 1607
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@3
    move-result-object v1

    #@4
    .line 1608
    invoke-virtual {p3}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    #@7
    move-result-object v2

    #@8
    .line 1607
    invoke-interface {v1, p1, p2, v2, p4}, Landroid/content/IContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1605
    :goto_0
    return-void

    #@c
    .line 1609
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
    .line 1719
    const-string/jumbo v1, "uri"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1721
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v1

    #@a
    .line 1722
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    #@11
    move-result v3

    #@12
    .line 1721
    invoke-interface {v1, v2, p2, v3}, Landroid/app/IActivityManager;->releasePersistableUriPermission(Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1718
    :goto_0
    return-void

    #@16
    .line 1723
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
    .line 2585
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
    .line 1782
    const/4 v0, 0x0

    #@2
    .line 1783
    .local v0, "account":Landroid/accounts/Account;
    if-eqz p2, :cond_1

    #@4
    .line 1784
    const-string/jumbo v3, "account"

    #@7
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1785
    .local v1, "accountName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 1786
    new-instance v0, Landroid/accounts/Account;

    #@13
    .end local v0    # "account":Landroid/accounts/Account;
    const-string/jumbo v3, "com.google"

    #@16
    invoke-direct {v0, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 1788
    :cond_0
    const-string/jumbo v3, "account"

    #@1c
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@1f
    .line 1790
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
    .line 1781
    return-void
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    #@0
    .prologue
    .line 1701
    const-string/jumbo v1, "uri"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1703
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v1

    #@a
    .line 1704
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    #@11
    move-result v3

    #@12
    .line 1703
    invoke-interface {v1, v2, p2, v3}, Landroid/app/IActivityManager;->takePersistableUriPermission(Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1700
    :goto_0
    return-void

    #@16
    .line 1705
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
    .line 607
    const-string/jumbo v2, "url"

    #@4
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 608
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@a
    move-result-object v1

    #@b
    .line 609
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    #@d
    .line 610
    return-object v3

    #@e
    .line 614
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
    .line 620
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@17
    .line 614
    return-object v2

    #@18
    .line 615
    :catch_0
    move-exception v0

    #@19
    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@1c
    .line 618
    return-object v3

    #@1d
    .line 619
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@1e
    .line 620
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@21
    .line 619
    throw v2
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 1620
    const-string/jumbo v2, "observer"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1622
    :try_start_0
    invoke-virtual {p1}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    #@9
    move-result-object v0

    #@a
    .line 1623
    .local v0, "contentObserver":Landroid/database/IContentObserver;
    if-eqz v0, :cond_0

    #@c
    .line 1624
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2, v0}, Landroid/content/IContentService;->unregisterContentObserver(Landroid/database/IContentObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1619
    .end local v0    # "contentObserver":Landroid/database/IContentObserver;
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1627
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
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1355
    const-string/jumbo v1, "uri"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1356
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    #@9
    move-result-object v0

    #@a
    .line 1357
    .local v0, "provider":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    #@c
    .line 1358
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
    .line 1361
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@29
    move-result-wide v10

    #@2a
    .line 1362
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
    .line 1363
    .local v8, "rowsUpdated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@38
    move-result-wide v4

    #@39
    sub-long v2, v4, v10

    #@3b
    .line 1364
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
    .line 1371
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@47
    .line 1365
    return v8

    #@48
    .line 1366
    .end local v2    # "durationMillis":J
    .end local v8    # "rowsUpdated":I
    .end local v10    # "startTime":J
    :catch_0
    move-exception v7

    #@49
    .line 1369
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@4a
    .line 1371
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@4d
    .line 1369
    return v1

    #@4e
    .line 1370
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4f
    .line 1371
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@52
    .line 1370
    throw v1
.end method

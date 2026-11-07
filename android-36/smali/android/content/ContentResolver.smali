.class public abstract Landroid/content/ContentResolver;
.super Ljava/lang/Object;
.source "ContentResolver.java"

# interfaces
.implements Landroid/content/ContentInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentResolver$StringResultListener;,
        Landroid/content/ContentResolver$CursorWrapperInner;,
        Landroid/content/ContentResolver$UriResultListener;,
        Landroid/content/ContentResolver$OpenResourceIdResult;,
        Landroid/content/ContentResolver$ParcelFileDescriptorInner;,
        Landroid/content/ContentResolver$MimeTypeInfo;,
        Landroid/content/ContentResolver$ResultListener;,
        Landroid/content/ContentResolver$SyncExemption;,
        Landroid/content/ContentResolver$NotifyFlags;,
        Landroid/content/ContentResolver$QueryCollator;,
        Landroid/content/ContentResolver$SortDirection;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

.field public static final whitelist ANY_CURSOR_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/*"

.field public static final blacklist CONTENT_PROVIDER_PUBLISH_TIMEOUT_MILLIS:I

.field public static final blacklist CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

.field private static final blacklist CONTENT_PROVIDER_TIMEOUT_MILLIS:I

.field public static final greylist-max-o CONTENT_SERVICE_NAME:Ljava/lang/String; = "content"

.field public static final whitelist CURSOR_DIR_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir"

.field public static final whitelist CURSOR_ITEM_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item"

.field public static final blacklist DEPRECATE_DATA_COLUMNS:Z = true

.field public static final blacklist DEPRECATE_DATA_PREFIX:Ljava/lang/String; = "/mnt/content/"

.field private static final greylist-max-o ENABLE_CONTENT_SAMPLE:Z = false

.field public static final whitelist EXTRA_HONORED_ARGS:Ljava/lang/String; = "android.content.extra.HONORED_ARGS"

.field public static final whitelist EXTRA_REFRESH_SUPPORTED:Ljava/lang/String; = "android.content.extra.REFRESH_SUPPORTED"

.field public static final whitelist EXTRA_SIZE:Ljava/lang/String; = "android.content.extra.SIZE"

.field public static final whitelist EXTRA_TOTAL_COUNT:Ljava/lang/String; = "android.content.extra.TOTAL_COUNT"

.field public static final blacklist MIME_TYPE_DEFAULT:Ljava/lang/String; = "application/octet-stream"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NOTIFY_DELETE:I = 0x10

.field public static final whitelist NOTIFY_INSERT:I = 0x4

.field public static final blacklist NOTIFY_NO_DELAY:I = 0x8000

.field public static final whitelist NOTIFY_SKIP_NOTIFY_FOR_DESCENDANTS:I = 0x2

.field public static final whitelist NOTIFY_SYNC_TO_NETWORK:I = 0x1

.field public static final whitelist NOTIFY_UPDATE:I = 0x8

.field public static final whitelist QUERY_ARG_GROUP_COLUMNS:Ljava/lang/String; = "android:query-arg-group-columns"

.field public static final whitelist QUERY_ARG_LIMIT:Ljava/lang/String; = "android:query-arg-limit"

.field public static final whitelist QUERY_ARG_OFFSET:Ljava/lang/String; = "android:query-arg-offset"

.field public static final whitelist QUERY_ARG_SORT_COLLATION:Ljava/lang/String; = "android:query-arg-sort-collation"

.field public static final whitelist QUERY_ARG_SORT_COLUMNS:Ljava/lang/String; = "android:query-arg-sort-columns"

.field public static final whitelist QUERY_ARG_SORT_DIRECTION:Ljava/lang/String; = "android:query-arg-sort-direction"

.field public static final whitelist QUERY_ARG_SORT_LOCALE:Ljava/lang/String; = "android:query-arg-sort-locale"

.field public static final whitelist QUERY_ARG_SQL_GROUP_BY:Ljava/lang/String; = "android:query-arg-sql-group-by"

.field public static final whitelist QUERY_ARG_SQL_HAVING:Ljava/lang/String; = "android:query-arg-sql-having"

.field public static final whitelist QUERY_ARG_SQL_LIMIT:Ljava/lang/String; = "android:query-arg-sql-limit"

.field public static final whitelist QUERY_ARG_SQL_SELECTION:Ljava/lang/String; = "android:query-arg-sql-selection"

.field public static final whitelist QUERY_ARG_SQL_SELECTION_ARGS:Ljava/lang/String; = "android:query-arg-sql-selection-args"

.field public static final whitelist QUERY_ARG_SQL_SORT_ORDER:Ljava/lang/String; = "android:query-arg-sql-sort-order"

.field public static final whitelist QUERY_SORT_DIRECTION_ASCENDING:I = 0x0

.field public static final whitelist QUERY_SORT_DIRECTION_DESCENDING:I = 0x1

.field public static final blacklist REMOTE_CALLBACK_ERROR:Ljava/lang/String; = "error"

.field public static final blacklist REMOTE_CALLBACK_RESULT:Ljava/lang/String; = "result"

.field private static final blacklist REMOTE_CONTENT_PROVIDER_TIMEOUT_MILLIS:I

.field public static final whitelist SCHEME_ANDROID_RESOURCE:Ljava/lang/String; = "android.resource"

.field public static final whitelist SCHEME_CONTENT:Ljava/lang/String; = "content"

.field public static final whitelist SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final greylist-max-o SLOW_THRESHOLD_MILLIS:I

.field public static final greylist-max-o SYNC_ERROR_AUTHENTICATION:I = 0x2

.field public static final greylist-max-o SYNC_ERROR_CONFLICT:I = 0x5

.field public static final greylist-max-o SYNC_ERROR_INTERNAL:I = 0x8

.field public static final greylist-max-o SYNC_ERROR_IO:I = 0x3

.field private static final greylist-max-o SYNC_ERROR_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o SYNC_ERROR_PARSE:I = 0x4

.field public static final greylist-max-r SYNC_ERROR_SYNC_ALREADY_IN_PROGRESS:I = 0x1

.field public static final greylist-max-o SYNC_ERROR_TOO_MANY_DELETIONS:I = 0x6

.field public static final greylist-max-o SYNC_ERROR_TOO_MANY_RETRIES:I = 0x7

.field public static final greylist-max-o SYNC_EXEMPTION_NONE:I = 0x0

.field public static final greylist-max-o SYNC_EXEMPTION_PROMOTE_BUCKET:I = 0x1

.field public static final greylist-max-o SYNC_EXEMPTION_PROMOTE_BUCKET_WITH_TEMP:I = 0x2

.field public static final whitelist SYNC_EXTRAS_ACCOUNT:Ljava/lang/String; = "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o SYNC_EXTRAS_DISALLOW_METERED:Ljava/lang/String; = "allow_metered"

.field public static final whitelist SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS:Ljava/lang/String; = "discard_deletions"

.field public static final whitelist SYNC_EXTRAS_DO_NOT_RETRY:Ljava/lang/String; = "do_not_retry"

.field public static final greylist-max-o SYNC_EXTRAS_EXPECTED_DOWNLOAD:Ljava/lang/String; = "expected_download"

.field public static final greylist-max-o SYNC_EXTRAS_EXPECTED_UPLOAD:Ljava/lang/String; = "expected_upload"

.field public static final whitelist SYNC_EXTRAS_EXPEDITED:Ljava/lang/String; = "expedited"

.field public static final whitelist SYNC_EXTRAS_FORCE:Ljava/lang/String; = "force"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SYNC_EXTRAS_IGNORE_BACKOFF:Ljava/lang/String; = "ignore_backoff"

.field public static final whitelist SYNC_EXTRAS_IGNORE_SETTINGS:Ljava/lang/String; = "ignore_settings"

.field public static final whitelist SYNC_EXTRAS_INITIALIZE:Ljava/lang/String; = "initialize"

.field public static final whitelist SYNC_EXTRAS_MANUAL:Ljava/lang/String; = "force"

.field public static final whitelist SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS:Ljava/lang/String; = "deletions_override"

.field public static final greylist-max-o SYNC_EXTRAS_PRIORITY:Ljava/lang/String; = "sync_priority"

.field public static final whitelist SYNC_EXTRAS_REQUIRE_CHARGING:Ljava/lang/String; = "require_charging"

.field public static final whitelist SYNC_EXTRAS_SCHEDULE_AS_EXPEDITED_JOB:Ljava/lang/String; = "schedule_as_expedited_job"

.field public static final whitelist SYNC_EXTRAS_UPLOAD:Ljava/lang/String; = "upload"

.field public static final whitelist SYNC_OBSERVER_TYPE_ACTIVE:I = 0x4

.field public static final greylist-max-o SYNC_OBSERVER_TYPE_ALL:I = 0x7fffffff

.field public static final whitelist SYNC_OBSERVER_TYPE_PENDING:I = 0x2

.field public static final whitelist SYNC_OBSERVER_TYPE_SETTINGS:I = 0x1

.field public static final greylist-max-r SYNC_OBSERVER_TYPE_STATUS:I = 0x8

.field public static final greylist-max-o SYNC_VIRTUAL_EXTRAS_EXEMPTION_FLAG:Ljava/lang/String; = "v_exemption"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContentResolver"

.field private static volatile greylist sContentService:Landroid/content/IContentService;


# instance fields
.field private final greylist mContext:Landroid/content/Context;

.field final greylist mPackageName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final greylist-max-o mRandom:Ljava/util/Random;

.field final greylist-max-o mTargetSdkVersion:I

.field final blacklist mWrapped:Landroid/content/ContentInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    .line 615
    const-string/jumbo v8, "too-many-retries"

    const-string/jumbo v9, "internal-error"

    const-string v2, "already-in-progress"

    const-string v3, "authentication-error"

    const-string/jumbo v4, "io-error"

    const-string/jumbo v5, "parse-error"

    const-string v6, "conflict"

    const-string/jumbo v7, "too-many-deletions"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    .line 774
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Landroid/content/ContentResolver;->SLOW_THRESHOLD_MILLIS:I

    .line 788
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x2710

    sput v0, Landroid/content/ContentResolver;->CONTENT_PROVIDER_PUBLISH_TIMEOUT_MILLIS:I

    .line 796
    sget v0, Landroid/content/ContentResolver;->CONTENT_PROVIDER_PUBLISH_TIMEOUT_MILLIS:I

    sget v1, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    sput v0, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    .line 800
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0xbb8

    sput v0, Landroid/content/ContentResolver;->CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    .line 806
    sget v0, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    sget v1, Landroid/content/ContentResolver;->CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    add-int/2addr v0, v1

    sput v0, Landroid/content/ContentResolver;->REMOTE_CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 814
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;Landroid/content/ContentInterface;)V

    .line 815
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ContentInterface;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapped"    # Landroid/content/ContentInterface;

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/content/ContentResolver;->mRandom:Ljava/util/Random;

    .line 819
    if-eqz p1, :cond_e

    move-object v0, p1

    goto :goto_12

    :cond_e
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    :goto_12
    iput-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 820
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    .line 821
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/content/ContentResolver;->mTargetSdkVersion:I

    .line 822
    iput-object p2, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    .line 823
    return-void
.end method

.method public static whitelist addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 12
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "pollFrequency"    # J

    .line 3372
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 3373
    invoke-static {p2}, Landroid/content/ContentResolver;->invalidPeriodicExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 3377
    :try_start_9
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_19

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    .end local p0    # "account":Landroid/accounts/Account;
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "extras":Landroid/os/Bundle;
    .end local p3    # "pollFrequency":J
    .local v2, "account":Landroid/accounts/Account;
    .local v3, "authority":Ljava/lang/String;
    .local v4, "extras":Landroid/os/Bundle;
    .local v5, "pollFrequency":J
    :try_start_11
    invoke-interface/range {v1 .. v6}, Landroid/content/IContentService;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_16

    .line 3380
    nop

    .line 3381
    return-void

    .line 3378
    :catch_16
    move-exception v0

    move-object p0, v0

    goto :goto_1f

    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "authority":Ljava/lang/String;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "pollFrequency":J
    .restart local p0    # "account":Landroid/accounts/Account;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "extras":Landroid/os/Bundle;
    .restart local p3    # "pollFrequency":J
    :catch_19
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object p0, v0

    .line 3379
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "extras":Landroid/os/Bundle;
    .end local p3    # "pollFrequency":J
    .restart local v2    # "account":Landroid/accounts/Account;
    .restart local v3    # "authority":Ljava/lang/String;
    .restart local v4    # "extras":Landroid/os/Bundle;
    .restart local v5    # "pollFrequency":J
    .local p0, "e":Landroid/os/RemoteException;
    :goto_1f
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3374
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "authority":Ljava/lang/String;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "pollFrequency":J
    .local p0, "account":Landroid/accounts/Account;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "extras":Landroid/os/Bundle;
    .restart local p3    # "pollFrequency":J
    :cond_24
    move-object v2, p0

    move-object v3, p1

    .end local p0    # "account":Landroid/accounts/Account;
    .end local p1    # "authority":Ljava/lang/String;
    .restart local v2    # "account":Landroid/accounts/Account;
    .restart local v3    # "authority":Ljava/lang/String;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "illegal extras were set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;
    .registers 4
    .param p0, "mask"    # I
    .param p1, "callback"    # Landroid/content/SyncStatusObserver;

    .line 3716
    if-eqz p1, :cond_15

    .line 3720
    :try_start_2
    new-instance v0, Landroid/content/ContentResolver$2;

    invoke-direct {v0, p1}, Landroid/content/ContentResolver$2;-><init>(Landroid/content/SyncStatusObserver;)V

    .line 3726
    .local v0, "observer":Landroid/content/ISyncStatusObserver$Stub;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/content/IContentService;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_f

    .line 3727
    return-object v0

    .line 3728
    .end local v0    # "observer":Landroid/content/ISyncStatusObserver$Stub;
    :catch_f
    move-exception v0

    .line 3729
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3717
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you passed in a null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3197
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 3200
    nop

    .line 3201
    return-void

    .line 3198
    :catch_a
    move-exception v0

    .line 3199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist cancelSync(Landroid/content/SyncRequest;)V
    .registers 3
    .param p0, "request"    # Landroid/content/SyncRequest;

    .line 3434
    if-eqz p0, :cond_11

    .line 3438
    :try_start_2
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/IContentService;->cancelRequest(Landroid/content/SyncRequest;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_b

    .line 3441
    nop

    .line 3442
    return-void

    .line 3439
    :catch_b
    move-exception v0

    .line 3440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3435
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3209
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1, p2}, Landroid/content/IContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 3212
    nop

    .line 3213
    return-void

    .line 3210
    :catch_a
    move-exception v0

    .line 3211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 4049
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/String;
    .param p2, "sortOrder"    # Ljava/lang/String;

    .line 4060
    if-nez p0, :cond_8

    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 4061
    const/4 v0, 0x0

    return-object v0

    .line 4064
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4065
    .local v0, "queryArgs":Landroid/os/Bundle;
    if-eqz p0, :cond_14

    .line 4066
    const-string v1, "android:query-arg-sql-selection"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    :cond_14
    if-eqz p1, :cond_1b

    .line 4069
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4071
    :cond_1b
    if-eqz p2, :cond_22

    .line 4072
    const-string v1, "android:query-arg-sql-sort-order"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4074
    :cond_22
    return-object v0
.end method

.method public static greylist-max-o createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7
    .param p0, "queryArgs"    # Landroid/os/Bundle;

    .line 4106
    const-string v0, "android:query-arg-sort-columns"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4107
    .local v0, "columns":[Ljava/lang/String;
    if-eqz v0, :cond_6e

    array-length v1, v0

    if-eqz v1, :cond_6e

    .line 4111
    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4115
    .local v1, "query":Ljava/lang/String;
    const-string v2, "android:query-arg-sort-collation"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4117
    .local v2, "collation":I
    if-eqz v2, :cond_1d

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 4118
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " COLLATE NOCASE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4121
    :cond_30
    const-string v3, "android:query-arg-sort-direction"

    const/high16 v4, -0x80000000

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 4122
    .local v3, "sortDir":I
    if-eq v3, v4, :cond_6d

    .line 4123
    packed-switch v3, :pswitch_data_76

    .line 4131
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported sort direction value. See ContentResolver documentation for details."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4128
    :pswitch_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4129
    goto :goto_6d

    .line 4125
    :pswitch_59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ASC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4126
    nop

    .line 4135
    :cond_6d
    :goto_6d
    return-object v1

    .line 4108
    .end local v1    # "query":Ljava/lang/String;
    .end local v2    # "collation":I
    .end local v3    # "sortDir":I
    :cond_6e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t create sort clause without columns."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_59
        :pswitch_45
    .end packed-switch
.end method

.method public static whitelist decodeFromFile(Ljava/io/File;)Landroid/net/Uri;
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4235
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist encodeToFile(Landroid/net/Uri;)Ljava/io/File;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4254
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist getContentService()Landroid/content/IContentService;
    .registers 2

    .line 3932
    sget-object v0, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    if-eqz v0, :cond_7

    .line 3933
    sget-object v0, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    return-object v0

    .line 3935
    :cond_7
    const-string v0, "content"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3936
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IContentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;

    move-result-object v1

    sput-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    .line 3937
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    return-object v1
.end method

.method public static whitelist getCurrentSync()Landroid/content/SyncInfo;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3607
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    .line 3608
    .local v0, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3609
    const/4 v1, 0x0

    return-object v1

    .line 3611
    :cond_10
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v1

    .line 3612
    .end local v0    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catch_18
    move-exception v0

    .line 3613
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getCurrentSyncs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 3628
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3629
    :catch_9
    move-exception v0

    .line 3630
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o getCurrentSyncsAsUser(I)Ljava/util/List;
    .registers 3
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 3640
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/IContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3641
    :catch_9
    move-exception v0

    .line 3642
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3469
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3470
    :catch_9
    move-exception v0

    .line 3471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .registers 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3482
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3483
    :catch_9
    move-exception v0

    .line 3484
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getMasterSyncAutomatically()Z
    .registers 2

    .line 3525
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IContentService;->getMasterSyncAutomatically()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3526
    :catch_9
    move-exception v0

    .line 3527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o getMasterSyncAutomaticallyAsUser(I)Z
    .registers 3
    .param p0, "userId"    # I

    .line 3537
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/IContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3538
    :catch_9
    move-exception v0

    .line 3539
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 3455
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 3456
    :catch_a
    move-exception v0

    .line 3457
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3262
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3263
    :catch_9
    move-exception v0

    .line 3264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3247
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3248
    :catch_9
    move-exception v0

    .line 3249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 2

    .line 3221
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3222
    :catch_9
    move-exception v0

    .line 3223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .registers 3
    .param p0, "userId"    # I

    .line 3233
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/IContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3234
    :catch_9
    move-exception v0

    .line 3235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3279
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3280
    :catch_9
    move-exception v0

    .line 3281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3292
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3293
    :catch_9
    move-exception v0

    .line 3294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3656
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 3657
    :catch_a
    move-exception v0

    .line 3658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-r getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;
    .registers 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3670
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1, p2}, Landroid/content/IContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 3671
    :catch_a
    move-exception v0

    .line 3672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist hasInvalidScheduleAsEjExtras(Landroid/os/Bundle;)Z
    .registers 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 3332
    const-string/jumbo v0, "require_charging"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3333
    const-string v0, "expedited"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 3332
    :goto_15
    return v0
.end method

.method public static blacklist includeSqlSelectionArgs(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p0, "queryArgs"    # Landroid/os/Bundle;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 4080
    if-eqz p1, :cond_7

    .line 4081
    const-string v0, "android:query-arg-sql-selection"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4083
    :cond_7
    if-eqz p2, :cond_e

    .line 4084
    const-string v0, "android:query-arg-sql-selection-args"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4086
    :cond_e
    return-object p0
.end method

.method public static greylist-max-o invalidPeriodicExtras(Landroid/os/Bundle;)Z
    .registers 4
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 3391
    const-string v0, "force"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_43

    .line 3392
    const-string v2, "do_not_retry"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_43

    .line 3393
    const-string/jumbo v2, "ignore_backoff"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_43

    .line 3394
    const-string/jumbo v2, "ignore_settings"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_43

    .line 3395
    const-string/jumbo v2, "initialize"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_43

    .line 3396
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_43

    .line 3397
    const-string v0, "expedited"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_43

    .line 3398
    const-string/jumbo v0, "schedule_as_expedited_job"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_43
    const/4 v1, 0x1

    .line 3391
    :cond_44
    return v1
.end method

.method public static whitelist isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3577
    if-eqz p0, :cond_1c

    .line 3580
    if-eqz p1, :cond_14

    .line 3585
    :try_start_4
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    return v0

    .line 3586
    :catch_e
    move-exception v0

    .line 3587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3581
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authority must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3578
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .line 3685
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3695
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1, p2}, Landroid/content/IContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 3696
    :catch_a
    move-exception v0

    .line 3697
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static synthetic blacklist lambda$loadThumbnail$0(Landroid/content/ContentInterface;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/system/Int64Ref;)Landroid/content/res/AssetFileDescriptor;
    .registers 9
    .param p0, "content"    # Landroid/content/ContentInterface;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "opts"    # Landroid/os/Bundle;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .param p4, "orientation"    # Landroid/system/Int64Ref;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4174
    const-string/jumbo v0, "image/*"

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 4176
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4177
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_16

    const-string v2, "android.provider.extra.ORIENTATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    goto :goto_18

    :cond_16
    const-wide/16 v2, 0x0

    :goto_18
    iput-wide v2, p4, Landroid/system/Int64Ref;->value:J

    .line 4178
    return-object v0
.end method

.method static synthetic blacklist lambda$loadThumbnail$1(ILandroid/os/CancellationSignal;Landroid/util/Size;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 10
    .param p0, "allocator"    # I
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p4, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p5, "source"    # Landroid/graphics/ImageDecoder$Source;

    .line 4180
    invoke-virtual {p3, p0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 4183
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 4187
    :cond_8
    invoke-virtual {p4}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 4188
    .local v0, "widthSample":I
    invoke-virtual {p4}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    .line 4189
    .local v1, "heightSample":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4190
    .local v2, "sample":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_2c

    .line 4191
    invoke-virtual {p3, v2}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 4193
    :cond_2c
    return-void
.end method

.method public static blacklist loadThumbnail(Landroid/content/ContentInterface;Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;I)Landroid/graphics/Bitmap;
    .registers 21
    .param p0, "content"    # Landroid/content/ContentInterface;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .param p4, "allocator"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4164
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4165
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4166
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 4170
    .local v4, "opts":Landroid/os/Bundle;
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    const-string v1, "android.content.extra.SIZE"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4171
    new-instance v6, Landroid/system/Int64Ref;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Landroid/system/Int64Ref;-><init>(J)V

    .line 4173
    .local v6, "orientation":Landroid/system/Int64Ref;
    new-instance v1, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentInterface;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/system/Int64Ref;)V

    invoke-static {v1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/util/concurrent/Callable;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    new-instance v1, Landroid/content/ContentResolver$$ExternalSyntheticLambda1;

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v1, v3, v5, v2}, Landroid/content/ContentResolver$$ExternalSyntheticLambda1;-><init>(ILandroid/os/CancellationSignal;Landroid/util/Size;)V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 4198
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    iget-wide v0, v6, Landroid/system/Int64Ref;->value:J

    cmp-long v0, v0, v7

    if-eqz v0, :cond_6a

    .line 4199
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 4200
    .local v12, "width":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 4202
    .local v13, "height":I
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 4203
    .local v14, "m":Landroid/graphics/Matrix;
    iget-wide v0, v6, Landroid/system/Int64Ref;->value:J

    long-to-float v0, v0

    div-int/lit8 v1, v12, 0x2

    int-to-float v1, v1

    div-int/lit8 v7, v13, 0x2

    int-to-float v7, v7

    invoke-virtual {v14, v0, v1, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 4204
    const/4 v11, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 4207
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v14    # "m":Landroid/graphics/Matrix;
    :cond_6a
    return-object v9
.end method

.method private greylist-max-o maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "durationMillis"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "queryArgs"    # Landroid/os/Bundle;

    .line 3810
    return-void
.end method

.method private greylist-max-o maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "durationMillis"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "operation"    # Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;

    .line 3853
    return-void
.end method

.method public static blacklist onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stacktrace"    # Ljava/lang/Throwable;

    .line 4213
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 4216
    goto :goto_10

    .line 4214
    :catch_c
    move-exception v0

    .line 4215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 4217
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public static whitelist removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3412
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 3414
    :try_start_3
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 3417
    nop

    .line 3418
    return-void

    .line 3415
    :catch_c
    move-exception v0

    .line 3416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist removeStatusChangeListener(Ljava/lang/Object;)V
    .registers 3
    .param p0, "handle"    # Ljava/lang/Object;

    .line 3738
    if-eqz p0, :cond_14

    .line 3742
    :try_start_2
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/ISyncStatusObserver$Stub;

    invoke-interface {v0, v1}, Landroid/content/IContentService;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_e

    .line 3745
    nop

    .line 3746
    return-void

    .line 3743
    :catch_e
    move-exception v0

    .line 3744
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3739
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you passed in a null handle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3098
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 3099
    return-void
.end method

.method public static whitelist requestSync(Landroid/content/SyncRequest;)V
    .registers 3
    .param p0, "request"    # Landroid/content/SyncRequest;

    .line 3133
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/IContentService;->sync(Landroid/content/SyncRequest;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3136
    nop

    .line 3137
    return-void

    .line 3134
    :catch_d
    move-exception v0

    .line 3135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3107
    if-eqz p3, :cond_2a

    .line 3110
    new-instance v0, Landroid/content/SyncRequest$Builder;

    invoke-direct {v0}, Landroid/content/SyncRequest$Builder;-><init>()V

    .line 3112
    invoke-virtual {v0, p0, p1}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 3113
    invoke-virtual {v0, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 3114
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 3115
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v0

    .line 3119
    .local v0, "request":Landroid/content/SyncRequest;
    :try_start_17
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, p2, v2}, Landroid/content/IContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_22} :catch_24

    .line 3122
    nop

    .line 3123
    return-void

    .line 3120
    :catch_24
    move-exception v1

    .line 3121
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3108
    .end local v0    # "request":Landroid/content/SyncRequest;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify extras."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o samplePercentForDuration(J)I
    .registers 7
    .param p1, "durationMillis"    # J

    .line 3802
    sget v0, Landroid/content/ContentResolver;->SLOW_THRESHOLD_MILLIS:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_a

    .line 3803
    const/16 v0, 0x64

    return v0

    .line 3805
    :cond_a
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    sget v2, Landroid/content/ContentResolver;->SLOW_THRESHOLD_MILLIS:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static whitelist setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "syncable"    # I

    .line 3496
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 3499
    nop

    .line 3500
    return-void

    .line 3497
    :catch_9
    move-exception v0

    .line 3498
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .registers 6
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "syncable"    # I
    .param p3, "userId"    # I

    .line 3509
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/IContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 3512
    nop

    .line 3513
    return-void

    .line 3510
    :catch_9
    move-exception v0

    .line 3511
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist setMasterSyncAutomatically(Z)V
    .registers 2
    .param p0, "sync"    # Z

    .line 3552
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 3553
    return-void
.end method

.method public static greylist-max-o setMasterSyncAutomaticallyAsUser(ZI)V
    .registers 4
    .param p0, "sync"    # Z
    .param p1, "userId"    # I

    .line 3561
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->setMasterSyncAutomaticallyAsUser(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 3564
    nop

    .line 3565
    return-void

    .line 3562
    :catch_9
    move-exception v0

    .line 3563
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .line 3308
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 3309
    return-void
.end method

.method public static greylist-max-o setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .registers 6
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "userId"    # I

    .line 3318
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 3321
    nop

    .line 3322
    return-void

    .line 3319
    :catch_9
    move-exception v0

    .line 3320
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o syncErrorStringToInt(Ljava/lang/String;)I
    .registers 4
    .param p0, "error"    # Ljava/lang/String;

    .line 636
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v1, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "n":I
    :goto_4
    if-ge v0, v1, :cond_16

    .line 637
    sget-object v2, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 638
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 636
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 641
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_16
    if-eqz p0, :cond_36

    .line 643
    :try_start_18
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v0

    .line 644
    :catch_1d
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parsing sync error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentResolver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o syncErrorToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "error"    # I

    .line 628
    const/4 v0, 0x1

    if-lt p0, v0, :cond_10

    sget-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-le p0, v0, :cond_9

    goto :goto_10

    .line 631
    :cond_9
    sget-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 629
    :cond_10
    :goto_10
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mnt/content/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4260
    .local v0, "ssp":Ljava/lang/String;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 4261
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedOpaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4260
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist translateDeprecatedDataPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 4266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/content/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist validateSyncExtrasBundle(Landroid/os/Bundle;)V
    .registers 6
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 3155
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3156
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3157
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_1b

    goto :goto_8

    .line 3158
    :cond_1b
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_20

    goto :goto_8

    .line 3159
    :cond_20
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_25

    goto :goto_8

    .line 3160
    :cond_25
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2a

    goto :goto_8

    .line 3161
    :cond_2a
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_2f

    goto :goto_8

    .line 3162
    :cond_2f
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_34

    goto :goto_8

    .line 3163
    :cond_34
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_39

    goto :goto_8

    .line 3164
    :cond_39
    instance-of v3, v2, Landroid/accounts/Account;

    if-eqz v3, :cond_3e

    goto :goto_8

    .line 3165
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected value type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3166
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_60} :catch_6b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_60} :catch_62

    .line 3172
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    .restart local p0    # "extras":Landroid/os/Bundle;
    :cond_60
    nop

    .line 3173
    return-void

    .line 3170
    :catch_62
    move-exception v0

    .line 3171
    .local v0, "exc":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "error unparceling Bundle"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3168
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :catch_6b
    move-exception v0

    .line 3169
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0
.end method

.method public static blacklist wrap(Landroid/content/ContentInterface;)Landroid/content/ContentResolver;
    .registers 3
    .param p0, "wrapped"    # Landroid/content/ContentInterface;

    .line 827
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    new-instance v0, Landroid/content/ContentResolver$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/content/ContentResolver$1;-><init>(Landroid/content/Context;Landroid/content/ContentInterface;)V

    return-object v0
.end method

.method public static whitelist wrap(Landroid/content/ContentProvider;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "wrapped"    # Landroid/content/ContentProvider;

    .line 858
    invoke-static {p0}, Landroid/content/ContentResolver;->wrap(Landroid/content/ContentInterface;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist wrap(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "wrapped"    # Landroid/content/ContentProviderClient;

    .line 866
    invoke-static {p0}, Landroid/content/ContentResolver;->wrap(Landroid/content/ContentInterface;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final whitelist acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2572
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2573
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 2574
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_17

    .line 2575
    new-instance v1, Landroid/content/ContentProviderClient;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v0, v2, v3}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V

    return-object v1

    .line 2577
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 2593
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2594
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 2595
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_13

    .line 2596
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, p1, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V

    return-object v1

    .line 2599
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method protected greylist acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 883
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public final greylist acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2510
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 2511
    return-object v1

    .line 2513
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2514
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 2515
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1

    .line 2517
    :cond_1b
    return-object v1
.end method

.method protected abstract greylist acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final greylist acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2490
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 2491
    return-object v1

    .line 2493
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2494
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 2495
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1

    .line 2497
    :cond_1b
    return-object v1
.end method

.method public final greylist acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2525
    if-nez p1, :cond_4

    .line 2526
    const/4 v0, 0x0

    return-object v0

    .line 2528
    :cond_4
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2620
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2621
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 2622
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_17

    .line 2623
    new-instance v1, Landroid/content/ContentProviderClient;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V

    return-object v1

    .line 2626
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 2647
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2648
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 2649
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_13

    .line 2650
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V

    return-object v1

    .line 2653
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method protected abstract greylist acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final greylist-max-o acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2539
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 2540
    return-object v1

    .line 2542
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2543
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 2544
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1

    .line 2546
    :cond_1f
    return-object v1
.end method

.method public final greylist acquireUnstableProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2554
    if-nez p1, :cond_4

    .line 2555
    const/4 v0, 0x0

    return-object v0

    .line 2557
    :cond_4
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .registers 4
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .line 905
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "appNotRespondingViaProvider"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 7
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
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

    .line 2244
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "authority"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2245
    const-string/jumbo v0, "operations"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2248
    :try_start_b
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v0, p1, p2}, Landroid/content/ContentInterface;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_43

    return-object v0

    .line 2251
    :cond_16
    nop

    .line 2253
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 2254
    .local v0, "provider":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_2a

    .line 2258
    :try_start_1d
    invoke-virtual {v0, p2}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_25

    .line 2260
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2258
    return-object v1

    .line 2260
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2261
    throw v1

    .line 2255
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2249
    .end local v0    # "provider":Landroid/content/ContentProviderClient;
    :catch_43
    move-exception v0

    .line 2250
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 16
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 2277
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2278
    const-string/jumbo v0, "values"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2281
    const/4 v1, 0x0

    :try_start_d
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_f} :catch_75

    if-eqz v0, :cond_1c

    :try_start_11
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v0, p1, p2}, Landroid/content/ContentInterface;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v0

    .line 2282
    :catch_18
    move-exception v0

    move-object v7, p0

    move-object v10, p1

    goto :goto_78

    .line 2284
    :cond_1c
    nop

    .line 2286
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 2287
    .local v2, "provider":Landroid/content/IContentProvider;
    if-eqz v2, :cond_5b

    .line 2291
    :try_start_23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2292
    .local v3, "startTime":J
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-interface {v2, v0, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 2293
    .local v0, "rowsCreated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v8, v5, v3

    .line 2294
    .local v8, "durationMillis":J
    const-string v11, "bulkinsert"
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_39} :catch_52
    .catchall {:try_start_23 .. :try_end_39} :catchall_4a

    const/4 v12, 0x0

    move-object v7, p0

    move-object v10, p1

    .end local p1    # "url":Landroid/net/Uri;
    .local v10, "url":Landroid/net/Uri;
    :try_start_3c
    invoke-direct/range {v7 .. v12}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_47
    .catchall {:try_start_3c .. :try_end_3f} :catchall_44

    .line 2295
    nop

    .line 2301
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2295
    return v0

    .line 2301
    .end local v0    # "rowsCreated":I
    .end local v3    # "startTime":J
    .end local v8    # "durationMillis":J
    :catchall_44
    move-exception v0

    move-object p1, v0

    goto :goto_4e

    .line 2296
    :catch_47
    move-exception v0

    move-object p1, v0

    goto :goto_56

    .line 2301
    .end local v10    # "url":Landroid/net/Uri;
    .restart local p1    # "url":Landroid/net/Uri;
    :catchall_4a
    move-exception v0

    move-object v7, p0

    move-object v10, p1

    move-object p1, v0

    .end local p1    # "url":Landroid/net/Uri;
    .restart local v10    # "url":Landroid/net/Uri;
    :goto_4e
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2302
    throw p1

    .line 2296
    .end local v10    # "url":Landroid/net/Uri;
    .restart local p1    # "url":Landroid/net/Uri;
    :catch_52
    move-exception v0

    move-object v7, p0

    move-object v10, p1

    move-object p1, v0

    .line 2299
    .restart local v10    # "url":Landroid/net/Uri;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_56
    nop

    .line 2301
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2299
    return v1

    .line 2288
    .end local v10    # "url":Landroid/net/Uri;
    .local p1, "url":Landroid/net/Uri;
    :cond_5b
    move-object v10, p1

    .end local p1    # "url":Landroid/net/Uri;
    .restart local v10    # "url":Landroid/net/Uri;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2282
    .end local v2    # "provider":Landroid/content/IContentProvider;
    .end local v10    # "url":Landroid/net/Uri;
    .restart local p1    # "url":Landroid/net/Uri;
    :catch_75
    move-exception v0

    move-object v7, p0

    move-object v10, p1

    .line 2283
    .end local p1    # "url":Landroid/net/Uri;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v10    # "url":Landroid/net/Uri;
    :goto_78
    return v1
.end method

.method public final whitelist call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 2448
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 2454
    const-string v0, "authority"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2455
    const-string/jumbo v0, "method"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2458
    const/4 v1, 0x0

    :try_start_c
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_e} :catch_73

    if-eqz v0, :cond_1e

    :try_start_10
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return-object v0

    .line 2459
    :catch_17
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    goto/16 :goto_78

    .line 2461
    :cond_1e
    nop

    .line 2463
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 2464
    .local v2, "provider":Landroid/content/IContentProvider;
    if-eqz v2, :cond_57

    .line 2468
    :try_start_25
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2b} :catch_4c
    .catchall {:try_start_25 .. :try_end_2b} :catchall_42

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    .local v4, "authority":Ljava/lang/String;
    .local v5, "method":Ljava/lang/String;
    .local v6, "arg":Ljava/lang/String;
    .local v7, "extras":Landroid/os/Bundle;
    :try_start_2f
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 2470
    .local p1, "res":Landroid/os/Bundle;
    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_37} :catch_3f
    .catchall {:try_start_2f .. :try_end_37} :catchall_3c

    .line 2471
    nop

    .line 2477
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2471
    return-object p1

    .line 2477
    .end local p1    # "res":Landroid/os/Bundle;
    :catchall_3c
    move-exception v0

    move-object p1, v0

    goto :goto_48

    .line 2472
    :catch_3f
    move-exception v0

    move-object p1, v0

    goto :goto_52

    .line 2477
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "extras":Landroid/os/Bundle;
    .local p1, "authority":Ljava/lang/String;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "arg":Ljava/lang/String;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catchall_42
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object p1, v0

    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    .restart local v4    # "authority":Ljava/lang/String;
    .restart local v5    # "method":Ljava/lang/String;
    .restart local v6    # "arg":Ljava/lang/String;
    .restart local v7    # "extras":Landroid/os/Bundle;
    :goto_48
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2478
    throw p1

    .line 2472
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "extras":Landroid/os/Bundle;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "arg":Ljava/lang/String;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catch_4c
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object p1, v0

    .line 2475
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    .restart local v4    # "authority":Ljava/lang/String;
    .restart local v5    # "method":Ljava/lang/String;
    .restart local v6    # "arg":Ljava/lang/String;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_52
    nop

    .line 2477
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2475
    return-object v1

    .line 2465
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "extras":Landroid/os/Bundle;
    .local p1, "authority":Ljava/lang/String;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "arg":Ljava/lang/String;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :cond_57
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .restart local v4    # "authority":Ljava/lang/String;
    .restart local v5    # "method":Ljava/lang/String;
    .restart local v6    # "arg":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown authority "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2459
    .end local v2    # "provider":Landroid/content/IContentProvider;
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "arg":Ljava/lang/String;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "arg":Ljava/lang/String;
    :catch_73
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 2460
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "authority":Ljava/lang/String;
    .restart local v5    # "method":Ljava/lang/String;
    .restart local v6    # "arg":Ljava/lang/String;
    .restart local v7    # "extras":Landroid/os/Bundle;
    :goto_78
    return-object v1
.end method

.method public whitelist cancelSync(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3184
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 3185
    return-void
.end method

.method public final whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .param p1, "url"    # Landroid/net/Uri;

    .line 1319
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1322
    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_4d

    return-object v0

    .line 1325
    :cond_12
    nop

    .line 1327
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1328
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_1a

    .line 1329
    return-object v0

    .line 1333
    :cond_1a
    :try_start_1a
    new-instance v2, Landroid/content/ContentResolver$UriResultListener;

    invoke-direct {v2, v0}, Landroid/content/ContentResolver$UriResultListener;-><init>(Landroid/content/ContentResolver-IA;)V

    .line 1334
    .local v2, "resultListener":Landroid/content/ContentResolver$UriResultListener;
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    new-instance v4, Landroid/os/RemoteCallback;

    invoke-direct {v4, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v3, p1, v4}, Landroid/content/IContentProvider;->canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 1336
    sget v3, Landroid/content/ContentResolver;->CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver$UriResultListener;->waitForResult(J)V

    .line 1337
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->exception:Ljava/lang/RuntimeException;

    if-nez v3, :cond_3f

    .line 1340
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_3b} :catch_47
    .catchall {:try_start_1a .. :try_end_3b} :catchall_42

    .line 1346
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1340
    return-object v3

    .line 1338
    :cond_3f
    :try_start_3f
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->exception:Ljava/lang/RuntimeException;

    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "url":Landroid/net/Uri;
    throw v3
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_47
    .catchall {:try_start_3f .. :try_end_42} :catchall_42

    .line 1346
    .end local v2    # "resultListener":Landroid/content/ContentResolver$UriResultListener;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "url":Landroid/net/Uri;
    :catchall_42
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1347
    throw v0

    .line 1341
    :catch_47
    move-exception v2

    .line 1344
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 1346
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1344
    return-object v0

    .line 1323
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_4d
    move-exception v1

    .line 1324
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public final blacklist canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1283
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1284
    .local v0, "res":Landroid/net/Uri;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_9

    :cond_8
    move-object v1, p1

    :goto_9
    return-object v1
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;II)I
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1477
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1480
    const/4 v0, -0x1

    :try_start_7
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_2f

    return v0

    .line 1483
    :cond_12
    nop

    .line 1485
    :try_start_13
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_2d

    .line 1486
    .local v1, "client":Landroid/content/ContentProviderClient;
    :try_start_17
    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProviderClient;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_21

    .line 1487
    if-eqz v1, :cond_20

    :try_start_1d
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_2d

    .line 1486
    :cond_20
    return v2

    .line 1485
    :catchall_21
    move-exception v2

    if-eqz v1, :cond_2c

    :try_start_24
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v3

    :try_start_29
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "uid":I
    .end local p3    # "modeFlags":I
    :cond_2c
    :goto_2c
    throw v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2d} :catch_2d

    .line 1487
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "uid":I
    .restart local p3    # "modeFlags":I
    :catch_2d
    move-exception v1

    .line 1488
    .local v1, "e":Landroid/os/RemoteException;
    return v0

    .line 1481
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2f
    move-exception v1

    .line 1482
    .restart local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public final whitelist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 15
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2337
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2340
    :try_start_6
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_8} :catch_6f

    if-eqz v0, :cond_15

    :try_start_a
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v0, p1, p2}, Landroid/content/ContentInterface;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2341
    :catch_11
    move-exception v0

    move-object v6, p0

    move-object v9, p1

    goto :goto_72

    .line 2343
    :cond_15
    nop

    .line 2345
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 2346
    .local v1, "provider":Landroid/content/IContentProvider;
    if-eqz v1, :cond_55

    .line 2350
    :try_start_1c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2351
    .local v2, "startTime":J
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-interface {v1, v0, p1, p2}, Landroid/content/IContentProvider;->delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0

    .line 2352
    .local v0, "rowsDeleted":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v7, v4, v2

    .line 2353
    .local v7, "durationMillis":J
    const-string v10, "delete"
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_32} :catch_4b
    .catchall {:try_start_1c .. :try_end_32} :catchall_43

    const/4 v11, 0x0

    move-object v6, p0

    move-object v9, p1

    .end local p1    # "url":Landroid/net/Uri;
    .local v9, "url":Landroid/net/Uri;
    :try_start_35
    invoke-direct/range {v6 .. v11}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_40
    .catchall {:try_start_35 .. :try_end_38} :catchall_3d

    .line 2354
    nop

    .line 2360
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2354
    return v0

    .line 2360
    .end local v0    # "rowsDeleted":I
    .end local v2    # "startTime":J
    .end local v7    # "durationMillis":J
    :catchall_3d
    move-exception v0

    move-object p1, v0

    goto :goto_47

    .line 2355
    :catch_40
    move-exception v0

    move-object p1, v0

    goto :goto_4f

    .line 2360
    .end local v9    # "url":Landroid/net/Uri;
    .restart local p1    # "url":Landroid/net/Uri;
    :catchall_43
    move-exception v0

    move-object v6, p0

    move-object v9, p1

    move-object p1, v0

    .end local p1    # "url":Landroid/net/Uri;
    .restart local v9    # "url":Landroid/net/Uri;
    :goto_47
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2361
    throw p1

    .line 2355
    .end local v9    # "url":Landroid/net/Uri;
    .restart local p1    # "url":Landroid/net/Uri;
    :catch_4b
    move-exception v0

    move-object v6, p0

    move-object v9, p1

    move-object p1, v0

    .line 2358
    .restart local v9    # "url":Landroid/net/Uri;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_4f
    nop

    .line 2360
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2358
    const/4 v0, -0x1

    return v0

    .line 2347
    .end local v9    # "url":Landroid/net/Uri;
    .local p1, "url":Landroid/net/Uri;
    :cond_55
    move-object v9, p1

    .end local p1    # "url":Landroid/net/Uri;
    .restart local v9    # "url":Landroid/net/Uri;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2341
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v9    # "url":Landroid/net/Uri;
    .restart local p1    # "url":Landroid/net/Uri;
    :catch_6f
    move-exception v0

    move-object v6, p0

    move-object v9, p1

    .line 2342
    .end local p1    # "url":Landroid/net/Uri;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v9    # "url":Landroid/net/Uri;
    :goto_72
    const/4 p1, 0x0

    return p1
.end method

.method public final whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 2317
    invoke-static {p2, p3}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public blacklist getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 3953
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 3948
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCache(Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 5
    .param p1, "key"    # Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3782
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 3783
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 3782
    invoke-interface {v0, v1, p1, v2}, Landroid/content/IContentService;->getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    move-result-object v0

    .line 3784
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1f

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 3785
    :cond_1f
    return-object v0

    .line 3786
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_20
    move-exception v0

    .line 3787
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOutgoingPersistedUriPermissions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 3027
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IUriGrantsManager;->getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3028
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 3027
    return-object v0

    .line 3029
    :catch_11
    move-exception v0

    .line 3030
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getOutgoingUriPermissions()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 3037
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IUriGrantsManager;->getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3038
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 3037
    return-object v0

    .line 3039
    :catch_10
    move-exception v0

    .line 3040
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getPackageName()Ljava/lang/String;
    .registers 2

    .line 3943
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPersistedUriPermissions()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 3011
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IUriGrantsManager;->getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3012
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 3011
    return-object v0

    .line 3013
    :catch_10
    move-exception v0

    .line 3014
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2123
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2125
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cc

    .line 2129
    :try_start_a
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_14} :catch_b2

    .line 2132
    .local v1, "r":Landroid/content/res/Resources;
    nop

    .line 2134
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 2135
    .local v2, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_99

    .line 2138
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 2140
    .local v3, "len":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_48

    .line 2142
    :try_start_23
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2d} :catch_2e

    .line 2145
    .local v4, "id":I
    goto :goto_5b

    .line 2143
    .end local v4    # "id":I
    :catch_2e
    move-exception v4

    .line 2144
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Single path segment is not a resource ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2146
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_48
    const/4 v6, 0x2

    if-ne v3, v6, :cond_80

    .line 2147
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2151
    .local v4, "id":I
    :goto_5b
    if-eqz v4, :cond_67

    .line 2154
    new-instance v5, Landroid/content/ContentResolver$OpenResourceIdResult;

    invoke-direct {v5, p0}, Landroid/content/ContentResolver$OpenResourceIdResult;-><init>(Landroid/content/ContentResolver;)V

    .line 2155
    .local v5, "res":Landroid/content/ContentResolver$OpenResourceIdResult;
    iput-object v1, v5, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    .line 2156
    iput v4, v5, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    .line 2157
    return-object v5

    .line 2152
    .end local v5    # "res":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_67
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No resource found for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2149
    .end local v4    # "id":I
    :cond_80
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More than two path segments: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2136
    .end local v3    # "len":I
    :cond_99
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2130
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v2    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_b2
    move-exception v1

    .line 2131
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package found for authority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2126
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_cc
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No authority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 1059
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1060
    const-string/jumbo v0, "mimeTypeFilter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1063
    const/4 v0, 0x0

    :try_start_d
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_39

    return-object v0

    .line 1066
    :cond_18
    nop

    .line 1068
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1069
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_20

    .line 1070
    return-object v0

    .line 1074
    :cond_20
    :try_start_20
    iget-object v2, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2a} :catch_33
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 1080
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1074
    return-object v0

    .line 1080
    :catchall_2e
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1081
    throw v0

    .line 1075
    :catch_33
    move-exception v2

    .line 1078
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 1080
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1078
    return-object v0

    .line 1064
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_39
    move-exception v1

    .line 1065
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist-max-o getTargetSdkVersion()I
    .registers 2

    .line 3793
    iget v0, p0, Landroid/content/ContentResolver;->mTargetSdkVersion:I

    return v0
.end method

.method public final whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 13
    .param p1, "url"    # Landroid/net/Uri;

    .line 917
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 920
    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_eb

    return-object v0

    .line 923
    :cond_12
    nop

    .line 925
    const/4 v1, 0x0

    .line 927
    .local v1, "provider":Landroid/content/IContentProvider;
    :try_start_14
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_1a

    move-object v1, v2

    .line 931
    goto :goto_1b

    .line 928
    :catch_1a
    move-exception v2

    .line 932
    :goto_1b
    const-string v2, ")"

    const-string v3, " ("

    const-string v4, "Failed to get type for: "

    const-string v5, "ContentResolver"

    if-eqz v1, :cond_8b

    .line 934
    :try_start_25
    new-instance v6, Landroid/content/ContentResolver$StringResultListener;

    invoke-direct {v6, v0}, Landroid/content/ContentResolver$StringResultListener;-><init>(Landroid/content/ContentResolver-IA;)V

    .line 935
    .local v6, "resultListener":Landroid/content/ContentResolver$StringResultListener;
    iget-object v7, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    new-instance v8, Landroid/os/RemoteCallback;

    invoke-direct {v8, v6}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v7, p1, v8}, Landroid/content/IContentProvider;->getTypeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 937
    sget v7, Landroid/content/ContentResolver;->CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver$StringResultListener;->waitForResult(J)V

    .line 938
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->exception:Ljava/lang/RuntimeException;

    if-nez v7, :cond_4c

    .line 941
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_46} :catch_83
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_46} :catch_51
    .catchall {:try_start_25 .. :try_end_46} :catchall_4f

    .line 951
    :try_start_46
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z
    :try_end_49
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 954
    goto :goto_4b

    .line 952
    :catch_4a
    move-exception v0

    .line 941
    :goto_4b
    return-object v7

    .line 939
    :cond_4c
    :try_start_4c
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->exception:Ljava/lang/RuntimeException;

    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "url":Landroid/net/Uri;
    throw v7
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4f} :catch_83
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_51
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4f

    .line 950
    .end local v6    # "resultListener":Landroid/content/ContentResolver$StringResultListener;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "url":Landroid/net/Uri;
    :catchall_4f
    move-exception v0

    goto :goto_7d

    .line 946
    :catch_51
    move-exception v6

    .line 947
    .local v6, "e":Ljava/lang/Exception;
    :try_start_52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_52 .. :try_end_76} :catchall_4f

    .line 948
    nop

    .line 951
    :try_start_77
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z
    :try_end_7a
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 954
    goto :goto_7c

    .line 952
    :catch_7b
    move-exception v2

    .line 948
    :goto_7c
    return-object v0

    .line 951
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_7d
    :try_start_7d
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z
    :try_end_80
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_80} :catch_81

    .line 954
    goto :goto_82

    .line 952
    :catch_81
    move-exception v2

    .line 955
    :goto_82
    throw v0

    .line 942
    :catch_83
    move-exception v2

    .line 945
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 951
    :try_start_85
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z
    :try_end_88
    .catch Ljava/lang/NullPointerException; {:try_start_85 .. :try_end_88} :catch_89

    .line 954
    goto :goto_8a

    .line 952
    :catch_89
    move-exception v3

    .line 945
    :goto_8a
    return-object v0

    .line 958
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_8b
    const-string v6, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_98

    .line 959
    return-object v0

    .line 963
    :cond_98
    :try_start_98
    new-instance v6, Landroid/content/ContentResolver$StringResultListener;

    invoke-direct {v6, v0}, Landroid/content/ContentResolver$StringResultListener;-><init>(Landroid/content/ContentResolver-IA;)V

    .line 964
    .local v6, "resultListener":Landroid/content/ContentResolver$StringResultListener;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    .line 965
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 966
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v9

    new-instance v10, Landroid/os/RemoteCallback;

    invoke-direct {v10, v6}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 964
    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->getMimeTypeFilterAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V

    .line 968
    sget v7, Landroid/content/ContentResolver;->REMOTE_CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver$StringResultListener;->waitForResult(J)V

    .line 969
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->exception:Ljava/lang/RuntimeException;

    if-nez v7, :cond_c0

    .line 972
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    return-object v7

    .line 970
    :cond_c0
    iget-object v7, v6, Landroid/content/ContentResolver$StringResultListener;->exception:Ljava/lang/RuntimeException;

    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "url":Landroid/net/Uri;
    throw v7
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_c3} :catch_e9
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_c3} :catch_c3

    .line 976
    .end local v6    # "resultListener":Landroid/content/ContentResolver$StringResultListener;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "url":Landroid/net/Uri;
    :catch_c3
    move-exception v6

    .line 977
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-object v0

    .line 973
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_e9
    move-exception v2

    .line 975
    .restart local v2    # "e":Landroid/os/RemoteException;
    return-object v0

    .line 921
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_eb
    move-exception v1

    .line 922
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public greylist-max-o getTypeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3982
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentResolver$MimeTypeInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 3992
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3993
    invoke-static {p1}, Lcom/android/internal/util/MimeIconUtils;->getTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getUserId()I
    .registers 2

    .line 3976
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 2173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 16
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2197
    move-object v7, p3

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2200
    const/4 v8, 0x0

    :try_start_8
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/ContentInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_60

    return-object v0

    .line 2203
    :cond_13
    nop

    .line 2205
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v9

    .line 2206
    .local v9, "provider":Landroid/content/IContentProvider;
    if-eqz v9, :cond_47

    .line 2210
    :try_start_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v10, v2

    .line 2211
    .local v10, "startTime":J
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-interface {v9, v0, p1, p2, p3}, Landroid/content/IContentProvider;->insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 2212
    .local v0, "createdRow":Landroid/net/Uri;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 2213
    .local v2, "durationMillis":J
    const-string/jumbo v5, "insert"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_37} :catch_41
    .catchall {:try_start_1a .. :try_end_37} :catchall_3c

    .line 2214
    nop

    .line 2220
    invoke-virtual {p0, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2214
    return-object v0

    .line 2220
    .end local v0    # "createdRow":Landroid/net/Uri;
    .end local v2    # "durationMillis":J
    .end local v10    # "startTime":J
    :catchall_3c
    move-exception v0

    invoke-virtual {p0, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2221
    throw v0

    .line 2215
    :catch_41
    move-exception v0

    .line 2218
    .local v0, "e":Landroid/os/RemoteException;
    nop

    .line 2220
    invoke-virtual {p0, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2218
    return-object v8

    .line 2207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2201
    .end local v9    # "provider":Landroid/content/IContentProvider;
    :catch_60
    move-exception v0

    .line 2202
    .restart local v0    # "e":Landroid/os/RemoteException;
    return-object v8
.end method

.method public whitelist loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4157
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/content/ContentInterface;Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 2775
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2776
    return-void
.end method

.method public whitelist notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I

    .line 2838
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2839
    nop

    .line 2840
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 2843
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    .line 2839
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;II)V

    .line 2844
    return-void
.end method

.method public greylist-max-o notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;II)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # I

    .line 2920
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/content/ContentResolver;->notifyChange([Landroid/net/Uri;Landroid/database/ContentObserver;II)V

    .line 2921
    return-void
.end method

.method public whitelist notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2809
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 2810
    return-void
.end method

.method public greylist-max-o notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z
    .param p4, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2914
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;II)V

    .line 2915
    return-void
.end method

.method public greylist notifyChange(Ljava/lang/Iterable;Landroid/database/ContentObserver;I)V
    .registers 6
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/database/ContentObserver;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2850
    .local p1, "uris":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2851
    .local v0, "asCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 2852
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Ljava/util/Collection;Landroid/database/ContentObserver;I)V

    .line 2853
    return-void
.end method

.method public whitelist notifyChange(Ljava/util/Collection;Landroid/database/ContentObserver;I)V
    .registers 10
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/database/ContentObserver;",
            "I)V"
        }
    .end annotation

    .line 2881
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    const-string/jumbo v0, "uris"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2884
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2885
    .local v0, "clusteredByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Landroid/net/Uri;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2886
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v3

    .line 2887
    .local v3, "userId":I
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2888
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez v4, :cond_36

    .line 2889
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 2890
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2892
    :cond_36
    invoke-static {v2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2893
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "userId":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    goto :goto_f

    .line 2895
    :cond_3e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_61

    .line 2896
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2897
    .local v2, "userId":I
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2898
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/Uri;

    invoke-virtual {p0, v4, p2, p3, v2}, Landroid/content/ContentResolver;->notifyChange([Landroid/net/Uri;Landroid/database/ContentObserver;II)V

    .line 2895
    .end local v2    # "userId":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 2900
    .end local v1    # "i":I
    :cond_61
    return-void
.end method

.method public blacklist notifyChange([Landroid/net/Uri;Landroid/database/ContentObserver;II)V
    .registers 13
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # I

    .line 2931
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    .line 2932
    if-nez p2, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p2}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_30

    :goto_c
    move-object v2, v1

    if-eqz p2, :cond_1c

    .line 2933
    :try_start_f
    invoke-virtual {p2}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_17

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    .line 2935
    :catch_17
    move-exception v0

    move-object v1, p1

    move v4, p3

    move v5, p4

    goto :goto_34

    .line 2933
    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    move v3, v1

    :try_start_1e
    iget v6, p0, Landroid/content/ContentResolver;->mTargetSdkVersion:I

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 2934
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_26} :catch_30

    .line 2931
    move-object v1, p1

    move v4, p3

    move v5, p4

    .end local p1    # "uris":[Landroid/net/Uri;
    .end local p3    # "flags":I
    .end local p4    # "userHandle":I
    .local v1, "uris":[Landroid/net/Uri;
    .local v4, "flags":I
    .local v5, "userHandle":I
    :try_start_29
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentService;->notifyChange([Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2e

    .line 2937
    nop

    .line 2938
    return-void

    .line 2935
    :catch_2e
    move-exception v0

    goto :goto_34

    .end local v1    # "uris":[Landroid/net/Uri;
    .end local v4    # "flags":I
    .end local v5    # "userHandle":I
    .restart local p1    # "uris":[Landroid/net/Uri;
    .restart local p3    # "flags":I
    .restart local p4    # "userHandle":I
    :catch_30
    move-exception v0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 2936
    .end local p1    # "uris":[Landroid/net/Uri;
    .end local p3    # "flags":I
    .end local p4    # "userHandle":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v1    # "uris":[Landroid/net/Uri;
    .restart local v4    # "flags":I
    .restart local v5    # "userHandle":I
    :goto_34
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1715
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_11

    return-object v0

    .line 1718
    :cond_b
    nop

    .line 1720
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1716
    :catch_11
    move-exception v0

    .line 1717
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1775
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1834
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string/jumbo v0, "uri"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1835
    const-string/jumbo v0, "mode"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1838
    const/4 v5, 0x0

    :try_start_15
    iget-object v0, v1, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_20

    iget-object v0, v1, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v0, v2, v3, v4}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1f} :catch_19e

    return-object v0

    .line 1841
    :cond_20
    nop

    .line 1843
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 1844
    .local v6, "scheme":Ljava/lang/String;
    const-string v0, "android.resource"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v7, "r"

    if-eqz v0, :cond_76

    .line 1845
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1848
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v5

    .line 1850
    .local v5, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_3a
    iget-object v0, v5, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v5, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_42} :catch_43

    return-object v0

    .line 1851
    :catch_43
    move-exception v0

    .line 1852
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resource does not exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1846
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_5d
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t write resources: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1854
    :cond_76
    const-string v0, "file"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1855
    new-instance v0, Ljava/io/File;

    .line 1856
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v5

    .line 1855
    invoke-static {v0, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 1857
    .local v8, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    invoke-direct/range {v7 .. v12}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v7

    .line 1859
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_99
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1860
    const-string v0, "*/*"

    invoke-virtual {v1, v2, v0, v5, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1862
    :cond_a6
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v7

    .line 1863
    .local v7, "unstableProvider":Landroid/content/IContentProvider;
    const-string v8, "No content provider: "

    if-eqz v7, :cond_187

    .line 1866
    const/4 v9, 0x0

    .line 1867
    .local v9, "stableProvider":Landroid/content/IContentProvider;
    const/4 v10, 0x0

    .line 1870
    .local v10, "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v0, 0x0

    .line 1871
    .local v0, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz v4, :cond_c0

    .line 1872
    :try_start_b3
    invoke-virtual {v4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1873
    invoke-interface {v7}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v11

    move-object v0, v11

    .line 1874
    invoke-virtual {v4, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_be} :catch_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_b3 .. :try_end_be} :catch_e3
    .catchall {:try_start_b3 .. :try_end_be} :catchall_e0

    move-object v11, v0

    goto :goto_c1

    .line 1871
    :cond_c0
    move-object v11, v0

    .line 1878
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .local v11, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :goto_c1
    :try_start_c1
    iget-object v0, v1, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 1879
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1878
    invoke-interface {v7, v0, v2, v3, v11}, Landroid/content/IContentProvider;->openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_cb
    .catch Landroid/os/DeadObjectException; {:try_start_c1 .. :try_end_cb} :catch_e9
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_cb} :catch_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_c1 .. :try_end_cb} :catch_e3
    .catchall {:try_start_c1 .. :try_end_cb} :catchall_e0

    .line 1881
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_de

    .line 1883
    nop

    .line 1924
    if-eqz v4, :cond_d3

    .line 1925
    invoke-virtual {v4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1927
    :cond_d3
    if-eqz v9, :cond_d8

    .line 1928
    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1930
    :cond_d8
    if-eqz v7, :cond_dd

    .line 1931
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1883
    :cond_dd
    return-object v5

    .line 1900
    :cond_de
    move-object v10, v0

    goto :goto_112

    .line 1924
    .end local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v11    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .restart local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_e0
    move-exception v0

    goto/16 :goto_177

    .line 1921
    :catch_e3
    move-exception v0

    goto/16 :goto_15c

    .line 1917
    :catch_e6
    move-exception v0

    goto/16 :goto_15e

    .line 1885
    .restart local v11    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :catch_e9
    move-exception v0

    .line 1889
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_ea
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 1890
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v12

    move-object v9, v12

    .line 1891
    if-eqz v9, :cond_145

    .line 1894
    iget-object v8, v1, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v8

    invoke-interface {v9, v8, v2, v3, v11}, Landroid/content/IContentProvider;->openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8
    :try_end_fe
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_fe} :catch_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_ea .. :try_end_fe} :catch_e3
    .catchall {:try_start_ea .. :try_end_fe} :catchall_e0

    .line 1896
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v8, :cond_111

    .line 1898
    nop

    .line 1924
    if-eqz v4, :cond_106

    .line 1925
    invoke-virtual {v4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1927
    :cond_106
    if-eqz v9, :cond_10b

    .line 1928
    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1930
    :cond_10b
    if-eqz v7, :cond_110

    .line 1931
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1898
    :cond_110
    return-object v5

    .line 1896
    :cond_111
    move-object v10, v8

    .line 1902
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_112
    if-nez v9, :cond_119

    .line 1903
    :try_start_114
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    move-object v9, v0

    .line 1905
    :cond_119
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1906
    const/4 v7, 0x0

    .line 1907
    new-instance v0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    .line 1908
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-direct {v0, v1, v8, v9}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    move-object v13, v0

    .line 1912
    .local v13, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v9, 0x0

    .line 1914
    new-instance v12, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v14

    .line 1915
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v16

    invoke-direct/range {v12 .. v17}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_114 .. :try_end_135} :catch_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_114 .. :try_end_135} :catch_e3
    .catchall {:try_start_114 .. :try_end_135} :catchall_e0

    .line 1924
    if-eqz v4, :cond_13a

    .line 1925
    invoke-virtual {v4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1927
    :cond_13a
    if-eqz v9, :cond_13f

    .line 1928
    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1930
    :cond_13f
    if-eqz v7, :cond_144

    .line 1931
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1914
    :cond_144
    return-object v12

    .line 1892
    .end local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "e":Landroid/os/DeadObjectException;
    :cond_145
    :try_start_145
    new-instance v12, Ljava/io/FileNotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v9    # "stableProvider":Landroid/content/IContentProvider;
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v12
    :try_end_15c
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_15c} :catch_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_145 .. :try_end_15c} :catch_e3
    .catchall {:try_start_145 .. :try_end_15c} :catchall_e0

    .line 1922
    .end local v11    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v9    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_15c
    nop

    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v9    # "stableProvider":Landroid/content/IContentProvider;
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_15d
    throw v0

    .line 1919
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v9    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_15e
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed opening content provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v9    # "stableProvider":Landroid/content/IContentProvider;
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v8
    :try_end_177
    .catchall {:try_start_15d .. :try_end_177} :catchall_e0

    .line 1924
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v9    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_177
    if-eqz v4, :cond_17c

    .line 1925
    invoke-virtual {v4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1927
    :cond_17c
    if-eqz v9, :cond_181

    .line 1928
    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1930
    :cond_181
    if-eqz v7, :cond_186

    .line 1931
    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1933
    :cond_186
    throw v0

    .line 1864
    .end local v9    # "stableProvider":Landroid/content/IContentProvider;
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_187
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1839
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_19e
    move-exception v0

    .line 1840
    .restart local v0    # "e":Landroid/os/RemoteException;
    return-object v5
.end method

.method public final whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1588
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_11

    return-object v0

    .line 1591
    :cond_b
    nop

    .line 1593
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1589
    :catch_11
    move-exception v0

    .line 1590
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1637
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1686
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_30

    return-object v0

    .line 1689
    :cond_c
    nop

    .line 1691
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 1692
    .local v1, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v1, :cond_14

    .line 1693
    return-object v0

    .line 1696
    :cond_14
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_23

    .line 1698
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1704
    :cond_23
    :try_start_23
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    .line 1706
    goto :goto_28

    .line 1705
    :catch_27
    move-exception v0

    .line 1708
    :goto_28
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "Not a whole file"

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1687
    .end local v1    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_30
    move-exception v1

    .line 1688
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public final whitelist openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1513
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1514
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1518
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v1

    .line 1520
    .local v1, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_16
    iget-object v2, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v3, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 1521
    .local v2, "stream":Ljava/io/InputStream;
    return-object v2

    .line 1522
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_1f
    move-exception v2

    .line 1523
    .local v2, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1525
    .end local v1    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v2    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_39
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1528
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1530
    :cond_4b
    const-string/jumbo v1, "r"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 1532
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_63

    :try_start_55
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_59} :catch_5a

    goto :goto_63

    .line 1533
    :catch_5a
    move-exception v2

    .line 1534
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "Unable to create stream"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1532
    .end local v2    # "e":Ljava/io/IOException;
    :cond_63
    :goto_63
    return-object v2
.end method

.method public final whitelist openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1550
    const-string/jumbo v0, "w"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 1578
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_15

    :try_start_7
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_15

    .line 1579
    :catch_c
    move-exception v0

    .line 1580
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Unable to create stream"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1578
    .end local v0    # "e":Ljava/io/IOException;
    :cond_15
    :goto_15
    return-object v0
.end method

.method public final whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1943
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v0, :cond_b

    .line 1944
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_11

    return-object v0

    .line 1948
    :cond_b
    nop

    .line 1950
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1946
    :catch_11
    move-exception v0

    .line 1947
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1983
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2020
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    const-string/jumbo v0, "uri"

    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2021
    const-string/jumbo v0, "mimeType"

    invoke-static {v5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2024
    const/4 v9, 0x0

    :try_start_15
    iget-object v0, v1, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_17} :catch_17a

    if-eqz v0, :cond_27

    :try_start_19
    iget-object v0, v1, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1b} :catch_22

    move-object/from16 v6, p3

    :try_start_1d
    invoke-interface {v0, v4, v5, v6, v8}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_21} :catch_17a

    return-object v0

    .line 2025
    :catch_22
    move-exception v0

    move-object/from16 v6, p3

    goto/16 :goto_17b

    .line 2027
    :cond_27
    move-object/from16 v6, p3

    .line 2029
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 2030
    .local v2, "unstableProvider":Landroid/content/IContentProvider;
    const-string v10, "No content provider: "

    if-eqz v2, :cond_162

    .line 2033
    const/4 v11, 0x0

    .line 2034
    .local v11, "stableProvider":Landroid/content/IContentProvider;
    const/4 v12, 0x0

    .line 2037
    .local v12, "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v0, 0x0

    .line 2038
    .local v0, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz v8, :cond_4c

    .line 2039
    :try_start_36
    invoke-virtual {v8}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 2040
    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v3

    move-object v0, v3

    .line 2041
    invoke-virtual {v8, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_41} :catch_49
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_41} :catch_46
    .catchall {:try_start_36 .. :try_end_41} :catchall_43

    move-object v7, v0

    goto :goto_4d

    .line 2092
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :catchall_43
    move-exception v0

    goto/16 :goto_152

    .line 2089
    :catch_46
    move-exception v0

    goto/16 :goto_133

    .line 2085
    :catch_49
    move-exception v0

    goto/16 :goto_139

    .line 2038
    .restart local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_4c
    move-object v7, v0

    .line 2045
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :goto_4d
    :try_start_4d
    iget-object v0, v1, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 2046
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 2045
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_57
    .catch Landroid/os/DeadObjectException; {:try_start_4d .. :try_end_57} :catch_81
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_57} :catch_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_57} :catch_75
    .catchall {:try_start_4d .. :try_end_57} :catchall_6f

    move-object v13, v2

    .line 2048
    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    .local v13, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v0, :cond_6b

    .line 2050
    nop

    .line 2092
    if-eqz v8, :cond_60

    .line 2093
    invoke-virtual {v8, v9}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 2095
    :cond_60
    if-eqz v11, :cond_65

    .line 2096
    invoke-virtual {v1, v11}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2098
    :cond_65
    if-eqz v13, :cond_6a

    .line 2099
    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 2050
    :cond_6a
    return-object v9

    .line 2068
    :cond_6b
    move-object/from16 v4, p1

    move-object v12, v0

    goto :goto_b1

    .line 2092
    .end local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_6f
    move-exception v0

    move-object v13, v2

    move-object/from16 v4, p1

    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v13    # "unstableProvider":Landroid/content/IContentProvider;
    goto/16 :goto_152

    .line 2089
    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v2    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_75
    move-exception v0

    move-object v13, v2

    move-object/from16 v4, p1

    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v13    # "unstableProvider":Landroid/content/IContentProvider;
    goto/16 :goto_133

    .line 2085
    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v2    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_7b
    move-exception v0

    move-object v13, v2

    move-object/from16 v4, p1

    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v13    # "unstableProvider":Landroid/content/IContentProvider;
    goto/16 :goto_139

    .line 2052
    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v7    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :catch_81
    move-exception v0

    move-object v13, v2

    .line 2056
    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .local v0, "e":Landroid/os/DeadObjectException;
    .restart local v13    # "unstableProvider":Landroid/content/IContentProvider;
    :try_start_83
    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 2057
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v2
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8a} :catch_135
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_8a} :catch_12f
    .catchall {:try_start_83 .. :try_end_8a} :catchall_12a

    .line 2058
    .end local v11    # "stableProvider":Landroid/content/IContentProvider;
    .local v2, "stableProvider":Landroid/content/IContentProvider;
    if-eqz v2, :cond_105

    .line 2061
    :try_start_8c
    iget-object v3, v1, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 2062
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_92} :catch_ff
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_92} :catch_f9
    .catchall {:try_start_8c .. :try_end_92} :catchall_f2

    .line 2061
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    :try_start_98
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_9c} :catch_126
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_9c} :catch_122
    .catchall {:try_start_98 .. :try_end_9c} :catchall_11e

    .line 2064
    .end local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .local v3, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v3, :cond_af

    .line 2066
    nop

    .line 2092
    if-eqz v8, :cond_a4

    .line 2093
    invoke-virtual {v8, v9}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 2095
    :cond_a4
    if-eqz v2, :cond_a9

    .line 2096
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2098
    :cond_a9
    if-eqz v13, :cond_ae

    .line 2099
    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 2066
    :cond_ae
    return-object v9

    .line 2064
    :cond_af
    move-object v11, v2

    move-object v12, v3

    .line 2070
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "stableProvider":Landroid/content/IContentProvider;
    .end local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v11    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_b1
    if-nez v11, :cond_b8

    .line 2071
    :try_start_b3
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    move-object v11, v0

    .line 2073
    :cond_b8
    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_bb} :catch_ef
    .catch Ljava/io/FileNotFoundException; {:try_start_b3 .. :try_end_bb} :catch_ec
    .catchall {:try_start_b3 .. :try_end_bb} :catchall_e8

    .line 2074
    const/4 v2, 0x0

    .line 2075
    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .local v2, "unstableProvider":Landroid/content/IContentProvider;
    :try_start_bc
    new-instance v0, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    .line 2076
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v0, v1, v3, v11}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    move-object v14, v0

    .line 2080
    .local v14, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v11, 0x0

    .line 2082
    new-instance v13, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v15

    .line 2083
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v17

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v13 .. v19}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V
    :try_end_d8
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_d8} :catch_49
    .catch Ljava/io/FileNotFoundException; {:try_start_bc .. :try_end_d8} :catch_46
    .catchall {:try_start_bc .. :try_end_d8} :catchall_43

    .line 2092
    if-eqz v8, :cond_dd

    .line 2093
    invoke-virtual {v8, v9}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 2095
    :cond_dd
    if-eqz v11, :cond_e2

    .line 2096
    invoke-virtual {v1, v11}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2098
    :cond_e2
    if-eqz v2, :cond_e7

    .line 2099
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 2082
    :cond_e7
    return-object v13

    .line 2092
    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v7    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .end local v14    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "unstableProvider":Landroid/content/IContentProvider;
    :catchall_e8
    move-exception v0

    move-object v2, v13

    goto/16 :goto_152

    .line 2089
    :catch_ec
    move-exception v0

    move-object v2, v13

    goto :goto_133

    .line 2085
    :catch_ef
    move-exception v0

    move-object v2, v13

    goto :goto_139

    .line 2092
    .end local v11    # "stableProvider":Landroid/content/IContentProvider;
    .local v2, "stableProvider":Landroid/content/IContentProvider;
    :catchall_f2
    move-exception v0

    move-object/from16 v4, p1

    move-object v11, v2

    move-object v2, v13

    goto/16 :goto_152

    .line 2089
    :catch_f9
    move-exception v0

    move-object/from16 v4, p1

    move-object v11, v2

    move-object v2, v13

    goto :goto_133

    .line 2085
    :catch_ff
    move-exception v0

    move-object/from16 v4, p1

    move-object v11, v2

    move-object v2, v13

    goto :goto_139

    .line 2059
    .restart local v0    # "e":Landroid/os/DeadObjectException;
    .restart local v7    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_105
    move-object/from16 v4, p1

    :try_start_107
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v2    # "stableProvider":Landroid/content/IContentProvider;
    .end local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_11e
    .catch Landroid/os/RemoteException; {:try_start_107 .. :try_end_11e} :catch_126
    .catch Ljava/io/FileNotFoundException; {:try_start_107 .. :try_end_11e} :catch_122
    .catchall {:try_start_107 .. :try_end_11e} :catchall_11e

    .line 2092
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .end local v7    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .restart local v2    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_11e
    move-exception v0

    move-object v11, v2

    move-object v2, v13

    goto :goto_152

    .line 2089
    :catch_122
    move-exception v0

    move-object v11, v2

    move-object v2, v13

    goto :goto_133

    .line 2085
    :catch_126
    move-exception v0

    move-object v11, v2

    move-object v2, v13

    goto :goto_139

    .line 2092
    .end local v2    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v11    # "stableProvider":Landroid/content/IContentProvider;
    :catchall_12a
    move-exception v0

    move-object/from16 v4, p1

    move-object v2, v13

    goto :goto_152

    .line 2089
    :catch_12f
    move-exception v0

    move-object/from16 v4, p1

    move-object v2, v13

    .line 2090
    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .local v2, "unstableProvider":Landroid/content/IContentProvider;
    :goto_133
    nop

    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v11    # "stableProvider":Landroid/content/IContentProvider;
    .end local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_134
    throw v0

    .line 2085
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_135
    move-exception v0

    move-object/from16 v4, p1

    move-object v2, v13

    .line 2087
    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "unstableProvider":Landroid/content/IContentProvider;
    :goto_139
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed opening content provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v11    # "stableProvider":Landroid/content/IContentProvider;
    .end local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeType":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_152
    .catchall {:try_start_134 .. :try_end_152} :catchall_43

    .line 2092
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v11    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeType":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_152
    if-eqz v8, :cond_157

    .line 2093
    invoke-virtual {v8, v9}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 2095
    :cond_157
    if-eqz v11, :cond_15c

    .line 2096
    invoke-virtual {v1, v11}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2098
    :cond_15c
    if-eqz v2, :cond_161

    .line 2099
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 2101
    :cond_161
    throw v0

    .line 2031
    .end local v11    # "stableProvider":Landroid/content/IContentProvider;
    .end local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_162
    move-object v13, v2

    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v13    # "unstableProvider":Landroid/content/IContentProvider;
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2025
    .end local v13    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_17a
    move-exception v0

    .line 2026
    .restart local v0    # "e":Landroid/os/RemoteException;
    :goto_17b
    return-object v9
.end method

.method public whitelist putCache(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "value"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3762
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 3763
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 3762
    invoke-interface {v0, v1, p1, p2, v2}, Landroid/content/IContentService;->putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 3766
    nop

    .line 3767
    return-void

    .line 3764
    :catch_15
    move-exception v0

    .line 3765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1205
    move-object/from16 v4, p1

    move-object/from16 v8, p4

    const-string/jumbo v0, "uri"

    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1208
    const/4 v9, 0x0

    :try_start_b
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_d} :catch_114

    if-eqz v0, :cond_21

    .line 1209
    :try_start_f
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_11} :catch_1a

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    :try_start_15
    invoke-interface {v0, v4, v5, v6, v8}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_114

    return-object v0

    .line 1211
    :catch_1a
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    goto/16 :goto_115

    .line 1213
    :cond_21
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 1215
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 1216
    .local v2, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v2, :cond_2c

    .line 1217
    return-object v9

    .line 1219
    :cond_2c
    const/4 v10, 0x0

    .line 1220
    .local v10, "stableProvider":Landroid/content/IContentProvider;
    const/4 v11, 0x0

    .line 1222
    .local v11, "qCursor":Landroid/database/Cursor;
    :try_start_2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_32} :catch_fc
    .catchall {:try_start_2e .. :try_end_32} :catchall_e5

    .line 1224
    .local v12, "startTime":J
    const/4 v0, 0x0

    .line 1225
    .local v0, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz v8, :cond_4a

    .line 1226
    :try_start_35
    invoke-virtual {v8}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1227
    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v3

    move-object v0, v3

    .line 1228
    invoke-virtual {v8, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_40} :catch_46
    .catchall {:try_start_35 .. :try_end_40} :catchall_42

    move-object v7, v0

    goto :goto_4b

    .line 1266
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .end local v12    # "startTime":J
    :catchall_42
    move-exception v0

    move-object v14, v2

    goto/16 :goto_e7

    .line 1261
    :catch_46
    move-exception v0

    move-object v14, v2

    goto/16 :goto_fe

    .line 1225
    .restart local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .restart local v12    # "startTime":J
    :cond_4a
    move-object v7, v0

    .line 1231
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :goto_4b
    :try_start_4b
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_55
    .catch Landroid/os/DeadObjectException; {:try_start_4b .. :try_end_55} :catch_58
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_55} :catch_fc
    .catchall {:try_start_4b .. :try_end_55} :catchall_e5

    move-object v14, v2

    .line 1244
    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v11    # "qCursor":Landroid/database/Cursor;
    .local v0, "qCursor":Landroid/database/Cursor;
    .local v14, "unstableProvider":Landroid/content/IContentProvider;
    move-object v11, v0

    goto :goto_8b

    .line 1233
    .end local v0    # "qCursor":Landroid/database/Cursor;
    .end local v14    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v11    # "qCursor":Landroid/database/Cursor;
    :catch_58
    move-exception v0

    move-object v14, v2

    .line 1237
    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .local v0, "e":Landroid/os/DeadObjectException;
    .restart local v14    # "unstableProvider":Landroid/content/IContentProvider;
    :try_start_5a
    invoke-virtual {p0, v14}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 1238
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v2
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_61} :catch_e3
    .catchall {:try_start_5a .. :try_end_61} :catchall_e1

    .line 1239
    .end local v10    # "stableProvider":Landroid/content/IContentProvider;
    .local v2, "stableProvider":Landroid/content/IContentProvider;
    if-nez v2, :cond_79

    .line 1240
    nop

    .line 1266
    if-eqz v11, :cond_69

    .line 1267
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1269
    :cond_69
    if-eqz v8, :cond_6e

    .line 1270
    invoke-virtual {v8, v9}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1272
    :cond_6e
    if-eqz v14, :cond_73

    .line 1273
    invoke-virtual {p0, v14}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1275
    :cond_73
    if-eqz v2, :cond_78

    .line 1276
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1240
    :cond_78
    return-object v9

    .line 1242
    :cond_79
    :try_start_79
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_89} :catch_de
    .catchall {:try_start_79 .. :try_end_89} :catchall_db

    move-object v10, v2

    move-object v11, v3

    .line 1245
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v10    # "stableProvider":Landroid/content/IContentProvider;
    :goto_8b
    if-nez v11, :cond_a3

    .line 1246
    nop

    .line 1266
    if-eqz v11, :cond_93

    .line 1267
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1269
    :cond_93
    if-eqz v8, :cond_98

    .line 1270
    invoke-virtual {v8, v9}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1272
    :cond_98
    if-eqz v14, :cond_9d

    .line 1273
    invoke-virtual {p0, v14}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1275
    :cond_9d
    if-eqz v10, :cond_a2

    .line 1276
    invoke-virtual {p0, v10}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1246
    :cond_a2
    return-object v9

    .line 1250
    :cond_a3
    :try_start_a3
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 1251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    .line 1252
    .local v2, "durationMillis":J
    move-object v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1255
    if-eqz v10, :cond_b9

    move-object v0, v10

    goto :goto_bd

    .line 1256
    :cond_b9
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    :goto_bd
    nop

    .line 1257
    .local v0, "provider":Landroid/content/IContentProvider;
    new-instance v4, Landroid/content/ContentResolver$CursorWrapperInner;

    invoke-direct {v4, p0, v11, v0}, Landroid/content/ContentResolver$CursorWrapperInner;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_c3} :catch_e3
    .catchall {:try_start_a3 .. :try_end_c3} :catchall_e1

    .line 1258
    .local v4, "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    const/4 v5, 0x0

    .line 1259
    .end local v10    # "stableProvider":Landroid/content/IContentProvider;
    .local v5, "stableProvider":Landroid/content/IContentProvider;
    const/4 v6, 0x0

    .line 1260
    .end local v11    # "qCursor":Landroid/database/Cursor;
    .local v6, "qCursor":Landroid/database/Cursor;
    nop

    .line 1266
    if-eqz v6, :cond_cb

    .line 1267
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1269
    :cond_cb
    if-eqz v8, :cond_d0

    .line 1270
    invoke-virtual {v8, v9}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1272
    :cond_d0
    if-eqz v14, :cond_d5

    .line 1273
    invoke-virtual {p0, v14}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1275
    :cond_d5
    if-eqz v5, :cond_da

    .line 1276
    invoke-virtual {p0, v5}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1260
    :cond_da
    return-object v4

    .line 1266
    .end local v0    # "provider":Landroid/content/IContentProvider;
    .end local v4    # "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    .end local v5    # "stableProvider":Landroid/content/IContentProvider;
    .end local v6    # "qCursor":Landroid/database/Cursor;
    .end local v7    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .end local v12    # "startTime":J
    .local v2, "stableProvider":Landroid/content/IContentProvider;
    .restart local v11    # "qCursor":Landroid/database/Cursor;
    :catchall_db
    move-exception v0

    move-object v10, v2

    goto :goto_e7

    .line 1261
    :catch_de
    move-exception v0

    move-object v10, v2

    goto :goto_fe

    .line 1266
    .end local v2    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v10    # "stableProvider":Landroid/content/IContentProvider;
    :catchall_e1
    move-exception v0

    goto :goto_e7

    .line 1261
    :catch_e3
    move-exception v0

    goto :goto_fe

    .line 1266
    .end local v14    # "unstableProvider":Landroid/content/IContentProvider;
    .local v2, "unstableProvider":Landroid/content/IContentProvider;
    :catchall_e5
    move-exception v0

    move-object v14, v2

    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v14    # "unstableProvider":Landroid/content/IContentProvider;
    :goto_e7
    if-eqz v11, :cond_ec

    .line 1267
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1269
    :cond_ec
    if-eqz v8, :cond_f1

    .line 1270
    invoke-virtual {v8, v9}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1272
    :cond_f1
    if-eqz v14, :cond_f6

    .line 1273
    invoke-virtual {p0, v14}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1275
    :cond_f6
    if-eqz v10, :cond_fb

    .line 1276
    invoke-virtual {p0, v10}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1278
    :cond_fb
    throw v0

    .line 1261
    .end local v14    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v2    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_fc
    move-exception v0

    move-object v14, v2

    .line 1264
    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v14    # "unstableProvider":Landroid/content/IContentProvider;
    :goto_fe
    nop

    .line 1266
    if-eqz v11, :cond_104

    .line 1267
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1269
    :cond_104
    if-eqz v8, :cond_109

    .line 1270
    invoke-virtual {v8, v9}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1272
    :cond_109
    if-eqz v14, :cond_10e

    .line 1273
    invoke-virtual {p0, v14}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1275
    :cond_10e
    if-eqz v10, :cond_113

    .line 1276
    invoke-virtual {p0, v10}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1264
    :cond_113
    return-object v9

    .line 1211
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v10    # "stableProvider":Landroid/content/IContentProvider;
    .end local v11    # "qCursor":Landroid/database/Cursor;
    .end local v14    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_114
    move-exception v0

    .line 1212
    .restart local v0    # "e":Landroid/os/RemoteException;
    :goto_115
    return-object v9
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 1119
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .end local p5    # "sortOrder":Ljava/lang/String;
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "projection":[Ljava/lang/String;
    .local v3, "selection":Ljava/lang/String;
    .local v4, "selectionArgs":[Ljava/lang/String;
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1162
    invoke-static {p3, p4, p5}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1163
    .local v0, "queryArgs":Landroid/os/Bundle;
    invoke-virtual {p0, p1, p2, v0, p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .registers 8
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1423
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1426
    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_41

    return v0

    .line 1429
    :cond_12
    nop

    .line 1431
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1432
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_1a

    .line 1433
    return v0

    .line 1437
    :cond_1a
    const/4 v2, 0x0

    .line 1438
    .local v2, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_28

    .line 1439
    :try_start_1d
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1440
    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v3

    move-object v2, v3

    .line 1441
    invoke-virtual {p3, v2}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1443
    :cond_28
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-interface {v1, v3, p1, p2, v2}, Landroid/content/IContentProvider;->refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z

    move-result v0
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_3b
    .catchall {:try_start_1d .. :try_end_32} :catchall_36

    .line 1450
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1443
    return v0

    .line 1450
    .end local v2    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :catchall_36
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1451
    throw v0

    .line 1445
    :catch_3b
    move-exception v2

    .line 1448
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 1450
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1448
    return v0

    .line 1427
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_41
    move-exception v1

    .line 1428
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public final whitelist registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .line 2676
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2677
    const-string/jumbo v0, "observer"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2678
    nop

    .line 2679
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 2682
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    .line 2678
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2683
    return-void
.end method

.method public final greylist registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;
    .param p4, "userHandle"    # I

    .line 2730
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    .line 2731
    invoke-virtual {p3}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v3

    iget v5, p0, Landroid/content/ContentResolver;->mTargetSdkVersion:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_15

    .line 2730
    move-object v1, p1

    move v2, p2

    move v4, p4

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "notifyForDescendants":Z
    .end local p4    # "userHandle":I
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "notifyForDescendants":Z
    .local v4, "userHandle":I
    :try_start_d
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    .line 2734
    nop

    .line 2735
    return-void

    .line 2732
    :catch_12
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "notifyForDescendants":Z
    .end local v4    # "userHandle":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "notifyForDescendants":Z
    .restart local p4    # "userHandle":I
    :catch_15
    move-exception v0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object p1, v0

    .line 2733
    .end local p2    # "notifyForDescendants":Z
    .end local p4    # "userHandle":I
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "notifyForDescendants":Z
    .restart local v4    # "userHandle":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public final blacklist registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2715
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2716
    const-string/jumbo v0, "observer"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2717
    const-string/jumbo v0, "userHandle"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2718
    nop

    .line 2719
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 2722
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2718
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2723
    return-void
.end method

.method public whitelist releasePersistableUriPermission(Landroid/net/Uri;I)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2989
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2991
    :try_start_6
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    .line 2992
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2993
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v2

    .line 2991
    const/4 v3, 0x0

    invoke-interface {v0, v1, p2, v3, v2}, Landroid/app/IUriGrantsManager;->releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_18

    .line 2996
    nop

    .line 2997
    return-void

    .line 2994
    :catch_18
    move-exception v0

    .line 2995
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public abstract greylist releaseProvider(Landroid/content/IContentProvider;)Z
.end method

.method public abstract greylist releaseUnstableProvider(Landroid/content/IContentProvider;)Z
.end method

.method public greylist-max-o resolveUserId(Landroid/net/Uri;)I
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 3971
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public whitelist startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3066
    const/4 v0, 0x0

    .line 3067
    .local v0, "account":Landroid/accounts/Account;
    if-eqz p2, :cond_1a

    .line 3068
    const-string v1, "account"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3069
    .local v2, "accountName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 3071
    new-instance v3, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v3, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 3073
    :cond_17
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3075
    .end local v2    # "accountName":Ljava/lang/String;
    :cond_1a
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    invoke-static {v0, v1, p2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3076
    return-void
.end method

.method public whitelist takePersistableUriPermission(Landroid/net/Uri;I)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2952
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2954
    :try_start_6
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    .line 2955
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2956
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v2

    .line 2954
    const/4 v3, 0x0

    invoke-interface {v0, v1, p2, v3, v2}, Landroid/app/IUriGrantsManager;->takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_18

    .line 2959
    nop

    .line 2960
    return-void

    .line 2957
    :catch_18
    move-exception v0

    .line 2958
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist takePersistableUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 7
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .line 2968
    const-string/jumbo v0, "toPackage"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2969
    const-string/jumbo v0, "uri"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2971
    :try_start_c
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    .line 2972
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2973
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v2

    .line 2971
    invoke-interface {v0, v1, p3, p1, v2}, Landroid/app/IUriGrantsManager;->takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_1d

    .line 2976
    nop

    .line 2977
    return-void

    .line 2974
    :catch_1d
    move-exception v0

    .line 2975
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .param p1, "url"    # Landroid/net/Uri;

    .line 1370
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1373
    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_4d

    return-object v0

    .line 1376
    :cond_12
    nop

    .line 1378
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1379
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_1a

    .line 1380
    return-object v0

    .line 1384
    :cond_1a
    :try_start_1a
    new-instance v2, Landroid/content/ContentResolver$UriResultListener;

    invoke-direct {v2, v0}, Landroid/content/ContentResolver$UriResultListener;-><init>(Landroid/content/ContentResolver-IA;)V

    .line 1385
    .local v2, "resultListener":Landroid/content/ContentResolver$UriResultListener;
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    new-instance v4, Landroid/os/RemoteCallback;

    invoke-direct {v4, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v3, p1, v4}, Landroid/content/IContentProvider;->uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 1387
    sget v3, Landroid/content/ContentResolver;->CONTENT_PROVIDER_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver$UriResultListener;->waitForResult(J)V

    .line 1388
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->exception:Ljava/lang/RuntimeException;

    if-nez v3, :cond_3f

    .line 1391
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_3b} :catch_47
    .catchall {:try_start_1a .. :try_end_3b} :catchall_42

    .line 1397
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1391
    return-object v3

    .line 1389
    :cond_3f
    :try_start_3f
    iget-object v3, v2, Landroid/content/ContentResolver$UriResultListener;->exception:Ljava/lang/RuntimeException;

    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/content/ContentResolver;
    .end local p1    # "url":Landroid/net/Uri;
    throw v3
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_47
    .catchall {:try_start_3f .. :try_end_42} :catchall_42

    .line 1397
    .end local v2    # "resultListener":Landroid/content/ContentResolver$UriResultListener;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/content/ContentResolver;
    .restart local p1    # "url":Landroid/net/Uri;
    :catchall_42
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1398
    throw v0

    .line 1392
    :catch_47
    move-exception v2

    .line 1395
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 1397
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1395
    return-object v0

    .line 1374
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_4d
    move-exception v1

    .line 1375
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public final whitelist unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 2744
    const-string/jumbo v0, "observer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2746
    :try_start_6
    invoke-virtual {p1}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    .line 2747
    .local v0, "contentObserver":Landroid/database/IContentObserver;
    if-eqz v0, :cond_13

    .line 2748
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/IContentService;->unregisterContentObserver(Landroid/database/IContentObserver;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_15

    .line 2753
    .end local v0    # "contentObserver":Landroid/database/IContentObserver;
    :cond_13
    nop

    .line 2754
    return-void

    .line 2751
    :catch_15
    move-exception v0

    .line 2752
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public abstract greylist unstableProviderDied(Landroid/content/IContentProvider;)V
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2404
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2407
    :try_start_6
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_8} :catch_70

    if-eqz v0, :cond_15

    :try_start_a
    iget-object v0, p0, Landroid/content/ContentResolver;->mWrapped:Landroid/content/ContentInterface;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/ContentInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2408
    :catch_11
    move-exception v0

    move-object v6, p0

    move-object v9, p1

    goto :goto_73

    .line 2410
    :cond_15
    nop

    .line 2412
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 2413
    .local v1, "provider":Landroid/content/IContentProvider;
    if-eqz v1, :cond_56

    .line 2417
    :try_start_1c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2418
    .local v2, "startTime":J
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-interface {v1, v0, p1, p2, p3}, Landroid/content/IContentProvider;->update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0

    .line 2420
    .local v0, "rowsUpdated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v7, v4, v2

    .line 2421
    .local v7, "durationMillis":J
    const-string/jumbo v10, "update"
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_33} :catch_4c
    .catchall {:try_start_1c .. :try_end_33} :catchall_44

    const/4 v11, 0x0

    move-object v6, p0

    move-object v9, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .local v9, "uri":Landroid/net/Uri;
    :try_start_36
    invoke-direct/range {v6 .. v11}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_41
    .catchall {:try_start_36 .. :try_end_39} :catchall_3e

    .line 2422
    nop

    .line 2428
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2422
    return v0

    .line 2428
    .end local v0    # "rowsUpdated":I
    .end local v2    # "startTime":J
    .end local v7    # "durationMillis":J
    :catchall_3e
    move-exception v0

    move-object p1, v0

    goto :goto_48

    .line 2423
    :catch_41
    move-exception v0

    move-object p1, v0

    goto :goto_50

    .line 2428
    .end local v9    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_44
    move-exception v0

    move-object v6, p0

    move-object v9, p1

    move-object p1, v0

    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v9    # "uri":Landroid/net/Uri;
    :goto_48
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2429
    throw p1

    .line 2423
    .end local v9    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_4c
    move-exception v0

    move-object v6, p0

    move-object v9, p1

    move-object p1, v0

    .line 2426
    .restart local v9    # "uri":Landroid/net/Uri;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_50
    nop

    .line 2428
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2426
    const/4 v0, -0x1

    return v0

    .line 2414
    .end local v9    # "uri":Landroid/net/Uri;
    .local p1, "uri":Landroid/net/Uri;
    :cond_56
    move-object v9, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v9    # "uri":Landroid/net/Uri;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2408
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v9    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_70
    move-exception v0

    move-object v6, p0

    move-object v9, p1

    .line 2409
    .end local p1    # "uri":Landroid/net/Uri;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v9    # "uri":Landroid/net/Uri;
    :goto_73
    const/4 p1, 0x0

    return p1
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 2380
    invoke-static {p3, p4}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

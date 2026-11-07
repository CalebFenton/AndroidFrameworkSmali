.class public Landroid/app/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$RateLimiter;,
        Landroid/app/NotificationManager$NotificationKey;,
        Landroid/app/NotificationManager$NotificationChannelQuery;,
        Landroid/app/NotificationManager$Policy;,
        Landroid/app/NotificationManager$CallNotificationEventCallbackStub;,
        Landroid/app/NotificationManager$CallNotificationEventListener;,
        Landroid/app/NotificationManager$BubblePreference;,
        Landroid/app/NotificationManager$Importance;,
        Landroid/app/NotificationManager$InterruptionFilter;,
        Landroid/app/NotificationManager$AutomaticZenRuleStatus;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_APP_BLOCK_STATE_CHANGED:Ljava/lang/String; = "android.app.action.APP_BLOCK_STATE_CHANGED"

.field public static final whitelist ACTION_AUTOMATIC_ZEN_RULE:Ljava/lang/String; = "android.app.action.AUTOMATIC_ZEN_RULE"

.field public static final whitelist ACTION_AUTOMATIC_ZEN_RULE_STATUS_CHANGED:Ljava/lang/String; = "android.app.action.AUTOMATIC_ZEN_RULE_STATUS_CHANGED"

.field public static final whitelist ACTION_CLOSE_NOTIFICATION_HANDLER_PANEL:Ljava/lang/String; = "android.app.action.CLOSE_NOTIFICATION_HANDLER_PANEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CONSOLIDATED_NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.CONSOLIDATED_NOTIFICATION_POLICY_CHANGED"

.field public static final greylist-max-o ACTION_EFFECTS_SUPPRESSOR_CHANGED:Ljava/lang/String; = "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

.field public static final whitelist ACTION_INTERRUPTION_FILTER_CHANGED:Ljava/lang/String; = "android.app.action.INTERRUPTION_FILTER_CHANGED"

.field public static final greylist-max-o ACTION_INTERRUPTION_FILTER_CHANGED_INTERNAL:Ljava/lang/String; = "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

.field public static final whitelist ACTION_NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

.field public static final whitelist ACTION_NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

.field public static final blacklist ACTION_NOTIFICATION_LISTENER_ENABLED_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_LISTENER_ENABLED_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist ACTION_NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

.field public static final whitelist ACTION_NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_CHANGED"

.field public static final whitelist ACTION_OPEN_NOTIFICATION_HANDLER_PANEL:Ljava/lang/String; = "android.app.action.OPEN_NOTIFICATION_HANDLER_PANEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_TOGGLE_NOTIFICATION_HANDLER_PANEL:Ljava/lang/String; = "android.app.action.TOGGLE_NOTIFICATION_HANDLER_PANEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTOMATIC_RULE_STATUS_ACTIVATED:I = 0x4

.field public static final whitelist AUTOMATIC_RULE_STATUS_DEACTIVATED:I = 0x5

.field public static final whitelist AUTOMATIC_RULE_STATUS_DISABLED:I = 0x2

.field public static final whitelist AUTOMATIC_RULE_STATUS_ENABLED:I = 0x1

.field public static final whitelist AUTOMATIC_RULE_STATUS_REMOVED:I = 0x3

.field public static final whitelist AUTOMATIC_RULE_STATUS_UNKNOWN:I = -0x1

.field public static final whitelist BUBBLE_PREFERENCE_ALL:I = 0x1

.field public static final whitelist BUBBLE_PREFERENCE_NONE:I = 0x0

.field public static final whitelist BUBBLE_PREFERENCE_SELECTED:I = 0x2

.field public static final whitelist EXTRA_AUTOMATIC_RULE_ID:Ljava/lang/String; = "android.app.extra.AUTOMATIC_RULE_ID"

.field public static final whitelist EXTRA_AUTOMATIC_ZEN_RULE_ID:Ljava/lang/String; = "android.app.extra.AUTOMATIC_ZEN_RULE_ID"

.field public static final whitelist EXTRA_AUTOMATIC_ZEN_RULE_STATUS:Ljava/lang/String; = "android.app.extra.AUTOMATIC_ZEN_RULE_STATUS"

.field public static final whitelist EXTRA_BLOCKED_STATE:Ljava/lang/String; = "android.app.extra.BLOCKED_STATE"

.field public static final whitelist EXTRA_NOTIFICATION_CHANNEL_GROUP_ID:Ljava/lang/String; = "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

.field public static final whitelist EXTRA_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "android.app.extra.NOTIFICATION_CHANNEL_ID"

.field public static final whitelist EXTRA_NOTIFICATION_POLICY:Ljava/lang/String; = "android.app.extra.NOTIFICATION_POLICY"

.field public static final whitelist IMPORTANCE_DEFAULT:I = 0x3

.field public static final whitelist IMPORTANCE_HIGH:I = 0x4

.field public static final whitelist IMPORTANCE_LOW:I = 0x2

.field public static final whitelist IMPORTANCE_MAX:I = 0x5

.field public static final whitelist IMPORTANCE_MIN:I = 0x1

.field public static final whitelist IMPORTANCE_NONE:I = 0x0

.field public static final whitelist IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field public static final whitelist INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final whitelist INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final whitelist INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final whitelist INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final whitelist INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field private static final blacklist KNOWN_STATUS_CANCELLED:I = 0x2

.field private static final blacklist KNOWN_STATUS_ENQUEUED:I = 0x1

.field private static final blacklist MAX_NOTIFICATION_UNNECESSARY_CANCEL_RATE:F = 5.0f

.field private static final blacklist MAX_NOTIFICATION_UPDATE_RATE:F = 5.0f

.field public static blacklist MAX_SERVICE_COMPONENT_NAME_LENGTH:I = 0x0

.field public static final whitelist META_DATA_AUTOMATIC_RULE_TYPE:Ljava/lang/String; = "android.service.zen.automatic.ruleType"

.field public static final whitelist META_DATA_RULE_INSTANCE_LIMIT:Ljava/lang/String; = "android.service.zen.automatic.ruleInstanceLimit"

.field private static final blacklist NOTIFICATION_CHANNELS_CACHE_API:Ljava/lang/String; = "getNotificationChannels"

.field private static final blacklist NOTIFICATION_CHANNELS_CACHE_SIZE:I = 0xa

.field private static final blacklist NOTIFICATION_CHANNEL_GROUPS_CACHE_API:Ljava/lang/String; = "getNotificationChannelGroups"

.field private static final blacklist NOTIFICATION_CHANNEL_GROUPS_CACHE_SIZE:I = 0xa

.field public static final blacklist SET_LISTENER_ACCESS_GRANTED_IS_USER_AWARE:J = 0x1208c096L

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field public static final greylist-max-o VISIBILITY_NO_OVERRIDE:I = -0x3e8

.field private static greylist-max-o localLOGV:Z

.field private static greylist sService:Landroid/app/INotificationManager;


# instance fields
.field private final blacklist mCallNotificationEventCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/NotificationManager$CallNotificationEventListener;",
            "Landroid/app/NotificationManager$CallNotificationEventCallbackStub;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClock:Ljava/time/InstantSource;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mKnownNotifications:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/app/NotificationManager$NotificationKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mNotificationChannelGroupsQueryHandler:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mNotificationChannelListCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/app/NotificationManager$NotificationChannelQuery;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mNotificationChannelListQueryHandler:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/app/NotificationManager$NotificationChannelQuery;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mThrottleLock:Ljava/lang/Object;

.field private final blacklist mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

.field private final blacklist mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;
    .registers 1

    iget-object p0, p0, Landroid/app/NotificationManager;->mClock:Ljava/time/InstantSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 134
    const-string v0, "NotificationManager"

    sput-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/NotificationManager;->localLOGV:Z

    .line 653
    const/16 v0, 0x1f4

    sput v0, Landroid/app/NotificationManager;->MAX_SERVICE_COMPONENT_NAME_LENGTH:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 698
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/NotificationManager;-><init>(Landroid/content/Context;Ljava/time/InstantSource;)V

    .line 699
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Ljava/time/InstantSource;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Ljava/time/InstantSource;

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    .line 665
    new-instance v1, Landroid/app/NotificationManager$RateLimiter;

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    const-string/jumbo v3, "notify (update)"

    const-string/jumbo v4, "notifications.value_client_throttled_notify_update"

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/NotificationManager$RateLimiter;-><init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;FLandroid/app/NotificationManager-IA;)V

    iput-object v1, v2, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    .line 668
    new-instance v7, Landroid/app/NotificationManager$RateLimiter;

    const/high16 v11, 0x40a00000    # 5.0f

    const/4 v12, 0x0

    const-string v9, "cancel (dupe)"

    const-string/jumbo v10, "notifications.value_client_throttled_cancel_duplicate"

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Landroid/app/NotificationManager$RateLimiter;-><init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;FLandroid/app/NotificationManager-IA;)V

    iput-object v7, v2, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    .line 672
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, v2, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    .line 673
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    .line 1494
    new-instance v0, Landroid/app/NotificationManager$1;

    invoke-direct {v0, p0}, Landroid/app/NotificationManager$1;-><init>(Landroid/app/NotificationManager;)V

    iput-object v0, v2, Landroid/app/NotificationManager;->mNotificationChannelListQueryHandler:Landroid/os/IpcDataCache$QueryHandler;

    .line 1520
    new-instance v3, Landroid/os/IpcDataCache;

    const-string v7, "getNotificationChannels"

    iget-object v8, v2, Landroid/app/NotificationManager;->mNotificationChannelListQueryHandler:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v4, 0xa

    const-string/jumbo v5, "system_server"

    const-string v6, "getNotificationChannels"

    invoke-direct/range {v3 .. v8}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v3, v2, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    .line 1531
    new-instance v0, Landroid/app/NotificationManager$2;

    invoke-direct {v0, p0}, Landroid/app/NotificationManager$2;-><init>(Landroid/app/NotificationManager;)V

    iput-object v0, v2, Landroid/app/NotificationManager;->mNotificationChannelGroupsQueryHandler:Landroid/os/IpcDataCache$QueryHandler;

    .line 1564
    new-instance v3, Landroid/os/IpcDataCache;

    const-string v7, "getNotificationChannelGroups"

    iget-object v8, v2, Landroid/app/NotificationManager;->mNotificationChannelGroupsQueryHandler:Landroid/os/IpcDataCache$QueryHandler;

    const-string/jumbo v5, "system_server"

    const-string v6, "getNotificationChannelGroups"

    invoke-direct/range {v3 .. v8}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v3, v2, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    .line 704
    iput-object p1, v2, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 705
    iput-object p2, v2, Landroid/app/NotificationManager;->mClock:Ljava/time/InstantSource;

    .line 706
    return-void
.end method

.method private static greylist-max-o checkRequired(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 2481
    if-eqz p1, :cond_3

    .line 2484
    return-void

    .line 2482
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is required"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist discardCancel(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    .line 1023
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfThrottleNotify()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1024
    new-instance v1, Landroid/app/NotificationManager$NotificationKey;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "id":I
    .local v2, "user":Landroid/os/UserHandle;
    .local v3, "pkg":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    .local v5, "id":I
    invoke-direct/range {v1 .. v6}, Landroid/app/NotificationManager$NotificationKey;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1025
    .local v1, "key":Landroid/app/NotificationManager$NotificationKey;
    iget-object p1, p0, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1026
    :try_start_13
    iget-object p2, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-virtual {p2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 1027
    .local p2, "status":Ljava/lang/Integer;
    const/4 p3, 0x2

    if-eqz p2, :cond_39

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ne p4, p3, :cond_39

    .line 1028
    iget-object p4, p0, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p4}, Landroid/app/NotificationManager$RateLimiter;->eventExceedsRate()Z

    move-result p4

    if-eqz p4, :cond_34

    .line 1029
    iget-object p3, p0, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p3, v1}, Landroid/app/NotificationManager$RateLimiter;->recordRejected(Landroid/app/NotificationManager$NotificationKey;)V

    .line 1030
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 1032
    :cond_34
    iget-object p4, p0, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p4}, Landroid/app/NotificationManager$RateLimiter;->recordAccepted()V

    .line 1034
    :cond_39
    iget-object p4, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, v1, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    nop

    .end local p2    # "status":Ljava/lang/Integer;
    monitor-exit p1

    goto :goto_4d

    :catchall_45
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_45

    throw p2

    .line 1023
    .end local v1    # "key":Landroid/app/NotificationManager$NotificationKey;
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "id":I
    .restart local p1    # "user":Landroid/os/UserHandle;
    .local p2, "pkg":Ljava/lang/String;
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "id":I
    :cond_49
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1038
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "id":I
    .restart local v2    # "user":Landroid/os/UserHandle;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "id":I
    :goto_4d
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist discardNotify(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)Z
    .registers 14
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "notification"    # Landroid/app/Notification;

    .line 821
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationClassification()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    sget-object v0, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    .line 822
    invoke-virtual {p5}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 823
    return v1

    .line 826
    :cond_14
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfThrottleNotify()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 827
    new-instance v2, Landroid/app/NotificationManager$NotificationKey;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "id":I
    .local v3, "user":Landroid/os/UserHandle;
    .local v4, "pkg":Ljava/lang/String;
    .local v5, "tag":Ljava/lang/String;
    .local v6, "id":I
    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager$NotificationKey;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 828
    .local v2, "key":Landroid/app/NotificationManager$NotificationKey;
    iget-object p1, p0, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 829
    :try_start_27
    iget-object p2, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-virtual {p2, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 830
    .local p2, "status":Ljava/lang/Integer;
    if-eqz p2, :cond_51

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v1, :cond_51

    .line 831
    invoke-virtual {p5}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result p3

    if-nez p3, :cond_51

    .line 832
    iget-object p3, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p3}, Landroid/app/NotificationManager$RateLimiter;->eventExceedsRate()Z

    move-result p3

    if-eqz p3, :cond_4c

    .line 833
    iget-object p3, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p3, v2}, Landroid/app/NotificationManager$RateLimiter;->recordRejected(Landroid/app/NotificationManager$NotificationKey;)V

    .line 834
    monitor-exit p1

    return v1

    .line 836
    :cond_4c
    iget-object p3, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p3}, Landroid/app/NotificationManager$RateLimiter;->recordAccepted()V

    .line 838
    :cond_51
    iget-object p3, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, v2, p4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    nop

    .end local p2    # "status":Ljava/lang/Integer;
    monitor-exit p1

    goto :goto_65

    :catchall_5d
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_60
    .catchall {:try_start_27 .. :try_end_60} :catchall_5d

    throw p2

    .line 826
    .end local v2    # "key":Landroid/app/NotificationManager$NotificationKey;
    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "id":I
    .restart local p1    # "user":Landroid/os/UserHandle;
    .local p2, "pkg":Ljava/lang/String;
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "id":I
    :cond_61
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 842
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "id":I
    .restart local v3    # "user":Landroid/os/UserHandle;
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "id":I
    :goto_65
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 4
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 928
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_13

    iget v0, p1, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_13

    .line 929
    iget v0, p1, Landroid/app/Notification;->icon:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 931
    :cond_13
    return-void
.end method

.method private blacklist fixNotification(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 6
    .param p1, "notification"    # Landroid/app/Notification;

    .line 904
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 908
    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v1, :cond_24

    .line 909
    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 910
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 911
    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const-string v2, "Notification.sound"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 915
    :cond_24
    invoke-direct {p0, p1, v0}, Landroid/app/NotificationManager;->fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V

    .line 916
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_53

    .line 917
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_3a

    goto :goto_53

    .line 918
    :cond_3a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid notification (no valid small icon): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 923
    :cond_53
    :goto_53
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    .line 924
    invoke-static {p1}, Landroid/app/Notification$Builder;->maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method public static greylist from(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 711
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private static blacklist getChannelFromList(Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;
    .registers 6
    .param p0, "channelId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)",
            "Landroid/app/NotificationChannel;"
        }
    .end annotation

    .line 1344
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1345
    return-object v0

    .line 1347
    :cond_4
    if-nez p0, :cond_9

    .line 1348
    const-string/jumbo p0, "miscellaneous"

    .line 1350
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 1351
    .local v2, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1352
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 1354
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    :cond_28
    goto :goto_d

    .line 1355
    :cond_29
    return-object v0
.end method

.method private static blacklist getConversationChannelFromList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;
    .registers 8
    .param p0, "channelId"    # Ljava/lang/String;
    .param p1, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)",
            "Landroid/app/NotificationChannel;"
        }
    .end annotation

    .line 1360
    .local p2, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 1361
    return-object v0

    .line 1363
    :cond_4
    if-nez p0, :cond_9

    .line 1364
    const-string/jumbo p0, "miscellaneous"

    .line 1366
    :cond_9
    if-nez p1, :cond_10

    .line 1367
    invoke-static {p0, p2}, Landroid/app/NotificationManager;->getChannelFromList(Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 1369
    :cond_10
    const/4 v1, 0x0

    .line 1370
    .local v1, "parent":Landroid/app/NotificationChannel;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1371
    .local v3, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1372
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1373
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 1374
    :cond_3a
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1375
    move-object v1, v3

    .line 1377
    .end local v3    # "channel":Landroid/app/NotificationChannel;
    :cond_45
    goto :goto_15

    .line 1378
    :cond_46
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object v0

    :cond_4c
    return-object v0
.end method

.method public static greylist getService()Landroid/app/INotificationManager;
    .registers 2

    .line 682
    sget-object v0, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_7

    .line 683
    sget-object v0, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    return-object v0

    .line 685
    :cond_7
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 686
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    sput-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    .line 687
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    return-object v1
.end method

.method public static blacklist invalidateNotificationChannelCache()V
    .registers 2

    .line 1574
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1575
    const-string/jumbo v0, "system_server"

    const-string v1, "getNotificationChannels"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 1579
    :cond_f
    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "invalidateNotificationChannelCache called without flag"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :goto_17
    return-void
.end method

.method public static blacklist invalidateNotificationChannelGroupCache()V
    .registers 2

    .line 1587
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1588
    const-string/jumbo v0, "system_server"

    const-string v1, "getNotificationChannelGroups"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 1592
    :cond_f
    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "invalidateNotificationChannelGroupCache called without flag"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :goto_17
    return-void
.end method

.method public static greylist-max-o zenModeFromInterruptionFilter(II)I
    .registers 3
    .param p0, "interruptionFilter"    # I
    .param p1, "defValue"    # I

    .line 3407
    packed-switch p0, :pswitch_data_c

    .line 3412
    return p1

    .line 3410
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 3411
    :pswitch_6
    const/4 v0, 0x2

    return v0

    .line 3409
    :pswitch_8
    const/4 v0, 0x1

    return v0

    .line 3408
    :pswitch_a
    const/4 v0, 0x0

    return v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public static greylist-max-o zenModeToInterruptionFilter(I)I
    .registers 2
    .param p0, "zen"    # I

    .line 3396
    packed-switch p0, :pswitch_data_e

    .line 3401
    const/4 v0, 0x0

    return v0

    .line 3399
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 3400
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 3398
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 3397
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .registers 3
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;

    .line 1808
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist addAutomaticZenRule(Landroid/app/AutomaticZenRule;Z)Ljava/lang/String;
    .registers 6
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p2, "fromUser"    # Z

    .line 1816
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1818
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1819
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1818
    invoke-interface {v0, p1, v1, p2}, Landroid/app/INotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v1

    .line 1820
    :catch_f
    move-exception v1

    .line 1821
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist allowAssistantAdjustment(Ljava/lang/String;)V
    .registers 5
    .param p1, "capability"    # Ljava/lang/String;

    .line 2205
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2207
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->allowAssistantAdjustment(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2210
    nop

    .line 2211
    return-void

    .line 2208
    :catch_9
    move-exception v1

    .line 2209
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist areAutomaticZenRulesUserManaged()Z
    .registers 4

    .line 1743
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 1744
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1745
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1746
    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1747
    const-string v2, "android.software.leanback"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    nop

    .line 1745
    :goto_28
    return v1

    .line 1749
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_29
    return v1
.end method

.method public whitelist areBubblesAllowed()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2010
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2012
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->areBubblesAllowed(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v1

    .line 2013
    :catch_f
    move-exception v1

    .line 2014
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist areBubblesEnabled()Z
    .registers 4

    .line 2025
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2027
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->areBubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v1

    .line 2028
    :catch_f
    move-exception v1

    .line 2029
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist areNotificationsEnabled()Z
    .registers 4

    .line 1986
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfPermissionCheck()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1987
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 1989
    :cond_14
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1991
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_18
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->areNotificationsEnabled(Ljava/lang/String;)Z

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_23

    return v1

    .line 1992
    :catch_23
    move-exception v1

    .line 1993
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist areNotificationsPaused()Z
    .registers 4

    .line 2088
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2090
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->isPackagePaused(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v1

    .line 2091
    :catch_f
    move-exception v1

    .line 2092
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist canNotifyAsPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1113
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1115
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Landroid/app/INotificationManager;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    return v1

    .line 1116
    :catch_15
    move-exception v1

    .line 1117
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist canPostPromotedNotifications()Z
    .registers 4

    .line 1149
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1151
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->canBePromoted(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v1

    .line 1152
    :catch_f
    move-exception v1

    .line 1153
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist canUseFullScreenIntent()Z
    .registers 4

    .line 1131
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1133
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->canUseFullScreenIntent(Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v1

    .line 1134
    :catch_f
    move-exception v1

    .line 1135
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist cancel(I)V
    .registers 3
    .param p1, "id"    # I

    .line 945
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 946
    return-void
.end method

.method public whitelist cancel(Ljava/lang/String;I)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 960
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 961
    return-void
.end method

.method public whitelist cancelAll()V
    .registers 8

    .line 1047
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1048
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 1050
    .local v1, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfThrottleNotify()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1051
    iget-object v2, p0, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1052
    :try_start_15
    iget-object v3, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager$NotificationKey;

    .line 1053
    .local v4, "key":Landroid/app/NotificationManager$NotificationKey;
    invoke-static {v4}, Landroid/app/NotificationManager$NotificationKey;->-$$Nest$fgetpkg(Landroid/app/NotificationManager$NotificationKey;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-static {v4}, Landroid/app/NotificationManager$NotificationKey;->-$$Nest$fgetuser(Landroid/app/NotificationManager$NotificationKey;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1054
    iget-object v5, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .end local v4    # "key":Landroid/app/NotificationManager$NotificationKey;
    :cond_4d
    goto :goto_23

    .line 1057
    :cond_4e
    monitor-exit v2

    goto :goto_53

    :catchall_50
    move-exception v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_15 .. :try_end_52} :catchall_50

    throw v3

    .line 1060
    :cond_53
    :goto_53
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v2

    .line 1061
    .local v2, "service":Landroid/app/INotificationManager;
    sget-boolean v3, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v3, :cond_73

    sget-object v3, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": cancelAll()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_73
    :try_start_73
    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_7c} :catch_7e

    .line 1066
    nop

    .line 1067
    return-void

    .line 1064
    :catch_7e
    move-exception v3

    .line 1065
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public whitelist cancelAsPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 984
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/NotificationManager;->discardCancel(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 985
    return-void

    .line 988
    :cond_d
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    .line 990
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_11
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 991
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_21} :catch_2c

    .line 990
    move-object v2, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "targetPackage":Ljava/lang/String;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "id":I
    .local v2, "targetPackage":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    .local v5, "id":I
    :try_start_24
    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_29

    .line 994
    nop

    .line 995
    return-void

    .line 992
    :catch_29
    move-exception v0

    move-object p1, v0

    goto :goto_31

    .end local v2    # "targetPackage":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "id":I
    .restart local p1    # "targetPackage":Ljava/lang/String;
    .restart local p2    # "tag":Ljava/lang/String;
    .restart local p3    # "id":I
    :catch_2c
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object p1, v0

    .line 993
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "id":I
    .restart local v2    # "targetPackage":Ljava/lang/String;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "id":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_31
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .registers 11
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1003
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1004
    .local v2, "pkg":Ljava/lang/String;
    invoke-direct {p0, p3, v2, p1, p2}, Landroid/app/NotificationManager;->discardCancel(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1005
    return-void

    .line 1008
    :cond_d
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    .line 1009
    .local v1, "service":Landroid/app/INotificationManager;
    sget-boolean v0, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v0, :cond_37

    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cancel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_37
    :try_start_37
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1012
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_41} :catch_4b

    .line 1011
    move-object v4, p1

    move v5, p2

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "id":I
    .local v4, "tag":Ljava/lang/String;
    .local v5, "id":I
    :try_start_43
    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_48

    .line 1015
    nop

    .line 1016
    return-void

    .line 1013
    :catch_48
    move-exception v0

    move-object p1, v0

    goto :goto_4f

    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "id":I
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "id":I
    :catch_4b
    move-exception v0

    move-object v4, p1

    move v5, p2

    move-object p1, v0

    .line 1014
    .end local p2    # "id":I
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "id":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_4f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist cleanUpCallersAfter(J)V
    .registers 6
    .param p1, "timeThreshold"    # J

    .line 1638
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1640
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->cleanUpCallersAfter(J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 1643
    nop

    .line 1644
    return-void

    .line 1641
    :catch_9
    move-exception v1

    .line 1642
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist createNotificationChannel(Landroid/app/NotificationChannel;)V
    .registers 4
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 1232
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 1233
    return-void
.end method

.method public whitelist createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V
    .registers 4
    .param p1, "group"    # Landroid/app/NotificationChannelGroup;

    .line 1190
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/NotificationChannelGroup;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannelGroups(Ljava/util/List;)V

    .line 1191
    return-void
.end method

.method public whitelist createNotificationChannelGroups(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    .line 1199
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1201
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_14

    .line 1205
    nop

    .line 1206
    return-void

    .line 1203
    :catch_14
    move-exception v1

    .line 1204
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist createNotificationChannels(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    .line 1242
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1244
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_14

    .line 1248
    nop

    .line 1249
    return-void

    .line 1246
    :catch_14
    move-exception v1

    .line 1247
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist deleteNotificationChannel(Ljava/lang/String;)V
    .registers 5
    .param p1, "channelId"    # Ljava/lang/String;

    .line 1389
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationClassification()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    .line 1390
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1391
    return-void

    .line 1393
    :cond_f
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1395
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_13
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1e

    .line 1398
    nop

    .line 1399
    return-void

    .line 1396
    :catch_1e
    move-exception v1

    .line 1397
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist deleteNotificationChannelGroup(Ljava/lang/String;)V
    .registers 5
    .param p1, "groupId"    # Ljava/lang/String;

    .line 1466
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1468
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 1471
    nop

    .line 1472
    return-void

    .line 1469
    :catch_f
    move-exception v1

    .line 1470
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist disallowAssistantAdjustment(Ljava/lang/String;)V
    .registers 5
    .param p1, "capability"    # Ljava/lang/String;

    .line 2219
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2221
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->disallowAssistantAdjustment(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2224
    nop

    .line 2225
    return-void

    .line 2222
    :catch_9
    move-exception v1

    .line 2223
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .registers 6

    .line 3279
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3280
    .local v0, "service":Landroid/app/INotificationManager;
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3282
    .local v1, "pkg":Ljava/lang/String;
    :try_start_a
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 3283
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 3284
    .local v2, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    if-eqz v2, :cond_27

    .line 3285
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 3286
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/notification/StatusBarNotification;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_26} :catch_2c

    return-object v4

    .line 3290
    .end local v2    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    :cond_27
    nop

    .line 3291
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/service/notification/StatusBarNotification;

    return-object v2

    .line 3288
    :catch_2c
    move-exception v2

    .line 3289
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist getAllowedAssistantAdjustments()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2191
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2193
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v1

    .line 2194
    :catch_f
    move-exception v1

    .line 2195
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2453
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2455
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 2456
    :catch_9
    move-exception v1

    .line 2457
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 1789
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1791
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 1792
    :catch_9
    move-exception v1

    .line 1793
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAutomaticZenRuleState(Ljava/lang/String;)I
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 1869
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1871
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getAutomaticZenRuleState(Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1872
    :catch_9
    move-exception v1

    .line 1873
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAutomaticZenRules()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 1761
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1763
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1764
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    nop

    .line 1765
    invoke-interface {v0}, Landroid/app/INotificationManager;->getAutomaticZenRules()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 1766
    .local v2, "parceledRules":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/AutomaticZenRule$AzrWithId;>;"
    if-eqz v2, :cond_2d

    .line 1767
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AutomaticZenRule$AzrWithId;

    .line 1768
    .local v4, "rule":Landroid/app/AutomaticZenRule$AzrWithId;
    iget-object v5, v4, Landroid/app/AutomaticZenRule$AzrWithId;->mId:Ljava/lang/String;

    iget-object v6, v4, Landroid/app/AutomaticZenRule$AzrWithId;->mRule:Landroid/app/AutomaticZenRule;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2b} :catch_2e

    .line 1769
    nop

    .end local v4    # "rule":Landroid/app/AutomaticZenRule$AzrWithId;
    goto :goto_18

    .line 1771
    :cond_2d
    return-object v1

    .line 1772
    .end local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    .end local v2    # "parceledRules":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/AutomaticZenRule$AzrWithId;>;"
    :catch_2e
    move-exception v1

    .line 1773
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getBubblePreference()I
    .registers 4

    .line 2052
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2054
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2054
    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return v1

    .line 2056
    :catch_13
    move-exception v1

    .line 2057
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 4

    .line 1712
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1714
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 1715
    :catch_9
    move-exception v1

    .line 1716
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public final whitelist getCurrentInterruptionFilter()I
    .registers 4

    .line 3302
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3304
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v1

    .line 3305
    :catch_d
    move-exception v1

    .line 3306
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .registers 4

    .line 2332
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2334
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 2335
    :catch_9
    move-exception v1

    .line 2336
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getEffectsSuppressor()Landroid/content/ComponentName;
    .registers 4

    .line 1613
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1615
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 1616
    :catch_9
    move-exception v1

    .line 1617
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o getEnabledNotificationListenerPackages()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2256
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2258
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 2259
    :catch_9
    move-exception v1

    .line 2260
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getEnabledNotificationListeners()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 2437
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getEnabledNotificationListeners(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 2442
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2444
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 2445
    :catch_9
    move-exception v1

    .line 2446
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getImportance()I
    .registers 4

    .line 1974
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1976
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v1

    .line 1977
    :catch_f
    move-exception v1

    .line 1978
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 8
    .param p1, "channelId"    # Ljava/lang/String;

    .line 1260
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1261
    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1263
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1264
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1265
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1262
    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1261
    invoke-static {p1, v0}, Landroid/app/NotificationManager;->getChannelFromList(Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 1267
    :cond_2b
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1269
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_2f
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1270
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1269
    invoke-interface {v0, v1, v2, v3, p1}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_45} :catch_46

    return-object v1

    .line 1271
    :catch_46
    move-exception v1

    .line 1272
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 11
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "conversationId"    # Ljava/lang/String;

    .line 1292
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1293
    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1295
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1296
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1297
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1294
    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1293
    invoke-static {p1, p2, v0}, Landroid/app/NotificationManager;->getConversationChannelFromList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 1299
    :cond_2b
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    .line 1301
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_2f
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1302
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_41} :catch_4c

    .line 1301
    const/4 v6, 0x1

    move-object v5, p1

    move-object v7, p2

    .end local p1    # "channelId":Ljava/lang/String;
    .end local p2    # "conversationId":Ljava/lang/String;
    .local v5, "channelId":Ljava/lang/String;
    .local v7, "conversationId":Ljava/lang/String;
    :try_start_44
    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_48} :catch_49

    return-object p1

    .line 1304
    :catch_49
    move-exception v0

    move-object p1, v0

    goto :goto_50

    .end local v5    # "channelId":Ljava/lang/String;
    .end local v7    # "conversationId":Ljava/lang/String;
    .restart local p1    # "channelId":Ljava/lang/String;
    .restart local p2    # "conversationId":Ljava/lang/String;
    :catch_4c
    move-exception v0

    move-object v5, p1

    move-object v7, p2

    move-object p1, v0

    .line 1305
    .end local p2    # "conversationId":Ljava/lang/String;
    .restart local v5    # "channelId":Ljava/lang/String;
    .restart local v7    # "conversationId":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_50
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 7
    .param p1, "channelGroupId"    # Ljava/lang/String;

    .line 1407
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1408
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1410
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v2, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1411
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1410
    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1412
    .local v1, "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v2, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    .line 1413
    invoke-virtual {v2, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1414
    .local v2, "groupHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/notification/NotificationChannelGroupsHelper;->getGroupWithChannels(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Z)Landroid/app/NotificationChannelGroup;

    move-result-object v3

    .line 1416
    .local v3, "ncg":Landroid/app/NotificationChannelGroup;
    if-eqz v3, :cond_33

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v4

    :cond_33
    return-object v4

    .line 1418
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .end local v2    # "groupHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    .end local v3    # "ncg":Landroid/app/NotificationChannelGroup;
    :cond_34
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1420
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_38
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v1
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_42} :catch_43

    return-object v1

    .line 1422
    :catch_43
    move-exception v1

    .line 1423
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getNotificationChannelGroups()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1432
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1433
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v2, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1435
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1434
    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1436
    .local v1, "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v2, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    .line 1437
    invoke-virtual {v2, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1438
    .local v2, "groupHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    nop

    .line 1440
    invoke-static {}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->forAllGroups()Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    move-result-object v3

    .line 1439
    invoke-static {v1, v2, v3}, Lcom/android/internal/notification/NotificationChannelGroupsHelper;->getGroupsWithChannels(Ljava/util/Collection;Ljava/util/Map;Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/List;

    move-result-object v3

    .line 1441
    .local v3, "populatedGroupList":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    .local v4, "out":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 1443
    .local v6, "g":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    .end local v6    # "g":Landroid/app/NotificationChannelGroup;
    goto :goto_3a

    .line 1445
    :cond_4e
    return-object v4

    .line 1447
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .end local v2    # "groupHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    .end local v3    # "populatedGroupList":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    .end local v4    # "out":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    :cond_4f
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1449
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_53
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1450
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1451
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/NotificationChannelGroup;>;"
    if-eqz v1, :cond_64

    .line 1452
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_63} :catch_6b

    return-object v2

    .line 1456
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/NotificationChannelGroup;>;"
    :cond_64
    nop

    .line 1457
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 1454
    :catch_6b
    move-exception v1

    .line 1455
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getNotificationChannels()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1319
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1320
    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1321
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1322
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1320
    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1323
    .local v0, "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    if-eqz v0, :cond_45

    .line 1325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1326
    .local v3, "c":Landroid/app/NotificationChannel;
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    .end local v3    # "c":Landroid/app/NotificationChannel;
    goto :goto_31

    .line 1329
    :cond_45
    return-object v1

    .line 1331
    .end local v0    # "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .end local v1    # "out":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    :cond_46
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1333
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4a
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1334
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1333
    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1334
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_64} :catch_65

    .line 1333
    return-object v1

    .line 1335
    :catch_65
    move-exception v1

    .line 1336
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getNotificationDelegate()Ljava/lang/String;
    .registers 5

    .line 1097
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1098
    .local v0, "service":Landroid/app/INotificationManager;
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1100
    .local v1, "pkg":Ljava/lang/String;
    :try_start_a
    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return-object v2

    .line 1101
    :catch_f
    move-exception v2

    .line 1102
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 4

    .line 2273
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2275
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v1

    .line 2276
    :catch_f
    move-exception v1

    .line 2277
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o getRuleInstanceCount(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "owner"    # Landroid/content/ComponentName;

    .line 1724
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1726
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1727
    :catch_9
    move-exception v1

    .line 1728
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getUnsupportedAdjustmentTypes()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3546
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3548
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getUnsupportedAdjustmentTypes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    return-object v1

    .line 3549
    :catch_e
    move-exception v1

    .line 3550
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o getZenMode()I
    .registers 4

    .line 1681
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1683
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenMode()I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1684
    :catch_9
    move-exception v1

    .line 1685
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-r getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .registers 4

    .line 1694
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1696
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 1697
    :catch_9
    move-exception v1

    .line 1698
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2473
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2475
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/INotificationManager;->hasEnabledNotificationListener(Ljava/lang/String;I)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v1

    .line 2476
    :catch_d
    move-exception v1

    .line 2477
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "assistant"    # Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2156
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2158
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 2159
    :catch_9
    move-exception v1

    .line 2160
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "listener"    # Landroid/content/ComponentName;

    .line 2132
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2134
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 2135
    :catch_9
    move-exception v1

    .line 2136
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isNotificationPolicyAccessGranted()Z
    .registers 4

    .line 2111
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2113
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v1

    .line 2114
    :catch_f
    move-exception v1

    .line 2115
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2230
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2232
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 2233
    :catch_9
    move-exception v1

    .line 2234
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 1650
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1652
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1653
    :catch_9
    move-exception v1

    .line 1654
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist matchesCallFilter(Landroid/net/Uri;)Z
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 3386
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3387
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3388
    .local v1, "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    new-instance v2, Landroid/app/Person$Builder;

    invoke-direct {v2}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3389
    const-string v2, "android.people.list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3391
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v2

    return v2
.end method

.method public greylist-max-o matchesCallFilter(Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1625
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1627
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1628
    :catch_9
    move-exception v1

    .line 1629
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist notify(ILandroid/app/Notification;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 727
    return-void
.end method

.method public whitelist notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .line 750
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 751
    return-void
.end method

.method public whitelist notifyAsPackage(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 15
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;

    .line 777
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    .line 778
    .local v1, "service":Landroid/app/INotificationManager;
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, "sender":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    .end local p1    # "targetPackage":Ljava/lang/String;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "id":I
    .end local p4    # "notification":Landroid/app/Notification;
    .local v6, "targetPackage":Ljava/lang/String;
    .local v7, "tag":Ljava/lang/String;
    .local v8, "id":I
    .local v9, "notification":Landroid/app/Notification;
    invoke-direct/range {v4 .. v9}, Landroid/app/NotificationManager;->discardNotify(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result p1

    move-object p2, v4

    move-object v2, v6

    move-object v4, v7

    move v5, v8

    .end local v6    # "targetPackage":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "id":I
    .local v2, "targetPackage":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    .local v5, "id":I
    if-eqz p1, :cond_20

    .line 781
    return-void

    .line 785
    :cond_20
    :try_start_20
    sget-boolean p1, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz p1, :cond_50

    sget-object p1, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ": notify("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_50
    nop

    .line 787
    invoke-direct {p0, v9}, Landroid/app/NotificationManager;->fixNotification(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v6

    iget-object p1, p2, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 786
    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_62} :catch_64

    .line 790
    nop

    .line 791
    return-void

    .line 788
    :catch_64
    move-exception v0

    move-object p1, v0

    .line 789
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public greylist notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 800
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    .line 801
    .local v1, "service":Landroid/app/INotificationManager;
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 802
    .local v2, "pkg":Ljava/lang/String;
    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v3, p4

    move-object v4, v2

    move-object v2, p0

    .end local v2    # "pkg":Ljava/lang/String;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "id":I
    .end local p3    # "notification":Landroid/app/Notification;
    .end local p4    # "user":Landroid/os/UserHandle;
    .local v3, "user":Landroid/os/UserHandle;
    .local v4, "pkg":Ljava/lang/String;
    .local v5, "tag":Ljava/lang/String;
    .local v6, "id":I
    .local v7, "notification":Landroid/app/Notification;
    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager;->discardNotify(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result p1

    move-object p2, v2

    move-object v2, v4

    move-object v4, v5

    move v5, v6

    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v6    # "id":I
    .end local v7    # "notification":Landroid/app/Notification;
    .restart local v2    # "pkg":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    .local v5, "id":I
    .restart local p3    # "notification":Landroid/app/Notification;
    .restart local p4    # "user":Landroid/os/UserHandle;
    if-eqz p1, :cond_1b

    .line 803
    return-void

    .line 807
    :cond_1b
    :try_start_1b
    sget-boolean p1, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz p1, :cond_4b

    sget-object p1, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": notify("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_4b
    iget-object p1, p2, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 809
    invoke-direct {p0, p3}, Landroid/app/NotificationManager;->fixNotification(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 808
    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_5c} :catch_5e

    .line 812
    nop

    .line 813
    return-void

    .line 810
    :catch_5e
    move-exception v0

    move-object p1, v0

    .line 811
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager$CallNotificationEventListener;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/app/NotificationManager$CallNotificationEventListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3488
    const-string/jumbo v0, "packageName"

    invoke-static {v0, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3489
    const-string/jumbo v0, "userHandle"

    invoke-static {v0, p2}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3490
    const-string v0, "executor"

    invoke-static {v0, p3}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3491
    const-string/jumbo v0, "listener"

    invoke-static {v0, p4}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3492
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3494
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_1b
    iget-object v1, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    monitor-enter v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_31

    .line 3495
    :try_start_1e
    new-instance v2, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager$CallNotificationEventListener;)V

    .line 3498
    .local v2, "callbackStub":Landroid/app/NotificationManager$CallNotificationEventCallbackStub;
    iget-object v3, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    invoke-interface {v3, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3500
    invoke-interface {v0, p1, p2, v2}, Landroid/app/INotificationManager;->registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    .line 3502
    .end local v2    # "callbackStub":Landroid/app/NotificationManager$CallNotificationEventCallbackStub;
    monitor-exit v1

    .line 3505
    nop

    .line 3506
    return-void

    .line 3502
    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_2e

    .end local v0    # "service":Landroid/app/INotificationManager;
    .end local p0    # "this":Landroid/app/NotificationManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userHandle":Landroid/os/UserHandle;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroid/app/NotificationManager$CallNotificationEventListener;
    :try_start_30
    throw v2
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_31} :catch_31

    .line 3503
    .restart local v0    # "service":Landroid/app/INotificationManager;
    .restart local p0    # "this":Landroid/app/NotificationManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userHandle":Landroid/os/UserHandle;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "listener":Landroid/app/NotificationManager$CallNotificationEventListener;
    :catch_31
    move-exception v1

    .line 3504
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist removeAutomaticZenRule(Ljava/lang/String;)Z
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 1936
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist removeAutomaticZenRule(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "fromUser"    # Z

    .line 1942
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1944
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->removeAutomaticZenRule(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1945
    :catch_9
    move-exception v1

    .line 1946
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o removeAutomaticZenRules(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1956
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist removeAutomaticZenRules(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fromUser"    # Z

    .line 1961
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1963
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->removeAutomaticZenRules(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1964
    :catch_9
    move-exception v1

    .line 1965
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method protected blacklist service()Landroid/app/INotificationManager;
    .registers 2

    .line 692
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setAssistantAdjustmentKeyTypeState(IZ)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "enabled"    # Z

    .line 2244
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2246
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setAssistantAdjustmentKeyTypeState(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2249
    nop

    .line 2250
    return-void

    .line 2247
    :catch_9
    move-exception v1

    .line 2248
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "condition"    # Landroid/service/notification/Condition;

    .line 1915
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1917
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 1920
    nop

    .line 1921
    return-void

    .line 1918
    :catch_9
    move-exception v1

    .line 1919
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setCanPostPromotedNotifications(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "allowed"    # Z

    .line 1164
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1166
    .local v0, "service":Landroid/app/INotificationManager;
    const/4 v1, 0x1

    :try_start_5
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/INotificationManager;->setCanBePromoted(Ljava/lang/String;IZZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 1169
    nop

    .line 1170
    return-void

    .line 1167
    :catch_a
    move-exception v1

    .line 1168
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setChannelCachesToTestMode()V
    .registers 2

    .line 1604
    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->testPropertyName()V

    .line 1605
    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->testPropertyName()V

    .line 1606
    return-void
.end method

.method public final whitelist setInterruptionFilter(I)V
    .registers 3
    .param p1, "interruptionFilter"    # I

    .line 3328
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->setInterruptionFilter(IZ)V

    .line 3329
    return-void
.end method

.method public final blacklist setInterruptionFilter(IZ)V
    .registers 6
    .param p1, "interruptionFilter"    # I
    .param p2, "fromUser"    # Z

    .line 3334
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3336
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;IZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 3340
    nop

    .line 3341
    return-void

    .line 3338
    :catch_f
    move-exception v1

    .line 3339
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    .registers 5
    .param p1, "effects"    # Landroid/service/notification/ZenDeviceEffects;

    .line 2344
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2346
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2349
    nop

    .line 2350
    return-void

    .line 2347
    :catch_9
    move-exception v1

    .line 2348
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "assistant"    # Landroid/content/ComponentName;
    .param p2, "granted"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2418
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2420
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2423
    nop

    .line 2424
    return-void

    .line 2421
    :catch_9
    move-exception v1

    .line 2422
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setNotificationDelegate(Ljava/lang/String;)V
    .registers 7
    .param p1, "delegate"    # Ljava/lang/String;

    .line 1082
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1083
    .local v0, "service":Landroid/app/INotificationManager;
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1084
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_26

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": setNotificationDelegate()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_26
    :try_start_26
    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2b

    .line 1089
    nop

    .line 1090
    return-void

    .line 1087
    :catch_2b
    move-exception v2

    .line 1088
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public greylist-max-o setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "listener"    # Landroid/content/ComponentName;
    .param p2, "granted"    # Z

    .line 2324
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V

    .line 2325
    return-void
.end method

.method public whitelist setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    .registers 7
    .param p1, "listener"    # Landroid/content/ComponentName;
    .param p2, "granted"    # Z
    .param p3, "userSet"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2381
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2383
    .local v0, "service":Landroid/app/INotificationManager;
    const-wide/32 v1, 0x1208c096

    :try_start_7
    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2384
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    goto :goto_1a

    .line 2387
    :cond_17
    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_1c

    .line 2391
    :goto_1a
    nop

    .line 2392
    return-void

    .line 2389
    :catch_1c
    move-exception v1

    .line 2390
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .registers 7
    .param p1, "listener"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "granted"    # Z

    .line 2397
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2399
    .local v0, "service":Landroid/app/INotificationManager;
    const/4 v1, 0x1

    :try_start_5
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 2402
    nop

    .line 2403
    return-void

    .line 2400
    :catch_a
    move-exception v1

    .line 2401
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 3
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 2297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;Z)V

    .line 2298
    return-void
.end method

.method public blacklist setNotificationPolicy(Landroid/app/NotificationManager$Policy;Z)V
    .registers 6
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;
    .param p2, "fromUser"    # Z

    .line 2302
    const-string/jumbo v0, "policy"

    invoke-static {v0, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2303
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2305
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_a
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    .line 2308
    nop

    .line 2309
    return-void

    .line 2306
    :catch_15
    move-exception v1

    .line 2307
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 2313
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2315
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2318
    nop

    .line 2319
    return-void

    .line 2316
    :catch_9
    move-exception v1

    .line 2317
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setToastRateLimitingEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 2495
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2497
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setToastRateLimitingEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2500
    nop

    .line 2501
    return-void

    .line 2498
    :catch_9
    move-exception v1

    .line 2499
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1663
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 1664
    return-void
.end method

.method public blacklist setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "fromUser"    # Z

    .line 1668
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1670
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 1673
    nop

    .line 1674
    return-void

    .line 1671
    :catch_9
    move-exception v1

    .line 1672
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist shouldHideSilentStatusBarIcons()Z
    .registers 4

    .line 2172
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2174
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v1

    .line 2175
    :catch_f
    move-exception v1

    .line 2176
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist silenceNotificationSound()V
    .registers 4

    .line 2072
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2074
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->silenceNotificationSound()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2077
    nop

    .line 2078
    return-void

    .line 2075
    :catch_9
    move-exception v1

    .line 2076
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist unregisterCallNotificationEventListener(Landroid/app/NotificationManager$CallNotificationEventListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/app/NotificationManager$CallNotificationEventListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3522
    const-string/jumbo v0, "listener"

    invoke-static {v0, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3523
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3525
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_a
    iget-object v1, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    monitor-enter v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_24

    .line 3526
    :try_start_d
    iget-object v2, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    .line 3527
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;

    .line 3528
    .local v2, "callbackStub":Landroid/app/NotificationManager$CallNotificationEventCallbackStub;
    if-eqz v2, :cond_1e

    .line 3529
    iget-object v3, v2, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v3, v4, v2}, Landroid/app/INotificationManager;->unregisterCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    .line 3532
    .end local v2    # "callbackStub":Landroid/app/NotificationManager$CallNotificationEventCallbackStub;
    :cond_1e
    monitor-exit v1

    .line 3535
    nop

    .line 3536
    return-void

    .line 3532
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    .end local v0    # "service":Landroid/app/INotificationManager;
    .end local p0    # "this":Landroid/app/NotificationManager;
    .end local p1    # "listener":Landroid/app/NotificationManager$CallNotificationEventListener;
    :try_start_23
    throw v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_24} :catch_24

    .line 3533
    .restart local v0    # "service":Landroid/app/INotificationManager;
    .restart local p0    # "this":Landroid/app/NotificationManager;
    .restart local p1    # "listener":Landroid/app/NotificationManager$CallNotificationEventListener;
    :catch_24
    move-exception v1

    .line 3534
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;

    .line 1843
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p3, "fromUser"    # Z

    .line 1850
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1852
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 1853
    :catch_9
    move-exception v1

    .line 1854
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;

    .line 1480
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1482
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 1485
    nop

    .line 1486
    return-void

    .line 1483
    :catch_9
    move-exception v1

    .line 1484
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.class public Landroid/app/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$AppTask;,
        Landroid/app/ActivityManager$TaskDescription;,
        Landroid/app/ActivityManager$MemoryInfo;,
        Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;,
        Landroid/app/ActivityManager$RunningAppProcessInfo;,
        Landroid/app/ActivityManager$OnUidImportanceListener;,
        Landroid/app/ActivityManager$MyUidObserver;,
        Landroid/app/ActivityManager$PendingIntentInfo;,
        Landroid/app/ActivityManager$StopUserOnSwitch;,
        Landroid/app/ActivityManager$ProcessErrorStateInfo;,
        Landroid/app/ActivityManager$RunningServiceInfo;,
        Landroid/app/ActivityManager$MoveTaskFlags;,
        Landroid/app/ActivityManager$RunningTaskInfo;,
        Landroid/app/ActivityManager$RecentTaskInfo;,
        Landroid/app/ActivityManager$RestrictionSource;,
        Landroid/app/ActivityManager$RestrictionReason;,
        Landroid/app/ActivityManager$RestrictionLevel;,
        Landroid/app/ActivityManager$ForegroundServiceApiEvent;,
        Landroid/app/ActivityManager$ForegroundServiceApiType;,
        Landroid/app/ActivityManager$ProcessCapability;,
        Landroid/app/ActivityManager$ProcessState;,
        Landroid/app/ActivityManager$UidFrozenStateChangedCallback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_REPORT_HEAP_LIMIT:Ljava/lang/String; = "android.app.action.REPORT_HEAP_LIMIT"

.field public static final greylist-max-o APP_START_MODE_DELAYED:I = 0x1

.field public static final greylist-max-o APP_START_MODE_DELAYED_RIGID:I = 0x2

.field public static final greylist-max-o APP_START_MODE_DISABLED:I = 0x3

.field public static final greylist-max-o APP_START_MODE_NORMAL:I = 0x0

.field public static final greylist-max-o ASSIST_CONTEXT_AUTOFILL:I = 0x2

.field public static final greylist-max-o ASSIST_CONTEXT_BASIC:I = 0x0

.field public static final blacklist ASSIST_CONTEXT_CONTENT:I = 0x3

.field public static final greylist-max-o ASSIST_CONTEXT_FULL:I = 0x1

.field public static final greylist-max-o BROADCAST_FAILED_USER_STOPPED:I = -0x2

.field public static final greylist-max-o BROADCAST_STICKY_CANT_HAVE_PERMISSION:I = -0x1

.field public static final greylist-max-o BROADCAST_SUCCESS:I = 0x0

.field public static final greylist-max-o COMPAT_MODE_ALWAYS:I = -0x1

.field public static final greylist-max-o COMPAT_MODE_DISABLED:I = 0x0

.field public static final greylist-max-o COMPAT_MODE_ENABLED:I = 0x1

.field public static final greylist-max-o COMPAT_MODE_NEVER:I = -0x2

.field public static final greylist-max-o COMPAT_MODE_TOGGLE:I = 0x2

.field public static final greylist-max-o COMPAT_MODE_UNKNOWN:I = -0x3

.field private static final greylist-max-o DEVELOPMENT_FORCE_LOW_RAM:Z

.field public static final blacklist DROP_CLOSE_SYSTEM_DIALOGS:J = 0xa6929b8L

.field private static final greylist-max-o FIRST_START_FATAL_ERROR_CODE:I = -0x64

.field private static final greylist-max-o FIRST_START_NON_FATAL_ERROR_CODE:I = 0x64

.field private static final greylist-max-o FIRST_START_SUCCESS_CODE:I = 0x0

.field public static final greylist-max-o FLAG_AND_LOCKED:I = 0x2

.field public static final greylist-max-o FLAG_AND_UNLOCKED:I = 0x4

.field public static final greylist-max-o FLAG_AND_UNLOCKING_OR_UNLOCKED:I = 0x8

.field public static final greylist-max-o FLAG_OR_STOPPED:I = 0x1

.field public static final blacklist FOREGROUND_SERVICE_API_EVENT_BEGIN:I = 0x1

.field public static final blacklist FOREGROUND_SERVICE_API_EVENT_END:I = 0x2

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_AUDIO:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_BLUETOOTH:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_CAMERA:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_CDM:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_LOCATION:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_MEDIA_PLAYBACK:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_MICROPHONE:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_PHONE_CALL:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_API_TYPE_USB:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist IActivityManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INSTR_FLAG_ALWAYS_CHECK_SIGNATURE:I = 0x10

.field public static final blacklist INSTR_FLAG_DISABLE_HIDDEN_API_CHECKS:I = 0x1

.field public static final blacklist INSTR_FLAG_DISABLE_ISOLATED_STORAGE:I = 0x2

.field public static final blacklist INSTR_FLAG_DISABLE_TEST_API_CHECKS:I = 0x4

.field public static final blacklist INSTR_FLAG_INSTRUMENT_SDK_IN_SANDBOX:I = 0x40

.field public static final blacklist INSTR_FLAG_INSTRUMENT_SDK_SANDBOX:I = 0x20

.field public static final blacklist INSTR_FLAG_NO_RESTART:I = 0x8

.field public static final greylist INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final greylist-max-o INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final greylist-max-o INTENT_SENDER_BROADCAST:I = 0x1

.field public static final greylist-max-o INTENT_SENDER_FOREGROUND_SERVICE:I = 0x5

.field public static final greylist-max-o INTENT_SENDER_SERVICE:I = 0x4

.field public static final blacklist INTENT_SENDER_UNKNOWN:I = 0x0

.field private static final greylist-max-o LAST_START_FATAL_ERROR_CODE:I = -0x1

.field private static final greylist-max-o LAST_START_NON_FATAL_ERROR_CODE:I = 0xc7

.field private static final greylist-max-o LAST_START_SUCCESS_CODE:I = 0x63

.field public static final blacklist LOCK_DOWN_CLOSE_SYSTEM_DIALOGS:J = 0xa692aadL

.field public static final whitelist LOCK_TASK_MODE_LOCKED:I = 0x1

.field public static final whitelist LOCK_TASK_MODE_NONE:I = 0x0

.field public static final whitelist LOCK_TASK_MODE_PINNED:I = 0x2

.field public static final greylist-max-o MAX_PROCESS_STATE:I = 0x14

.field public static final whitelist META_HOME_ALTERNATE:Ljava/lang/String; = "android.app.home.alternate"

.field public static final greylist-max-o MIN_PROCESS_STATE:I = 0x0

.field public static final whitelist MOVE_TASK_NO_USER_ACTION:I = 0x2

.field public static final whitelist MOVE_TASK_WITH_HOME:I = 0x1

.field public static final blacklist PROCESS_CAPABILITY_ALL:I = 0xff

.field public static final blacklist PROCESS_CAPABILITY_ALL_IMPLICIT:I = 0x6

.field public static final blacklist PROCESS_CAPABILITY_BFSL:I = 0x10

.field public static final blacklist PROCESS_CAPABILITY_CPU_TIME:I = 0x80

.field public static final blacklist PROCESS_CAPABILITY_FOREGROUND_AUDIO_CONTROL:I = 0x40

.field public static final whitelist PROCESS_CAPABILITY_FOREGROUND_CAMERA:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROCESS_CAPABILITY_FOREGROUND_LOCATION:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROCESS_CAPABILITY_FOREGROUND_MICROPHONE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROCESS_CAPABILITY_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PROCESS_CAPABILITY_POWER_RESTRICTED_NETWORK:I = 0x8

.field public static final blacklist PROCESS_CAPABILITY_USER_RESTRICTED_NETWORK:I = 0x20

.field public static final greylist-max-o PROCESS_STATE_BACKUP:I = 0x9

.field public static final greylist-max-r PROCESS_STATE_BOUND_FOREGROUND_SERVICE:I = 0x5

.field public static final blacklist PROCESS_STATE_BOUND_TOP:I = 0x3

.field public static final greylist-max-r PROCESS_STATE_CACHED_ACTIVITY:I = 0x10

.field public static final greylist-max-o PROCESS_STATE_CACHED_ACTIVITY_CLIENT:I = 0x11

.field public static final greylist-max-o PROCESS_STATE_CACHED_EMPTY:I = 0x13

.field public static final greylist-max-o PROCESS_STATE_CACHED_RECENT:I = 0x12

.field public static final greylist-max-r PROCESS_STATE_FOREGROUND_SERVICE:I = 0x4

.field public static final greylist-max-o PROCESS_STATE_HEAVY_WEIGHT:I = 0xd

.field public static final greylist-max-r PROCESS_STATE_HOME:I = 0xe

.field public static final greylist-max-r PROCESS_STATE_IMPORTANT_BACKGROUND:I = 0x7

.field public static final greylist-max-o PROCESS_STATE_IMPORTANT_FOREGROUND:I = 0x6

.field public static final greylist-max-o PROCESS_STATE_LAST_ACTIVITY:I = 0xf

.field public static final greylist-max-o PROCESS_STATE_NONEXISTENT:I = 0x14

.field public static final greylist-max-o PROCESS_STATE_PERSISTENT:I = 0x0

.field public static final greylist-max-o PROCESS_STATE_PERSISTENT_UI:I = 0x1

.field public static final greylist-max-r PROCESS_STATE_RECEIVER:I = 0xb

.field public static final greylist-max-r PROCESS_STATE_SERVICE:I = 0xa

.field public static final greylist PROCESS_STATE_TOP:I = 0x2

.field public static final greylist-max-o PROCESS_STATE_TOP_SLEEPING:I = 0xc

.field public static final greylist-max-o PROCESS_STATE_TRANSIENT_BACKGROUND:I = 0x8

.field public static final greylist-max-o PROCESS_STATE_UNKNOWN:I = -0x1

.field public static final whitelist RECENT_IGNORE_UNAVAILABLE:I = 0x2

.field public static final whitelist RECENT_WITH_EXCLUDED:I = 0x1

.field public static final blacklist RESTRICTION_LEVEL_ADAPTIVE_BUCKET:I = 0x1e

.field public static final blacklist RESTRICTION_LEVEL_BACKGROUND_RESTRICTED:I = 0x32

.field public static final blacklist RESTRICTION_LEVEL_CUSTOM:I = 0x5a

.field public static final blacklist RESTRICTION_LEVEL_EXEMPTED:I = 0x14

.field public static final blacklist RESTRICTION_LEVEL_FORCE_STOPPED:I = 0x3c

.field public static final blacklist RESTRICTION_LEVEL_MAX:I = 0x64

.field public static final blacklist RESTRICTION_LEVEL_RESTRICTED_BUCKET:I = 0x28

.field public static final blacklist RESTRICTION_LEVEL_UNKNOWN:I = 0x0

.field public static final blacklist RESTRICTION_LEVEL_UNRESTRICTED:I = 0xa

.field public static final blacklist RESTRICTION_LEVEL_USER_LAUNCH_ONLY:I = 0x46

.field public static final blacklist RESTRICTION_REASON_DEFAULT:I = 0x1

.field public static final blacklist RESTRICTION_REASON_DORMANT:I = 0x2

.field public static final blacklist RESTRICTION_REASON_OTHER:I = 0x7

.field public static final blacklist RESTRICTION_REASON_POLICY:I = 0x6

.field public static final blacklist RESTRICTION_REASON_SYSTEM_HEALTH:I = 0x5

.field public static final blacklist RESTRICTION_REASON_USAGE:I = 0x3

.field public static final blacklist RESTRICTION_REASON_USER:I = 0x4

.field public static final blacklist RESTRICTION_SOURCE_COMMAND_LINE:I = 0x4

.field public static final blacklist RESTRICTION_SOURCE_REMOTE_TRIGGER:I = 0x5

.field public static final blacklist RESTRICTION_SOURCE_SYSTEM:I = 0x3

.field public static final blacklist RESTRICTION_SOURCE_USER:I = 0x1

.field public static final blacklist RESTRICTION_SOURCE_USER_NUDGED:I = 0x2

.field public static final blacklist RESTRICTION_SUBREASON_MAX_LENGTH:I = 0x10

.field public static final greylist-max-o START_ABORTED:I = 0x66

.field public static final greylist-max-o START_ASSISTANT_HIDDEN_SESSION:I = -0x5a

.field public static final greylist-max-o START_ASSISTANT_NOT_ACTIVE_SESSION:I = -0x59

.field public static final greylist-max-o START_CANCELED:I = -0x60

.field public static final greylist-max-o START_CLASS_NOT_FOUND:I = -0x5c

.field public static final greylist-max-o START_DELIVERED_TO_TOP:I = 0x3

.field public static final greylist-max-o START_FLAG_DEBUG:I = 0x2

.field public static final blacklist START_FLAG_DEBUG_SUSPEND:I = 0x10

.field public static final greylist-max-o START_FLAG_NATIVE_DEBUGGING:I = 0x8

.field public static final greylist-max-o START_FLAG_ONLY_IF_NEEDED:I = 0x1

.field public static final greylist-max-o START_FLAG_TRACK_ALLOCATION:I = 0x4

.field public static final greylist-max-o START_FORWARD_AND_REQUEST_CONFLICT:I = -0x5d

.field public static final greylist-max-o START_INTENT_NOT_RESOLVED:I = -0x5b

.field public static final greylist-max-o START_NOT_ACTIVITY:I = -0x5f

.field public static final greylist-max-o START_NOT_CURRENT_USER_ACTIVITY:I = -0x62

.field public static final greylist-max-o START_NOT_VOICE_COMPATIBLE:I = -0x61

.field public static final greylist-max-o START_PERMISSION_DENIED:I = -0x5e

.field public static final greylist-max-o START_RETURN_INTENT_TO_CALLER:I = 0x1

.field public static final greylist-max-o START_RETURN_LOCK_TASK_MODE_VIOLATION:I = 0x65

.field public static final greylist-max-o START_SUCCESS:I = 0x0

.field public static final greylist-max-o START_SWITCHES_CANCELED:I = 0x64

.field public static final greylist-max-o START_TASK_TO_FRONT:I = 0x2

.field public static final greylist-max-o START_VOICE_HIDDEN_SESSION:I = -0x64

.field public static final greylist-max-o START_VOICE_NOT_ACTIVE_SESSION:I = -0x63

.field public static final blacklist STOP_USER_ON_SWITCH_DEFAULT:I = -0x1

.field public static final blacklist STOP_USER_ON_SWITCH_FALSE:I = 0x0

.field public static final blacklist STOP_USER_ON_SWITCH_TRUE:I = 0x1

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field public static final greylist-max-o UID_OBSERVER_ACTIVE:I = 0x8

.field public static final greylist-max-o UID_OBSERVER_CACHED:I = 0x10

.field public static final blacklist UID_OBSERVER_CAPABILITY:I = 0x20

.field public static final greylist-max-o UID_OBSERVER_GONE:I = 0x2

.field public static final greylist-max-o UID_OBSERVER_IDLE:I = 0x4

.field public static final greylist-max-o UID_OBSERVER_PROCSTATE:I = 0x1

.field public static final blacklist UID_OBSERVER_PROC_OOM_ADJ:I = 0x40

.field public static final greylist-max-o USER_OP_ERROR_IS_SYSTEM:I = -0x3

.field public static final greylist-max-o USER_OP_ERROR_RELATED_USERS_CANNOT_STOP:I = -0x4

.field public static final greylist-max-o USER_OP_IS_CURRENT:I = -0x2

.field public static final greylist-max-o USER_OP_SUCCESS:I = 0x0

.field public static final greylist-max-o USER_OP_UNKNOWN_USER:I = -0x1

.field private static final blacklist mErrorProcessesCache:Lcom/android/internal/util/RateLimitingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RateLimitingCache<",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist mGetCurrentUserIdCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mGetCurrentUserIdQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mMemoryInfoCache:Lcom/android/internal/util/RateLimitingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RateLimitingCache<",
            "Landroid/app/ActivityManager$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mMyMemoryStateCache:Lcom/android/internal/util/RateLimitingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RateLimitingCache<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mRateLimitedMemInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private static final blacklist mRateLimitedMemState:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private static final blacklist mRunningProcessesCache:Lcom/android/internal/util/RateLimitingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RateLimitingCache<",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile blacklist sCurrentUser$ravenwood:I

.field private static volatile greylist-max-o sSystemReady:Z


# instance fields
.field private final blacklist mAppStartInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

.field greylist-max-o mAppTaskThumbnailSize:Landroid/graphics/Point;

.field private final greylist mContext:Landroid/content/Context;

.field private final blacklist mFrozenStateChangedCallback:Landroid/app/IUidFrozenStateChangedCallback;

.field private final blacklist mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityManager$UidFrozenStateChangedCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mImportanceListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityManager$OnUidImportanceListener;",
            "Landroid/app/ActivityManager$MyUidObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$KfaWjLSz8MRDCTZ5k_6RKNsGfys(Landroid/app/ActivityManager;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityManager;->lambda$getRunningAppProcesses$2()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ZuQeTlxj3UIhJqa0jkPJ3FavvSc(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityManager;->lambda$getMemoryInfo$0()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$nTwFhl_4O-ZVwyT6URmXK0QLjbk(Landroid/app/ActivityManager;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityManager;->lambda$getProcessesInErrorState$1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppStartInfoCallbacks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrozenStateChangedCallbacks(Landroid/app/ActivityManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAppStartInfoCompleteListener(Landroid/app/ActivityManager;Landroid/app/IApplicationStartInfoCompleteListener;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTaskService()Landroid/app/IActivityTaskManager;
    .registers 1

    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 154
    const-string v0, "ActivityManager"

    sput-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    .line 232
    new-instance v1, Lcom/android/internal/util/RateLimitingCache;

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/util/RateLimitingCache;-><init>(JI)V

    sput-object v1, Landroid/app/ActivityManager;->mRunningProcessesCache:Lcom/android/internal/util/RateLimitingCache;

    .line 236
    new-instance v1, Lcom/android/internal/util/RateLimitingCache;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/util/RateLimitingCache;-><init>(JI)V

    sput-object v1, Landroid/app/ActivityManager;->mErrorProcessesCache:Lcom/android/internal/util/RateLimitingCache;

    .line 241
    new-instance v1, Lcom/android/internal/util/RateLimitingCache;

    invoke-direct {v1, v3, v4}, Lcom/android/internal/util/RateLimitingCache;-><init>(J)V

    sput-object v1, Landroid/app/ActivityManager;->mMemoryInfoCache:Lcom/android/internal/util/RateLimitingCache;

    .line 245
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    sput-object v1, Landroid/app/ActivityManager;->mRateLimitedMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 249
    new-instance v1, Lcom/android/internal/util/RateLimitingCache;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/util/RateLimitingCache;-><init>(JI)V

    sput-object v1, Landroid/app/ActivityManager;->mMyMemoryStateCache:Lcom/android/internal/util/RateLimitingCache;

    .line 253
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    sput-object v1, Landroid/app/ActivityManager;->mRateLimitedMemState:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 259
    new-instance v1, Landroid/app/ActivityManager$1;

    invoke-direct {v1}, Landroid/app/ActivityManager$1;-><init>()V

    sput-object v1, Landroid/app/ActivityManager;->mGetCurrentUserIdQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 278
    new-instance v2, Landroid/os/IpcDataCache;

    const-string v6, "CurrentUserIdCache"

    sget-object v7, Landroid/app/ActivityManager;->mGetCurrentUserIdQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/4 v3, 0x1

    const-string/jumbo v4, "system_server"

    const-string v5, "getCurrentUserId"

    invoke-direct/range {v2 .. v7}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v2, Landroid/app/ActivityManager;->mGetCurrentUserIdCache:Landroid/os/IpcDataCache;

    .line 1270
    const/16 v1, -0x2710

    sput v1, Landroid/app/ActivityManager;->sCurrentUser$ravenwood:I

    .line 1343
    nop

    .line 1344
    const-string v1, "debug.force_low_ram"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManager;->DEVELOPMENT_FORCE_LOW_RAM:Z

    .line 5788
    new-instance v0, Landroid/app/ActivityManager$4;

    invoke-direct {v0}, Landroid/app/ActivityManager$4;-><init>()V

    sput-object v0, Landroid/app/ActivityManager;->IActivityManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method constructor greylist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    .line 297
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 300
    new-instance v0, Landroid/app/ActivityManager$2;

    invoke-direct {v0, p0}, Landroid/app/ActivityManager$2;-><init>(Landroid/app/ActivityManager;)V

    iput-object v0, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallback:Landroid/app/IUidFrozenStateChangedCallback;

    .line 4357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    .line 4359
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    .line 1267
    iput-object p1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 1268
    return-void
.end method

.method private blacklist addOnUidImportanceListenerInternal(Landroid/app/ActivityManager$OnUidImportanceListener;I[I)V
    .registers 13
    .param p1, "listener"    # Landroid/app/ActivityManager$OnUidImportanceListener;
    .param p2, "importanceCutpoint"    # I
    .param p3, "uids"    # [I

    .line 4769
    iget-object v1, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4770
    :try_start_3
    iget-object v0, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 4774
    new-instance v0, Landroid/app/ActivityManager$MyUidObserver;

    iget-object v2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v2}, Landroid/app/ActivityManager$MyUidObserver;-><init>(Landroid/app/ActivityManager$OnUidImportanceListener;Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_54

    move-object v4, v0

    .line 4776
    .local v4, "observer":Landroid/app/ActivityManager$MyUidObserver;
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 4778
    invoke-static {p2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceToProcState(I)I

    move-result v6

    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4779
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_21} :catch_32
    .catchall {:try_start_13 .. :try_end_21} :catchall_54

    .line 4776
    const/4 v5, 0x3

    move-object v8, p3

    .end local p3    # "uids":[I
    .local v8, "uids":[I
    :try_start_23
    invoke-interface/range {v3 .. v8}, Landroid/app/IActivityManager;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_2f
    .catchall {:try_start_23 .. :try_end_26} :catchall_59

    .line 4782
    nop

    .line 4783
    :try_start_27
    iget-object p3, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4784
    nop

    .end local v4    # "observer":Landroid/app/ActivityManager$MyUidObserver;
    monitor-exit v1

    .line 4785
    return-void

    .line 4780
    .restart local v4    # "observer":Landroid/app/ActivityManager$MyUidObserver;
    :catch_2f
    move-exception v0

    move-object p3, v0

    goto :goto_35

    .end local v8    # "uids":[I
    .restart local p3    # "uids":[I
    :catch_32
    move-exception v0

    move-object v8, p3

    move-object p3, v0

    .line 4781
    .restart local v8    # "uids":[I
    .local p3, "e":Landroid/os/RemoteException;
    :goto_35
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    .end local v8    # "uids":[I
    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    .end local p2    # "importanceCutpoint":I
    throw v0

    .line 4771
    .end local v4    # "observer":Landroid/app/ActivityManager$MyUidObserver;
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    .restart local p2    # "importanceCutpoint":I
    .local p3, "uids":[I
    :cond_3a
    move-object v8, p3

    .end local p3    # "uids":[I
    .restart local v8    # "uids":[I
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener already registered: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "uids":[I
    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    .end local p2    # "importanceCutpoint":I
    throw p3

    .line 4784
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    .restart local p2    # "importanceCutpoint":I
    .restart local p3    # "uids":[I
    :catchall_54
    move-exception v0

    move-object v8, p3

    move-object p3, v0

    .end local p3    # "uids":[I
    .restart local v8    # "uids":[I
    :goto_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_27 .. :try_end_58} :catchall_59

    throw p3

    :catchall_59
    move-exception v0

    move-object p3, v0

    goto :goto_57
.end method

.method public static greylist-max-o broadcastStickyIntent(Landroid/content/Intent;I)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "userId"    # I

    .line 5693
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;ILandroid/os/Bundle;I)V

    .line 5694
    return-void
.end method

.method public static greylist-max-o broadcastStickyIntent(Landroid/content/Intent;II)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "appOp"    # I
    .param p2, "userId"    # I

    .line 5702
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;ILandroid/os/Bundle;I)V

    .line 5703
    return-void
.end method

.method public static blacklist broadcastStickyIntent(Landroid/content/Intent;ILandroid/os/Bundle;I)V
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "appOp"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 5711
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 5712
    return-void
.end method

.method public static blacklist broadcastStickyIntent(Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)V
    .registers 22
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "excludedPackages"    # [Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 5722
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v16, p4

    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 5727
    goto :goto_1e

    .line 5726
    :catch_1d
    move-exception v0

    .line 5728
    :goto_1e
    return-void
.end method

.method public static blacklist canAccessUnexportedComponents(I)Z
    .registers 3
    .param p0, "uid"    # I

    .line 5213
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5214
    .local v0, "appId":I
    if-eqz v0, :cond_d

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method public static blacklist checkComponentPermission(Ljava/lang/String;IIIZ)I
    .registers 8
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "deviceId"    # I
    .param p3, "owningUid"    # I
    .param p4, "exported"    # Z

    .line 5229
    invoke-static {p1}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 5230
    return v1

    .line 5233
    :cond_8
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_10

    .line 5234
    return v2

    .line 5238
    :cond_10
    if-ltz p3, :cond_19

    invoke-static {p1, p3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5239
    return v1

    .line 5242
    :cond_19
    if-nez p4, :cond_1c

    .line 5248
    return v2

    .line 5250
    :cond_1c
    if-nez p0, :cond_1f

    .line 5251
    return v1

    .line 5254
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2}, Landroid/permission/IPermissionManager;->checkUidPermission(ILjava/lang/String;I)I

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_28

    return v0

    .line 5255
    :catch_28
    move-exception v0

    .line 5256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist checkComponentPermission(Ljava/lang/String;IIZ)I
    .registers 5
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "owningUid"    # I
    .param p3, "exported"    # Z

    .line 5221
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o checkUidPermission(Ljava/lang/String;I)I
    .registers 4
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 5263
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Landroid/permission/IPermissionManager;->checkUidPermission(ILjava/lang/String;I)I

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 5265
    :catch_a
    move-exception v0

    .line 5266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5648
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 5649
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5650
    .local v1, "pw":Ljava/io/PrintWriter;
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package"

    invoke-static {v1, p0, v3, v2}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5651
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5652
    const-string v2, "-a"

    filled-new-array {v2, v3, p1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity"

    invoke-static {v1, p0, v3, v2}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5654
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5655
    const-string v2, "--local"

    const-string v3, "--package"

    filled-new-array {v2, v3, p1}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meminfo"

    invoke-static {v1, p0, v3, v2}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5656
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5657
    const-string/jumbo v2, "procstats"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5658
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5659
    const-string/jumbo v2, "usagestats"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5660
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5661
    const-string v2, "batterystats"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5662
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 5663
    return-void
.end method

.method private static greylist-max-o dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5799
    const-string v0, "DUMP OF SERVICE "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5800
    invoke-static {p2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5801
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_1c

    .line 5802
    const-string v1, "  (Service not found)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5803
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 5804
    return-void

    .line 5806
    :cond_1c
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 5807
    instance-of v1, v0, Landroid/os/Binder;

    const-string v2, "Failure dumping service:"

    if-eqz v1, :cond_34

    .line 5811
    :try_start_25
    invoke-interface {v0, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 5816
    :goto_28
    goto :goto_60

    .line 5812
    :catchall_29
    move-exception v1

    .line 5813
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5814
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 5815
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_28

    .line 5819
    :cond_34
    const/4 v1, 0x0

    .line 5821
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_35
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 5822
    new-instance v3, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v3}, Lcom/android/internal/os/TransferPipe;-><init>()V

    move-object v1, v3

    .line 5823
    const-string v3, "  "

    invoke-virtual {v1, v3}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 5824
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 5825
    const-wide/16 v3, 0x2710

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_53
    .catchall {:try_start_35 .. :try_end_53} :catchall_54

    .line 5832
    goto :goto_60

    .line 5826
    :catchall_54
    move-exception v3

    .line 5827
    .local v3, "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_5a

    .line 5828
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5830
    :cond_5a
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5831
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 5834
    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_60
    return-void
.end method

.method private greylist-max-o ensureAppTaskThumbnailSizeLocked()V
    .registers 3

    .line 2979
    iget-object v0, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    if-nez v0, :cond_15

    .line 2981
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 2984
    goto :goto_15

    .line 2982
    :catch_f
    move-exception v0

    .line 2983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2986
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public static blacklist getCapabilitiesSummary(I)Ljava/lang/String;
    .registers 3
    .param p0, "caps"    # I

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1094
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V

    .line 1095
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getCurrentUser()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5318
    sget-object v0, Landroid/app/ActivityManager;->mGetCurrentUserIdCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getCurrentUser$ravenwood()I
    .registers 1

    .line 5323
    sget v0, Landroid/app/ActivityManager;->sCurrentUser$ravenwood:I

    return v0
.end method

.method static greylist-max-o getLauncherLargeIconSizeInner(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 5081
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5082
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5083
    .local v1, "size":I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 5085
    .local v2, "sw":I
    const/16 v3, 0x258

    if-ge v2, v3, :cond_15

    .line 5087
    return v1

    .line 5090
    :cond_15
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 5092
    .local v3, "density":I
    sparse-switch v3, :sswitch_data_48

    .line 5108
    int-to-float v4, v1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 5104
    :sswitch_27
    mul-int/lit16 v4, v1, 0x140

    mul-int/lit8 v4, v4, 0x2

    div-int/lit16 v4, v4, 0x1e0

    return v4

    .line 5102
    :sswitch_2e
    mul-int/lit16 v4, v1, 0x1e0

    div-int/lit16 v4, v4, 0x140

    return v4

    .line 5100
    :sswitch_33
    mul-int/lit16 v4, v1, 0x140

    div-int/lit16 v4, v4, 0xf0

    return v4

    .line 5098
    :sswitch_38
    mul-int/lit16 v4, v1, 0x140

    div-int/lit16 v4, v4, 0xf0

    return v4

    .line 5096
    :sswitch_3d
    mul-int/lit16 v4, v1, 0xf0

    div-int/lit16 v4, v4, 0xa0

    return v4

    .line 5094
    :sswitch_42
    mul-int/lit16 v4, v1, 0xa0

    div-int/lit8 v4, v4, 0x78

    return v4

    nop

    :sswitch_data_48
    .sparse-switch
        0x78 -> :sswitch_42
        0xa0 -> :sswitch_3d
        0xd5 -> :sswitch_38
        0xf0 -> :sswitch_33
        0x140 -> :sswitch_2e
        0x1e0 -> :sswitch_27
    .end sparse-switch
.end method

.method public static greylist getMaxRecentTasksStatic()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1810
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    return v0
.end method

.method private blacklist getMemoryInfoInternal(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 4
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    .line 3523
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 3526
    nop

    .line 3527
    return-void

    .line 3524
    :catch_9
    move-exception v0

    .line 3525
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .registers 4
    .param p0, "outState"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4822
    invoke-static {}, Landroid/app/Flags;->rateLimitGetMyMemoryState()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4823
    sget-object v0, Landroid/app/ActivityManager;->mMyMemoryStateCache:Lcom/android/internal/util/RateLimitingCache;

    monitor-enter v0

    .line 4824
    :try_start_9
    sget-object v1, Landroid/app/ActivityManager;->mMyMemoryStateCache:Lcom/android/internal/util/RateLimitingCache;

    new-instance v2, Landroid/app/ActivityManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/app/ActivityManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/internal/util/RateLimitingCache;->get(Lcom/android/internal/util/RateLimitingCache$ValueFetcher;)Ljava/lang/Object;

    .line 4828
    sget-object v1, Landroid/app/ActivityManager;->mRateLimitedMemState:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-virtual {v1, p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->copyTo(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 4829
    monitor-exit v0

    goto :goto_20

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v1

    .line 4831
    :cond_1d
    invoke-static {p0}, Landroid/app/ActivityManager;->getMyMemoryStateInternal(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 4833
    :goto_20
    return-void
.end method

.method private static blacklist getMyMemoryStateInternal(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .registers 3
    .param p0, "outState"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4837
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 4840
    nop

    .line 4841
    return-void

    .line 4838
    :catch_9
    move-exception v0

    .line 4839
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getProcessesInErrorStateInternal()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .line 3725
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3726
    :catch_9
    move-exception v0

    .line 3727
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getRunningAppProcessesInternal()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 4285
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 4286
    :catch_9
    move-exception v0

    .line 4287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist getService()Landroid/app/IActivityManager;
    .registers 1

    .line 5780
    sget-object v0, Landroid/app/ActivityManager;->IActivityManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method private static blacklist getTaskService()Landroid/app/IActivityTaskManager;
    .registers 1

    .line 5784
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p0, "callingPid"    # I
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "allowAll"    # Z
    .param p4, "requireFull"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "callerPackage"    # Ljava/lang/String;

    .line 5296
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_7

    .line 5297
    return p2

    .line 5300
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_1a

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p0    # "callingPid":I
    .end local p1    # "callingUid":I
    .end local p2    # "userId":I
    .end local p3    # "allowAll":Z
    .end local p4    # "requireFull":Z
    .end local p5    # "name":Ljava/lang/String;
    .end local p6    # "callerPackage":Ljava/lang/String;
    .local v2, "callingPid":I
    .local v3, "callingUid":I
    .local v4, "userId":I
    .local v5, "allowAll":Z
    .local v6, "requireFull":Z
    .local v7, "name":Ljava/lang/String;
    .local v8, "callerPackage":Ljava/lang/String;
    :try_start_12
    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return p0

    .line 5302
    :catch_17
    move-exception v0

    move-object p0, v0

    goto :goto_23

    .end local v2    # "callingPid":I
    .end local v3    # "callingUid":I
    .end local v4    # "userId":I
    .end local v5    # "allowAll":Z
    .end local v6    # "requireFull":Z
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "callerPackage":Ljava/lang/String;
    .restart local p0    # "callingPid":I
    .restart local p1    # "callingUid":I
    .restart local p2    # "userId":I
    .restart local p3    # "allowAll":Z
    .restart local p4    # "requireFull":Z
    .restart local p5    # "name":Ljava/lang/String;
    .restart local p6    # "callerPackage":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    move-object p0, v0

    .line 5303
    .end local p1    # "callingUid":I
    .end local p2    # "userId":I
    .end local p3    # "allowAll":Z
    .end local p4    # "requireFull":Z
    .end local p5    # "name":Ljava/lang/String;
    .end local p6    # "callerPackage":Ljava/lang/String;
    .restart local v2    # "callingPid":I
    .restart local v3    # "callingUid":I
    .restart local v4    # "userId":I
    .restart local v5    # "allowAll":Z
    .restart local v6    # "requireFull":Z
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "callerPackage":Ljava/lang/String;
    .local p0, "e":Landroid/os/RemoteException;
    :goto_23
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public static blacklist init$ravenwood(I)V
    .registers 1
    .param p0, "currentUser"    # I

    .line 1275
    sput p0, Landroid/app/ActivityManager;->sCurrentUser$ravenwood:I

    .line 1276
    return-void
.end method

.method public static blacklist invalidateGetCurrentUserIdCache()V
    .registers 2

    .line 289
    const-string/jumbo v0, "system_server"

    const-string v1, "getCurrentUserId"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public static blacklist isForegroundService(I)Z
    .registers 2
    .param p0, "procState"    # I

    .line 1186
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static blacklist isHighEndGfx()Z
    .registers 2

    .line 1785
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_AVOID_GFX_ACCEL:Z

    if-nez v0, :cond_19

    .line 1787
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1788
    const v1, 0x1110043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1785
    :goto_1a
    return v0
.end method

.method public static whitelist isLowMemoryKillReportSupported()Z
    .registers 2

    .line 4576
    const-string/jumbo v0, "persist.sys.lmk.reportkills"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist isLowRamDeviceStatic()Z
    .registers 1

    .line 1761
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_LOW_RAM:Z

    if-nez v0, :cond_f

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Landroid/app/ActivityManager;->DEVELOPMENT_FORCE_LOW_RAM:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static final greylist-max-o isProcStateBackground(I)Z
    .registers 2
    .param p0, "procState"    # I

    .line 1174
    const/16 v0, 0x8

    if-lt p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static final blacklist isProcStateCached(I)Z
    .registers 2
    .param p0, "procState"    # I

    .line 1180
    const/16 v0, 0x10

    if-lt p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isProcStateConsideredInteraction(I)Z
    .registers 2
    .param p0, "procState"    # I

    .line 6020
    const/4 v0, 0x2

    if-le p0, v0, :cond_9

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static final blacklist isProcStateJankPerceptible(I)Z
    .registers 3
    .param p0, "procState"    # I

    .line 1191
    invoke-static {}, Landroid/app/Flags;->jankPerceptibleNarrow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/app/Flags;->jankPerceptibleNarrowHoldback()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1192
    if-eq p0, v1, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xc

    if-ne p0, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_1b
    return v1

    .line 1197
    :cond_1c
    invoke-static {p0}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public static whitelist isRunningInTestHarness()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5139
    const-string/jumbo v0, "ro.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isRunningInUserTestHarness()Z
    .registers 2

    .line 5155
    const-string/jumbo v0, "persist.sys.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isSmallBatteryDevice()Z
    .registers 1

    .line 1774
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_SMALL_BATTERY:Z

    return v0
.end method

.method public static final greylist-max-o isStartResultFatalError(I)Z
    .registers 2
    .param p0, "result"    # I

    .line 1299
    const/16 v0, -0x64

    if-gt v0, p0, :cond_9

    const/4 v0, -0x1

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static final greylist-max-o isStartResultSuccessful(I)Z
    .registers 2
    .param p0, "result"    # I

    .line 1290
    if-ltz p0, :cond_8

    const/16 v0, 0x63

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static greylist-max-o isSystemReady()Z
    .registers 1

    .line 5670
    sget-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    if-nez v0, :cond_1c

    .line 5671
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5672
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 5673
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    goto :goto_1c

    .line 5677
    :cond_19
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    .line 5680
    :cond_1c
    :goto_1c
    sget-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    return v0
.end method

.method public static blacklist isSystemReady$ravenwood()Z
    .registers 1

    .line 5686
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isUserAMonkey()Z
    .registers 2

    .line 5119
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 5120
    :catch_9
    move-exception v0

    .line 5121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist isUserAMonkey$ravenwood()Z
    .registers 1

    .line 5128
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$addHomeVisibilityListener$4(Landroid/app/HomeVisibilityListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/app/HomeVisibilityListener;

    .line 6244
    iget-boolean v0, p0, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    invoke-virtual {p0, v0}, Landroid/app/HomeVisibilityListener;->onHomeVisibilityChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$getMemoryInfo$0()Landroid/app/ActivityManager$MemoryInfo;
    .registers 2

    .line 3511
    sget-object v0, Landroid/app/ActivityManager;->mRateLimitedMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfoInternal(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3512
    sget-object v0, Landroid/app/ActivityManager;->mRateLimitedMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    return-object v0
.end method

.method static synthetic blacklist lambda$getMyMemoryState$3()Landroid/app/ActivityManager$RunningAppProcessInfo;
    .registers 1

    .line 4825
    sget-object v0, Landroid/app/ActivityManager;->mRateLimitedMemState:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryStateInternal(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 4826
    sget-object v0, Landroid/app/ActivityManager;->mRateLimitedMemState:Landroid/app/ActivityManager$RunningAppProcessInfo;

    return-object v0
.end method

.method private synthetic blacklist lambda$getProcessesInErrorState$1()Ljava/util/List;
    .registers 2

    .line 3716
    invoke-direct {p0}, Landroid/app/ActivityManager;->getProcessesInErrorStateInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getRunningAppProcesses$2()Ljava/util/List;
    .registers 2

    .line 4278
    invoke-direct {p0}, Landroid/app/ActivityManager;->getRunningAppProcessesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 6
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "sourceUid"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 5769
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 5772
    goto :goto_11

    .line 5771
    :catch_10
    move-exception v0

    .line 5773
    :goto_11
    return-void
.end method

.method public static greylist-max-o noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 6
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "sourceUid"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 5756
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 5759
    goto :goto_11

    .line 5758
    :catch_10
    move-exception v0

    .line 5760
    :goto_11
    return-void
.end method

.method public static greylist-max-o noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "sourceUid"    # I
    .param p3, "sourcePkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;

    .line 5744
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_1c

    if-eqz p0, :cond_11

    :try_start_6
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_12

    .line 5746
    :catch_b
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    goto :goto_21

    .line 5744
    :cond_11
    const/4 v1, 0x0

    :goto_12
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "workSource":Landroid/os/WorkSource;
    .end local p2    # "sourceUid":I
    .end local p3    # "sourcePkg":Ljava/lang/String;
    .end local p4    # "tag":Ljava/lang/String;
    .local v2, "workSource":Landroid/os/WorkSource;
    .local v3, "sourceUid":I
    .local v4, "sourcePkg":Ljava/lang/String;
    .local v5, "tag":Ljava/lang/String;
    :try_start_16
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 5747
    goto :goto_21

    .line 5746
    :catch_1a
    move-exception v0

    goto :goto_21

    .end local v2    # "workSource":Landroid/os/WorkSource;
    .end local v3    # "sourceUid":I
    .end local v4    # "sourcePkg":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .restart local p1    # "workSource":Landroid/os/WorkSource;
    .restart local p2    # "sourceUid":I
    .restart local p3    # "sourcePkg":Ljava/lang/String;
    .restart local p4    # "tag":Ljava/lang/String;
    :catch_1c
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 5748
    .end local p1    # "workSource":Landroid/os/WorkSource;
    .end local p2    # "sourceUid":I
    .end local p3    # "sourcePkg":Ljava/lang/String;
    .end local p4    # "tag":Ljava/lang/String;
    .restart local v2    # "workSource":Landroid/os/WorkSource;
    .restart local v3    # "sourceUid":I
    .restart local v4    # "sourcePkg":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :goto_21
    return-void
.end method

.method public static blacklist printCapabilitiesFull(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "caps"    # I

    .line 1082
    invoke-static {p0, p1}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 1083
    and-int/lit16 v0, p1, -0x100

    .line 1084
    .local v0, "remain":I
    if-eqz v0, :cond_13

    .line 1085
    const-string v1, "+0x"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1086
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    :cond_13
    return-void
.end method

.method public static blacklist printCapabilitiesSummary(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "caps"    # I

    .line 1053
    and-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    if-eqz v0, :cond_9

    const/16 v0, 0x4c

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1054
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_14

    const/16 v0, 0x43

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1055
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1f

    const/16 v0, 0x4d

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1056
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2a

    const/16 v0, 0x4e

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1057
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_35

    const/16 v0, 0x46

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1058
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_40

    const/16 v0, 0x55

    goto :goto_41

    :cond_40
    move v0, v1

    :goto_41
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1059
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_4b

    const/16 v0, 0x41

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1060
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_55

    const/16 v1, 0x54

    :cond_55
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1061
    return-void
.end method

.method public static blacklist printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "caps"    # I

    .line 1066
    and-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    if-eqz v0, :cond_9

    const/16 v0, 0x4c

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1067
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_14

    const/16 v0, 0x43

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1068
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1f

    const/16 v0, 0x4d

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1069
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2a

    const/16 v0, 0x4e

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1070
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_35

    const/16 v0, 0x46

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1071
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_40

    const/16 v0, 0x55

    goto :goto_41

    :cond_40
    move v0, v1

    :goto_41
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1072
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_4b

    const/16 v0, 0x41

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1073
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_55

    const/16 v1, 0x54

    :cond_55
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    return-void
.end method

.method public static blacklist procStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "procState"    # I

    .line 6027
    packed-switch p0, :pswitch_data_46

    .line 6092
    const-string v0, "??"

    .local v0, "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6089
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "NONE"

    .line 6090
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6086
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_9
    const-string v0, "CEM "

    .line 6087
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6083
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_c
    const-string v0, "CRE "

    .line 6084
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6080
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_f
    const-string v0, "CACC"

    .line 6081
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6077
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_12
    const-string v0, "CAC "

    .line 6078
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6074
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_15
    const-string v0, "LAST"

    .line 6075
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6071
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_18
    const-string v0, "HOME"

    .line 6072
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6068
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "HVY "

    .line 6069
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6065
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "TPSL"

    .line 6066
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6062
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_21
    const-string v0, "RCVR"

    .line 6063
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6059
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_24
    const-string v0, "SVC "

    .line 6060
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6056
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_27
    const-string v0, "BKUP"

    .line 6057
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6053
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "TRNB"

    .line 6054
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6050
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "IMPB"

    .line 6051
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6047
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_30
    const-string v0, "IMPF"

    .line 6048
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6044
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_33
    const-string v0, "BFGS"

    .line 6045
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6041
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_36
    const-string v0, "FGS "

    .line 6042
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6038
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_39
    const-string v0, "BTOP"

    .line 6039
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6035
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_3c
    const-string v0, "TOP "

    .line 6036
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6032
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_3f
    const-string v0, "PERU"

    .line 6033
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_45

    .line 6029
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_42
    const-string v0, "PER "

    .line 6030
    .restart local v0    # "procStateStr":Ljava/lang/String;
    nop

    .line 6095
    :goto_45
    return-object v0

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static final greylist-max-o processStateAmToProto(I)I
    .registers 2
    .param p0, "amInt"    # I

    .line 1113
    packed-switch p0, :pswitch_data_48

    .line 1161
    const/16 v0, 0x3e6

    return v0

    .line 1157
    :pswitch_6
    const/16 v0, 0x3fb

    return v0

    .line 1155
    :pswitch_9
    const/16 v0, 0x3fa

    return v0

    .line 1153
    :pswitch_c
    const/16 v0, 0x3f9

    return v0

    .line 1151
    :pswitch_f
    const/16 v0, 0x3f8

    return v0

    .line 1149
    :pswitch_12
    const/16 v0, 0x3f7

    return v0

    .line 1147
    :pswitch_15
    const/16 v0, 0x3f6

    return v0

    .line 1145
    :pswitch_18
    const/16 v0, 0x3f5

    return v0

    .line 1143
    :pswitch_1b
    const/16 v0, 0x3f4

    return v0

    .line 1141
    :pswitch_1e
    const/16 v0, 0x3f3

    return v0

    .line 1139
    :pswitch_21
    const/16 v0, 0x3f2

    return v0

    .line 1137
    :pswitch_24
    const/16 v0, 0x3f1

    return v0

    .line 1135
    :pswitch_27
    const/16 v0, 0x3f0

    return v0

    .line 1133
    :pswitch_2a
    const/16 v0, 0x3ef

    return v0

    .line 1131
    :pswitch_2d
    const/16 v0, 0x3ee

    return v0

    .line 1129
    :pswitch_30
    const/16 v0, 0x3ed

    return v0

    .line 1127
    :pswitch_33
    const/16 v0, 0x3ec

    return v0

    .line 1125
    :pswitch_36
    const/16 v0, 0x3eb

    return v0

    .line 1123
    :pswitch_39
    const/16 v0, 0x3fc

    return v0

    .line 1121
    :pswitch_3c
    const/16 v0, 0x3ea

    return v0

    .line 1119
    :pswitch_3f
    const/16 v0, 0x3e9

    return v0

    .line 1117
    :pswitch_42
    const/16 v0, 0x3e8

    return v0

    .line 1115
    :pswitch_45
    const/16 v0, 0x3e7

    return v0

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist reset$ravenwood()V
    .registers 1

    .line 1281
    const/16 v0, -0x2710

    sput v0, Landroid/app/ActivityManager;->sCurrentUser$ravenwood:I

    .line 1282
    return-void
.end method

.method public static blacklist restrictionLevelToName(I)Ljava/lang/String;
    .registers 2
    .param p0, "level"    # I

    .line 1619
    sparse-switch p0, :sswitch_data_2c

    .line 1641
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1639
    :sswitch_8
    const-string/jumbo v0, "max"

    return-object v0

    .line 1637
    :sswitch_c
    const-string v0, "custom"

    return-object v0

    .line 1635
    :sswitch_f
    const-string/jumbo v0, "user_only"

    return-object v0

    .line 1633
    :sswitch_13
    const-string/jumbo v0, "stopped"

    return-object v0

    .line 1631
    :sswitch_17
    const-string v0, "background_restricted"

    return-object v0

    .line 1629
    :sswitch_1a
    const-string/jumbo v0, "restricted_bucket"

    return-object v0

    .line 1627
    :sswitch_1e
    const-string v0, "adaptive_bucket"

    return-object v0

    .line 1625
    :sswitch_21
    const-string v0, "exempted"

    return-object v0

    .line 1623
    :sswitch_24
    const-string/jumbo v0, "unrestricted"

    return-object v0

    .line 1621
    :sswitch_28
    const-string/jumbo v0, "unknown"

    return-object v0

    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_28
        0xa -> :sswitch_24
        0x14 -> :sswitch_21
        0x1e -> :sswitch_1e
        0x28 -> :sswitch_1a
        0x32 -> :sswitch_17
        0x3c -> :sswitch_13
        0x46 -> :sswitch_f
        0x5a -> :sswitch_c
        0x64 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist resumeAppSwitches()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5735
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 5736
    return-void
.end method

.method public static whitelist setPersistentVrThread(I)V
    .registers 2
    .param p0, "tid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5950
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->setPersistentVrThread(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 5953
    goto :goto_9

    .line 5951
    :catch_8
    move-exception v0

    .line 5954
    :goto_9
    return-void
.end method

.method public static whitelist setVrThread(I)V
    .registers 2
    .param p0, "tid"    # I

    .line 5925
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->setVrThread(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 5928
    goto :goto_9

    .line 5926
    :catch_8
    move-exception v0

    .line 5929
    :goto_9
    return-void
.end method

.method public static greylist-max-o staticGetLargeMemoryClass()I
    .registers 3

    .line 1744
    const-string v0, "dalvik.vm.heapsize"

    const-string v1, "16m"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1745
    .local v0, "vmHeapSize":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static greylist staticGetMemoryClass()I
    .registers 3

    .line 1716
    const-string v0, "dalvik.vm.heapgrowthlimit"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1717
    .local v0, "vmHeapSize":Ljava/lang/String;
    if-eqz v0, :cond_20

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1718
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1720
    :cond_20
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist addAppTask(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .line 3013
    monitor-enter p0

    .line 3014
    :try_start_1
    invoke-direct {p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    .line 3015
    iget-object v0, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    .line 3016
    .local v0, "size":Landroid/graphics/Point;
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_81

    .line 3017
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 3018
    .local v1, "tw":I
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 3019
    .local v2, "th":I
    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ne v1, v3, :cond_17

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-eq v2, v3, :cond_66

    .line 3020
    :cond_17
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3024
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .line 3025
    .local v5, "dy":F
    iget v6, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v1

    iget v7, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    if-le v6, v7, :cond_3d

    .line 3026
    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 3027
    .local v6, "scale":F
    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    int-to-float v9, v1

    mul-float/2addr v9, v6

    sub-float/2addr v7, v9

    mul-float v4, v7, v8

    goto :goto_4a

    .line 3029
    .end local v6    # "scale":F
    :cond_3d
    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    .line 3030
    .restart local v6    # "scale":F
    iget v7, v0, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v9, v2

    mul-float/2addr v9, v6

    sub-float/2addr v7, v9

    mul-float v5, v7, v8

    .line 3032
    :goto_4a
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 3033
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3034
    add-float/2addr v8, v4

    float-to-int v8, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3036
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3037
    .local v8, "canvas":Landroid/graphics/Canvas;
    const/4 v9, 0x0

    invoke-virtual {v8, p4, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 3038
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3040
    move-object p4, v3

    .line 3042
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v6    # "scale":F
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    :cond_66
    if-nez p3, :cond_6e

    .line 3043
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v3}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object p3, v3

    .line 3046
    :cond_6e
    :try_start_6e
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, p4}, Landroid/app/IActivityTaskManager;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v3
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_7a} :catch_7b

    return v3

    .line 3048
    :catch_7b
    move-exception v3

    .line 3049
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 3016
    .end local v0    # "size":Landroid/graphics/Point;
    .end local v1    # "tw":I
    .end local v2    # "th":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_81
    move-exception v0

    :try_start_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v0
.end method

.method public whitelist addApplicationStartInfoCompletionListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/ApplicationStartInfo;",
            ">;)V"
        }
    .end annotation

    .line 4400
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/ApplicationStartInfo;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4401
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4402
    iget-object v0, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4403
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    :try_start_f
    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 4404
    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    iget-object v2, v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 4405
    monitor-exit v0

    return-void

    .line 4403
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 4408
    .end local v1    # "i":I
    :cond_2c
    iget-object v1, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    if-nez v1, :cond_65

    .line 4409
    new-instance v1, Landroid/app/ActivityManager$3;

    invoke-direct {v1, p0}, Landroid/app/ActivityManager$3;-><init>(Landroid/app/ActivityManager;)V

    iput-object v1, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_71

    .line 4425
    const/4 v1, 0x0

    .line 4427
    .local v1, "succeeded":Z
    :try_start_38
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    iget-object v4, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4428
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 4427
    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->addApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_47} :catch_5f
    .catchall {:try_start_38 .. :try_end_47} :catchall_71

    .line 4429
    const/4 v1, 0x1

    .line 4432
    nop

    .line 4433
    if-eqz v1, :cond_56

    .line 4434
    :try_start_4b
    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    invoke-direct {v3, p1, p2}, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 4436
    :cond_56
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    .line 4437
    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4439
    .end local v1    # "succeeded":Z
    :goto_5e
    goto :goto_6f

    .line 4430
    .restart local v1    # "succeeded":Z
    :catch_5f
    move-exception v2

    .line 4431
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/ApplicationStartInfo;>;"
    throw v3

    .line 4440
    .end local v1    # "succeeded":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/ApplicationStartInfo;>;"
    :cond_65
    iget-object v1, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    invoke-direct {v2, p1, p2}, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4442
    :goto_6f
    monitor-exit v0

    .line 4443
    return-void

    .line 4442
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_4b .. :try_end_73} :catchall_71

    throw v1
.end method

.method public blacklist addHomeVisibilityListener(Ljava/util/concurrent/Executor;Landroid/app/HomeVisibilityListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/HomeVisibilityListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6237
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6238
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6240
    :try_start_6
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/app/HomeVisibilityListener;->init(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 6241
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p2, Landroid/app/HomeVisibilityListener;->mObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 6243
    new-instance v0, Landroid/app/ActivityManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Landroid/app/ActivityManager$$ExternalSyntheticLambda4;-><init>(Landroid/app/HomeVisibilityListener;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1c} :catch_1e

    .line 6247
    nop

    .line 6248
    return-void

    .line 6245
    :catch_1e
    move-exception v0

    .line 6246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V
    .registers 4
    .param p1, "listener"    # Landroid/app/ActivityManager$OnUidImportanceListener;
    .param p2, "importanceCutpoint"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4733
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityManager;->addOnUidImportanceListenerInternal(Landroid/app/ActivityManager$OnUidImportanceListener;I[I)V

    .line 4734
    return-void
.end method

.method public whitelist addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I[I)V
    .registers 4
    .param p1, "listener"    # Landroid/app/ActivityManager$OnUidImportanceListener;
    .param p2, "importanceCutpoint"    # I
    .param p3, "uids"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4761
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4762
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4763
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityManager;->addOnUidImportanceListenerInternal(Landroid/app/ActivityManager$OnUidImportanceListener;I[I)V

    .line 4764
    return-void
.end method

.method public whitelist addStartInfoTimestamp(IJ)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "timestampNs"    # J

    .line 4493
    const/16 v0, 0x14

    if-le p1, v0, :cond_1d

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_1d

    .line 4498
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->addStartInfoTimestamp(IJI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17

    .line 4501
    nop

    .line 4502
    return-void

    .line 4499
    :catch_17
    move-exception v0

    .line 4500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4495
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key not in allowed range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 5170
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 5173
    nop

    .line 5174
    return-void

    .line 5171
    :catch_9
    move-exception v0

    .line 5172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist appNotResponding(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 6219
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->appNotResponding(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6222
    nop

    .line 6223
    return-void

    .line 6220
    :catch_9
    move-exception v0

    .line 6221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearApplicationUserData()Z
    .registers 3

    .line 3556
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    return v0
.end method

.method public greylist clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 3537
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 3538
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 3537
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, p2, v1}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return v0

    .line 3539
    :catch_10
    move-exception v0

    .line 3540
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o clearGrantedUriPermissions(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3591
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "uri_grants"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UriGrantsManager;

    .line 3592
    invoke-virtual {v0, p1}, Landroid/app/UriGrantsManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    .line 3593
    return-void
.end method

.method public whitelist clearWatchHeapLimit()V
    .registers 7

    .line 5875
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    .line 5878
    nop

    .line 5879
    return-void

    .line 5876
    :catch_e
    move-exception v0

    .line 5877
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist dumpPackageState(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5641
    invoke-static {p1, p2}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 5642
    return-void
.end method

.method public blacklist forceDelayBroadcastDelivery(Ljava/lang/String;J)V
    .registers 6
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "delayedDurationMs"    # J

    .line 6348
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->forceDelayBroadcastDelivery(Ljava/lang/String;J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6351
    nop

    .line 6352
    return-void

    .line 6349
    :catch_9
    move-exception v0

    .line 6350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist forceStopPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4957
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 4958
    return-void
.end method

.method public greylist forceStopPackageAsUser(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4944
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 4947
    nop

    .line 4948
    return-void

    .line 4945
    :catch_9
    move-exception v0

    .line 4946
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist forceStopPackageAsUserEvenWhenStopping(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4969
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->forceStopPackageEvenWhenStopping(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 4972
    nop

    .line 4973
    return-void

    .line 4970
    :catch_9
    move-exception v0

    .line 4971
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAppTaskThumbnailSize()Landroid/util/Size;
    .registers 4

    .line 2972
    monitor-enter p0

    .line 2973
    :try_start_1
    invoke-direct {p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    .line 2974
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    monitor-exit p0

    return-object v0

    .line 2975
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist getAppTasks()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;"
        }
    .end annotation

    .line 2953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2956
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$AppTask;>;"
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_13} :catch_31

    .line 2959
    .local v1, "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    nop

    .line 2960
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2961
    .local v2, "numAppTasks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_30

    .line 2962
    new-instance v4, Landroid/app/ActivityManager$AppTask;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v5}, Landroid/app/IAppTask$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ActivityManager$AppTask;-><init>(Landroid/app/IAppTask;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2961
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2964
    .end local v3    # "i":I
    :cond_30
    return-object v0

    .line 2957
    .end local v1    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v2    # "numAppTasks":I
    :catch_31
    move-exception v1

    .line 2958
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getBackgroundRestrictionExemptionReason(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 6420
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getBackgroundRestrictionExemptionReason(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 6421
    :catch_9
    move-exception v0

    .line 6422
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 6424
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getBindingUidImportance(I)I
    .registers 4
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4681
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4682
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4681
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getBindingUidProcessState(ILjava/lang/String;)I

    move-result v0

    .line 4683
    .local v0, "procState":I
    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return v1

    .line 4684
    .end local v0    # "procState":I
    :catch_15
    move-exception v0

    .line 4685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBugreportWhitelistedPackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6206
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getBugreportWhitelistedPackages()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 6207
    :catch_9
    move-exception v0

    .line 6208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .registers 3

    .line 5028
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 5029
    :catch_9
    move-exception v0

    .line 5030
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDisplayIdsForStartingVisibleBackgroundUsers()[I
    .registers 3

    .line 5410
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getDisplayIdsForStartingVisibleBackgroundUsers()[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 5411
    :catch_9
    move-exception v0

    .line 5412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getExternalHistoricalProcessStartReasons(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "maxNum"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation

    .line 4349
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4350
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/IActivityManager;->getHistoricalProcessStartReasons(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 4351
    .local v0, "startInfos":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationStartInfo;>;"
    if-nez v0, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-object v1

    .line 4352
    .end local v0    # "startInfos":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationStartInfo;>;"
    :catch_1a
    move-exception v0

    .line 4353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getFrontActivityScreenCompatMode()I
    .registers 3

    .line 1648
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFrontActivityScreenCompatMode()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1649
    :catch_9
    move-exception v0

    .line 1650
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3575
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "uri_grants"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UriGrantsManager;

    .line 3576
    invoke-virtual {v0, p1}, Landroid/app/UriGrantsManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3575
    return-object v0
.end method

.method public whitelist getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    .line 4530
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4531
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 4530
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 4532
    .local v0, "r":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    if-nez v0, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-object v1

    .line 4533
    .end local v0    # "r":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    :catch_1a
    move-exception v0

    .line 4534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getHistoricalProcessStartReasons(I)Ljava/util/List;
    .registers 5
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation

    .line 4314
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4315
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/app/IActivityManager;->getHistoricalProcessStartReasons(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 4316
    .local v0, "startInfos":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationStartInfo;>;"
    if-nez v0, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1a

    :cond_16
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-object v1

    .line 4317
    .end local v0    # "startInfos":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationStartInfo;>;"
    :catch_1b
    move-exception v0

    .line 4318
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLargeMemoryClass()I
    .registers 2

    .line 1737
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public whitelist getLauncherLargeIconDensity()I
    .registers 6

    .line 5041
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5042
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 5043
    .local v1, "density":I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 5045
    .local v2, "sw":I
    const/16 v3, 0x258

    if-ge v2, v3, :cond_17

    .line 5047
    return v1

    .line 5050
    :cond_17
    const/16 v3, 0x140

    sparse-switch v1, :sswitch_data_34

    .line 5066
    int-to-float v3, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 5062
    :sswitch_25
    const/16 v3, 0x280

    return v3

    .line 5060
    :sswitch_28
    const/16 v3, 0x1e0

    return v3

    .line 5058
    :sswitch_2b
    return v3

    .line 5056
    :sswitch_2c
    return v3

    .line 5054
    :sswitch_2d
    const/16 v3, 0xf0

    return v3

    .line 5052
    :sswitch_30
    const/16 v3, 0xa0

    return v3

    nop

    :sswitch_data_34
    .sparse-switch
        0x78 -> :sswitch_30
        0xa0 -> :sswitch_2d
        0xd5 -> :sswitch_2c
        0xf0 -> :sswitch_2b
        0x140 -> :sswitch_28
        0x1e0 -> :sswitch_25
    .end sparse-switch
.end method

.method public whitelist getLauncherLargeIconSize()I
    .registers 2

    .line 5077
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public whitelist getLockTaskModeState()I
    .registers 3

    .line 5903
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 5904
    :catch_9
    move-exception v0

    .line 5905
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMemoryClass()I
    .registers 2

    .line 1708
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v0

    return v0
.end method

.method public whitelist getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 5
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    .line 3508
    invoke-static {}, Landroid/app/Flags;->rateLimitGetMemoryInfo()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3509
    sget-object v0, Landroid/app/ActivityManager;->mMemoryInfoCache:Lcom/android/internal/util/RateLimitingCache;

    monitor-enter v0

    .line 3510
    :try_start_9
    sget-object v1, Landroid/app/ActivityManager;->mMemoryInfoCache:Lcom/android/internal/util/RateLimitingCache;

    new-instance v2, Landroid/app/ActivityManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/app/ActivityManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/util/RateLimitingCache;->get(Lcom/android/internal/util/RateLimitingCache$ValueFetcher;)Ljava/lang/Object;

    .line 3514
    sget-object v1, Landroid/app/ActivityManager;->mRateLimitedMemInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager$MemoryInfo;->copyTo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3515
    monitor-exit v0

    goto :goto_20

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v1

    .line 3517
    :cond_1d
    invoke-direct {p0, p1}, Landroid/app/ActivityManager;->getMemoryInfoInternal(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3519
    :goto_20
    return-void
.end method

.method public greylist-max-o getPackageAskScreenCompat(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1684
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1685
    :catch_9
    move-exception v0

    .line 1686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPackageImportance(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4634
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4635
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4634
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4636
    .local v0, "procState":I
    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return v1

    .line 4637
    .end local v0    # "procState":I
    :catch_15
    move-exception v0

    .line 4638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getPackageScreenCompatMode(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1666
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1667
    :catch_9
    move-exception v0

    .line 1668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .registers 4
    .param p1, "pids"    # [I

    .line 4863
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 4864
    :catch_9
    move-exception v0

    .line 4865
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProcessesInErrorState()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .line 3714
    invoke-static {}, Landroid/app/Flags;->rateLimitGetProcessesInErrorState()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3715
    sget-object v0, Landroid/app/ActivityManager;->mErrorProcessesCache:Lcom/android/internal/util/RateLimitingCache;

    new-instance v1, Landroid/app/ActivityManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/app/ActivityManager$$ExternalSyntheticLambda3;-><init>(Landroid/app/ActivityManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RateLimitingCache;->get(Lcom/android/internal/util/RateLimitingCache$ValueFetcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 3719
    :cond_14
    invoke-direct {p0}, Landroid/app/ActivityManager;->getProcessesInErrorStateInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRecentTasks(II)Ljava/util/List;
    .registers 5
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2863
    if-ltz p1, :cond_11

    .line 2866
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 2867
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 2866
    invoke-virtual {v0, p1, p2, v1}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2864
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The requested number of tasks should be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRunningAppProcesses()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 4274
    invoke-static {}, Landroid/app/Flags;->rateLimitGetRunningAppProcesses()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4275
    invoke-direct {p0}, Landroid/app/ActivityManager;->getRunningAppProcessesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4277
    :cond_b
    sget-object v0, Landroid/app/ActivityManager;->mRunningProcessesCache:Lcom/android/internal/util/RateLimitingCache;

    new-instance v1, Landroid/app/ActivityManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/app/ActivityManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RateLimitingCache;->get(Lcom/android/internal/util/RateLimitingCache$ValueFetcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getRunningExternalApplications()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 4218
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 4219
    :catch_9
    move-exception v0

    .line 4220
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3376
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3377
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 3376
    return-object v0

    .line 3378
    :catch_9
    move-exception v0

    .line 3379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRunningServices(I)Ljava/util/List;
    .registers 4
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3361
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3362
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 3361
    return-object v0

    .line 3363
    :catch_a
    move-exception v0

    .line 3364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRunningTasks(I)Ljava/util/List;
    .registers 3
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3088
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedLocales()Ljava/util/Collection;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 5016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5017
    .local v0, "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 5018
    .local v4, "localeTag":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5017
    .end local v4    # "localeTag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 5020
    :cond_1b
    return-object v0
.end method

.method public blacklist getSwitchingFromUserMessage(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 5425
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getSwitchingFromUserMessage(I)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 5426
    :catch_9
    move-exception v0

    .line 5427
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSwitchingToUserMessage(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 5440
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getSwitchingToUserMessage(I)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 5441
    :catch_9
    move-exception v0

    .line 5442
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTotalRam()J
    .registers 4

    .line 1797
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1798
    .local v0, "memreader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1799
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist getUidFrozenState([I)[I
    .registers 4
    .param p1, "uids"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 449
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getUidFrozenState([I)[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 450
    :catch_9
    move-exception v0

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUidImportance(I)I
    .registers 4
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4654
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4655
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4654
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result v0

    .line 4656
    .local v0, "procState":I
    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return v1

    .line 4657
    .end local v0    # "procState":I
    :catch_15
    move-exception v0

    .line 4658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUidProcessCapabilities(I)I
    .registers 4
    .param p1, "uid"    # I

    .line 4616
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getUidProcessCapabilities(ILjava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 4617
    :catch_f
    move-exception v0

    .line 4618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUidProcessState(I)I
    .registers 4
    .param p1, "uid"    # I

    .line 4594
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 4595
    :catch_f
    move-exception v0

    .line 4596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "durationMs"    # I

    .line 6312
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6315
    nop

    .line 6316
    return-void

    .line 6313
    :catch_9
    move-exception v0

    .line 6314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isActivityStartAllowedOnDisplay(Landroid/content/Context;ILandroid/content/Intent;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 3169
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 3170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 3169
    invoke-interface {v0, p2, p3, v1, v2}, Landroid/app/IActivityTaskManager;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return v0

    .line 3171
    :catch_15
    move-exception v0

    .line 3172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3174
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBackgroundRestricted()Z
    .registers 3

    .line 4240
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 4241
    :catch_f
    move-exception v0

    .line 4242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isInLockTaskMode()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5891
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isLowRamDevice()Z
    .registers 2

    .line 1755
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method public blacklist isProcessFrozen(I)Z
    .registers 4
    .param p1, "pid"    # I

    .line 6362
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->isProcessFrozen(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 6363
    :catch_9
    move-exception v0

    .line 6364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isProfileForeground(Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 5982
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 5983
    .local v0, "userManager":Landroid/os/UserManager;
    if-eqz v0, :cond_2f

    .line 5984
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 5985
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_2e

    .line 5986
    const/4 v1, 0x1

    return v1

    .line 5988
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2e
    goto :goto_18

    .line 5990
    :cond_2f
    const/4 v1, 0x0

    return v1
.end method

.method public greylist isUserRunning(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 5614
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 5615
    :catch_a
    move-exception v0

    .line 5616
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isVrModePackageEnabled(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 5623
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 5624
    :catch_9
    move-exception v0

    .line 5625
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist killBackgroundProcesses(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4897
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4898
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 4897
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 4901
    nop

    .line 4902
    return-void

    .line 4899
    :catch_f
    move-exception v0

    .line 4900
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist killProcessesWhenImperceptible([ILjava/lang/String;)V
    .registers 5
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6011
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->killProcessesWhenImperceptible([ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6014
    nop

    .line 6015
    return-void

    .line 6012
    :catch_9
    move-exception v0

    .line 6013
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist killUid(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4915
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 4916
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4915
    invoke-interface {v0, v1, v2, p2}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 4919
    nop

    .line 4920
    return-void

    .line 4917
    :catch_11
    move-exception v0

    .line 4918
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist moveTaskToFront(II)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .line 3124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 3125
    return-void
.end method

.method public whitelist moveTaskToFront(IILandroid/os/Bundle;)V
    .registers 12
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 3141
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 3142
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    move-object v3, v1

    .line 3143
    .local v3, "appThread":Landroid/app/IApplicationThread;
    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3144
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_1e

    move v5, p1

    move v6, p2

    move-object v7, p3

    .end local p1    # "taskId":I
    .end local p2    # "flags":I
    .end local p3    # "options":Landroid/os/Bundle;
    .local v5, "taskId":I
    .local v6, "flags":I
    .local v7, "options":Landroid/os/Bundle;
    :try_start_16
    invoke-interface/range {v2 .. v7}, Landroid/app/IActivityTaskManager;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    .line 3147
    .end local v0    # "thread":Landroid/app/ActivityThread;
    .end local v3    # "appThread":Landroid/app/IApplicationThread;
    .end local v4    # "packageName":Ljava/lang/String;
    nop

    .line 3148
    return-void

    .line 3145
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_23

    .end local v5    # "taskId":I
    .end local v6    # "flags":I
    .end local v7    # "options":Landroid/os/Bundle;
    .restart local p1    # "taskId":I
    .restart local p2    # "flags":I
    .restart local p3    # "options":Landroid/os/Bundle;
    :catch_1e
    move-exception v0

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object p1, v0

    .line 3146
    .end local p2    # "flags":I
    .end local p3    # "options":Landroid/os/Bundle;
    .restart local v5    # "taskId":I
    .restart local v6    # "flags":I
    .restart local v7    # "options":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_23
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "restrictionLevel"    # I
    .param p4, "enabled"    # Z
    .param p5, "reason"    # I
    .param p6, "subReason"    # Ljava/lang/String;
    .param p7, "source"    # I
    .param p8, "threshold"    # J

    .line 6491
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 6495
    nop

    .line 6496
    return-void

    .line 6493
    :catch_14
    move-exception v0

    .line 6494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist noteForegroundResourceUseBegin(III)V
    .registers 6
    .param p1, "apiType"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6381
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->logFgsApiBegin(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6384
    nop

    .line 6385
    return-void

    .line 6382
    :catch_9
    move-exception v0

    .line 6383
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist noteForegroundResourceUseEnd(III)V
    .registers 6
    .param p1, "apiType"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6400
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->logFgsApiEnd(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6403
    nop

    .line 6404
    return-void

    .line 6401
    :catch_9
    move-exception v0

    .line 6402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifySystemPropertiesChanged()V
    .registers 6

    .line 6510
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 6511
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_21

    .line 6512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6514
    .local v1, "data":Landroid/os/Parcel;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x5f535052

    :try_start_13
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_1b

    .line 6518
    nop

    .line 6519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_21

    .line 6516
    :catch_1b
    move-exception v2

    .line 6517
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 6521
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist registerUidFrozenStateChangedCallback(Ljava/util/concurrent/Executor;Landroid/app/ActivityManager$UidFrozenStateChangedCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/ActivityManager$UidFrozenStateChangedCallback;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 386
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 389
    :try_start_d
    iget-object v1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 392
    iget-object v1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_25

    .line 395
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_50

    return-void

    .line 399
    :cond_25
    :try_start_25
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallback:Landroid/app/IUidFrozenStateChangedCallback;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2e} :catch_31
    .catchall {:try_start_25 .. :try_end_2e} :catchall_50

    .line 402
    nop

    .line 403
    :try_start_2f
    monitor-exit v0

    .line 404
    return-void

    .line 400
    :catch_31
    move-exception v1

    .line 401
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/app/ActivityManager$UidFrozenStateChangedCallback;
    throw v2

    .line 390
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/app/ActivityManager$UidFrozenStateChangedCallback;
    :cond_37
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback already registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/app/ActivityManager$UidFrozenStateChangedCallback;
    throw v1

    .line 403
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/app/ActivityManager$UidFrozenStateChangedCallback;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_50

    throw v1
.end method

.method public whitelist removeApplicationStartInfoCompletionListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/app/ApplicationStartInfo;",
            ">;)V"
        }
    .end annotation

    .line 4451
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/ApplicationStartInfo;>;"
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4452
    iget-object v0, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4453
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    :try_start_a
    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 4454
    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    .line 4455
    .local v2, "callback":Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;
    iget-object v3, v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 4456
    iget-object v3, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4457
    goto :goto_2b

    .line 4453
    .end local v2    # "callback":Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4460
    .end local v1    # "i":I
    :cond_2b
    :goto_2b
    iget-object v1, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    if-eqz v1, :cond_51

    iget-object v1, p0, Landroid/app/ActivityManager;->mAppStartInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_53

    if-eqz v1, :cond_51

    .line 4462
    :try_start_37
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4463
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 4462
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->removeApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_46} :catch_4b
    .catchall {:try_start_37 .. :try_end_46} :catchall_53

    .line 4466
    nop

    .line 4467
    const/4 v1, 0x0

    :try_start_48
    iput-object v1, p0, Landroid/app/ActivityManager;->mAppStartInfoCompleteListener:Landroid/app/IApplicationStartInfoCompleteListener;

    goto :goto_51

    .line 4464
    :catch_4b
    move-exception v1

    .line 4465
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/ApplicationStartInfo;>;"
    throw v2

    .line 4469
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/ApplicationStartInfo;>;"
    :cond_51
    :goto_51
    monitor-exit v0

    .line 4470
    return-void

    .line 4469
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public blacklist removeHomeVisibilityListener(Landroid/app/HomeVisibilityListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/HomeVisibilityListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6260
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6262
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/HomeVisibilityListener;->mObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    .line 6265
    nop

    .line 6266
    return-void

    .line 6263
    :catch_e
    move-exception v0

    .line 6264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/app/ActivityManager$OnUidImportanceListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4797
    iget-object v0, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4798
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$MyUidObserver;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    .line 4799
    .local v1, "observer":Landroid/app/ActivityManager$MyUidObserver;
    if-eqz v1, :cond_1d

    .line 4803
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_17
    .catchall {:try_start_d .. :try_end_14} :catchall_36

    .line 4806
    nop

    .line 4807
    .end local v1    # "observer":Landroid/app/ActivityManager$MyUidObserver;
    :try_start_15
    monitor-exit v0

    .line 4808
    return-void

    .line 4804
    .restart local v1    # "observer":Landroid/app/ActivityManager$MyUidObserver;
    :catch_17
    move-exception v2

    .line 4805
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    throw v3

    .line 4800
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener not registered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    throw v2

    .line 4807
    .end local v1    # "observer":Landroid/app/ActivityManager$MyUidObserver;
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public blacklist resetAppErrors()V
    .registers 3

    .line 6296
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resetAppErrors()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6299
    nop

    .line 6300
    return-void

    .line 6297
    :catch_9
    move-exception v0

    .line 6298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist restartPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4878
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 4879
    return-void
.end method

.method public blacklist scheduleApplicationInfoChanged(Ljava/util/List;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5963
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 5966
    nop

    .line 5967
    return-void

    .line 5964
    :catch_9
    move-exception v0

    .line 5965
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDeviceLocales(Landroid/os/LocaleList;)V
    .registers 2
    .param p1, "locales"    # Landroid/os/LocaleList;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5003
    invoke-static {p1}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 5004
    return-void
.end method

.method public greylist-max-o setFrontActivityScreenCompatMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 1657
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setFrontActivityScreenCompatMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1660
    nop

    .line 1661
    return-void

    .line 1658
    :catch_9
    move-exception v0

    .line 1659
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .line 1693
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1696
    nop

    .line 1697
    return-void

    .line 1694
    :catch_9
    move-exception v0

    .line 1695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1675
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1678
    nop

    .line 1679
    return-void

    .line 1676
    :catch_9
    move-exception v0

    .line 1677
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "level"    # I

    .line 4256
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 4258
    :catch_9
    move-exception v0

    .line 4259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setProcessStateSummary([B)V
    .registers 4
    .param p1, "state"    # [B

    .line 4563
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setProcessStateSummary([B)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 4566
    nop

    .line 4567
    return-void

    .line 4564
    :catch_9
    move-exception v0

    .line 4565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setStopUserOnSwitch(I)V
    .registers 4
    .param p1, "value"    # I

    .line 5492
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setStopUserOnSwitch(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 5495
    nop

    .line 5496
    return-void

    .line 5493
    :catch_9
    move-exception v0

    .line 5494
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setThemeOverlayReady(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 6281
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setThemeOverlayReady(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 6284
    nop

    .line 6285
    return-void

    .line 6282
    :catch_9
    move-exception v0

    .line 6283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setWatchHeapLimit(J)V
    .registers 9
    .param p1, "pssSize"    # J

    .line 5855
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 5856
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_15

    .line 5855
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-wide v3, p1

    .end local p1    # "pssSize":J
    .local v3, "pssSize":J
    :try_start_d
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    .line 5859
    nop

    .line 5860
    return-void

    .line 5857
    :catch_12
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .end local v3    # "pssSize":J
    .restart local p1    # "pssSize":J
    :catch_15
    move-exception v0

    move-wide v3, p1

    move-object p1, v0

    .line 5858
    .restart local v3    # "pssSize":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist startProfile(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5515
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->startProfile(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 5516
    :catch_d
    move-exception v0

    .line 5517
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startUserInBackgroundVisibleOnDisplay(II)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "displayId"    # I

    .line 5386
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5391
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/app/IActivityManager;->startUserInBackgroundVisibleOnDisplay(IILandroid/os/IProgressListener;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return v0

    .line 5393
    :catch_10
    move-exception v0

    .line 5394
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5387
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "device does not support users on secondary displays"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist stopPackageForUser(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4988
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->stopAppForUser(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 4991
    nop

    .line 4992
    return-void

    .line 4989
    :catch_f
    move-exception v0

    .line 4990
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopProfile(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5538
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->stopProfile(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 5539
    :catch_d
    move-exception v0

    .line 5540
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist stopUser(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 5582
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5583
    return v0

    .line 5586
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->stopUserWithCallback(ILandroid/app/IStopUserCallback;)I

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_11

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 5588
    :catch_11
    move-exception v0

    .line 5589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r switchUser(I)Z
    .registers 4
    .param p1, "userid"    # I

    .line 5333
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 5334
    :catch_9
    move-exception v0

    .line 5335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist switchUser(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5351
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "UserHandle cannot be null."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5353
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->switchUser(I)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterUidFrozenStateChangedCallback(Landroid/app/ActivityManager$UidFrozenStateChangedCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/app/ActivityManager$UidFrozenStateChangedCallback;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 417
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 419
    :try_start_8
    iget-object v1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v1, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_27

    if-eqz v1, :cond_25

    .line 422
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityManager;->mFrozenStateChangedCallback:Landroid/app/IUidFrozenStateChangedCallback;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_27

    .line 426
    goto :goto_25

    .line 424
    :catch_1f
    move-exception v1

    .line 425
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_20
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "callback":Landroid/app/ActivityManager$UidFrozenStateChangedCallback;
    throw v2

    .line 428
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "callback":Landroid/app/ActivityManager$UidFrozenStateChangedCallback;
    :cond_25
    :goto_25
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5559
    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    .line 5563
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 5564
    :catch_d
    move-exception v0

    .line 5565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5560
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mcc or mnc cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist waitForBroadcastIdle()V
    .registers 2

    .line 6327
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->waitForBroadcastIdle()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 6330
    goto :goto_c

    .line 6328
    :catch_8
    move-exception v0

    .line 6329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 6331
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

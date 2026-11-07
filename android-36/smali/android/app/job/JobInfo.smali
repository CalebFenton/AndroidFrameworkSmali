.class public Landroid/app/job/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$TriggerContentUri;,
        Landroid/app/job/JobInfo$Builder;,
        Landroid/app/job/JobInfo$Priority;,
        Landroid/app/job/JobInfo$BackoffPolicy;,
        Landroid/app/job/JobInfo$NetworkType;
    }
.end annotation


# static fields
.field public static final whitelist BACKOFF_POLICY_EXPONENTIAL:I = 0x1

.field public static final whitelist BACKOFF_POLICY_LINEAR:I = 0x0

.field public static final blacklist BIAS_ADJ_ALWAYS_RUNNING:I = -0x50

.field public static final blacklist BIAS_ADJ_OFTEN_RUNNING:I = -0x28

.field public static final blacklist BIAS_BOUND_FOREGROUND_SERVICE:I = 0x1e

.field public static final blacklist BIAS_DEFAULT:I = 0x0

.field public static final blacklist BIAS_FOREGROUND_SERVICE:I = 0x23

.field public static final blacklist BIAS_SYNC_EXPEDITED:I = 0xa

.field public static final blacklist BIAS_SYNC_INITIALIZATION:I = 0x14

.field public static final blacklist BIAS_TOP_APP:I = 0x28

.field public static final greylist-max-o CONSTRAINT_FLAG_BATTERY_NOT_LOW:I = 0x2

.field public static final greylist-max-o CONSTRAINT_FLAG_CHARGING:I = 0x1

.field public static final greylist-max-o CONSTRAINT_FLAG_DEVICE_IDLE:I = 0x4

.field public static final greylist-max-o CONSTRAINT_FLAG_STORAGE_NOT_LOW:I = 0x8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DEFAULT_BACKOFF_POLICY:I = 0x1

.field public static final whitelist DEFAULT_INITIAL_BACKOFF_MILLIS:J = 0x7530L

.field public static final blacklist DISALLOW_DEADLINES_FOR_PREFETCH_JOBS:J = 0xb98555fL

.field public static final blacklist ENFORCE_MINIMUM_TIME_WINDOWS:J = 0x128fa179L

.field public static final greylist-max-o FLAG_EXEMPT_FROM_APP_STANDBY:I = 0x8

.field public static final blacklist FLAG_EXPEDITED:I = 0x10

.field public static final greylist-max-o FLAG_IMPORTANT_WHILE_FOREGROUND:I = 0x2

.field public static final greylist-max-o FLAG_PREFETCH:I = 0x4

.field public static final blacklist FLAG_USER_INITIATED:I = 0x20

.field public static final greylist-max-r FLAG_WILL_BE_FOREGROUND:I = 0x1

.field public static final whitelist MAX_BACKOFF_DELAY_MILLIS:J = 0x112a880L

.field public static final blacklist MAX_DEBUG_TAG_LENGTH:I = 0x7f

.field public static final blacklist MAX_NUM_DEBUG_TAGS:I = 0x20

.field public static final blacklist MAX_TRACE_TAG_LENGTH:I = 0x7f

.field private static final blacklist MIN_ALLOWED_TIME_WINDOW_MILLIS:J = 0xdbba0L

.field public static final greylist-max-o MIN_BACKOFF_MILLIS:J = 0x2710L

.field private static final greylist-max-o MIN_FLEX_MILLIS:J = 0x493e0L

.field private static final greylist-max-o MIN_PERIOD_MILLIS:J = 0xdbba0L

.field public static final whitelist NETWORK_BYTES_UNKNOWN:I = -0x1

.field public static final whitelist NETWORK_TYPE_ANY:I = 0x1

.field public static final whitelist NETWORK_TYPE_CELLULAR:I = 0x4

.field public static final whitelist NETWORK_TYPE_METERED:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_NONE:I = 0x0

.field public static final whitelist NETWORK_TYPE_NOT_ROAMING:I = 0x3

.field public static final whitelist NETWORK_TYPE_UNMETERED:I = 0x2

.field public static final whitelist PRIORITY_DEFAULT:I = 0x12c

.field public static final greylist-max-r PRIORITY_FOREGROUND_APP:I = 0x1e

.field public static final greylist-max-r PRIORITY_FOREGROUND_SERVICE:I = 0x23

.field public static final whitelist PRIORITY_HIGH:I = 0x190

.field public static final whitelist PRIORITY_LOW:I = 0xc8

.field public static final whitelist PRIORITY_MAX:I = 0x1f4

.field public static final whitelist PRIORITY_MIN:I = 0x64

.field public static final blacklist REJECT_NEGATIVE_DELAYS_AND_DEADLINES:J = 0x1345eb5aL

.field public static final blacklist REJECT_NEGATIVE_NETWORK_ESTIMATES:J = 0xf1e9ef7L

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field public static final blacklist THROW_ON_INVALID_PRIORITY_VALUE:J = 0x8653c4bL


# instance fields
.field private final greylist-max-o backoffPolicy:I

.field private final greylist-max-o clipData:Landroid/content/ClipData;

.field private final greylist-max-o clipGrantFlags:I

.field private final greylist-max-o constraintFlags:I

.field private final greylist-max-o extras:Landroid/os/PersistableBundle;

.field private final greylist-max-p flags:I

.field private final greylist-max-o flexMillis:J

.field private final greylist-max-o hasEarlyConstraint:Z

.field private final greylist-max-o hasLateConstraint:Z

.field private final greylist-max-o initialBackoffMillis:J

.field private final greylist-max-o intervalMillis:J

.field private final greylist-max-o isPeriodic:Z

.field private final greylist-max-o isPersisted:Z

.field private final greylist jobId:I

.field private final blacklist mBias:I

.field private final blacklist mDebugTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPriority:I

.field private final blacklist mTraceTag:Ljava/lang/String;

.field private final greylist-max-o maxExecutionDelayMillis:J

.field private final greylist-max-o minLatencyMillis:J

.field private final blacklist minimumNetworkChunkBytes:J

.field private final greylist-max-o networkDownloadBytes:J

.field private final greylist-max-o networkRequest:Landroid/net/NetworkRequest;

.field private final greylist-max-o networkUploadBytes:J

.field private final greylist service:Landroid/content/ComponentName;

.field private final greylist-max-o transientExtras:Landroid/os/Bundle;

.field private final greylist-max-o triggerContentMaxDelay:J

.field private final greylist-max-o triggerContentUpdateDelay:J

.field private final greylist-max-o triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    const-string v0, "JobInfo"

    sput-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    .line 1145
    new-instance v0, Landroid/app/job/JobInfo$1;

    invoke-direct {v0}, Landroid/app/job/JobInfo$1;-><init>()V

    sput-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/app/job/JobInfo$Builder;)V
    .registers 4
    .param p1, "b"    # Landroid/app/job/JobInfo$Builder;

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmJobId(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 1059
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 1060
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTransientExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 1061
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmClipData(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 1062
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmClipGrantFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 1063
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmJobService(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 1064
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmConstraintFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 1065
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1066
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    goto :goto_51

    .line 1067
    :cond_50
    const/4 v0, 0x0

    :goto_51
    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 1068
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentUpdateDelay(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 1069
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTriggerContentMaxDelay(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 1070
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkRequest(Landroid/app/job/JobInfo$Builder;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    .line 1071
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkDownloadBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    .line 1072
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmNetworkUploadBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    .line 1073
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMinimumNetworkChunkBytes(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    .line 1074
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMinLatencyMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 1075
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmMaxExecutionDelayMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 1076
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIsPeriodic(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 1077
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIsPersisted(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 1078
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmIntervalMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 1079
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmFlexMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 1080
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmInitialBackoffMillis(Landroid/app/job/JobInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 1081
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmBackoffPolicy(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 1082
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmHasEarlyConstraint(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 1083
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmHasLateConstraint(Landroid/app/job/JobInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 1084
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmBias(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mBias:I

    .line 1085
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmPriority(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    .line 1086
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmFlags(Landroid/app/job/JobInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    .line 1087
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmDebugTags(Landroid/app/job/JobInfo$Builder;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    .line 1088
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-$$Nest$fgetmTraceTag(Landroid/app/job/JobInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    .line 1089
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 1008
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1009
    .local v0, "persistableExtras":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_11

    move-object v1, v0

    goto :goto_13

    :cond_11
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    :goto_13
    iput-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    .line 1010
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    .line 1011
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_34

    .line 1012
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 1013
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    goto :goto_38

    .line 1015
    :cond_34
    iput-object v2, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    .line 1016
    iput v3, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    .line 1018
    :goto_38
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 1019
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    .line 1020
    sget-object v1, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/job/JobInfo$TriggerContentUri;

    iput-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 1021
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    .line 1022
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    .line 1023
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6d

    .line 1024
    sget-object v1, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    iput-object v1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    goto :goto_6f

    .line 1026
    :cond_6d
    iput-object v2, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    .line 1028
    :goto_6f
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    .line 1029
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    .line 1030
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    .line 1031
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 1033
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_96

    move v1, v4

    goto :goto_97

    :cond_96
    move v1, v3

    :goto_97
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    .line 1034
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_a1

    move v1, v4

    goto :goto_a2

    :cond_a1
    move v1, v3

    :goto_a2
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    .line 1035
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 1036
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/job/JobInfo;->flexMillis:J

    .line 1037
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    .line 1038
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    .line 1039
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_c4

    move v1, v4

    goto :goto_c5

    :cond_c4
    move v1, v3

    :goto_c5
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    .line 1040
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_ce

    move v3, v4

    :cond_ce
    iput-boolean v3, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    .line 1041
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->mBias:I

    .line 1042
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->mPriority:I

    .line 1043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfo;->flags:I

    .line 1044
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1045
    .local v1, "numDebugTags":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    .line 1046
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ee
    if-ge v3, v1, :cond_10b

    .line 1047
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1048
    .local v4, "tag":Ljava/lang/String;
    if-eqz v4, :cond_102

    .line 1051
    iget-object v5, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1046
    .end local v4    # "tag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_ee

    .line 1049
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_102
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "malformed parcel"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1053
    .end local v3    # "i":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_10b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1054
    .local v3, "traceTag":Ljava/lang/String;
    if-nez v3, :cond_112

    goto :goto_116

    :cond_112
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_116
    iput-object v2, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    .line 1055
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist getBiasString(I)Ljava/lang/String;
    .registers 3
    .param p0, "bias"    # I

    .line 2564
    sparse-switch p0, :sswitch_data_2a

    .line 2581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [UNKNOWN]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2576
    :sswitch_17
    const-string v0, "40 [TOP_APP]"

    return-object v0

    .line 2574
    :sswitch_1a
    const-string v0, "35 [FGS_APP]"

    return-object v0

    .line 2572
    :sswitch_1d
    const-string v0, "30 [BFGS_APP]"

    return-object v0

    .line 2570
    :sswitch_20
    const-string v0, "20 [SYNC_INITIALIZATION]"

    return-object v0

    .line 2568
    :sswitch_23
    const-string v0, "10 [SYNC_EXPEDITED]"

    return-object v0

    .line 2566
    :sswitch_26
    const-string v0, "0 [DEFAULT]"

    return-object v0

    nop

    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_26
        0xa -> :sswitch_23
        0x14 -> :sswitch_20
        0x1e -> :sswitch_1d
        0x23 -> :sswitch_1a
        0x28 -> :sswitch_17
    .end sparse-switch
.end method

.method public static final greylist-max-o getMinBackoffMillis()J
    .registers 2

    .line 251
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public static final whitelist getMinFlexMillis()J
    .registers 2

    .line 243
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public static final whitelist getMinPeriodMillis()J
    .registers 2

    .line 232
    const-wide/32 v0, 0xdbba0

    return-wide v0
.end method

.method public static blacklist getPriorityString(I)Ljava/lang/String;
    .registers 3
    .param p0, "priority"    # I

    .line 2589
    sparse-switch p0, :sswitch_data_7c

    .line 2601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [UNKNOWN]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2599
    :sswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [MAX]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2597
    :sswitch_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [HIGH]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2595
    :sswitch_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [DEFAULT]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2593
    :sswitch_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [LOW]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2591
    :sswitch_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [MIN]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_7c
    .sparse-switch
        0x64 -> :sswitch_67
        0xc8 -> :sswitch_53
        0x12c -> :sswitch_3f
        0x190 -> :sswitch_2b
        0x1f4 -> :sswitch_17
    .end sparse-switch
.end method

.method public static blacklist validateDebugTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "debugTag"    # Ljava/lang/String;

    .line 2522
    if-eqz p0, :cond_29

    .line 2525
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2526
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 2529
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_19

    .line 2533
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2530
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "debug tag cannot be more than 127 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2527
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "debug tag cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2523
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "debug tag cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist validateTraceTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "traceTag"    # Ljava/lang/String;

    .line 2542
    if-nez p0, :cond_4

    .line 2543
    const/4 v0, 0x0

    return-object v0

    .line 2545
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2546
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 2549
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_3c

    .line 2553
    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2556
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2554
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trace tag cannot contain |, \\n, or \\0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2550
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "traceTag tag cannot be more than 127 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2547
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trace tag cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1093
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist enforceValidity(ZZZZ)V
    .registers 22
    .param p1, "disallowPrefetchDeadlines"    # Z
    .param p2, "rejectNegativeNetworkEstimates"    # Z
    .param p3, "enforceMinimumTimeWindows"    # Z
    .param p4, "rejectNegativeDelaysAndDeadlines"    # Z

    .line 2283
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_16

    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_16

    iget-wide v1, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1a

    :cond_16
    iget-object v1, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v1, :cond_412

    .line 2288
    :cond_1a
    iget-object v1, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const-wide/16 v5, -0x1

    if-eqz v1, :cond_72

    if-eqz p2, :cond_72

    .line 2289
    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4a

    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2f

    goto :goto_4a

    .line 2290
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid network upload bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2293
    :cond_4a
    :goto_4a
    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_72

    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_57

    goto :goto_72

    .line 2294
    :cond_57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid network download bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2299
    :cond_72
    :goto_72
    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_7b

    .line 2300
    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    .local v1, "estimatedTransfer":J
    goto :goto_88

    .line 2302
    .end local v1    # "estimatedTransfer":J
    :cond_7b
    iget-wide v1, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    .line 2303
    iget-wide v7, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_85

    move-wide v7, v3

    goto :goto_87

    :cond_85
    iget-wide v7, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    :goto_87
    add-long/2addr v1, v7

    .line 2305
    .restart local v1    # "estimatedTransfer":J
    :goto_88
    iget-wide v7, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_a1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_a1

    iget-wide v7, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v7, v7, v1

    if-gtz v7, :cond_99

    goto :goto_a1

    .line 2308
    :cond_99
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Minimum chunk size can\'t be greater than estimated network usage"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2311
    :cond_a1
    :goto_a1
    iget-wide v7, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_b6

    iget-wide v5, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_ae

    goto :goto_b6

    .line 2312
    :cond_ae
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Minimum chunk size must be positive"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2315
    :cond_b6
    :goto_b6
    if-eqz p4, :cond_fb

    .line 2316
    iget-wide v5, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v5, v5, v3

    if-ltz v5, :cond_e0

    .line 2320
    iget-wide v5, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long v5, v5, v3

    if-ltz v5, :cond_c5

    goto :goto_fb

    .line 2321
    :cond_c5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override deadline is negative: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2317
    :cond_e0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Minimum latency is negative: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2326
    :cond_fb
    :goto_fb
    iget-wide v5, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long v5, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_105

    move v5, v7

    goto :goto_106

    :cond_105
    move v5, v6

    .line 2328
    .local v5, "hasDeadline":Z
    :goto_106
    iget-boolean v8, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eqz v8, :cond_12f

    .line 2329
    if-nez v5, :cond_127

    .line 2333
    iget-wide v8, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v8, v8, v3

    if-nez v8, :cond_11f

    .line 2337
    iget-object v8, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-nez v8, :cond_117

    goto :goto_12f

    .line 2338
    :cond_117
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call addTriggerContentUri() on a periodic job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2334
    :cond_11f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call setMinimumLatency() on a periodic job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2330
    :cond_127
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call setOverrideDeadline() on a periodic job."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2344
    :cond_12f
    :goto_12f
    if-eqz p1, :cond_142

    if-eqz v5, :cond_142

    iget v8, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_13a

    goto :goto_142

    .line 2345
    :cond_13a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call setOverrideDeadline() on a prefetch job."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2349
    :cond_142
    :goto_142
    iget-boolean v8, v0, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eqz v8, :cond_184

    .line 2351
    iget-object v8, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v8, :cond_15b

    iget-object v8, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    .line 2352
    invoke-virtual {v8}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v8

    if-nez v8, :cond_153

    goto :goto_15b

    .line 2353
    :cond_153
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Network specifiers aren\'t supported for persistent jobs"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2356
    :cond_15b
    :goto_15b
    iget-object v8, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-nez v8, :cond_17c

    .line 2360
    iget-object v8, v0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_174

    .line 2364
    iget-object v8, v0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-nez v8, :cond_16c

    goto :goto_184

    .line 2365
    :cond_16c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call setClipData() on a persisted job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2361
    :cond_174
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call setTransientExtras() on a persisted job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2357
    :cond_17c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call addTriggerContentUri() on a persisted job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2370
    :cond_184
    :goto_184
    iget v8, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    const/16 v9, 0x190

    if-eqz v8, :cond_1ab

    .line 2371
    iget-boolean v8, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-nez v8, :cond_1a3

    .line 2375
    iget v8, v0, Landroid/app/job/JobInfo;->mPriority:I

    if-eq v8, v9, :cond_1ab

    iget v8, v0, Landroid/app/job/JobInfo;->mPriority:I

    const/16 v10, 0x12c

    if-ne v8, v10, :cond_19b

    goto :goto_1ab

    .line 2376
    :cond_19b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An important while foreground job must be high or default priority. Don\'t mark unimportant tasks as important while foreground."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2372
    :cond_1a3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An important while foreground job cannot have a time delay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2382
    :cond_1ab
    :goto_1ab
    iget v8, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_1b3

    move v8, v7

    goto :goto_1b4

    :cond_1b3
    move v8, v6

    .line 2383
    .local v8, "isExpedited":Z
    :goto_1b4
    iget v10, v0, Landroid/app/job/JobInfo;->flags:I

    const/16 v11, 0x20

    and-int/2addr v10, v11

    if-eqz v10, :cond_1bd

    move v10, v7

    goto :goto_1be

    :cond_1bd
    move v10, v6

    .line 2384
    .local v10, "isUserInitiated":Z
    :goto_1be
    iget v12, v0, Landroid/app/job/JobInfo;->mPriority:I

    sparse-switch v12, :sswitch_data_41a

    .line 2404
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid priority level provided: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Landroid/app/job/JobInfo;->mPriority:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2386
    :sswitch_1de
    if-nez v8, :cond_207

    if-eqz v10, :cond_1e3

    goto :goto_207

    .line 2387
    :cond_1e3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Only expedited or user-initiated jobs can have max priority"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2392
    :sswitch_1eb
    iget v12, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v12, v12, 0x4

    if-nez v12, :cond_1fe

    .line 2395
    iget-boolean v12, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v12, :cond_1f6

    goto :goto_207

    .line 2396
    :cond_1f6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Periodic jobs cannot be high priority"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2393
    :cond_1fe
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Prefetch jobs cannot be high priority"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2402
    :sswitch_206
    nop

    .line 2407
    :cond_207
    :goto_207
    iget-object v12, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-nez v12, :cond_218

    iget v12, v0, Landroid/app/job/JobInfo;->constraintFlags:I

    if-nez v12, :cond_218

    iget-object v12, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v12, :cond_219

    iget-object v12, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    array-length v12, v12

    if-lez v12, :cond_219

    :cond_218
    move v6, v7

    .line 2410
    .local v6, "hasFunctionalConstraint":Z
    :cond_219
    iget-boolean v7, v0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-eqz v7, :cond_2fa

    iget-boolean v7, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v7, :cond_2fa

    .line 2411
    const-string v7, "Job \'"

    const-string v12, "#"

    if-nez v6, :cond_255

    .line 2412
    sget-object v3, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\' has a deadline with no functional constraints. The deadline won\'t improve job execution latency. Consider removing the deadline."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2fa

    .line 2417
    :cond_255
    iget-boolean v13, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-eqz v13, :cond_25b

    iget-wide v3, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    .line 2418
    .local v3, "windowStart":J
    :cond_25b
    iget-wide v13, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    sub-long/2addr v13, v3

    const-wide/32 v15, 0xdbba0

    cmp-long v13, v13, v15

    if-gez v13, :cond_2fa

    .line 2419
    const-string v13, ", deadline="

    if-eqz p3, :cond_2ad

    .line 2420
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->enforceMinimumTimeWindows()Z

    move-result v14

    if-nez v14, :cond_270

    goto :goto_2ad

    .line 2421
    :cond_270
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Time window too short. Constraints unlikely to be satisfied. Increase deadline to a reasonable duration. Job \'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    .line 2424
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\' has delay="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2428
    :cond_2ad
    :goto_2ad
    sget-object v14, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v15, v0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v12, v0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "\' has a deadline with functional constraints and an extremely short time window of "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v11, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    sub-long/2addr v11, v3

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " ms (delay="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v11, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "). The functional constraints are not likely to be satisfied when the job runs."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    .end local v3    # "windowStart":J
    :cond_2fa
    :goto_2fa
    const/16 v3, 0x1f4

    if-eqz v8, :cond_363

    .line 2442
    iget-boolean v4, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-nez v4, :cond_35b

    .line 2445
    iget-boolean v4, v0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-nez v4, :cond_353

    .line 2448
    iget-boolean v4, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v4, :cond_34b

    .line 2451
    if-nez v10, :cond_343

    .line 2454
    iget v4, v0, Landroid/app/job/JobInfo;->mPriority:I

    if-eq v4, v3, :cond_31d

    iget v4, v0, Landroid/app/job/JobInfo;->mPriority:I

    if-ne v4, v9, :cond_315

    goto :goto_31d

    .line 2455
    :cond_315
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job must be high or max priority. Don\'t use expedited jobs for unimportant tasks."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2459
    :cond_31d
    :goto_31d
    iget v4, v0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v4, v4, -0x9

    if-nez v4, :cond_33b

    iget v4, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v4, v4, -0x19

    if-nez v4, :cond_33b

    .line 2464
    iget-object v4, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v4, :cond_363

    iget-object v4, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    array-length v4, v4

    if-gtz v4, :cond_333

    goto :goto_363

    .line 2465
    :cond_333
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call addTriggerContentUri() on an expedited job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2461
    :cond_33b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job can only have network and storage-not-low constraints"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2452
    :cond_343
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job cannot be user-initiated"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2449
    :cond_34b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job cannot be periodic"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2446
    :cond_353
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job cannot have a deadline"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2443
    :cond_35b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An expedited job cannot have a time delay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2470
    :cond_363
    :goto_363
    if-eqz v10, :cond_3d0

    .line 2471
    iget-boolean v4, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-nez v4, :cond_3c8

    .line 2474
    iget-boolean v4, v0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-nez v4, :cond_3c0

    .line 2477
    iget-boolean v4, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-nez v4, :cond_3b8

    .line 2480
    iget v4, v0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_3b0

    .line 2484
    iget v4, v0, Landroid/app/job/JobInfo;->mPriority:I

    if-ne v4, v3, :cond_3a8

    .line 2487
    iget v3, v0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_3a0

    .line 2491
    iget-object v3, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v3, :cond_393

    iget-object v3, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    array-length v3, v3

    if-gtz v3, :cond_38b

    goto :goto_393

    .line 2492
    :cond_38b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t call addTriggerContentUri() on a user-initiated job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2496
    :cond_393
    :goto_393
    iget-object v3, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v3, :cond_398

    goto :goto_3d0

    .line 2497
    :cond_398
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated data transfer job must specify a valid network type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2488
    :cond_3a0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job cannot have a device-idle constraint"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2485
    :cond_3a8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job must be max priority."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2481
    :cond_3b0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job cannot also be a prefetch job"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2478
    :cond_3b8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job cannot be periodic"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2475
    :cond_3c0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job cannot have a deadline"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2472
    :cond_3c8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A user-initiated job cannot have a time delay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2502
    :cond_3d0
    :goto_3d0
    iget-object v3, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/16 v15, 0x20

    if-gt v3, v15, :cond_40a

    .line 2506
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2507
    .local v3, "validatedDebugTags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3e0
    iget-object v7, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v4, v7, :cond_3fa

    .line 2508
    iget-object v7, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/app/job/JobInfo;->validateDebugTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2507
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e0

    .line 2510
    .end local v4    # "i":I
    :cond_3fa
    iget-object v4, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 2511
    iget-object v4, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2513
    iget-object v4, v0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-static {v4}, Landroid/app/job/JobInfo;->validateTraceTag(Ljava/lang/String;)Ljava/lang/String;

    .line 2514
    return-void

    .line 2503
    .end local v3    # "validatedDebugTags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_40a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t have more than 32 tags"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2285
    .end local v1    # "estimatedTransfer":J
    .end local v5    # "hasDeadline":Z
    .end local v6    # "hasFunctionalConstraint":Z
    .end local v8    # "isExpedited":Z
    .end local v10    # "isUserInitiated":Z
    :cond_412
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t provide estimated network usage without requiring a network"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_41a
    .sparse-switch
        0x64 -> :sswitch_206
        0xc8 -> :sswitch_206
        0x12c -> :sswitch_206
        0x190 -> :sswitch_1eb
        0x1f4 -> :sswitch_1de
    .end sparse-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 857
    instance-of v0, p1, Landroid/app/job/JobInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 858
    return v1

    .line 860
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/app/job/JobInfo;

    .line 861
    .local v0, "j":Landroid/app/job/JobInfo;
    iget v2, p0, Landroid/app/job/JobInfo;->jobId:I

    iget v3, v0, Landroid/app/job/JobInfo;->jobId:I

    if-eq v2, v3, :cond_10

    .line 862
    return v1

    .line 865
    :cond_10
    iget-object v2, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    iget-object v3, v0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-static {v2, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 866
    return v1

    .line 869
    :cond_1b
    iget-object v2, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    iget-object v3, v0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 870
    return v1

    .line 874
    :cond_26
    iget-object v2, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    iget-object v3, v0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eq v2, v3, :cond_2d

    .line 875
    return v1

    .line 877
    :cond_2d
    iget v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    iget v3, v0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    if-eq v2, v3, :cond_34

    .line 878
    return v1

    .line 880
    :cond_34
    iget-object v2, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 881
    return v1

    .line 883
    :cond_3f
    iget v2, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    iget v3, v0, Landroid/app/job/JobInfo;->constraintFlags:I

    if-eq v2, v3, :cond_46

    .line 884
    return v1

    .line 886
    :cond_46
    iget-object v2, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    iget-object v3, v0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 887
    return v1

    .line 889
    :cond_51
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5a

    .line 890
    return v1

    .line 892
    :cond_5a
    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_63

    .line 893
    return v1

    .line 895
    :cond_63
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    if-eq v2, v3, :cond_6a

    .line 896
    return v1

    .line 898
    :cond_6a
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    if-eq v2, v3, :cond_71

    .line 899
    return v1

    .line 901
    :cond_71
    iget-object v2, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v3, v0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 902
    return v1

    .line 904
    :cond_7c
    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_85

    .line 905
    return v1

    .line 907
    :cond_85
    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8e

    .line 908
    return v1

    .line 910
    :cond_8e
    iget-wide v2, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_97

    .line 911
    return v1

    .line 913
    :cond_97
    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a0

    .line 914
    return v1

    .line 916
    :cond_a0
    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a9

    .line 917
    return v1

    .line 919
    :cond_a9
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->isPeriodic:Z

    if-eq v2, v3, :cond_b0

    .line 920
    return v1

    .line 922
    :cond_b0
    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    iget-boolean v3, v0, Landroid/app/job/JobInfo;->isPersisted:Z

    if-eq v2, v3, :cond_b7

    .line 923
    return v1

    .line 925
    :cond_b7
    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->intervalMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c0

    .line 926
    return v1

    .line 928
    :cond_c0
    iget-wide v2, p0, Landroid/app/job/JobInfo;->flexMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->flexMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c9

    .line 929
    return v1

    .line 931
    :cond_c9
    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    iget-wide v4, v0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d2

    .line 932
    return v1

    .line 934
    :cond_d2
    iget v2, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    iget v3, v0, Landroid/app/job/JobInfo;->backoffPolicy:I

    if-eq v2, v3, :cond_d9

    .line 935
    return v1

    .line 937
    :cond_d9
    iget v2, p0, Landroid/app/job/JobInfo;->mBias:I

    iget v3, v0, Landroid/app/job/JobInfo;->mBias:I

    if-eq v2, v3, :cond_e0

    .line 938
    return v1

    .line 940
    :cond_e0
    iget v2, p0, Landroid/app/job/JobInfo;->mPriority:I

    iget v3, v0, Landroid/app/job/JobInfo;->mPriority:I

    if-eq v2, v3, :cond_e7

    .line 941
    return v1

    .line 943
    :cond_e7
    iget v2, p0, Landroid/app/job/JobInfo;->flags:I

    iget v3, v0, Landroid/app/job/JobInfo;->flags:I

    if-eq v2, v3, :cond_ee

    .line 944
    return v1

    .line 946
    :cond_ee
    iget-object v2, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f9

    .line 947
    return v1

    .line 949
    :cond_f9
    iget-object v2, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_104

    .line 950
    return v1

    .line 952
    :cond_104
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getBackoffPolicy()I
    .registers 2

    .line 767
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    return v0
.end method

.method public blacklist getBias()I
    .registers 2

    .line 547
    iget v0, p0, Landroid/app/job/JobInfo;->mBias:I

    return v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .registers 2

    .line 528
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getClipGrantFlags()I
    .registers 2

    .line 535
    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    return v0
.end method

.method public greylist-max-o getConstraintFlags()I
    .registers 2

    .line 600
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    return v0
.end method

.method public whitelist getDebugTags()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDebugTagsArraySet()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getEstimatedNetworkDownloadBytes()J
    .registers 3

    .line 673
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    return-wide v0
.end method

.method public whitelist getEstimatedNetworkUploadBytes()J
    .registers 3

    .line 685
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    return-wide v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 514
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .registers 2

    .line 560
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    return v0
.end method

.method public whitelist getFlexMillis()J
    .registers 3

    .line 748
    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    return-wide v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 507
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    return v0
.end method

.method public whitelist getInitialBackoffMillis()J
    .registers 3

    .line 758
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    return-wide v0
.end method

.method public whitelist getIntervalMillis()J
    .registers 3

    .line 738
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    return-wide v0
.end method

.method public whitelist getMaxExecutionDelayMillis()J
    .registers 5

    .line 712
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMinLatencyMillis()J
    .registers 5

    .line 705
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMinimumNetworkChunkBytes()J
    .registers 3

    .line 696
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    return-wide v0
.end method

.method public whitelist getNetworkType()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 641
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 642
    return v1

    .line 643
    :cond_6
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 644
    const/4 v0, 0x2

    return v0

    .line 645
    :cond_12
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 646
    const/4 v0, 0x3

    return v0

    .line 647
    :cond_1e
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 648
    const/4 v0, 0x4

    return v0

    .line 650
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getPriority()I
    .registers 2

    .line 555
    iget v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    return v0
.end method

.method public whitelist getRequiredNetwork()Landroid/net/NetworkRequest;
    .registers 2

    .line 661
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public whitelist getService()Landroid/content/ComponentName;
    .registers 2

    .line 542
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getTraceTag()Ljava/lang/String;
    .registers 2

    .line 794
    iget-object v0, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTransientExtras()Landroid/os/Bundle;
    .registers 2

    .line 521
    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTriggerContentMaxDelay()J
    .registers 3

    .line 627
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    return-wide v0
.end method

.method public whitelist getTriggerContentUpdateDelay()J
    .registers 3

    .line 618
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    return-wide v0
.end method

.method public whitelist getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;
    .registers 2

    .line 609
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    return-object v0
.end method

.method public greylist-max-o hasEarlyConstraint()Z
    .registers 2

    .line 843
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    return v0
.end method

.method public greylist-max-o hasLateConstraint()Z
    .registers 2

    .line 852
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 957
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    .line 958
    .local v0, "hashCode":I
    iget-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_10

    .line 959
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 961
    :cond_10
    iget-object v1, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1e

    .line 962
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 964
    :cond_1e
    iget-object v1, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    if-eqz v1, :cond_2c

    .line 965
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 967
    :cond_2c
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    add-int/2addr v1, v2

    .line 968
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    if-eqz v0, :cond_3f

    .line 969
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    add-int v1, v0, v2

    .line 971
    :cond_3f
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    add-int/2addr v0, v2

    .line 972
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    iget-object v1, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    if-eqz v1, :cond_52

    .line 973
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 975
    :cond_52
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 976
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 977
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 978
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 979
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    iget-object v1, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v1, :cond_84

    .line 980
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 982
    :cond_84
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 983
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 984
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 985
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 986
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 987
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 988
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 989
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 990
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 991
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 992
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    add-int/2addr v1, v2

    .line 993
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->mBias:I

    add-int/2addr v0, v2

    .line 994
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->mPriority:I

    add-int/2addr v1, v2

    .line 995
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/job/JobInfo;->flags:I

    add-int/2addr v0, v2

    .line 996
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    iget-object v1, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_104

    .line 997
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 999
    :cond_104
    iget-object v1, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    if-eqz v1, :cond_112

    .line 1000
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1002
    :cond_112
    return v0
.end method

.method public greylist-max-o isExemptedFromAppStandby()Z
    .registers 2

    .line 565
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isExpedited()Z
    .registers 2

    .line 801
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isImportantWhileForeground()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 824
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->ignoreImportantWhileForeground()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 825
    return v1

    .line 827
    :cond_8
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public whitelist isPeriodic()Z
    .registers 2

    .line 721
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    return v0
.end method

.method public whitelist isPersisted()Z
    .registers 2

    .line 728
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    return v0
.end method

.method public whitelist isPrefetch()Z
    .registers 2

    .line 834
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isRequireBatteryNotLow()Z
    .registers 2

    .line 579
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isRequireCharging()Z
    .registers 3

    .line 572
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist isRequireDeviceIdle()Z
    .registers 2

    .line 586
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isRequireStorageNotLow()Z
    .registers 2

    .line 593
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isUserInitiated()Z
    .registers 2

    .line 808
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(job:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1098
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 1100
    iget-object v0, p0, Landroid/app/job/JobInfo;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1101
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 1102
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    iget-object v0, p0, Landroid/app/job/JobInfo;->clipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1104
    iget v0, p0, Landroid/app/job/JobInfo;->clipGrantFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 1106
    :cond_23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1108
    :goto_26
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1109
    iget v0, p0, Landroid/app/job/JobInfo;->constraintFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1111
    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1112
    iget-wide v3, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1113
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    if-eqz v0, :cond_4c

    .line 1114
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    iget-object v0, p0, Landroid/app/job/JobInfo;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4f

    .line 1117
    :cond_4c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    :goto_4f
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkDownloadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1120
    iget-wide v0, p0, Landroid/app/job/JobInfo;->networkUploadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1121
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minimumNetworkChunkBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1122
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1123
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1124
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1127
    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1128
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1129
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    iget v0, p0, Landroid/app/job/JobInfo;->mBias:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    iget v0, p0, Landroid/app/job/JobInfo;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    iget-object v0, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1138
    .local v0, "numDebugTags":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a9
    if-ge v1, v0, :cond_b9

    .line 1140
    iget-object v2, p0, Landroid/app/job/JobInfo;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1139
    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    .line 1142
    .end local v1    # "i":I
    :cond_b9
    iget-object v1, p0, Landroid/app/job/JobInfo;->mTraceTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1143
    return-void
.end method

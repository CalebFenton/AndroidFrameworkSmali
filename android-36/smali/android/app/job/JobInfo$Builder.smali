.class public final Landroid/app/job/JobInfo$Builder;
.super Ljava/lang/Object;
.source "JobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mBackoffPolicy:I

.field private greylist-max-o mBackoffPolicySet:Z

.field private blacklist mBias:I

.field private greylist-max-o mClipData:Landroid/content/ClipData;

.field private greylist-max-o mClipGrantFlags:I

.field private greylist-max-o mConstraintFlags:I

.field private final blacklist mDebugTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExtras:Landroid/os/PersistableBundle;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mFlexMillis:J

.field private greylist-max-o mHasEarlyConstraint:Z

.field private greylist-max-o mHasLateConstraint:Z

.field private greylist-max-o mInitialBackoffMillis:J

.field private greylist-max-o mIntervalMillis:J

.field private greylist-max-o mIsPeriodic:Z

.field private greylist-max-o mIsPersisted:Z

.field private final greylist-max-o mJobId:I

.field private final greylist-max-o mJobService:Landroid/content/ComponentName;

.field private greylist-max-o mMaxExecutionDelayMillis:J

.field private greylist-max-o mMinLatencyMillis:J

.field private blacklist mMinimumNetworkChunkBytes:J

.field private greylist-max-o mNetworkDownloadBytes:J

.field private greylist-max-o mNetworkRequest:Landroid/net/NetworkRequest;

.field private greylist-max-o mNetworkUploadBytes:J

.field private greylist-max-o mPriority:I

.field private blacklist mTraceTag:Ljava/lang/String;

.field private greylist-max-o mTransientExtras:Landroid/os/Bundle;

.field private greylist-max-o mTriggerContentMaxDelay:J

.field private greylist-max-o mTriggerContentUpdateDelay:J

.field private greylist-max-o mTriggerContentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBackoffPolicy(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBias(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClipData(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClipGrantFlags(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConstraintFlags(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDebugTags(Landroid/app/job/JobInfo$Builder;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlexMillis(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasEarlyConstraint(Landroid/app/job/JobInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasLateConstraint(Landroid/app/job/JobInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialBackoffMillis(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntervalMillis(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPeriodic(Landroid/app/job/JobInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPersisted(Landroid/app/job/JobInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJobId(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJobService(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxExecutionDelayMillis(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinLatencyMillis(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumNetworkChunkBytes(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkDownloadBytes(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkRequest(Landroid/app/job/JobInfo$Builder;)Landroid/net/NetworkRequest;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkUploadBytes(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/app/job/JobInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTraceTag(Landroid/app/job/JobInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mTraceTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransientExtras(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerContentMaxDelay(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerContentUpdateDelay(Landroid/app/job/JobInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerContentUris(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor whitelist <init>(ILandroid/content/ComponentName;)V
    .registers 6
    .param p1, "jobId"    # I
    .param p2, "jobService"    # Landroid/content/ComponentName;

    .line 1301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1256
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 1259
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    .line 1260
    const/16 v1, 0x12c

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 1266
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    .line 1267
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    .line 1268
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    .line 1270
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 1271
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 1283
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 1284
    const/4 v1, 0x1

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 1286
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 1287
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    .line 1302
    iput-object p2, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    .line 1303
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    .line 1304
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/job/JobInfo;)V
    .registers 5
    .param p1, "job"    # Landroid/app/job/JobInfo;

    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1256
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 1259
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    .line 1260
    const/16 v1, 0x12c

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 1266
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    .line 1267
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    .line 1268
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    .line 1270
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 1271
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 1283
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 1284
    const/4 v1, 0x1

    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 1286
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 1287
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    .line 1311
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    .line 1312
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    .line 1313
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1314
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 1315
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    .line 1316
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    .line 1317
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getBias()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    .line 1318
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 1319
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1320
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1321
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    .line 1322
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    .line 1323
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    .line 1324
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 1325
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_91

    :cond_90
    const/4 v0, 0x0

    :goto_91
    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 1326
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 1327
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 1328
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    .line 1329
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    .line 1330
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    .line 1331
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    .line 1332
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 1333
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    .line 1334
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    .line 1335
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    .line 1336
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 1339
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 1340
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 1341
    return-void
.end method


# virtual methods
.method public whitelist addDebugTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 1366
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    invoke-static {p1}, Landroid/app/job/JobInfo;->validateDebugTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1367
    return-object p0
.end method

.method public blacklist addDebugTags(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1373
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1374
    return-void
.end method

.method public whitelist addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;
    .registers 3
    .param p1, "uri"    # Landroid/app/job/JobInfo$TriggerContentUri;

    .line 1805
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 1808
    :cond_b
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    return-object p0
.end method

.method public whitelist build()Landroid/app/job/JobInfo;
    .registers 6

    .line 2240
    const-wide/32 v0, 0xb98555f

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    .line 2241
    const-wide/32 v1, 0xf1e9ef7

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    .line 2242
    const-wide/32 v2, 0x128fa179

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    .line 2243
    const-wide/32 v3, 0x1345eb5a

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    .line 2240
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build(ZZZZ)Landroid/app/job/JobInfo;
    .registers 7
    .param p1, "disallowPrefetchDeadlines"    # Z
    .param p2, "rejectNegativeNetworkEstimates"    # Z
    .param p3, "enforceMinimumTimeWindows"    # Z
    .param p4, "rejectNegativeDelaysAndDeadlines"    # Z

    .line 2253
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_b

    goto :goto_13

    .line 2254
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2258
    :cond_13
    :goto_13
    new-instance v0, Landroid/app/job/JobInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo-IA;)V

    .line 2259
    .local v0, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/job/JobInfo;->enforceValidity(ZZZZ)V

    .line 2261
    return-object v0
.end method

.method public whitelist removeDebugTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 1385
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mDebugTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1386
    return-object p0
.end method

.method public whitelist setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
    .registers 9
    .param p1, "initialBackoffMillis"    # J
    .param p3, "backoffPolicy"    # I

    .line 1977
    invoke-static {}, Landroid/app/job/JobInfo;->getMinBackoffMillis()J

    move-result-wide v0

    .line 1978
    .local v0, "minBackoff":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_41

    .line 1979
    invoke-static {}, Landroid/app/job/JobInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested backoff "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too small; raising to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1980
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1979
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    move-wide p1, v0

    .line 1984
    :cond_41
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 1985
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 1986
    iput p3, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 1987
    return-object p0
.end method

.method public blacklist setBias(I)Landroid/app/job/JobInfo$Builder;
    .registers 2
    .param p1, "bias"    # I

    .line 1393
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mBias:I

    .line 1394
    return-object p0
.end method

.method public whitelist setClipData(Landroid/content/ClipData;I)Landroid/app/job/JobInfo$Builder;
    .registers 3
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "grantFlags"    # I

    .line 1490
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    .line 1491
    iput p2, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    .line 1492
    return-object p0
.end method

.method public whitelist setEstimatedNetworkBytes(JJ)Landroid/app/job/JobInfo$Builder;
    .registers 5
    .param p1, "downloadBytes"    # J
    .param p3, "uploadBytes"    # J

    .line 1646
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkDownloadBytes:J

    .line 1647
    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mNetworkUploadBytes:J

    .line 1648
    return-object p0
.end method

.method public whitelist setExpedited(Z)Landroid/app/job/JobInfo$Builder;
    .registers 5
    .param p1, "expedited"    # Z

    .line 2047
    const/16 v0, 0x12c

    const/16 v1, 0x1f4

    if-eqz p1, :cond_13

    .line 2048
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2049
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v0, :cond_25

    .line 2052
    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    goto :goto_25

    .line 2055
    :cond_13
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v1, :cond_1f

    iget v1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1f

    .line 2058
    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 2060
    :cond_1f
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2062
    :cond_25
    :goto_25
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 1446
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 1447
    return-object p0
.end method

.method public greylist-max-r setFlags(I)Landroid/app/job/JobInfo$Builder;
    .registers 2
    .param p1, "flags"    # I

    .line 1436
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 1437
    return-object p0
.end method

.method public whitelist setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;
    .registers 5
    .param p1, "importantWhileForeground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2153
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->ignoreImportantWhileForeground()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2154
    invoke-static {}, Landroid/app/job/JobInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested important-while-foreground flag for job"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is ignored and takes no effect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    return-object p0

    .line 2159
    :cond_29
    const/16 v0, 0x12c

    const/16 v1, 0x190

    if-eqz p1, :cond_3c

    .line 2160
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2161
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v0, :cond_4e

    .line 2164
    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    goto :goto_4e

    .line 2167
    :cond_3c
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v1, :cond_48

    iget v1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_48

    .line 2171
    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 2173
    :cond_48
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2175
    :cond_4e
    :goto_4e
    return-object p0
.end method

.method public whitelist setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "minLatencyMillis"    # J

    .line 1907
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    .line 1908
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 1909
    return-object p0
.end method

.method public whitelist setMinimumNetworkChunkBytes(J)Landroid/app/job/JobInfo$Builder;
    .registers 5
    .param p1, "chunkSizeBytes"    # J

    .line 1677
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    goto :goto_15

    .line 1678
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum chunk size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1680
    :cond_15
    :goto_15
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinimumNetworkChunkBytes:J

    .line 1681
    return-object p0
.end method

.method public whitelist setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "maxExecutionDelayMillis"    # J

    .line 1954
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    .line 1955
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    .line 1956
    return-object p0
.end method

.method public whitelist setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "intervalMillis"    # J

    .line 1848
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;
    .registers 16
    .param p1, "intervalMillis"    # J
    .param p3, "flexMillis"    # J

    .line 1865
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    .line 1866
    .local v0, "minPeriod":J
    cmp-long v2, p1, v0

    const-string v3, " is too small; raising to "

    const-string v4, " for job "

    if-gez v2, :cond_41

    .line 1867
    invoke-static {}, Landroid/app/job/JobInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested interval "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1868
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1867
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    move-wide p1, v0

    .line 1872
    :cond_41
    const-wide/16 v5, 0x5

    mul-long/2addr v5, p1

    const-wide/16 v7, 0x64

    div-long/2addr v5, v7

    .line 1873
    .local v5, "percentClamp":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 1874
    .local v7, "minFlex":J
    cmp-long v2, p3, v7

    if-gez v2, :cond_88

    .line 1875
    invoke-static {}, Landroid/app/job/JobInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested flex "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p3, p4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1876
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1875
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    move-wide p3, v7

    .line 1880
    :cond_88
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    .line 1881
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    .line 1882
    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    .line 1883
    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 1884
    return-object p0
.end method

.method public whitelist setPersisted(Z)Landroid/app/job/JobInfo$Builder;
    .registers 2
    .param p1, "isPersisted"    # Z

    .line 2214
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    .line 2215
    return-object p0
.end method

.method public whitelist setPrefetch(Z)Landroid/app/job/JobInfo$Builder;
    .registers 3
    .param p1, "prefetch"    # Z

    .line 2197
    if-eqz p1, :cond_9

    .line 2198
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    goto :goto_f

    .line 2200
    :cond_9
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2202
    :goto_f
    return-object p0
.end method

.method public whitelist setPriority(I)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "priority"    # I

    .line 1420
    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_c

    const/16 v0, 0x64

    if-ge p1, v0, :cond_9

    goto :goto_c

    .line 1429
    :cond_9
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 1430
    return-object p0

    .line 1421
    :cond_c
    :goto_c
    const-wide/32 v0, 0x8653c4b

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1427
    return-object p0

    .line 1422
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid priority value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;
    .registers 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 1589
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1590
    return-object p0
.end method

.method public whitelist setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "networkType"    # I

    .line 1531
    if-nez p1, :cond_8

    .line 1532
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0

    .line 1534
    :cond_8
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1537
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1538
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1539
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1540
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1542
    const/4 v1, 0x1

    if-ne p1, v1, :cond_25

    goto :goto_3e

    .line 1544
    :cond_25
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2e

    .line 1545
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_3e

    .line 1546
    :cond_2e
    const/4 v1, 0x3

    if-ne p1, v1, :cond_37

    .line 1547
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_3e

    .line 1548
    :cond_37
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3e

    .line 1549
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1552
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "batteryNotLow"    # Z

    .line 1718
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x3

    .line 1719
    if-eqz p1, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1720
    return-object p0
.end method

.method public whitelist setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
    .registers 3
    .param p1, "requiresCharging"    # Z

    .line 1702
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x2

    .line 1703
    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1704
    return-object p0
.end method

.method public whitelist setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "requiresDeviceIdle"    # Z

    .line 1744
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x5

    .line 1745
    if-eqz p1, :cond_8

    const/4 v1, 0x4

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1746
    return-object p0
.end method

.method public whitelist setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "storageNotLow"    # Z

    .line 1758
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x9

    .line 1759
    if-eqz p1, :cond_9

    const/16 v1, 0x8

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 1760
    return-object p0
.end method

.method public whitelist setTraceTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;
    .registers 3
    .param p1, "traceTag"    # Ljava/lang/String;

    .line 2232
    invoke-static {p1}, Landroid/app/job/JobInfo;->validateTraceTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTraceTag:Ljava/lang/String;

    .line 2233
    return-object p0
.end method

.method public whitelist setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1461
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 1462
    return-object p0
.end method

.method public whitelist setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;
    .registers 3
    .param p1, "durationMs"    # J

    .line 1831
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 1832
    return-object p0
.end method

.method public whitelist setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;
    .registers 3
    .param p1, "durationMs"    # J

    .line 1820
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 1821
    return-object p0
.end method

.method public whitelist setUserInitiated(Z)Landroid/app/job/JobInfo$Builder;
    .registers 5
    .param p1, "userInitiated"    # Z

    .line 2106
    const/16 v0, 0x12c

    const/16 v1, 0x1f4

    if-eqz p1, :cond_13

    .line 2107
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2108
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v0, :cond_25

    .line 2111
    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    goto :goto_25

    .line 2114
    :cond_13
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    if-ne v2, v1, :cond_1f

    iget v1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1f

    .line 2117
    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 2119
    :cond_1f
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    .line 2121
    :cond_25
    :goto_25
    return-object p0
.end method

.method public blacklist summarize()Ljava/lang/String;
    .registers 4

    .line 2268
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    .line 2269
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 2270
    :cond_b
    const-string/jumbo v0, "null"

    :goto_e
    nop

    .line 2271
    .local v0, "service":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JobInfo.Builder{job:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

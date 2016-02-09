.class public Landroid/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;,
        Landroid/widget/ActivityChooserModel$ActivitySorter;,
        Landroid/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/widget/ActivityChooserModel$DefaultSorter;,
        Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;,
        Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/ActivityChooserModel;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/widget/ActivityChooserModel;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 165
    const-class v0, Landroid/widget/ActivityChooserModel;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 226
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    sput-object v0, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    #@f
    .line 232
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    .line 231
    sput-object v0, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    #@16
    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "historyFileName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 359
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    #@6
    .line 237
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@d
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@14
    .line 247
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@1b
    .line 252
    new-instance v0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;

    #@1d
    invoke-direct {v0, p0, v3}, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;)V

    #@20
    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@22
    .line 272
    new-instance v0, Landroid/widget/ActivityChooserModel$DefaultSorter;

    #@24
    invoke-direct {v0, p0, v3}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$DefaultSorter;)V

    #@27
    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    #@29
    .line 277
    const/16 v0, 0x32

    #@2b
    iput v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    #@2d
    .line 287
    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    #@2f
    .line 298
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    #@31
    .line 306
    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@33
    .line 311
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    #@35
    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    #@3b
    .line 361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_0

    #@41
    .line 362
    const-string/jumbo v0, ".xml"

    #@44
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_1

    #@4a
    .line 365
    :cond_0
    iput-object p2, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@4c
    .line 367
    :goto_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@4e
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    #@50
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    #@53
    .line 359
    return-void

    #@54
    .line 363
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    const-string/jumbo v1, ".xml"

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@6a
    goto :goto_0
.end method

.method private addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    .locals 2
    .param p1, "historicalRecord"    # Landroid/widget/ActivityChooserModel$HistoricalRecord;

    #@0
    .prologue
    .line 752
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@2
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    .line 753
    .local v0, "added":Z
    if-eqz v0, :cond_0

    #@8
    .line 754
    const/4 v1, 0x1

    #@9
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@b
    .line 755
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    #@e
    .line 756
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->persistHistoricalDataIfNeeded()V

    #@11
    .line 757
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    #@14
    .line 758
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    #@17
    .line 760
    :cond_0
    return v0
.end method

.method private ensureConsistentState()V
    .locals 2

    #@0
    .prologue
    .line 674
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->loadActivitiesIfNeeded()Z

    #@3
    move-result v0

    #@4
    .line 675
    .local v0, "stateChanged":Z
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->readHistoricalDataIfNeeded()Z

    #@7
    move-result v1

    #@8
    or-int/2addr v0, v1

    #@9
    .line 676
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    #@c
    .line 677
    if-eqz v0, :cond_0

    #@e
    .line 678
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    #@11
    .line 679
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    #@14
    .line 673
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "historyFileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 343
    sget-object v2, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 344
    :try_start_0
    sget-object v1, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    #@5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/widget/ActivityChooserModel;

    #@b
    .line 345
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-nez v0, :cond_0

    #@d
    .line 346
    new-instance v0, Landroid/widget/ActivityChooserModel;

    #@f
    .end local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-direct {v0, p0, p1}, Landroid/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@12
    .line 347
    .restart local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    sget-object v1, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    #@14
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 349
    return-object v0

    #@19
    .line 343
    .end local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method private loadActivitiesIfNeeded()Z
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 707
    iget-boolean v5, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    #@3
    if-eqz v5, :cond_2

    #@5
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@7
    if-eqz v5, :cond_2

    #@9
    .line 708
    iput-boolean v7, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    #@b
    .line 709
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@d
    invoke-interface {v5}, Ljava/util/List;->clear()V

    #@10
    .line 710
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v5

    #@16
    .line 711
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@18
    .line 710
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@1b
    move-result-object v4

    #@1c
    .line 712
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@1f
    move-result v3

    #@20
    .line 713
    .local v3, "resolveInfoCount":I
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@23
    .line 714
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/content/pm/ResolveInfo;

    #@29
    .line 715
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2b
    .line 716
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@2d
    .line 717
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@30
    move-result v6

    #@31
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@33
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@35
    .line 718
    iget-boolean v8, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    #@37
    .line 716
    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@3a
    move-result v5

    #@3b
    if-nez v5, :cond_0

    #@3d
    .line 719
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@3f
    new-instance v6, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@41
    invoke-direct {v6, p0, v2}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    #@44
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@47
    .line 713
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 722
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v5, 0x1

    #@4b
    return v5

    #@4c
    .line 724
    .end local v1    # "i":I
    .end local v3    # "resolveInfoCount":I
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    return v7
.end method

.method private persistHistoricalDataIfNeeded()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 580
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 581
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "No preceding call to #readHistoricalData"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 583
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@10
    if-nez v0, :cond_1

    #@12
    .line 584
    return-void

    #@13
    .line 586
    :cond_1
    iput-boolean v5, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@15
    .line 587
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 588
    new-instance v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-direct {v0, p0, v1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;)V

    #@23
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@25
    const/4 v2, 0x2

    #@26
    new-array v2, v2, [Ljava/lang/Object;

    #@28
    .line 589
    new-instance v3, Ljava/util/ArrayList;

    #@2a
    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@2c
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@2f
    aput-object v3, v2, v5

    #@31
    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@33
    const/4 v4, 0x1

    #@34
    aput-object v3, v2, v4

    #@36
    .line 588
    invoke-virtual {v0, v1, v2}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@39
    .line 579
    :cond_2
    return-void
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 767
    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6
    move-result v3

    #@7
    iget v4, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    #@9
    sub-int v1, v3, v4

    #@b
    .line 768
    .local v1, "pruneCount":I
    if-gtz v1, :cond_0

    #@d
    .line 769
    return-void

    #@e
    .line 771
    :cond_0
    const/4 v3, 0x1

    #@f
    iput-boolean v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@11
    .line 772
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@14
    .line 773
    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@16
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    #@1c
    .line 772
    .local v2, "prunedRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 766
    .end local v2    # "prunedRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :cond_1
    return-void
.end method

.method private readHistoricalDataIfNeeded()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 735
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 736
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 742
    :cond_0
    return v1

    #@13
    .line 737
    :cond_1
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    #@15
    .line 738
    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    #@17
    .line 739
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->readHistoricalDataImpl()V

    #@1a
    .line 740
    return v2
.end method

.method private readHistoricalDataImpl()V
    .locals 18

    #@0
    .prologue
    .line 984
    const/4 v3, 0x0

    #@1
    .line 986
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v15, v0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    #@5
    move-object/from16 v0, p0

    #@7
    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@9
    move-object/from16 v16, v0

    #@b
    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v3

    #@f
    .line 994
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@12
    move-result-object v8

    #@13
    .line 995
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@15
    invoke-virtual {v15}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@18
    move-result-object v15

    #@19
    invoke-interface {v8, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1c
    .line 997
    const/4 v12, 0x0

    #@1d
    .line 998
    .local v12, "type":I
    :goto_0
    const/4 v15, 0x1

    #@1e
    if-eq v12, v15, :cond_0

    #@20
    const/4 v15, 0x2

    #@21
    if-eq v12, v15, :cond_0

    #@23
    .line 999
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@26
    move-result v12

    #@27
    goto :goto_0

    #@28
    .line 987
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    .local v3, "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    #@29
    .line 991
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    return-void

    #@2a
    .line 1002
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    .local v3, "fis":Ljava/io/FileInputStream;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_0
    const-string/jumbo v15, "historical-records"

    #@2d
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@30
    move-result-object v16

    #@31
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v15

    #@35
    if-nez v15, :cond_2

    #@37
    .line 1003
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    #@39
    const-string/jumbo v16, "Share records file does not start with historical-records tag."

    #@3c
    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v15
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 1039
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_1
    move-exception v14

    #@41
    .line 1040
    .local v14, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    sget-object v15, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    #@43
    new-instance v16, Ljava/lang/StringBuilder;

    #@45
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v17, "Error reading historical recrod file: "

    #@4b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v16

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@53
    move-object/from16 v17, v0

    #@55
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v16

    #@59
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v16

    #@5d
    move-object/from16 v0, v16

    #@5f
    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    .line 1044
    if-eqz v3, :cond_1

    #@64
    .line 1046
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    #@67
    .line 983
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    #@68
    .line 1007
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    #@6a
    iget-object v5, v0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@6c
    .line 1008
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    #@6f
    .line 1011
    :cond_3
    :goto_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@72
    move-result v12

    #@73
    .line 1012
    const/4 v15, 0x1

    #@74
    if-ne v12, v15, :cond_4

    #@76
    .line 1044
    if-eqz v3, :cond_1

    #@78
    .line 1046
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@7b
    goto :goto_1

    #@7c
    .line 1047
    :catch_2
    move-exception v6

    #@7d
    .local v6, "ioe":Ljava/io/IOException;
    goto :goto_1

    #@7e
    .line 1015
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_4
    const/4 v15, 0x3

    #@7f
    if-eq v12, v15, :cond_3

    #@81
    const/4 v15, 0x4

    #@82
    if-eq v12, v15, :cond_3

    #@84
    .line 1018
    :try_start_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@87
    move-result-object v7

    #@88
    .line 1019
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v15, "historical-record"

    #@8b
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v15

    #@8f
    if-nez v15, :cond_5

    #@91
    .line 1020
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    #@93
    const-string/jumbo v16, "Share records file not well-formed."

    #@96
    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@99
    throw v15
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@9a
    .line 1041
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_3
    move-exception v6

    #@9b
    .line 1042
    .restart local v6    # "ioe":Ljava/io/IOException;
    :try_start_7
    sget-object v15, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    #@9d
    new-instance v16, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v17, "Error reading historical recrod file: "

    #@a5
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v16

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    #@ad
    move-object/from16 v17, v0

    #@af
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v16

    #@b3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v16

    #@b7
    move-object/from16 v0, v16

    #@b9
    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@bc
    .line 1044
    if-eqz v3, :cond_1

    #@be
    .line 1046
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    #@c1
    goto :goto_1

    #@c2
    .line 1047
    :catch_4
    move-exception v6

    #@c3
    goto :goto_1

    #@c4
    .line 1023
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_5
    :try_start_9
    const-string/jumbo v15, "activity"

    #@c7
    const/16 v16, 0x0

    #@c9
    move-object/from16 v0, v16

    #@cb
    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ce
    move-result-object v2

    #@cf
    .line 1025
    .local v2, "activity":Ljava/lang/String;
    const-string/jumbo v15, "time"

    #@d2
    const/16 v16, 0x0

    #@d4
    move-object/from16 v0, v16

    #@d6
    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d9
    move-result-object v15

    #@da
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@dd
    move-result-wide v10

    #@de
    .line 1027
    .local v10, "time":J
    const-string/jumbo v15, "weight"

    #@e1
    const/16 v16, 0x0

    #@e3
    move-object/from16 v0, v16

    #@e5
    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e8
    move-result-object v15

    #@e9
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@ec
    move-result v13

    #@ed
    .line 1028
    .local v13, "weight":F
    new-instance v9, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    #@ef
    invoke-direct {v9, v2, v10, v11, v13}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    #@f2
    .line 1029
    .local v9, "readRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@f5
    goto/16 :goto_2

    #@f7
    .line 1043
    .end local v2    # "activity":Ljava/lang/String;
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "readRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v10    # "time":J
    .end local v12    # "type":I
    .end local v13    # "weight":F
    :catchall_0
    move-exception v15

    #@f8
    .line 1044
    if-eqz v3, :cond_6

    #@fa
    .line 1046
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    #@fd
    .line 1043
    :cond_6
    :goto_3
    throw v15

    #@fe
    .line 1047
    .restart local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v6

    #@ff
    .restart local v6    # "ioe":Ljava/io/IOException;
    goto/16 :goto_1

    #@101
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v6

    #@102
    .restart local v6    # "ioe":Ljava/io/IOException;
    goto :goto_3
.end method

.method private sortActivitiesIfNeeded()Z
    .locals 4

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 692
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 697
    :cond_0
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 692
    :cond_1
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 693
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    #@1c
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@1e
    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@20
    .line 694
    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@22
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@25
    move-result-object v3

    #@26
    .line 693
    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    #@29
    .line 695
    const/4 v0, 0x1

    #@2a
    return v0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .locals 10
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 471
    iget-object v7, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@3
    monitor-enter v7

    #@4
    .line 472
    :try_start_0
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v6, :cond_0

    #@8
    monitor-exit v7

    #@9
    .line 473
    return-object v9

    #@a
    .line 476
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    #@d
    .line 478
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@f
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@15
    .line 480
    .local v2, "chosenActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    #@17
    .line 481
    iget-object v6, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@19
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1b
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1d
    .line 482
    iget-object v8, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@1f
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@21
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@23
    .line 480
    invoke-direct {v3, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 484
    .local v3, "chosenName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    #@28
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@2a
    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@2d
    .line 485
    .local v0, "choiceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@30
    .line 487
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    #@32
    if-eqz v6, :cond_1

    #@34
    .line 489
    new-instance v1, Landroid/content/Intent;

    #@36
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@39
    .line 490
    .local v1, "choiceIntentCopy":Landroid/content/Intent;
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    #@3b
    invoke-interface {v6, p0, v1}, Landroid/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    move-result v4

    #@3f
    .line 492
    .local v4, "handled":Z
    if-eqz v4, :cond_1

    #@41
    monitor-exit v7

    #@42
    .line 493
    return-object v9

    #@43
    .line 497
    .end local v1    # "choiceIntentCopy":Landroid/content/Intent;
    .end local v4    # "handled":Z
    :cond_1
    :try_start_2
    new-instance v5, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    #@45
    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@48
    move-result-wide v8

    #@49
    const/high16 v6, 0x3f800000    # 1.0f

    #@4b
    .line 497
    invoke-direct {v5, v3, v8, v9, v6}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    #@4e
    .line 499
    .local v5, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    monitor-exit v7

    #@52
    .line 501
    return-object v0

    #@53
    .line 471
    .end local v0    # "choiceIntent":Landroid/content/Intent;
    .end local v2    # "chosenActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "chosenName":Landroid/content/ComponentName;
    .end local v5    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :catchall_0
    move-exception v6

    #@54
    monitor-exit v7

    #@55
    throw v6
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 663
    invoke-super {p0}, Landroid/database/DataSetObservable;->finalize()V

    #@3
    .line 664
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    #@8
    .line 662
    return-void
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 424
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 425
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 426
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@8
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@e
    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 424
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getActivityCount()I
    .locals 2

    #@0
    .prologue
    .line 409
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 410
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 411
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    .line 409
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "activity"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 438
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 439
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 440
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@8
    .line 441
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    .line 442
    .local v1, "activityCount":I
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    #@f
    .line 443
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@15
    .line 444
    .local v2, "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v4, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    if-ne v4, p1, :cond_0

    #@19
    monitor-exit v5

    #@1a
    .line 445
    return v3

    #@1b
    .line 442
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 448
    .end local v2    # "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_1
    const/4 v4, -0x1

    #@1f
    monitor-exit v5

    #@20
    return v4

    #@21
    .line 438
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .end local v1    # "activityCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@22
    monitor-exit v5

    #@23
    throw v4
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 3

    #@0
    .prologue
    .line 526
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 527
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 528
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 529
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@10
    const/4 v2, 0x0

    #@11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@17
    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    return-object v0

    #@1b
    :cond_0
    monitor-exit v1

    #@1c
    .line 532
    const/4 v0, 0x0

    #@1d
    return-object v0

    #@1e
    .line 526
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method public getHistoryMaxSize()I
    .locals 2

    #@0
    .prologue
    .line 644
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 645
    :try_start_0
    iget v1, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 644
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getHistorySize()I
    .locals 2

    #@0
    .prologue
    .line 655
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 656
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 657
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    .line 655
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 397
    :try_start_0
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 396
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setActivitySorter(Landroid/widget/ActivityChooserModel$ActivitySorter;)V
    .locals 2
    .param p1, "activitySorter"    # Landroid/widget/ActivityChooserModel$ActivitySorter;

    #@0
    .prologue
    .line 601
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 602
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ne v0, p1, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 603
    return-void

    #@9
    .line 605
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    #@b
    .line 606
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 607
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    :cond_1
    monitor-exit v1

    #@15
    .line 600
    return-void

    #@16
    .line 601
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public setDefaultActivity(I)V
    .locals 10
    .param p1, "index"    # I

    #@0
    .prologue
    .line 546
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 547
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    #@6
    .line 549
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@8
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@e
    .line 550
    .local v2, "newDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    #@10
    const/4 v7, 0x0

    #@11
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    #@17
    .line 553
    .local v3, "oldDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v3, :cond_0

    #@19
    .line 555
    iget v5, v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@1b
    iget v7, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@1d
    sub-float/2addr v5, v7

    #@1e
    .line 556
    const/high16 v7, 0x40a00000    # 5.0f

    #@20
    .line 555
    add-float v4, v5, v7

    #@22
    .line 561
    .local v4, "weight":F
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    #@24
    .line 562
    iget-object v5, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@26
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@28
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2a
    .line 563
    iget-object v7, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@2c
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2e
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@30
    .line 561
    invoke-direct {v0, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 564
    .local v0, "defaultName":Landroid/content/ComponentName;
    new-instance v1, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    #@35
    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@38
    move-result-wide v8

    #@39
    .line 564
    invoke-direct {v1, v0, v8, v9, v4}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    #@3c
    .line 566
    .local v1, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v1}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v6

    #@40
    .line 545
    return-void

    #@41
    .line 558
    .end local v0    # "defaultName":Landroid/content/ComponentName;
    .end local v1    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v4    # "weight":F
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    #@43
    .restart local v4    # "weight":F
    goto :goto_0

    #@44
    .line 546
    .end local v2    # "newDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "oldDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v4    # "weight":F
    :catchall_0
    move-exception v5

    #@45
    monitor-exit v6

    #@46
    throw v5
.end method

.method public setHistoryMaxSize(I)V
    .locals 2
    .param p1, "historyMaxSize"    # I

    #@0
    .prologue
    .line 626
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 627
    :try_start_0
    iget v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ne v0, p1, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 628
    return-void

    #@9
    .line 630
    :cond_0
    :try_start_1
    iput p1, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    #@b
    .line 631
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    #@e
    .line 632
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 633
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    :cond_1
    monitor-exit v1

    #@18
    .line 625
    return-void

    #@19
    .line 626
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 380
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 381
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ne v0, p1, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 382
    return-void

    #@9
    .line 384
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    #@b
    .line 385
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    #@e
    .line 386
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 379
    return-void

    #@13
    .line 380
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    #@0
    .prologue
    .line 511
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 512
    :try_start_0
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 510
    return-void

    #@7
    .line 511
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

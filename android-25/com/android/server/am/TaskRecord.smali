.class final Lcom/android/server/am/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_FIRSTACTIVETIME:Ljava/lang/String; = "first_active_time"

.field private static final ATTR_LASTACTIVETIME:Ljava/lang/String; = "last_active_time"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_PRIVILEGED:Ljava/lang/String; = "privileged"

.field static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"

.field static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field static final INVALID_MIN_SIZE:I = -0x1

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String;

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String;

.field private static final TAG_RECENTS:Ljava/lang/String;

.field private static final TAG_TASKS:Ljava/lang/String;

.field private static final TASK_THUMBNAIL_SUFFIX:Ljava/lang/String; = "_task_thumbnail"


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field firstActiveTime:J

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mBounds:Landroid/graphics/Rect;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private final mFilename:Ljava/lang/String;

.field mFullscreen:Z

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field private mLastThumbnail:Landroid/graphics/Bitmap;

.field private final mLastThumbnailFile:Ljava/io/File;

.field private mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskMode:I

.field mLockTaskUid:I

.field mMinHeight:I

.field mMinWidth:I

.field mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field mOverrideConfig:Landroid/content/res/Configuration;

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field private mPrivileged:Z

.field mResizeMode:I

.field private mReuseTask:Z

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTaskToReturnTo:I

.field mTemporarilyUnresizable:Z

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserSetupComplete:Z

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stack:Lcom/android/server/am/ActivityStack;

.field stringName:Ljava/lang/String;

.field final taskId:I

.field taskType:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 96
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    #@5
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_ADD_REMOVE:Ljava/lang/String;

    #@1c
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_RECENTS:Ljava/lang/String;

    #@33
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_LOCKTASK:Ljava/lang/String;

    #@4a
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_TASKS:Ljava/lang/String;

    #@61
    .line 95
    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;IIIIILjava/lang/String;IZZZII)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_taskType"    # I
    .param p13, "_userId"    # I
    .param p14, "_effectiveUid"    # I
    .param p15, "_lastDescription"    # Ljava/lang/String;
    .param p17, "_firstActiveTime"    # J
    .param p19, "_lastActiveTime"    # J
    .param p21, "lastTimeMoved"    # J
    .param p23, "neverRelinquishIdentity"    # Z
    .param p24, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p25, "lastThumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;
    .param p26, "taskAffiliation"    # I
    .param p27, "prevTaskId"    # I
    .param p28, "nextTaskId"    # I
    .param p29, "taskAffiliationColor"    # I
    .param p30, "callingUid"    # I
    .param p31, "callingPackage"    # Ljava/lang/String;
    .param p32, "resizeMode"    # I
    .param p33, "privileged"    # Z
    .param p34, "_realActivitySuspended"    # Z
    .param p35, "userSetupComplete"    # Z
    .param p36, "minWidth"    # I
    .param p37, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZIII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JJJZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "Landroid/app/ActivityManager$TaskThumbnailInfo;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    .local p16, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 191
    const/4 v2, 0x1

    #@4
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@6
    .line 193
    const/4 v2, -0x1

    #@7
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    #@9
    .line 197
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    #@b
    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@e
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@10
    .line 209
    const/4 v2, 0x0

    #@11
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@13
    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v2

    #@17
    iput-wide v2, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@19
    .line 220
    const/4 v2, 0x0

    #@1a
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@1c
    .line 223
    const/4 v2, 0x1

    #@1d
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@1f
    .line 227
    const/4 v2, 0x0

    #@20
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@22
    .line 238
    const/4 v2, -0x1

    #@23
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@25
    .line 240
    const/4 v2, -0x1

    #@26
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@28
    .line 249
    const/4 v2, 0x1

    #@29
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@2b
    .line 252
    const/4 v2, 0x0

    #@2c
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@2e
    .line 253
    new-instance v2, Landroid/graphics/Rect;

    #@30
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@33
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    #@35
    .line 254
    new-instance v2, Landroid/graphics/Rect;

    #@37
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@3a
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    #@3c
    .line 255
    new-instance v2, Landroid/graphics/Rect;

    #@3e
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@41
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    #@43
    .line 256
    new-instance v2, Landroid/graphics/Rect;

    #@45
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@48
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@4a
    .line 261
    const/4 v2, 0x0

    #@4b
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    #@4d
    .line 269
    const/4 v2, -0x1

    #@4e
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    #@50
    .line 271
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@52
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@54
    .line 336
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@56
    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    const-string/jumbo v3, "_task_thumbnail"

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    .line 338
    const-string/jumbo v3, ".png"

    #@6d
    .line 337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@77
    .line 339
    new-instance v2, Ljava/io/File;

    #@79
    invoke-static/range {p13 .. p13}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    #@7c
    move-result-object v3

    #@7d
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@7f
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@82
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@84
    .line 340
    move-object/from16 v0, p25

    #@86
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@88
    .line 341
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@8a
    .line 342
    iput-object p3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@8c
    .line 343
    iput-object p4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@8e
    .line 344
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@90
    .line 345
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@92
    .line 346
    const/4 v2, 0x0

    #@93
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@95
    .line 347
    const/4 v2, 0x0

    #@96
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@98
    .line 348
    iput-object p7, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@9a
    .line 349
    move/from16 v0, p34

    #@9c
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    #@9e
    .line 350
    iput-object p8, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@a0
    .line 351
    iput-boolean p9, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@a2
    .line 352
    const/4 v2, 0x1

    #@a3
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@a5
    .line 353
    iput-boolean p10, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@a7
    .line 354
    move/from16 v0, p11

    #@a9
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    #@ab
    .line 355
    move/from16 v0, p12

    #@ad
    iput v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@af
    .line 356
    const/4 v2, 0x1

    #@b0
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@b2
    .line 357
    move/from16 v0, p13

    #@b4
    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@b6
    .line 358
    move/from16 v0, p35

    #@b8
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    #@ba
    .line 359
    move/from16 v0, p14

    #@bc
    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    #@be
    .line 360
    move-wide/from16 v0, p17

    #@c0
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    #@c2
    .line 361
    move-wide/from16 v0, p19

    #@c4
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@c6
    .line 362
    move-object/from16 v0, p15

    #@c8
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@ca
    .line 363
    move-object/from16 v0, p16

    #@cc
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@ce
    .line 364
    move-wide/from16 v0, p21

    #@d0
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@d2
    .line 365
    move/from16 v0, p23

    #@d4
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@d6
    .line 366
    move-object/from16 v0, p24

    #@d8
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@da
    .line 367
    move/from16 v0, p26

    #@dc
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@de
    .line 368
    move/from16 v0, p29

    #@e0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    #@e2
    .line 369
    move/from16 v0, p27

    #@e4
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@e6
    .line 370
    move/from16 v0, p28

    #@e8
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@ea
    .line 371
    move/from16 v0, p30

    #@ec
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@ee
    .line 372
    move-object/from16 v0, p31

    #@f0
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@f2
    .line 373
    move/from16 v0, p32

    #@f4
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    #@f6
    .line 374
    move/from16 v0, p33

    #@f8
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    #@fa
    .line 375
    move/from16 v0, p36

    #@fc
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    #@fe
    .line 376
    move/from16 v0, p37

    #@100
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    #@102
    .line 335
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p6, "thumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 191
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@9
    .line 193
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    #@b
    .line 197
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    #@d
    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@12
    .line 209
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@14
    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@1a
    .line 220
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@1c
    .line 223
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@1e
    .line 227
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@20
    .line 238
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@22
    .line 240
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@24
    .line 249
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@26
    .line 252
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@28
    .line 253
    new-instance v0, Landroid/graphics/Rect;

    #@2a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    #@2f
    .line 254
    new-instance v0, Landroid/graphics/Rect;

    #@31
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@34
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    #@36
    .line 255
    new-instance v0, Landroid/graphics/Rect;

    #@38
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3b
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    #@3d
    .line 256
    new-instance v0, Landroid/graphics/Rect;

    #@3f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@42
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@44
    .line 261
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    #@46
    .line 269
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    #@48
    .line 271
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@4a
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@4c
    .line 296
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4e
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    const-string/jumbo v1, "_task_thumbnail"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 298
    const-string/jumbo v1, ".png"

    #@65
    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@6f
    .line 299
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@71
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@73
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@76
    move-result v0

    #@77
    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@79
    .line 300
    new-instance v0, Ljava/io/File;

    #@7b
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@7d
    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    #@80
    move-result-object v1

    #@81
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@83
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@86
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@88
    .line 301
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@8a
    .line 302
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@8c
    .line 303
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@8e
    .line 304
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@90
    .line 305
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@92
    .line 306
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@94
    .line 307
    new-instance v0, Ljava/util/ArrayList;

    #@96
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@99
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@9b
    .line 308
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9d
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@9f
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@a1
    .line 309
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@a3
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@a5
    .line 310
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    #@a8
    .line 311
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    #@ab
    .line 313
    iput v4, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@ad
    .line 314
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@af
    .line 316
    iget v0, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@b1
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@b4
    move-result v0

    #@b5
    .line 317
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    #@b8
    move-result v1

    #@b9
    .line 316
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@bc
    move-result v0

    #@bd
    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    #@bf
    .line 319
    iput v4, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@c1
    .line 320
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@c3
    .line 321
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@c5
    .line 322
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    #@c8
    .line 295
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, -0x1

    #@4
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 191
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@9
    .line 193
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    #@b
    .line 197
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    #@d
    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@12
    .line 209
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@14
    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@1a
    .line 220
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@1c
    .line 223
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@1e
    .line 227
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@20
    .line 238
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@22
    .line 240
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@24
    .line 249
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@26
    .line 252
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@28
    .line 253
    new-instance v0, Landroid/graphics/Rect;

    #@2a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    #@2f
    .line 254
    new-instance v0, Landroid/graphics/Rect;

    #@31
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@34
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    #@36
    .line 255
    new-instance v0, Landroid/graphics/Rect;

    #@38
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3b
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    #@3d
    .line 256
    new-instance v0, Landroid/graphics/Rect;

    #@3f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@42
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@44
    .line 261
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    #@46
    .line 269
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    #@48
    .line 271
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@4a
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@4c
    .line 275
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4e
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    const-string/jumbo v1, "_task_thumbnail"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 277
    const-string/jumbo v1, ".png"

    #@65
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@6f
    .line 278
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@71
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@73
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@76
    move-result v0

    #@77
    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@79
    .line 279
    new-instance v0, Ljava/io/File;

    #@7b
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@7d
    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    #@80
    move-result-object v1

    #@81
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@83
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@86
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@88
    .line 280
    new-instance v0, Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@8a
    invoke-direct {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>()V

    #@8d
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@8f
    .line 281
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@91
    .line 282
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@93
    .line 283
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@95
    .line 284
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@97
    .line 285
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@99
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    #@9b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9e
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@a0
    .line 287
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a2
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@a4
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@a6
    .line 288
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@a8
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@aa
    .line 289
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    #@ad
    .line 290
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    #@b0
    .line 291
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    #@b3
    .line 274
    return-void
.end method

.method private adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 1395
    if-nez p1, :cond_0

    #@3
    .line 1396
    return-void

    #@4
    .line 1398
    :cond_0
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    #@6
    .line 1399
    .local v3, "minWidth":I
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    #@8
    .line 1403
    .local v2, "minHeight":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@a
    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@c
    const/4 v5, 0x4

    #@d
    if-eq v4, v5, :cond_2

    #@f
    .line 1404
    if-ne v3, v6, :cond_1

    #@11
    .line 1405
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@13
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@15
    iget v3, v4, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    #@17
    .line 1407
    :cond_1
    if-ne v2, v6, :cond_2

    #@19
    .line 1408
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1b
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1d
    iget v2, v4, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    #@1f
    .line 1411
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@22
    move-result v4

    #@23
    if-le v3, v4, :cond_3

    #@25
    const/4 v1, 0x1

    #@26
    .line 1412
    .local v1, "adjustWidth":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@29
    move-result v4

    #@2a
    if-le v2, v4, :cond_4

    #@2c
    const/4 v0, 0x1

    #@2d
    .line 1413
    .local v0, "adjustHeight":Z
    :goto_1
    if-nez v1, :cond_5

    #@2f
    move v4, v0

    #@30
    :goto_2
    if-nez v4, :cond_6

    #@32
    .line 1414
    return-void

    #@33
    .line 1411
    .end local v0    # "adjustHeight":Z
    .end local v1    # "adjustWidth":Z
    :cond_3
    const/4 v1, 0x0

    #@34
    .restart local v1    # "adjustWidth":Z
    goto :goto_0

    #@35
    .line 1412
    :cond_4
    const/4 v0, 0x0

    #@36
    .restart local v0    # "adjustHeight":Z
    goto :goto_1

    #@37
    .line 1413
    :cond_5
    const/4 v4, 0x1

    #@38
    goto :goto_2

    #@39
    .line 1417
    :cond_6
    if-eqz v1, :cond_7

    #@3b
    .line 1418
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@3d
    if-eqz v4, :cond_9

    #@3f
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@41
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@43
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@45
    if-ne v4, v5, :cond_9

    #@47
    .line 1419
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@49
    sub-int/2addr v4, v3

    #@4a
    iput v4, p1, Landroid/graphics/Rect;->left:I

    #@4c
    .line 1426
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    #@4e
    .line 1427
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@50
    if-eqz v4, :cond_a

    #@52
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@54
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@56
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@58
    if-ne v4, v5, :cond_a

    #@5a
    .line 1428
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@5c
    sub-int/2addr v4, v2

    #@5d
    iput v4, p1, Landroid/graphics/Rect;->top:I

    #@5f
    .line 1394
    :cond_8
    :goto_4
    return-void

    #@60
    .line 1423
    :cond_9
    iget v4, p1, Landroid/graphics/Rect;->left:I

    #@62
    add-int/2addr v4, v3

    #@63
    iput v4, p1, Landroid/graphics/Rect;->right:I

    #@65
    goto :goto_3

    #@66
    .line 1432
    :cond_a
    iget v4, p1, Landroid/graphics/Rect;->top:I

    #@68
    add-int/2addr v4, v2

    #@69
    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    #@6b
    goto :goto_4
.end method

.method private calculateOverrideConfig(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/content/res/Configuration;
    .locals 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    #@0
    .prologue
    .line 1514
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 1515
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a
    .line 1517
    iget-object v9, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    #@c
    if-eqz p2, :cond_0

    #@e
    move-object v8, p2

    #@f
    .line 1516
    :goto_0
    invoke-direct {p0, v9, v8, p3, p4}, Lcom/android/server/am/TaskRecord;->subtractNonDecorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    #@12
    .line 1520
    iget-object v9, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    #@14
    if-eqz p2, :cond_1

    #@16
    move-object v8, p2

    #@17
    .line 1519
    :goto_1
    invoke-direct {p0, v9, v8, p3, p4}, Lcom/android/server/am/TaskRecord;->subtractStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    #@1a
    .line 1525
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c
    iget-object v5, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@1e
    .line 1526
    .local v5, "serviceConfig":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    #@20
    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@22
    invoke-direct {v2, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@25
    .line 1528
    .local v2, "config":Landroid/content/res/Configuration;
    iget v8, v5, Landroid/content/res/Configuration;->densityDpi:I

    #@27
    int-to-float v8, v8

    #@28
    const v9, 0x3bcccccd    # 0.00625f

    #@2b
    mul-float v3, v8, v9

    #@2d
    .line 1530
    .local v3, "density":F
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    #@2f
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@32
    move-result v8

    #@33
    int-to-float v8, v8

    #@34
    div-float/2addr v8, v3

    #@35
    float-to-int v8, v8

    #@36
    iget v9, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    #@38
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@3b
    move-result v8

    #@3c
    .line 1529
    iput v8, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    #@3e
    .line 1532
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    #@40
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@43
    move-result v8

    #@44
    int-to-float v8, v8

    #@45
    div-float/2addr v8, v3

    #@46
    float-to-int v8, v8

    #@47
    iget v9, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    #@49
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@4c
    move-result v8

    #@4d
    .line 1531
    iput v8, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    #@4f
    .line 1535
    iget v8, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    #@51
    iget v9, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    #@53
    if-gt v8, v9, :cond_2

    #@55
    .line 1536
    const/4 v8, 0x1

    #@56
    .line 1535
    :goto_2
    iput v8, v2, Landroid/content/res/Configuration;->orientation:I

    #@58
    .line 1542
    iget v8, v5, Landroid/content/res/Configuration;->fontScale:F

    #@5a
    iput v8, v2, Landroid/content/res/Configuration;->fontScale:F

    #@5c
    .line 1547
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    #@5e
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@61
    move-result v8

    #@62
    int-to-float v8, v8

    #@63
    div-float/2addr v8, v3

    #@64
    float-to-int v1, v8

    #@65
    .line 1548
    .local v1, "compatScreenWidthDp":I
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    #@67
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@6a
    move-result v8

    #@6b
    int-to-float v8, v8

    #@6c
    div-float/2addr v8, v3

    #@6d
    float-to-int v0, v8

    #@6e
    .line 1549
    .local v0, "compatScreenHeightDp":I
    iget v8, v5, Landroid/content/res/Configuration;->screenLayout:I

    #@70
    invoke-static {v8}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    #@73
    move-result v7

    #@74
    .line 1550
    .local v7, "sl":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@77
    move-result v4

    #@78
    .line 1551
    .local v4, "longSize":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@7b
    move-result v6

    #@7c
    .line 1552
    .local v6, "shortSize":I
    invoke-static {v7, v4, v6}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    #@7f
    move-result v8

    #@80
    iput v8, v2, Landroid/content/res/Configuration;->screenLayout:I

    #@82
    .line 1554
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@84
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@86
    .line 1555
    if-eqz p2, :cond_3

    #@88
    .line 1554
    .end local p2    # "insetBounds":Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {v8, p2}, Lcom/android/server/wm/WindowManagerService;->getSmallestWidthForTaskBounds(Landroid/graphics/Rect;)I

    #@8b
    move-result v8

    #@8c
    iput v8, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@8e
    .line 1556
    return-object v2

    #@8f
    .end local v0    # "compatScreenHeightDp":I
    .end local v1    # "compatScreenWidthDp":I
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "density":F
    .end local v4    # "longSize":I
    .end local v5    # "serviceConfig":Landroid/content/res/Configuration;
    .end local v6    # "shortSize":I
    .end local v7    # "sl":I
    .restart local p2    # "insetBounds":Landroid/graphics/Rect;
    :cond_0
    move-object v8, p1

    #@90
    .line 1517
    goto/16 :goto_0

    #@92
    :cond_1
    move-object v8, p1

    #@93
    .line 1520
    goto :goto_1

    #@94
    .line 1537
    .restart local v2    # "config":Landroid/content/res/Configuration;
    .restart local v3    # "density":F
    .restart local v5    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_2
    const/4 v8, 0x2

    #@95
    goto :goto_2

    #@96
    .restart local v0    # "compatScreenHeightDp":I
    .restart local v1    # "compatScreenWidthDp":I
    .restart local v4    # "longSize":I
    .restart local v6    # "shortSize":I
    .restart local v7    # "sl":I
    :cond_3
    move-object p2, p1

    #@97
    .line 1555
    goto :goto_3
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .locals 58
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1216
    const/4 v8, 0x0

    #@1
    .line 1217
    .local v8, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    #@2
    .line 1218
    .local v9, "affinityIntent":Landroid/content/Intent;
    new-instance v21, Ljava/util/ArrayList;

    #@4
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 1219
    .local v21, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v12, 0x0

    #@8
    .line 1220
    .local v12, "realActivity":Landroid/content/ComponentName;
    const/16 v39, 0x0

    #@a
    .line 1221
    .local v39, "realActivitySuspended":Z
    const/4 v13, 0x0

    #@b
    .line 1222
    .local v13, "origActivity":Landroid/content/ComponentName;
    const/4 v10, 0x0

    #@c
    .line 1223
    .local v10, "affinity":Ljava/lang/String;
    const/4 v11, 0x0

    #@d
    .line 1224
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v52, 0x0

    #@f
    .line 1225
    .local v52, "hasRootAffinity":Z
    const/4 v14, 0x0

    #@10
    .line 1226
    .local v14, "rootHasReset":Z
    const/4 v15, 0x0

    #@11
    .line 1227
    .local v15, "autoRemoveRecents":Z
    const/16 v16, 0x0

    #@13
    .line 1228
    .local v16, "askedCompatMode":Z
    const/16 v17, 0x0

    #@15
    .line 1229
    .local v17, "taskType":I
    const/16 v18, 0x0

    #@17
    .line 1230
    .local v18, "userId":I
    const/16 v40, 0x1

    #@19
    .line 1231
    .local v40, "userSetupComplete":Z
    const/16 v19, -0x1

    #@1b
    .line 1232
    .local v19, "effectiveUid":I
    const/16 v20, 0x0

    #@1d
    .line 1233
    .local v20, "lastDescription":Ljava/lang/String;
    const-wide/16 v22, -0x1

    #@1f
    .line 1234
    .local v22, "firstActiveTime":J
    const-wide/16 v24, -0x1

    #@21
    .line 1235
    .local v24, "lastActiveTime":J
    const-wide/16 v26, 0x0

    #@23
    .line 1236
    .local v26, "lastTimeOnTop":J
    const/16 v28, 0x1

    #@25
    .line 1237
    .local v28, "neverRelinquishIdentity":Z
    const/4 v7, -0x1

    #@26
    .line 1238
    .local v7, "taskId":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@29
    move-result v54

    #@2a
    .line 1239
    .local v54, "outerDepth":I
    new-instance v29, Landroid/app/ActivityManager$TaskDescription;

    #@2c
    invoke-direct/range {v29 .. v29}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@2f
    .line 1240
    .local v29, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    new-instance v30, Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@31
    invoke-direct/range {v30 .. v30}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>()V

    #@34
    .line 1241
    .local v30, "thumbnailInfo":Landroid/app/ActivityManager$TaskThumbnailInfo;
    const/16 v31, -0x1

    #@36
    .line 1242
    .local v31, "taskAffiliation":I
    const/16 v34, 0x0

    #@38
    .line 1243
    .local v34, "taskAffiliationColor":I
    const/16 v32, -0x1

    #@3a
    .line 1244
    .local v32, "prevTaskId":I
    const/16 v33, -0x1

    #@3c
    .line 1245
    .local v33, "nextTaskId":I
    const/16 v35, -0x1

    #@3e
    .line 1246
    .local v35, "callingUid":I
    const-string/jumbo v36, ""

    #@41
    .line 1247
    .local v36, "callingPackage":Ljava/lang/String;
    const/16 v37, 0x4

    #@43
    .line 1248
    .local v37, "resizeMode":I
    const/16 v38, 0x0

    #@45
    .line 1249
    .local v38, "privileged":Z
    const/16 v48, 0x0

    #@47
    .line 1250
    .local v48, "bounds":Landroid/graphics/Rect;
    const/16 v41, -0x1

    #@49
    .line 1251
    .local v41, "minWidth":I
    const/16 v42, -0x1

    #@4b
    .line 1253
    .local v42, "minHeight":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@4e
    move-result v6

    #@4f
    add-int/lit8 v46, v6, -0x1

    #@51
    .end local v10    # "affinity":Ljava/lang/String;
    .end local v11    # "rootAffinity":Ljava/lang/String;
    .end local v12    # "realActivity":Landroid/content/ComponentName;
    .end local v13    # "origActivity":Landroid/content/ComponentName;
    .end local v14    # "rootHasReset":Z
    .end local v15    # "autoRemoveRecents":Z
    .end local v16    # "askedCompatMode":Z
    .end local v20    # "lastDescription":Ljava/lang/String;
    .end local v28    # "neverRelinquishIdentity":Z
    .end local v38    # "privileged":Z
    .end local v39    # "realActivitySuspended":Z
    .end local v40    # "userSetupComplete":Z
    .end local v48    # "bounds":Landroid/graphics/Rect;
    .local v46, "attrNdx":I
    :goto_0
    if-ltz v46, :cond_21

    #@53
    .line 1254
    move-object/from16 v0, p0

    #@55
    move/from16 v1, v46

    #@57
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@5a
    move-result-object v45

    #@5b
    .line 1255
    .local v45, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5d
    move/from16 v1, v46

    #@5f
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@62
    move-result-object v47

    #@63
    .line 1258
    .local v47, "attrValue":Ljava/lang/String;
    const-string/jumbo v6, "task_id"

    #@66
    move-object/from16 v0, v45

    #@68
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v6

    #@6c
    if-eqz v6, :cond_1

    #@6e
    .line 1259
    const/4 v6, -0x1

    #@6f
    if-ne v7, v6, :cond_0

    #@71
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@74
    move-result v7

    #@75
    .line 1253
    :cond_0
    :goto_1
    add-int/lit8 v46, v46, -0x1

    #@77
    goto :goto_0

    #@78
    .line 1260
    :cond_1
    const-string/jumbo v6, "real_activity"

    #@7b
    move-object/from16 v0, v45

    #@7d
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v6

    #@81
    if-eqz v6, :cond_2

    #@83
    .line 1261
    invoke-static/range {v47 .. v47}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@86
    move-result-object v12

    #@87
    .local v12, "realActivity":Landroid/content/ComponentName;
    goto :goto_1

    #@88
    .line 1262
    .end local v12    # "realActivity":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v6, "real_activity_suspended"

    #@8b
    move-object/from16 v0, v45

    #@8d
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v6

    #@91
    if-eqz v6, :cond_3

    #@93
    .line 1263
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@96
    move-result-object v6

    #@97
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@9a
    move-result v39

    #@9b
    .local v39, "realActivitySuspended":Z
    goto :goto_1

    #@9c
    .line 1264
    .end local v39    # "realActivitySuspended":Z
    :cond_3
    const-string/jumbo v6, "orig_activity"

    #@9f
    move-object/from16 v0, v45

    #@a1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v6

    #@a5
    if-eqz v6, :cond_4

    #@a7
    .line 1265
    invoke-static/range {v47 .. v47}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@aa
    move-result-object v13

    #@ab
    .local v13, "origActivity":Landroid/content/ComponentName;
    goto :goto_1

    #@ac
    .line 1266
    .end local v13    # "origActivity":Landroid/content/ComponentName;
    :cond_4
    const-string/jumbo v6, "affinity"

    #@af
    move-object/from16 v0, v45

    #@b1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v6

    #@b5
    if-eqz v6, :cond_5

    #@b7
    .line 1267
    move-object/from16 v10, v47

    #@b9
    .local v10, "affinity":Ljava/lang/String;
    goto :goto_1

    #@ba
    .line 1268
    .end local v10    # "affinity":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "root_affinity"

    #@bd
    move-object/from16 v0, v45

    #@bf
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v6

    #@c3
    if-eqz v6, :cond_6

    #@c5
    .line 1269
    move-object/from16 v11, v47

    #@c7
    .line 1270
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v52, 0x1

    #@c9
    goto :goto_1

    #@ca
    .line 1271
    .end local v11    # "rootAffinity":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "root_has_reset"

    #@cd
    move-object/from16 v0, v45

    #@cf
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d2
    move-result v6

    #@d3
    if-eqz v6, :cond_7

    #@d5
    .line 1272
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@d8
    move-result-object v6

    #@d9
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@dc
    move-result v14

    #@dd
    .local v14, "rootHasReset":Z
    goto :goto_1

    #@de
    .line 1273
    .end local v14    # "rootHasReset":Z
    :cond_7
    const-string/jumbo v6, "auto_remove_recents"

    #@e1
    move-object/from16 v0, v45

    #@e3
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e6
    move-result v6

    #@e7
    if-eqz v6, :cond_8

    #@e9
    .line 1274
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@ec
    move-result-object v6

    #@ed
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@f0
    move-result v15

    #@f1
    .local v15, "autoRemoveRecents":Z
    goto :goto_1

    #@f2
    .line 1275
    .end local v15    # "autoRemoveRecents":Z
    :cond_8
    const-string/jumbo v6, "asked_compat_mode"

    #@f5
    move-object/from16 v0, v45

    #@f7
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fa
    move-result v6

    #@fb
    if-eqz v6, :cond_9

    #@fd
    .line 1276
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@100
    move-result-object v6

    #@101
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@104
    move-result v16

    #@105
    .local v16, "askedCompatMode":Z
    goto/16 :goto_1

    #@107
    .line 1277
    .end local v16    # "askedCompatMode":Z
    :cond_9
    const-string/jumbo v6, "user_id"

    #@10a
    move-object/from16 v0, v45

    #@10c
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10f
    move-result v6

    #@110
    if-eqz v6, :cond_a

    #@112
    .line 1278
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@115
    move-result v18

    #@116
    goto/16 :goto_1

    #@118
    .line 1279
    :cond_a
    const-string/jumbo v6, "user_setup_complete"

    #@11b
    move-object/from16 v0, v45

    #@11d
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@120
    move-result v6

    #@121
    if-eqz v6, :cond_b

    #@123
    .line 1280
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@126
    move-result-object v6

    #@127
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@12a
    move-result v40

    #@12b
    .local v40, "userSetupComplete":Z
    goto/16 :goto_1

    #@12d
    .line 1281
    .end local v40    # "userSetupComplete":Z
    :cond_b
    const-string/jumbo v6, "effective_uid"

    #@130
    move-object/from16 v0, v45

    #@132
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@135
    move-result v6

    #@136
    if-eqz v6, :cond_c

    #@138
    .line 1282
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13b
    move-result v19

    #@13c
    goto/16 :goto_1

    #@13e
    .line 1283
    :cond_c
    const-string/jumbo v6, "task_type"

    #@141
    move-object/from16 v0, v45

    #@143
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@146
    move-result v6

    #@147
    if-eqz v6, :cond_d

    #@149
    .line 1284
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@14c
    move-result v17

    #@14d
    goto/16 :goto_1

    #@14f
    .line 1285
    :cond_d
    const-string/jumbo v6, "first_active_time"

    #@152
    move-object/from16 v0, v45

    #@154
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@157
    move-result v6

    #@158
    if-eqz v6, :cond_e

    #@15a
    .line 1286
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@15d
    move-result-object v6

    #@15e
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@161
    move-result-wide v22

    #@162
    goto/16 :goto_1

    #@164
    .line 1287
    :cond_e
    const-string/jumbo v6, "last_active_time"

    #@167
    move-object/from16 v0, v45

    #@169
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16c
    move-result v6

    #@16d
    if-eqz v6, :cond_f

    #@16f
    .line 1288
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@172
    move-result-object v6

    #@173
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@176
    move-result-wide v24

    #@177
    goto/16 :goto_1

    #@179
    .line 1289
    :cond_f
    const-string/jumbo v6, "last_description"

    #@17c
    move-object/from16 v0, v45

    #@17e
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@181
    move-result v6

    #@182
    if-eqz v6, :cond_10

    #@184
    .line 1290
    move-object/from16 v20, v47

    #@186
    .local v20, "lastDescription":Ljava/lang/String;
    goto/16 :goto_1

    #@188
    .line 1291
    .end local v20    # "lastDescription":Ljava/lang/String;
    :cond_10
    const-string/jumbo v6, "last_time_moved"

    #@18b
    move-object/from16 v0, v45

    #@18d
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@190
    move-result v6

    #@191
    if-eqz v6, :cond_11

    #@193
    .line 1292
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@196
    move-result-object v6

    #@197
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@19a
    move-result-wide v26

    #@19b
    goto/16 :goto_1

    #@19d
    .line 1293
    :cond_11
    const-string/jumbo v6, "never_relinquish_identity"

    #@1a0
    move-object/from16 v0, v45

    #@1a2
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a5
    move-result v6

    #@1a6
    if-eqz v6, :cond_12

    #@1a8
    .line 1294
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@1ab
    move-result-object v6

    #@1ac
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@1af
    move-result v28

    #@1b0
    .local v28, "neverRelinquishIdentity":Z
    goto/16 :goto_1

    #@1b2
    .line 1295
    .end local v28    # "neverRelinquishIdentity":Z
    :cond_12
    const-string/jumbo v6, "task_thumbnailinfo_"

    #@1b5
    move-object/from16 v0, v45

    #@1b7
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1ba
    move-result v6

    #@1bb
    if-eqz v6, :cond_13

    #@1bd
    .line 1296
    move-object/from16 v0, v30

    #@1bf
    move-object/from16 v1, v45

    #@1c1
    move-object/from16 v2, v47

    #@1c3
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskThumbnailInfo;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    #@1c6
    goto/16 :goto_1

    #@1c8
    .line 1297
    :cond_13
    const-string/jumbo v6, "task_description_"

    #@1cb
    move-object/from16 v0, v45

    #@1cd
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d0
    move-result v6

    #@1d1
    if-eqz v6, :cond_14

    #@1d3
    .line 1298
    move-object/from16 v0, v29

    #@1d5
    move-object/from16 v1, v45

    #@1d7
    move-object/from16 v2, v47

    #@1d9
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    #@1dc
    goto/16 :goto_1

    #@1de
    .line 1299
    :cond_14
    const-string/jumbo v6, "task_affiliation"

    #@1e1
    move-object/from16 v0, v45

    #@1e3
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e6
    move-result v6

    #@1e7
    if-eqz v6, :cond_15

    #@1e9
    .line 1300
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1ec
    move-result v31

    #@1ed
    goto/16 :goto_1

    #@1ef
    .line 1301
    :cond_15
    const-string/jumbo v6, "prev_affiliation"

    #@1f2
    move-object/from16 v0, v45

    #@1f4
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f7
    move-result v6

    #@1f8
    if-eqz v6, :cond_16

    #@1fa
    .line 1302
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1fd
    move-result v32

    #@1fe
    goto/16 :goto_1

    #@200
    .line 1303
    :cond_16
    const-string/jumbo v6, "next_affiliation"

    #@203
    move-object/from16 v0, v45

    #@205
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@208
    move-result v6

    #@209
    if-eqz v6, :cond_17

    #@20b
    .line 1304
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20e
    move-result v33

    #@20f
    goto/16 :goto_1

    #@211
    .line 1305
    :cond_17
    const-string/jumbo v6, "task_affiliation_color"

    #@214
    move-object/from16 v0, v45

    #@216
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@219
    move-result v6

    #@21a
    if-eqz v6, :cond_18

    #@21c
    .line 1306
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@21f
    move-result v34

    #@220
    goto/16 :goto_1

    #@222
    .line 1307
    :cond_18
    const-string/jumbo v6, "calling_uid"

    #@225
    move-object/from16 v0, v45

    #@227
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22a
    move-result v6

    #@22b
    if-eqz v6, :cond_19

    #@22d
    .line 1308
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@230
    move-result v35

    #@231
    goto/16 :goto_1

    #@233
    .line 1309
    :cond_19
    const-string/jumbo v6, "calling_package"

    #@236
    move-object/from16 v0, v45

    #@238
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23b
    move-result v6

    #@23c
    if-eqz v6, :cond_1a

    #@23e
    .line 1310
    move-object/from16 v36, v47

    #@240
    goto/16 :goto_1

    #@242
    .line 1311
    :cond_1a
    const-string/jumbo v6, "resize_mode"

    #@245
    move-object/from16 v0, v45

    #@247
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24a
    move-result v6

    #@24b
    if-eqz v6, :cond_1b

    #@24d
    .line 1312
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@250
    move-result v37

    #@251
    .line 1313
    const/4 v6, 0x1

    #@252
    move/from16 v0, v37

    #@254
    if-ne v0, v6, :cond_0

    #@256
    .line 1314
    const/16 v37, 0x4

    #@258
    goto/16 :goto_1

    #@25a
    .line 1315
    :cond_1b
    const-string/jumbo v6, "privileged"

    #@25d
    move-object/from16 v0, v45

    #@25f
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@262
    move-result v6

    #@263
    if-eqz v6, :cond_1c

    #@265
    .line 1316
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@268
    move-result-object v6

    #@269
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@26c
    move-result v38

    #@26d
    .local v38, "privileged":Z
    goto/16 :goto_1

    #@26f
    .line 1317
    .end local v38    # "privileged":Z
    :cond_1c
    const-string/jumbo v6, "non_fullscreen_bounds"

    #@272
    move-object/from16 v0, v45

    #@274
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@277
    move-result v6

    #@278
    if-eqz v6, :cond_1d

    #@27a
    .line 1318
    invoke-static/range {v47 .. v47}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    #@27d
    move-result-object v48

    #@27e
    .local v48, "bounds":Landroid/graphics/Rect;
    goto/16 :goto_1

    #@280
    .line 1319
    .end local v48    # "bounds":Landroid/graphics/Rect;
    :cond_1d
    const-string/jumbo v6, "min_width"

    #@283
    move-object/from16 v0, v45

    #@285
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@288
    move-result v6

    #@289
    if-eqz v6, :cond_1e

    #@28b
    .line 1320
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@28e
    move-result v41

    #@28f
    goto/16 :goto_1

    #@291
    .line 1321
    :cond_1e
    const-string/jumbo v6, "min_height"

    #@294
    move-object/from16 v0, v45

    #@296
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@299
    move-result v6

    #@29a
    if-eqz v6, :cond_1f

    #@29c
    .line 1322
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@29f
    move-result v42

    #@2a0
    goto/16 :goto_1

    #@2a2
    .line 1324
    :cond_1f
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    #@2a4
    new-instance v56, Ljava/lang/StringBuilder;

    #@2a6
    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    #@2a9
    const-string/jumbo v57, "TaskRecord: Unknown attribute="

    #@2ac
    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v56

    #@2b0
    move-object/from16 v0, v56

    #@2b2
    move-object/from16 v1, v45

    #@2b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b7
    move-result-object v56

    #@2b8
    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bb
    move-result-object v56

    #@2bc
    move-object/from16 v0, v56

    #@2be
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c1
    goto/16 :goto_1

    #@2c3
    .line 1339
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "affinityIntent":Landroid/content/Intent;
    .end local v45    # "attrName":Ljava/lang/String;
    .end local v47    # "attrValue":Ljava/lang/String;
    .local v51, "event":I
    .local v53, "name":Ljava/lang/String;
    :cond_20
    const-string/jumbo v6, "activity"

    #@2c6
    move-object/from16 v0, v53

    #@2c8
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2cb
    move-result v6

    #@2cc
    if-eqz v6, :cond_24

    #@2ce
    .line 1340
    invoke-static/range {p0 .. p1}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    #@2d1
    move-result-object v4

    #@2d2
    .line 1343
    .local v4, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_21

    #@2d4
    .line 1344
    move-object/from16 v0, v21

    #@2d6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d9
    .line 1329
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v51    # "event":I
    .end local v53    # "name":Ljava/lang/String;
    :cond_21
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@2dc
    move-result v51

    #@2dd
    .restart local v51    # "event":I
    const/4 v6, 0x1

    #@2de
    move/from16 v0, v51

    #@2e0
    if-eq v0, v6, :cond_25

    #@2e2
    .line 1330
    const/4 v6, 0x3

    #@2e3
    move/from16 v0, v51

    #@2e5
    if-ne v0, v6, :cond_22

    #@2e7
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@2ea
    move-result v6

    #@2eb
    move/from16 v0, v54

    #@2ed
    if-lt v6, v0, :cond_25

    #@2ef
    .line 1331
    :cond_22
    const/4 v6, 0x2

    #@2f0
    move/from16 v0, v51

    #@2f2
    if-ne v0, v6, :cond_21

    #@2f4
    .line 1332
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2f7
    move-result-object v53

    #@2f8
    .line 1335
    .restart local v53    # "name":Ljava/lang/String;
    const-string/jumbo v6, "affinity_intent"

    #@2fb
    move-object/from16 v0, v53

    #@2fd
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@300
    move-result v6

    #@301
    if-eqz v6, :cond_23

    #@303
    .line 1336
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    #@306
    move-result-object v9

    #@307
    .local v9, "affinityIntent":Landroid/content/Intent;
    goto :goto_2

    #@308
    .line 1337
    .end local v9    # "affinityIntent":Landroid/content/Intent;
    :cond_23
    const-string/jumbo v6, "intent"

    #@30b
    move-object/from16 v0, v53

    #@30d
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@310
    move-result v6

    #@311
    if-eqz v6, :cond_20

    #@313
    .line 1338
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    #@316
    move-result-object v8

    #@317
    .local v8, "intent":Landroid/content/Intent;
    goto :goto_2

    #@318
    .line 1347
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_24
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    #@31a
    new-instance v56, Ljava/lang/StringBuilder;

    #@31c
    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    #@31f
    const-string/jumbo v57, "restoreTask: Unexpected name="

    #@322
    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@325
    move-result-object v56

    #@326
    move-object/from16 v0, v56

    #@328
    move-object/from16 v1, v53

    #@32a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32d
    move-result-object v56

    #@32e
    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@331
    move-result-object v56

    #@332
    move-object/from16 v0, v56

    #@334
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@337
    .line 1348
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@33a
    goto :goto_2

    #@33b
    .line 1352
    .end local v53    # "name":Ljava/lang/String;
    :cond_25
    if-nez v52, :cond_29

    #@33d
    .line 1353
    move-object v11, v10

    #@33e
    .line 1357
    :cond_26
    :goto_3
    if-gtz v19, :cond_28

    #@340
    .line 1358
    if-eqz v8, :cond_2a

    #@342
    move-object/from16 v49, v8

    #@344
    .line 1359
    .local v49, "checkIntent":Landroid/content/Intent;
    :goto_4
    const/16 v19, 0x0

    #@346
    .line 1360
    if-eqz v49, :cond_27

    #@348
    .line 1361
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@34b
    move-result-object v55

    #@34c
    .line 1364
    .local v55, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-virtual/range {v49 .. v49}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@34f
    move-result-object v6

    #@350
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@353
    move-result-object v6

    #@354
    .line 1365
    const/16 v56, 0x2200

    #@356
    .line 1363
    move-object/from16 v0, v55

    #@358
    move/from16 v1, v56

    #@35a
    move/from16 v2, v18

    #@35c
    invoke-interface {v0, v6, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@35f
    move-result-object v44

    #@360
    .line 1367
    .local v44, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v44, :cond_27

    #@362
    .line 1368
    move-object/from16 v0, v44

    #@364
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@366
    move/from16 v19, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@368
    .line 1373
    .end local v44    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v55    # "pm":Landroid/content/pm/IPackageManager;
    :cond_27
    :goto_5
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    #@36a
    new-instance v56, Ljava/lang/StringBuilder;

    #@36c
    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    #@36f
    const-string/jumbo v57, "Updating task #"

    #@372
    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@375
    move-result-object v56

    #@376
    move-object/from16 v0, v56

    #@378
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37b
    move-result-object v56

    #@37c
    const-string/jumbo v57, " for "

    #@37f
    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@382
    move-result-object v56

    #@383
    move-object/from16 v0, v56

    #@385
    move-object/from16 v1, v49

    #@387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38a
    move-result-object v56

    #@38b
    .line 1374
    const-string/jumbo v57, ": effectiveUid="

    #@38e
    .line 1373
    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@391
    move-result-object v56

    #@392
    move-object/from16 v0, v56

    #@394
    move/from16 v1, v19

    #@396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@399
    move-result-object v56

    #@39a
    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39d
    move-result-object v56

    #@39e
    move-object/from16 v0, v56

    #@3a0
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a3
    .line 1377
    .end local v49    # "checkIntent":Landroid/content/Intent;
    :cond_28
    new-instance v5, Lcom/android/server/am/TaskRecord;

    #@3a5
    move-object/from16 v0, p1

    #@3a7
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3a9
    invoke-direct/range {v5 .. v42}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;IIIIILjava/lang/String;IZZZII)V

    #@3ac
    .line 1384
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v48

    #@3ae
    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@3b1
    .line 1386
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@3b4
    move-result v6

    #@3b5
    add-int/lit8 v43, v6, -0x1

    #@3b7
    .local v43, "activityNdx":I
    :goto_6
    if-ltz v43, :cond_2b

    #@3b9
    .line 1387
    move-object/from16 v0, v21

    #@3bb
    move/from16 v1, v43

    #@3bd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c0
    move-result-object v6

    #@3c1
    check-cast v6, Lcom/android/server/am/ActivityRecord;

    #@3c3
    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3c5
    .line 1386
    add-int/lit8 v43, v43, -0x1

    #@3c7
    goto :goto_6

    #@3c8
    .line 1354
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v43    # "activityNdx":I
    :cond_29
    const-string/jumbo v6, "@"

    #@3cb
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3ce
    move-result v6

    #@3cf
    if-eqz v6, :cond_26

    #@3d1
    .line 1355
    const/4 v11, 0x0

    #@3d2
    .local v11, "rootAffinity":Ljava/lang/String;
    goto/16 :goto_3

    #@3d4
    .end local v11    # "rootAffinity":Ljava/lang/String;
    :cond_2a
    move-object/from16 v49, v9

    #@3d6
    .line 1358
    goto/16 :goto_4

    #@3d8
    .line 1391
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v43    # "activityNdx":I
    :cond_2b
    return-object v5

    #@3d9
    .line 1370
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v43    # "activityNdx":I
    .restart local v49    # "checkIntent":Landroid/content/Intent;
    .restart local v55    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v50

    #@3da
    .local v50, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 9
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 399
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@5
    if-nez v4, :cond_6

    #@7
    .line 401
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    #@9
    and-int/lit16 v4, v4, 0x1000

    #@b
    if-nez v4, :cond_5

    #@d
    move v4, v5

    #@e
    .line 400
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@10
    .line 406
    :cond_0
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@12
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@14
    .line 407
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@16
    if-nez v4, :cond_1

    #@18
    .line 411
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@1a
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@1c
    .line 413
    :cond_1
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1e
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@20
    iput v4, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    #@22
    .line 414
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    #@24
    .line 416
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@26
    if-nez v4, :cond_8

    #@28
    .line 417
    if-eqz p1, :cond_3

    #@2a
    .line 421
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    #@2d
    move-result-object v4

    #@2e
    if-nez v4, :cond_2

    #@30
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@33
    move-result-object v4

    #@34
    if-eqz v4, :cond_3

    #@36
    .line 422
    :cond_2
    new-instance v0, Landroid/content/Intent;

    #@38
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@3b
    .line 423
    .end local p1    # "_intent":Landroid/content/Intent;
    .local v0, "_intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    #@3e
    .line 424
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@41
    move-object p1, v0

    #@42
    .line 428
    .end local v0    # "_intent":Landroid/content/Intent;
    .restart local p1    # "_intent":Landroid/content/Intent;
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@44
    .line 429
    if-eqz p1, :cond_7

    #@46
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@49
    move-result-object v4

    #@4a
    :goto_1
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@4c
    .line 430
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@4e
    .line 451
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@50
    if-nez v4, :cond_a

    #@52
    move v1, v6

    #@53
    .line 452
    .local v1, "intentFlags":I
    :goto_3
    const/high16 v4, 0x200000

    #@55
    and-int/2addr v4, v1

    #@56
    if-eqz v4, :cond_4

    #@58
    .line 455
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@5a
    .line 457
    :cond_4
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5c
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@5e
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    #@61
    move-result v4

    #@62
    iput v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@64
    .line 458
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@66
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@68
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6b
    move-result-object v4

    #@6c
    .line 459
    const-string/jumbo v7, "user_setup_complete"

    #@6f
    iget v8, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@71
    .line 458
    invoke-static {v4, v7, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@74
    move-result v4

    #@75
    if-eqz v4, :cond_b

    #@77
    move v4, v5

    #@78
    :goto_4
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    #@7a
    .line 460
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    #@7c
    and-int/lit16 v4, v4, 0x2000

    #@7e
    if-eqz v4, :cond_c

    #@80
    .line 462
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@82
    .line 476
    :goto_5
    iget v4, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@84
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    #@86
    .line 477
    iget v4, p2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@88
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    #@8a
    .line 478
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8c
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@8e
    and-int/lit8 v4, v4, 0x8

    #@90
    if-eqz v4, :cond_f

    #@92
    :goto_6
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    #@94
    .line 479
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    #@97
    .line 398
    return-void

    #@98
    .end local v1    # "intentFlags":I
    :cond_5
    move v4, v6

    #@99
    .line 401
    goto/16 :goto_0

    #@9b
    .line 402
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@9d
    if-eqz v4, :cond_0

    #@9f
    .line 403
    return-void

    #@a0
    :cond_7
    move-object v4, v7

    #@a1
    .line 429
    goto :goto_1

    #@a2
    .line 432
    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    #@a4
    .line 433
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@a6
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@a8
    .line 432
    invoke-direct {v2, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@ab
    .line 434
    .local v2, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_9

    #@ad
    .line 435
    new-instance v3, Landroid/content/Intent;

    #@af
    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@b2
    .line 436
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b5
    .line 437
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    #@b8
    .line 438
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@bb
    .line 441
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@bd
    .line 442
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@bf
    .line 443
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@c2
    move-result-object v4

    #@c3
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@c5
    goto :goto_2

    #@c6
    .line 445
    .end local v3    # "targetIntent":Landroid/content/Intent;
    :cond_9
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@c8
    .line 446
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@ca
    .line 447
    new-instance v4, Landroid/content/ComponentName;

    #@cc
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@ce
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@d0
    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d3
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@d5
    goto/16 :goto_2

    #@d7
    .line 451
    .end local v2    # "targetComponent":Landroid/content/ComponentName;
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@d9
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    #@dc
    move-result v1

    #@dd
    goto/16 :goto_3

    #@df
    .restart local v1    # "intentFlags":I
    :cond_b
    move v4, v6

    #@e0
    .line 458
    goto :goto_4

    #@e1
    .line 463
    :cond_c
    const v4, 0x82000

    #@e4
    and-int/2addr v4, v1

    #@e5
    .line 464
    const/high16 v7, 0x80000

    #@e7
    .line 463
    if-ne v4, v7, :cond_e

    #@e9
    .line 468
    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@eb
    if-eqz v4, :cond_d

    #@ed
    .line 469
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@ef
    goto :goto_5

    #@f0
    .line 471
    :cond_d
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@f2
    goto :goto_5

    #@f3
    .line 474
    :cond_e
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@f5
    goto :goto_5

    #@f6
    :cond_f
    move v5, v6

    #@f7
    .line 478
    goto :goto_6
.end method

.method private setLastThumbnailLocked(Landroid/graphics/Bitmap;III)Z
    .locals 2
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "taskWidth"    # I
    .param p3, "taskHeight"    # I
    .param p4, "screenOrientation"    # I

    #@0
    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@2
    if-eq v0, p1, :cond_2

    #@4
    .line 600
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@6
    .line 601
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@8
    iput p2, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    #@a
    .line 602
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@c
    iput p3, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    #@e
    .line 603
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@10
    iput p4, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    #@12
    .line 604
    if-nez p1, :cond_1

    #@14
    .line 605
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 606
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@1a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@1d
    .line 611
    :cond_0
    :goto_0
    const/4 v0, 0x1

    #@1e
    return v0

    #@1f
    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@21
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@23
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@25
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    #@2c
    goto :goto_0

    #@2d
    .line 613
    :cond_2
    const/4 v0, 0x0

    #@2e
    return v0
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 484
    if-eqz p1, :cond_0

    #@3
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 485
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@9
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    #@b
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    #@d
    .line 486
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@f
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    #@11
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    #@13
    .line 483
    :goto_0
    return-void

    #@14
    .line 488
    :cond_0
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    #@16
    .line 489
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    #@18
    goto :goto_0
.end method

.method private subtractNonDecorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;
    .param p2, "inInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    #@0
    .prologue
    .line 1492
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 1493
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@9
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@b
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->subtractNonDecorInsets(Landroid/graphics/Rect;)V

    #@e
    .line 1494
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@10
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@12
    iget v5, p2, Landroid/graphics/Rect;->left:I

    #@14
    sub-int v1, v4, v5

    #@16
    .line 1495
    .local v1, "leftInset":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@18
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@1a
    iget v5, p2, Landroid/graphics/Rect;->top:I

    #@1c
    sub-int v3, v4, v5

    #@1e
    .line 1496
    .local v3, "topInset":I
    if-eqz p3, :cond_0

    #@20
    const/4 v2, 0x0

    #@21
    .line 1497
    .local v2, "rightInset":I
    :goto_0
    if-eqz p4, :cond_1

    #@23
    const/4 v0, 0x0

    #@24
    .line 1498
    .local v0, "bottomInset":I
    :goto_1
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    #@27
    .line 1491
    return-void

    #@28
    .line 1496
    .end local v0    # "bottomInset":I
    .end local v2    # "rightInset":I
    :cond_0
    iget v4, p2, Landroid/graphics/Rect;->right:I

    #@2a
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@2c
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@2e
    sub-int v2, v4, v5

    #@30
    .restart local v2    # "rightInset":I
    goto :goto_0

    #@31
    .line 1497
    :cond_1
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    #@33
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@35
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@37
    sub-int v0, v4, v5

    #@39
    goto :goto_1
.end method

.method private subtractStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;
    .param p2, "inInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    #@0
    .prologue
    .line 1503
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 1504
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@9
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@b
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->subtractStableInsets(Landroid/graphics/Rect;)V

    #@e
    .line 1505
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@10
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@12
    iget v5, p2, Landroid/graphics/Rect;->left:I

    #@14
    sub-int v1, v4, v5

    #@16
    .line 1506
    .local v1, "leftInset":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@18
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@1a
    iget v5, p2, Landroid/graphics/Rect;->top:I

    #@1c
    sub-int v3, v4, v5

    #@1e
    .line 1507
    .local v3, "topInset":I
    if-eqz p3, :cond_0

    #@20
    const/4 v2, 0x0

    #@21
    .line 1508
    .local v2, "rightInset":I
    :goto_0
    if-eqz p4, :cond_1

    #@23
    const/4 v0, 0x0

    #@24
    .line 1509
    .local v0, "bottomInset":I
    :goto_1
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    #@27
    .line 1502
    return-void

    #@28
    .line 1507
    .end local v0    # "bottomInset":I
    .end local v2    # "rightInset":I
    :cond_0
    iget v4, p2, Landroid/graphics/Rect;->right:I

    #@2a
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@2c
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@2e
    sub-int v2, v4, v5

    #@30
    .restart local v2    # "rightInset":I
    goto :goto_0

    #@31
    .line 1508
    :cond_1
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    #@33
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    #@35
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@37
    sub-int v0, v4, v5

    #@39
    goto :goto_1
.end method

.method static validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1611
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1612
    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Received strange task bounds: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    new-instance v2, Ljava/lang/Throwable;

    #@21
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@24
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 1613
    return-object v3

    #@28
    .line 1615
    :cond_0
    return-object p0
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 753
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    #@4
    .line 752
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 762
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    iget-boolean v2, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 764
    iget v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    iput v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@13
    .line 767
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_3

    #@1b
    .line 768
    iget v2, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@1d
    iput v2, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@1f
    .line 769
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    #@22
    move-result v2

    #@23
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@25
    .line 770
    iget v2, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@27
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@29
    .line 771
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@2b
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@2d
    .line 773
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2f
    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@31
    const/4 v3, 0x1

    #@32
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@35
    move-result v2

    #@36
    .line 774
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    #@39
    move-result v3

    #@3a
    .line 773
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@3d
    move-result v2

    #@3e
    iput v2, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    #@40
    .line 780
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v0

    #@46
    .line 782
    .local v0, "size":I
    if-ne p1, v0, :cond_1

    #@48
    if-lez v0, :cond_1

    #@4a
    .line 783
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@4c
    add-int/lit8 v3, v0, -0x1

    #@4e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@54
    .line 784
    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    #@56
    if-eqz v2, :cond_1

    #@58
    .line 787
    add-int/lit8 p1, p1, -0x1

    #@5a
    .line 791
    .end local v1    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@5f
    .line 792
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    #@62
    .line 793
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_2

    #@68
    .line 794
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6a
    invoke-virtual {v2, p0, v4}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@6d
    .line 760
    :cond_2
    return-void

    #@6e
    .line 777
    .end local v0    # "size":I
    :cond_3
    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@70
    iput v2, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@72
    goto :goto_0
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    #@9
    .line 756
    return-void
.end method

.method autoRemoveFromRecents()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 826
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@4
    if-nez v2, :cond_1

    #@6
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    #@10
    if-eqz v2, :cond_1

    #@12
    :cond_0
    move v0, v1

    #@13
    :cond_1
    return v0
.end method

.method canGoInDockedStack()Z
    .locals 1

    #@0
    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inCropWindowsResizeMode()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method canMatchRootAffinity()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1683
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@4
    if-eqz v2, :cond_1

    #@6
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@c
    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@e
    const/4 v3, 0x4

    #@f
    if-eq v2, v3, :cond_1

    #@11
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    move v0, v1

    #@13
    goto :goto_0
.end method

.method closeRecentsChain()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 527
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 528
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@7
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@c
    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 531
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@12
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@17
    .line 533
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@1a
    .line 534
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@1d
    .line 526
    return-void
.end method

.method disposeThumbnail()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 645
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@3
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo;->reset()V

    #@6
    .line 646
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@8
    .line 647
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@a
    .line 644
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0x7d

    #@2
    const/4 v6, -0x1

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 1687
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    const-string/jumbo v0, "userId="

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@13
    .line 1688
    const-string/jumbo v0, " effectiveUid="

    #@16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    #@1b
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@1e
    .line 1689
    const-string/jumbo v0, " mCallingUid="

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@26
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@29
    .line 1690
    const-string/jumbo v0, " mUserSetupComplete="

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@34
    .line 1691
    const-string/jumbo v0, " mCallingPackage="

    #@37
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@3c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 1692
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@41
    if-nez v0, :cond_0

    #@43
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@45
    if-eqz v0, :cond_1

    #@47
    .line 1693
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    const-string/jumbo v0, "affinity="

    #@4d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55
    .line 1694
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@57
    if-eqz v0, :cond_10

    #@59
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@5b
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@5d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_10

    #@63
    .line 1697
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@66
    .line 1700
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@68
    if-nez v0, :cond_2

    #@6a
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@6c
    if-eqz v0, :cond_3

    #@6e
    .line 1701
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    const-string/jumbo v0, "VOICE: session=0x"

    #@74
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 1702
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@79
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@7c
    move-result v0

    #@7d
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@84
    .line 1703
    const-string/jumbo v0, " interactor=0x"

    #@87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8a
    .line 1704
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@8c
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@8f
    move-result v0

    #@90
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@97
    .line 1706
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@99
    if-eqz v0, :cond_4

    #@9b
    .line 1707
    new-instance v1, Ljava/lang/StringBuilder;

    #@9d
    const/16 v0, 0x80

    #@9f
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a2
    .line 1708
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    const-string/jumbo v0, "intent={"

    #@a8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    .line 1709
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@ad
    move v4, v2

    #@ae
    move v5, v3

    #@af
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@b2
    .line 1710
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b5
    .line 1711
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v0

    #@b9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 1713
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@be
    if-eqz v0, :cond_5

    #@c0
    .line 1714
    new-instance v1, Ljava/lang/StringBuilder;

    #@c2
    const/16 v0, 0x80

    #@c4
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@c7
    .line 1715
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    const-string/jumbo v0, "affinityIntent={"

    #@cd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    .line 1716
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@d2
    move v4, v2

    #@d3
    move v5, v3

    #@d4
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@d7
    .line 1717
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@da
    .line 1718
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v0

    #@de
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e1
    .line 1720
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@e3
    if-eqz v0, :cond_6

    #@e5
    .line 1721
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e8
    const-string/jumbo v0, "origActivity="

    #@eb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    .line 1722
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@f0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@f3
    move-result-object v0

    #@f4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f7
    .line 1724
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@f9
    if-eqz v0, :cond_7

    #@fb
    .line 1725
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fe
    const-string/jumbo v0, "realActivity="

    #@101
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@104
    .line 1726
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@106
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@109
    move-result-object v0

    #@10a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10d
    .line 1728
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@10f
    if-nez v0, :cond_8

    #@111
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@113
    if-nez v0, :cond_8

    #@115
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@117
    if-eqz v0, :cond_11

    #@119
    .line 1730
    :cond_8
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11c
    const-string/jumbo v0, "autoRemoveRecents="

    #@11f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@124
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@127
    .line 1731
    const-string/jumbo v0, " isPersistable="

    #@12a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12d
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@12f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@132
    .line 1732
    const-string/jumbo v0, " numFullscreen="

    #@135
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@138
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@13a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@13d
    .line 1733
    const-string/jumbo v0, " taskType="

    #@140
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@148
    .line 1734
    const-string/jumbo v0, " mTaskToReturnTo="

    #@14b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14e
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@150
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@153
    .line 1736
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@155
    if-nez v0, :cond_a

    #@157
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@159
    if-nez v0, :cond_a

    #@15b
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@15d
    if-nez v0, :cond_a

    #@15f
    .line 1737
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@161
    if-eq v0, v3, :cond_b

    #@163
    .line 1738
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@166
    const-string/jumbo v0, "rootWasReset="

    #@169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@16e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@171
    .line 1739
    const-string/jumbo v0, " mNeverRelinquishIdentity="

    #@174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@177
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@179
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@17c
    .line 1740
    const-string/jumbo v0, " mReuseTask="

    #@17f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@182
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@184
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@187
    .line 1741
    const-string/jumbo v0, " mLockTaskAuth="

    #@18a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18d
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    #@190
    move-result-object v0

    #@191
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@194
    .line 1743
    :cond_b
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@196
    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@198
    if-ne v0, v2, :cond_c

    #@19a
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@19c
    if-eq v0, v6, :cond_12

    #@19e
    .line 1746
    :cond_c
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a1
    const-string/jumbo v0, "affiliation="

    #@1a4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a7
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@1a9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1ac
    .line 1747
    const-string/jumbo v0, " prevAffiliation="

    #@1af
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b2
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@1b4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1b7
    .line 1748
    const-string/jumbo v0, " ("

    #@1ba
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1bd
    .line 1749
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@1bf
    if-nez v0, :cond_13

    #@1c1
    .line 1750
    const-string/jumbo v0, "null"

    #@1c4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c7
    .line 1754
    :goto_3
    const-string/jumbo v0, ") nextAffiliation="

    #@1ca
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cd
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@1cf
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1d2
    .line 1755
    const-string/jumbo v0, " ("

    #@1d5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d8
    .line 1756
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@1da
    if-nez v0, :cond_14

    #@1dc
    .line 1757
    const-string/jumbo v0, "null"

    #@1df
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e2
    .line 1761
    :goto_4
    const-string/jumbo v0, ")"

    #@1e5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e8
    .line 1763
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1eb
    const-string/jumbo v0, "Activities="

    #@1ee
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1f3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1f6
    .line 1764
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    #@1f8
    if-eqz v0, :cond_15

    #@1fa
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@1fc
    if-eqz v0, :cond_15

    #@1fe
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@200
    if-eqz v0, :cond_15

    #@202
    .line 1769
    :goto_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@205
    const-string/jumbo v0, "lastThumbnail="

    #@208
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20b
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@20d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@210
    .line 1770
    const-string/jumbo v0, " lastThumbnailFile="

    #@213
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@216
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@218
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@21b
    .line 1771
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@21d
    if-eqz v0, :cond_e

    #@21f
    .line 1772
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@222
    const-string/jumbo v0, "lastDescription="

    #@225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@228
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@22a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@22d
    .line 1774
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@22f
    if-eqz v0, :cond_f

    #@231
    .line 1775
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@234
    const-string/jumbo v0, "stackId="

    #@237
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23a
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@23c
    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@23e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@241
    .line 1777
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    #@243
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@246
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v0

    #@24a
    const-string/jumbo v2, "hasBeenVisible="

    #@24d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@250
    move-result-object v0

    #@251
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    #@253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@256
    move-result-object v0

    #@257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25a
    move-result-object v0

    #@25b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25e
    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    #@260
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@263
    const-string/jumbo v2, " mResizeMode="

    #@266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@269
    move-result-object v0

    #@26a
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    #@26c
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    #@26f
    move-result-object v2

    #@270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v0

    #@274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@277
    move-result-object v0

    #@278
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27b
    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    #@27d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@280
    const-string/jumbo v2, " isResizeable="

    #@283
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@286
    move-result-object v0

    #@287
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@28a
    move-result v2

    #@28b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v0

    #@28f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@292
    move-result-object v0

    #@293
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@296
    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    #@298
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29b
    const-string/jumbo v2, " firstActiveTime="

    #@29e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v0

    #@2a2
    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@2a4
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v0

    #@2a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ab
    move-result-object v0

    #@2ac
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2af
    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b4
    const-string/jumbo v2, " lastActiveTime="

    #@2b7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v0

    #@2bb
    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@2bd
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v0

    #@2c1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c4
    move-result-object v0

    #@2c5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c8
    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    #@2ca
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2cd
    const-string/jumbo v2, " (inactive for "

    #@2d0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d3
    move-result-object v0

    #@2d4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    #@2d7
    move-result-wide v2

    #@2d8
    const-wide/16 v4, 0x3e8

    #@2da
    div-long/2addr v2, v4

    #@2db
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v0

    #@2df
    const-string/jumbo v2, "s)"

    #@2e2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e5
    move-result-object v0

    #@2e6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e9
    move-result-object v0

    #@2ea
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ed
    .line 1686
    return-void

    #@2ee
    .line 1695
    :cond_10
    const-string/jumbo v0, " root="

    #@2f1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@2f6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f9
    goto/16 :goto_0

    #@2fb
    .line 1728
    :cond_11
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@2fd
    if-nez v0, :cond_8

    #@2ff
    .line 1729
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@301
    if-eqz v0, :cond_9

    #@303
    goto/16 :goto_1

    #@305
    .line 1744
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@307
    if-nez v0, :cond_c

    #@309
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@30b
    if-ne v0, v6, :cond_c

    #@30d
    .line 1745
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@30f
    if-eqz v0, :cond_d

    #@311
    goto/16 :goto_2

    #@313
    .line 1752
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@315
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@318
    move-result v0

    #@319
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@31c
    move-result-object v0

    #@31d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@320
    goto/16 :goto_3

    #@322
    .line 1759
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@324
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@327
    move-result v0

    #@328
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@32b
    move-result-object v0

    #@32c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32f
    goto/16 :goto_4

    #@331
    .line 1765
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@334
    const-string/jumbo v0, "askedCompatMode="

    #@337
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33a
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    #@33c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@33f
    .line 1766
    const-string/jumbo v0, " inRecents="

    #@342
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@345
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@347
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@34a
    .line 1767
    const-string/jumbo v0, " isAvailable="

    #@34d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@350
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@352
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@355
    goto/16 :goto_5
.end method

.method extractOverrideConfig(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1565
    new-instance v0, Landroid/content/res/Configuration;

    #@2
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@4
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@7
    .line 1566
    .local v0, "extracted":Landroid/content/res/Configuration;
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@9
    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@b
    .line 1567
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@d
    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@f
    .line 1568
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@11
    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@13
    .line 1569
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    #@15
    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    #@17
    .line 1570
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@19
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@1b
    .line 1571
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@1d
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    #@1f
    .line 1572
    return-object v0
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1039
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@2
    .line 1040
    .local v2, "realActivity":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    add-int/lit8 v0, v3, -0x1

    #@a
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    #@c
    .line 1041
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@14
    .line 1042
    .local v1, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 1040
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1045
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@1d
    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 1046
    return-object v1

    #@24
    .line 1049
    .end local v1    # "candidate":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    #@25
    return-object v3
.end method

.method findEffectiveRootIndex()I
    .locals 5

    #@0
    .prologue
    .line 1110
    const/4 v1, 0x0

    #@1
    .line 1111
    .local v1, "effectiveNdx":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v3, v4, -0x1

    #@9
    .line 1112
    .local v3, "topActivityNdx":I
    const/4 v0, 0x0

    #@a
    .local v0, "activityNdx":I
    :goto_0
    if-gt v0, v3, :cond_2

    #@c
    .line 1113
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@14
    .line 1114
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 1112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1117
    :cond_1
    move v1, v0

    #@1c
    .line 1118
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1e
    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@20
    and-int/lit16 v4, v4, 0x1000

    #@22
    if-nez v4, :cond_0

    #@24
    .line 1122
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v1
.end method

.method freeLastThumbnail()V
    .locals 1

    #@0
    .prologue
    .line 638
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@3
    .line 637
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@9
    goto :goto_0
.end method

.method getInactiveDuration()J
    .locals 4

    #@0
    .prologue
    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@6
    sub-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V
    .locals 3
    .param p1, "thumbs"    # Landroid/app/ActivityManager$TaskThumbnail;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 617
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@3
    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    #@5
    .line 618
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@7
    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@9
    .line 619
    iput-object v2, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 620
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@d
    if-nez v1, :cond_0

    #@f
    .line 621
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@11
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@13
    .line 622
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@15
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 621
    invoke-virtual {v1, v2}, Lcom/android/server/am/RecentTasks;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    #@1f
    .line 625
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    #@21
    if-nez v1, :cond_1

    #@23
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@2d
    .line 628
    const/high16 v2, 0x10000000

    #@2f
    .line 627
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 616
    :cond_1
    :goto_0
    return-void

    #@36
    .line 629
    :catch_0
    move-exception v0

    #@37
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1661
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3
    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    #@5
    const/4 v3, 0x2

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 1662
    return-object v1

    #@9
    .line 1665
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@b
    if-nez v2, :cond_1

    #@d
    .line 1666
    return-object v1

    #@e
    .line 1669
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@10
    iget v0, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@12
    .line 1670
    .local v0, "stackId":I
    if-eqz v0, :cond_2

    #@14
    .line 1671
    const/4 v2, 0x1

    #@15
    if-ne v0, v2, :cond_4

    #@17
    .line 1673
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_3

    #@1d
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1f
    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@21
    :cond_3
    return-object v1

    #@22
    .line 1672
    :cond_4
    const/4 v2, 0x3

    #@23
    if-ne v0, v2, :cond_5

    #@25
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 1674
    :cond_5
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_6

    #@31
    .line 1675
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@33
    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@35
    return-object v1

    #@36
    .line 1677
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    #@38
    return-object v1
.end method

.method getLaunchStackId()I
    .locals 1

    #@0
    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1650
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1653
    const/4 v0, 0x2

    #@d
    return v0

    #@e
    .line 1655
    :cond_1
    const/4 v0, 0x1

    #@f
    return v0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    #@0
    .prologue
    .line 657
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 658
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@11
    .line 659
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 657
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 662
    :cond_0
    return-object v1

    #@19
    .line 664
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    #@1a
    return-object v2
.end method

.method public getTaskThumbnailLocked()Landroid/app/ActivityManager$TaskThumbnail;
    .locals 4

    #@0
    .prologue
    .line 930
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 931
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6
    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@8
    .line 932
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@a
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@c
    if-ne v3, p0, :cond_0

    #@e
    .line 933
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@10
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStack;->screenshotActivitiesLocked(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    #@13
    move-result-object v2

    #@14
    .line 934
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z

    #@17
    .line 937
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskThumbnail;

    #@19
    invoke-direct {v1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>()V

    #@1c
    .line 938
    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V

    #@1f
    .line 939
    return-object v1
.end method

.method getTaskToReturnTo()I
    .locals 1

    #@0
    .prologue
    .line 512
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@2
    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    #@0
    .prologue
    .line 668
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 669
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@12
    .line 670
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 668
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 673
    :cond_0
    return-object v1

    #@1a
    .line 675
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    #@1b
    return-object v2
.end method

.method inCropWindowsResizeMode()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1027
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    #@a
    if-ne v2, v0, :cond_0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    move v0, v1

    #@e
    goto :goto_0
.end method

.method isApplicationTask()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1014
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method isHomeTask()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1006
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method isLockTaskWhitelistedLocked()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 989
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@8
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 990
    .local v2, "pkg":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    #@e
    .line 991
    return v5

    #@f
    .line 993
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@11
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    #@13
    iget v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@15
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, [Ljava/lang/String;

    #@1b
    .line 994
    .local v1, "packages":[Ljava/lang/String;
    if-nez v1, :cond_2

    #@1d
    .line 995
    return v5

    #@1e
    .line 997
    :cond_2
    array-length v3, v1

    #@1f
    add-int/lit8 v0, v3, -0x1

    #@21
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    #@23
    .line 998
    aget-object v3, v1, v0

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_3

    #@2b
    .line 999
    const/4 v3, 0x1

    #@2c
    return v3

    #@2d
    .line 997
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 1002
    :cond_4
    return v5
.end method

.method isOverHomeStack()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1018
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@3
    if-eq v1, v0, :cond_0

    #@5
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@7
    const/4 v2, 0x2

    #@8
    if-ne v1, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method isRecentsTask()Z
    .locals 2

    #@0
    .prologue
    .line 1010
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method isResizeable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1022
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_1

    #@7
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1023
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    #@f
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    #@12
    move-result v1

    #@13
    .line 1022
    if-eqz v1, :cond_1

    #@15
    .line 1023
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mTemporarilyUnresizable:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1022
    :cond_1
    :goto_0
    return v0

    #@1a
    .line 1023
    :cond_2
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 498
    new-instance v0, Landroid/content/Intent;

    #@2
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@7
    .line 502
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@c
    .line 503
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@e
    invoke-virtual {v1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@11
    move-result v1

    #@12
    return v1
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 948
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "unknown="

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 949
    :pswitch_0
    const-string/jumbo v0, "LOCK_TASK_AUTH_DONT_LOCK"

    #@1f
    return-object v0

    #@20
    .line 950
    :pswitch_1
    const-string/jumbo v0, "LOCK_TASK_AUTH_PINNABLE"

    #@23
    return-object v0

    #@24
    .line 951
    :pswitch_2
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    #@27
    return-object v0

    #@28
    .line 952
    :pswitch_3
    const-string/jumbo v0, "LOCK_TASK_AUTH_WHITELISTED"

    #@2b
    return-object v0

    #@2c
    .line 953
    :pswitch_4
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    #@2f
    return-object v0

    #@30
    .line 948
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 746
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 747
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    #@d
    .line 749
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V

    #@10
    .line 740
    return-void
.end method

.method final performClearTaskAtIndexLocked(I)V
    .locals 7
    .param p1, "activityNdx"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 834
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v6

    #@8
    .line 835
    .local v6, "numActivities":I
    :goto_0
    if-ge p1, v6, :cond_3

    #@a
    .line 836
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@12
    .line 837
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 835
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 840
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 842
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    #@20
    .line 843
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@25
    .line 844
    add-int/lit8 p1, p1, -0x1

    #@27
    .line 845
    add-int/lit8 v6, v6, -0x1

    #@29
    goto :goto_1

    #@2a
    .line 846
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@2c
    .line 847
    const-string/jumbo v4, "clear-task-index"

    #@2f
    move v5, v2

    #@30
    .line 846
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_0

    #@36
    .line 848
    add-int/lit8 p1, p1, -0x1

    #@38
    .line 849
    add-int/lit8 v6, v6, -0x1

    #@3a
    goto :goto_1

    #@3b
    .line 833
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    #@0
    .prologue
    .line 864
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@3
    .line 865
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    #@6
    move-result-object v0

    #@7
    .line 866
    .local v0, "result":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    #@8
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@a
    .line 867
    return-object v0
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 12
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v9

    #@6
    .line 883
    .local v9, "numActivities":I
    add-int/lit8 v8, v9, -0x1

    #@8
    .local v8, "activityNdx":I
    :goto_0
    if-ltz v8, :cond_8

    #@a
    .line 884
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@12
    .line 885
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 883
    :cond_0
    add-int/lit8 v8, v8, -0x1

    #@18
    goto :goto_0

    #@19
    .line 888
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@1b
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@1d
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 890
    move-object v11, v1

    #@24
    .line 892
    .local v11, "ret":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v8, v8, 0x1

    #@26
    :goto_1
    if-ge v8, v9, :cond_5

    #@28
    .line 893
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@30
    .line 894
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 892
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@36
    goto :goto_1

    #@37
    .line 897
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    #@3a
    move-result-object v10

    #@3b
    .line 898
    .local v10, "opts":Landroid/app/ActivityOptions;
    if-eqz v10, :cond_4

    #@3d
    .line 899
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    #@40
    .line 901
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@42
    if-eqz v0, :cond_2

    #@44
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@46
    .line 902
    const-string/jumbo v4, "clear-task-stack"

    #@49
    const/4 v2, 0x0

    #@4a
    const/4 v3, 0x0

    #@4b
    const/4 v5, 0x0

    #@4c
    .line 901
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_2

    #@52
    .line 903
    add-int/lit8 v8, v8, -0x1

    #@54
    .line 904
    add-int/lit8 v9, v9, -0x1

    #@56
    goto :goto_2

    #@57
    .line 911
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@59
    if-nez v0, :cond_7

    #@5b
    .line 912
    const/high16 v0, 0x20000000

    #@5d
    and-int/2addr v0, p2

    #@5e
    if-nez v0, :cond_7

    #@60
    .line 913
    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@62
    if-nez v0, :cond_7

    #@64
    .line 914
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@66
    if-eqz v0, :cond_6

    #@68
    .line 915
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6a
    .line 916
    const-string/jumbo v6, "clear-task-top"

    #@6d
    const/4 v4, 0x0

    #@6e
    const/4 v5, 0x0

    #@6f
    const/4 v7, 0x0

    #@70
    move-object v3, v11

    #@71
    .line 915
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@74
    .line 918
    :cond_6
    const/4 v0, 0x0

    #@75
    return-object v0

    #@76
    .line 922
    :cond_7
    return-object v11

    #@77
    .line 926
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/4 v0, 0x0

    #@78
    return-object v0
.end method

.method final performClearTaskLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 858
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@4
    .line 859
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    #@7
    .line 860
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@9
    .line 857
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 800
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 802
    iget v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    iput v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@13
    .line 804
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 805
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1b
    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@1e
    .line 808
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@20
    if-eqz v1, :cond_2

    #@22
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@24
    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@26
    const/4 v2, 0x4

    #@27
    if-ne v1, v2, :cond_2

    #@29
    .line 812
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2b
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    #@2e
    .line 815
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_4

    #@36
    .line 816
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@38
    if-eqz v1, :cond_3

    #@3a
    :goto_0
    return v0

    #@3b
    :cond_3
    const/4 v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 818
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    #@40
    .line 819
    return v0
.end method

.method public removeTaskActivitiesLocked()V
    .locals 1

    #@0
    .prologue
    .line 944
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    #@4
    .line 942
    return-void
.end method

.method removedFromRecents()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 538
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    #@4
    .line 539
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    #@7
    .line 540
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 541
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@d
    .line 542
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@f
    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@12
    .line 537
    :cond_0
    return-void
.end method

.method sanitizeOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1591
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1592
    return-void

    #@5
    .line 1598
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@7
    iget v1, v2, Landroid/content/res/Configuration;->screenLayout:I

    #@9
    .line 1599
    .local v1, "overrideScreenLayout":I
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@b
    .line 1600
    .local v0, "newScreenLayout":I
    and-int/lit8 v2, v0, -0x31

    #@d
    .line 1601
    and-int/lit8 v3, v1, 0x30

    #@f
    .line 1600
    or-int v0, v2, v3

    #@11
    .line 1602
    and-int/lit8 v2, v0, -0x10

    #@13
    .line 1603
    and-int/lit8 v3, v1, 0xf

    #@15
    .line 1602
    or-int v0, v2, v3

    #@17
    .line 1604
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@19
    iput v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    #@1b
    .line 1607
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@1d
    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    #@1f
    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    #@21
    .line 1589
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/high16 v9, 0x80000

    #@2
    const/4 v8, 0x0

    #@3
    .line 1134
    const-string/jumbo v4, "task_id"

    #@6
    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@8
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 1135
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 1136
    const-string/jumbo v4, "real_activity"

    #@16
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@18
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f
    .line 1138
    :cond_0
    const-string/jumbo v4, "real_activity_suspended"

    #@22
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    #@24
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 1139
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@2d
    if-eqz v4, :cond_1

    #@2f
    .line 1140
    const-string/jumbo v4, "orig_activity"

    #@32
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@34
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 1146
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@3d
    if-eqz v4, :cond_9

    #@3f
    .line 1147
    const-string/jumbo v4, "affinity"

    #@42
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@44
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@47
    .line 1148
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@49
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v4

    #@4f
    if-nez v4, :cond_2

    #@51
    .line 1149
    const-string/jumbo v5, "root_affinity"

    #@54
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@56
    if-eqz v4, :cond_8

    #@58
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@5a
    :goto_0
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5d
    .line 1154
    :cond_2
    :goto_1
    const-string/jumbo v4, "root_has_reset"

    #@60
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@62
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@69
    .line 1155
    const-string/jumbo v4, "auto_remove_recents"

    #@6c
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@6e
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@75
    .line 1156
    const-string/jumbo v4, "asked_compat_mode"

    #@78
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    #@7a
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@81
    .line 1157
    const-string/jumbo v4, "user_id"

    #@84
    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@86
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8d
    .line 1158
    const-string/jumbo v4, "user_setup_complete"

    #@90
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    #@92
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@99
    .line 1159
    const-string/jumbo v4, "effective_uid"

    #@9c
    iget v5, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    #@9e
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@a1
    move-result-object v5

    #@a2
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a5
    .line 1160
    const-string/jumbo v4, "task_type"

    #@a8
    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@aa
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@ad
    move-result-object v5

    #@ae
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b1
    .line 1161
    const-string/jumbo v4, "first_active_time"

    #@b4
    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    #@b6
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@bd
    .line 1162
    const-string/jumbo v4, "last_active_time"

    #@c0
    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@c2
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@c5
    move-result-object v5

    #@c6
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c9
    .line 1163
    const-string/jumbo v4, "last_time_moved"

    #@cc
    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@ce
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@d1
    move-result-object v5

    #@d2
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d5
    .line 1164
    const-string/jumbo v4, "never_relinquish_identity"

    #@d8
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@da
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@dd
    move-result-object v5

    #@de
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e1
    .line 1165
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@e3
    if-eqz v4, :cond_3

    #@e5
    .line 1166
    const-string/jumbo v4, "last_description"

    #@e8
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@ea
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@ed
    move-result-object v5

    #@ee
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f1
    .line 1168
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@f3
    if-eqz v4, :cond_4

    #@f5
    .line 1169
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@f7
    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@fa
    .line 1171
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    #@fc
    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskThumbnailInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@ff
    .line 1172
    const-string/jumbo v4, "task_affiliation_color"

    #@102
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    #@104
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@107
    move-result-object v5

    #@108
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10b
    .line 1173
    const-string/jumbo v4, "task_affiliation"

    #@10e
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@110
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@113
    move-result-object v5

    #@114
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@117
    .line 1174
    const-string/jumbo v4, "prev_affiliation"

    #@11a
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@11c
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@11f
    move-result-object v5

    #@120
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@123
    .line 1175
    const-string/jumbo v4, "next_affiliation"

    #@126
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@128
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@12b
    move-result-object v5

    #@12c
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12f
    .line 1176
    const-string/jumbo v4, "calling_uid"

    #@132
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@134
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@137
    move-result-object v5

    #@138
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13b
    .line 1177
    const-string/jumbo v5, "calling_package"

    #@13e
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@140
    if-nez v4, :cond_b

    #@142
    const-string/jumbo v4, ""

    #@145
    :goto_2
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@148
    .line 1178
    const-string/jumbo v4, "resize_mode"

    #@14b
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    #@14d
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@150
    move-result-object v5

    #@151
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@154
    .line 1179
    const-string/jumbo v4, "privileged"

    #@157
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    #@159
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@15c
    move-result-object v5

    #@15d
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@160
    .line 1180
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    #@162
    if-eqz v4, :cond_5

    #@164
    .line 1182
    const-string/jumbo v4, "non_fullscreen_bounds"

    #@167
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    #@169
    invoke-virtual {v5}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    #@16c
    move-result-object v5

    #@16d
    .line 1181
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@170
    .line 1184
    :cond_5
    const-string/jumbo v4, "min_width"

    #@173
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    #@175
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@178
    move-result-object v5

    #@179
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17c
    .line 1185
    const-string/jumbo v4, "min_height"

    #@17f
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    #@181
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@184
    move-result-object v5

    #@185
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@188
    .line 1187
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@18a
    if-eqz v4, :cond_6

    #@18c
    .line 1188
    const-string/jumbo v4, "affinity_intent"

    #@18f
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@192
    .line 1189
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@194
    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@197
    .line 1190
    const-string/jumbo v4, "affinity_intent"

    #@19a
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@19d
    .line 1193
    :cond_6
    const-string/jumbo v4, "intent"

    #@1a0
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1a3
    .line 1194
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@1a5
    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@1a8
    .line 1195
    const-string/jumbo v4, "intent"

    #@1ab
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1ae
    .line 1197
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1b0
    .line 1198
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1b3
    move-result v2

    #@1b4
    .line 1199
    .local v2, "numActivities":I
    const/4 v1, 0x0

    #@1b5
    .local v1, "activityNdx":I
    :goto_3
    if-ge v1, v2, :cond_7

    #@1b7
    .line 1200
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ba
    move-result-object v3

    #@1bb
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@1bd
    .line 1201
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1bf
    iget v4, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@1c1
    if-eqz v4, :cond_7

    #@1c3
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    #@1c6
    move-result v4

    #@1c7
    if-eqz v4, :cond_7

    #@1c9
    .line 1202
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@1cb
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    #@1ce
    move-result v4

    #@1cf
    and-int/2addr v4, v9

    #@1d0
    or-int/lit16 v4, v4, 0x2000

    #@1d2
    if-ne v4, v9, :cond_c

    #@1d4
    .line 1204
    if-lez v1, :cond_c

    #@1d6
    .line 1131
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    return-void

    #@1d7
    .line 1149
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "numActivities":I
    :cond_8
    const-string/jumbo v4, "@"

    #@1da
    goto/16 :goto_0

    #@1dc
    .line 1151
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@1de
    if-eqz v4, :cond_2

    #@1e0
    .line 1152
    const-string/jumbo v5, "root_affinity"

    #@1e3
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@1e5
    if-eqz v4, :cond_a

    #@1e7
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@1e9
    :goto_4
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1ec
    goto/16 :goto_1

    #@1ee
    :cond_a
    const-string/jumbo v4, "@"

    #@1f1
    goto :goto_4

    #@1f2
    .line 1177
    :cond_b
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@1f4
    goto/16 :goto_2

    #@1f6
    .line 1208
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_c
    const-string/jumbo v4, "activity"

    #@1f9
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1fc
    .line 1209
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@1ff
    .line 1210
    const-string/jumbo v4, "activity"

    #@202
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@205
    .line 1199
    add-int/lit8 v1, v1, 0x1

    #@207
    goto :goto_3
.end method

.method setFrontOfTask()V
    .locals 1

    #@0
    .prologue
    .line 705
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V

    #@4
    .line 704
    return-void
.end method

.method setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 714
    if-eqz p1, :cond_1

    #@4
    const/4 v1, 0x1

    #@5
    .line 716
    .local v1, "foundFront":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    .line 717
    .local v2, "numActivities":I
    const/4 v0, 0x0

    #@c
    .local v0, "activityNdx":I
    :goto_1
    if-ge v0, v2, :cond_3

    #@e
    .line 718
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@16
    .line 719
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    #@18
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@1a
    if-eqz v4, :cond_2

    #@1c
    .line 720
    :cond_0
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@1e
    .line 717
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_1

    #@21
    .line 714
    .end local v0    # "activityNdx":I
    .end local v1    # "foundFront":Z
    .end local v2    # "numActivities":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    #@22
    .restart local v1    # "foundFront":Z
    goto :goto_0

    #@23
    .line 722
    .restart local v0    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@25
    .line 724
    const/4 v1, 0x1

    #@26
    goto :goto_2

    #@27
    .line 727
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-nez v1, :cond_4

    #@29
    if-lez v2, :cond_4

    #@2b
    .line 730
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@33
    iput-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@35
    .line 732
    :cond_4
    if-eqz p1, :cond_5

    #@37
    .line 733
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@39
    .line 709
    :cond_5
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 392
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@2
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@4
    .line 393
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@8
    .line 394
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@a
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@c
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    #@f
    .line 391
    return-void
.end method

.method setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 574
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-object v1, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@4
    .line 575
    .local v1, "serviceConfig":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    #@5
    .line 576
    .local v3, "taskWidth":I
    const/4 v2, 0x0

    #@6
    .line 577
    .local v2, "taskHeight":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 579
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@f
    move-result v3

    #@10
    .line 580
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@12
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@15
    move-result v2

    #@16
    .line 590
    :goto_0
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    #@18
    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;III)Z

    #@1b
    move-result v4

    #@1c
    return v4

    #@1d
    .line 581
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 583
    new-instance v0, Landroid/graphics/Point;

    #@23
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@26
    .line 584
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@28
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->getDisplaySize(Landroid/graphics/Point;)V

    #@2b
    .line 585
    iget v3, v0, Landroid/graphics/Point;->x:I

    #@2d
    .line 586
    iget v2, v0, Landroid/graphics/Point;->y:I

    #@2f
    goto :goto_0

    #@30
    .line 588
    .end local v0    # "displaySize":Landroid/graphics/Point;
    :cond_1
    sget-object v4, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    #@32
    const-string/jumbo v5, "setLastThumbnailLocked() called on Task without stack"

    #@35
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    goto :goto_0
.end method

.method setLockTaskAuth()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    .line 959
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    #@5
    if-nez v2, :cond_1

    #@7
    .line 960
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    #@9
    if-eq v2, v1, :cond_0

    #@b
    .line 961
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    #@d
    if-ne v2, v0, :cond_1

    #@f
    .line 963
    :cond_0
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    #@11
    .line 965
    :cond_1
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    #@13
    packed-switch v2, :pswitch_data_0

    #@16
    .line 958
    :goto_0
    return-void

    #@17
    .line 967
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 968
    const/4 v0, 0x3

    #@1e
    .line 967
    :cond_2
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@20
    goto :goto_0

    #@21
    .line 972
    :pswitch_1
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@23
    goto :goto_0

    #@24
    .line 976
    :pswitch_2
    const/4 v0, 0x4

    #@25
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@27
    goto :goto_0

    #@28
    .line 980
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_3

    #@2e
    move v0, v1

    #@2f
    :cond_3
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@31
    goto :goto_0

    #@32
    .line 965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "nextAffiliate"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@2
    .line 522
    if-nez p1, :cond_0

    #@4
    const/4 v0, -0x1

    #@5
    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@7
    .line 520
    return-void

    #@8
    .line 522
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@a
    goto :goto_0
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "prevAffiliate"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@2
    .line 517
    if-nez p1, :cond_0

    #@4
    const/4 v0, -0x1

    #@5
    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@7
    .line 515
    return-void

    #@8
    .line 517
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@a
    goto :goto_0
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 547
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    #@4
    .line 548
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@6
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@8
    .line 549
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    #@a
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    #@c
    .line 551
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 552
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@12
    .line 553
    .local v0, "nextRecents":Lcom/android/server/am/TaskRecord;
    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@14
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@16
    if-eq v1, v2, :cond_2

    #@18
    .line 554
    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, " affilTaskId="

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 555
    iget v3, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@33
    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 555
    const-string/jumbo v3, " should be "

    #@3a
    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 555
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@40
    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 556
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@4d
    if-ne v1, p1, :cond_0

    #@4f
    .line 557
    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@52
    .line 559
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@55
    .line 564
    .end local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@58
    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@5b
    .line 566
    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@5e
    .line 546
    return-void

    #@5f
    .line 562
    .restart local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_2
    move-object p1, v0

    #@60
    goto :goto_0
.end method

.method setTaskToReturnTo(I)V
    .locals 1
    .param p1, "taskToReturnTo"    # I

    #@0
    .prologue
    .line 507
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 508
    const/4 p1, 0x1

    #@4
    .line 507
    .end local p1    # "taskToReturnTo":I
    :cond_0
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@6
    .line 506
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1787
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1788
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1789
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 1790
    const-string/jumbo v1, " U="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 1791
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    .line 1792
    const-string/jumbo v1, " StackId="

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 1793
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@23
    if-eqz v1, :cond_0

    #@25
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@27
    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@29
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    .line 1794
    const-string/jumbo v1, " sz="

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 1795
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v1

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    .line 1796
    const/16 v1, 0x7d

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 1797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    return-object v1

    #@45
    .line 1793
    :cond_0
    const/4 v1, -0x1

    #@46
    goto :goto_0

    #@47
    .line 1799
    :cond_1
    const-string/jumbo v1, "TaskRecord{"

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 1800
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@50
    move-result v1

    #@51
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 1801
    const-string/jumbo v1, " #"

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 1802
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    .line 1803
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@65
    if-eqz v1, :cond_2

    #@67
    .line 1804
    const-string/jumbo v1, " A="

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 1805
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 1815
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    #@78
    .line 1816
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    return-object v1

    #@7d
    .line 1806
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@7f
    if-eqz v1, :cond_3

    #@81
    .line 1807
    const-string/jumbo v1, " I="

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 1808
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@89
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    goto :goto_1

    #@95
    .line 1809
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@97
    if-eqz v1, :cond_4

    #@99
    .line 1810
    const-string/jumbo v1, " aI="

    #@9c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    .line 1811
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@a1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    goto :goto_1

    #@ad
    .line 1813
    :cond_4
    const-string/jumbo v1, " ??"

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    goto :goto_1
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 679
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 680
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    add-int/lit8 v0, v2, -0x1

    #@d
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@f
    .line 681
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@17
    .line 682
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@19
    if-nez v2, :cond_0

    #@1b
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1d
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 683
    return-object v1

    #@24
    .line 680
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    .line 687
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v3
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 691
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 692
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    add-int/lit8 v0, v2, -0x1

    #@d
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@f
    .line 693
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@17
    .line 694
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    #@19
    const/4 v3, 0x1

    #@1a
    if-ne v2, v3, :cond_0

    #@1c
    .line 695
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@1e
    .line 694
    if-nez v2, :cond_0

    #@20
    .line 695
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@22
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 698
    return-object v1

    #@29
    .line 692
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 701
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v4
.end method

.method touchActiveTime()V
    .locals 4

    #@0
    .prologue
    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@6
    .line 381
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    #@8
    const-wide/16 v2, 0x0

    #@a
    cmp-long v0, v0, v2

    #@c
    if-nez v0, :cond_0

    #@e
    .line 382
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@10
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    #@12
    .line 379
    :cond_0
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 3

    #@0
    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    #@3
    move-result v0

    #@4
    .line 1127
    .local v0, "effectiveRootIndex":I
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@c
    .line 1128
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@f
    .line 1125
    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1443
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 1455
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@5
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1456
    return-object v5

    #@c
    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@e
    .line 1459
    .local v0, "oldConfig":Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@10
    .line 1461
    .local v1, "oldFullscreen":Z
    if-nez p1, :cond_3

    #@12
    move v2, v3

    #@13
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@15
    .line 1462
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@17
    if-eqz v2, :cond_4

    #@19
    .line 1463
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1f
    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@21
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 1464
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@29
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    #@2b
    .line 1466
    :cond_1
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@2d
    .line 1467
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@2f
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@31
    .line 1483
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@33
    if-eq v2, v1, :cond_2

    #@35
    .line 1484
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@37
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@39
    invoke-virtual {v2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleReportMultiWindowModeChanged(Lcom/android/server/am/TaskRecord;)V

    #@3c
    .line 1487
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@3e
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@41
    move-result v2

    #@42
    if-nez v2, :cond_a

    #@44
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@46
    :goto_2
    return-object v2

    #@47
    :cond_3
    move v2, v4

    #@48
    .line 1461
    goto :goto_0

    #@49
    .line 1469
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    #@4b
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4e
    .line 1470
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    #@50
    invoke-direct {p0, v2}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    #@53
    .line 1471
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@55
    if-nez v2, :cond_7

    #@57
    .line 1472
    new-instance v2, Landroid/graphics/Rect;

    #@59
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    #@5b
    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@5e
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@60
    .line 1476
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@62
    if-eqz v2, :cond_5

    #@64
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@66
    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@68
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    #@6b
    move-result v2

    #@6c
    if-eqz v2, :cond_6

    #@6e
    .line 1477
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@70
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    #@72
    .line 1479
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    #@74
    .line 1480
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    #@76
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@78
    iget v7, p1, Landroid/graphics/Rect;->right:I

    #@7a
    if-eq v2, v7, :cond_8

    #@7c
    move v2, v3

    #@7d
    :goto_4
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    #@7f
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@81
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    #@83
    if-eq v7, v8, :cond_9

    #@85
    .line 1479
    :goto_5
    invoke-direct {p0, v6, p2, v2, v3}, Lcom/android/server/am/TaskRecord;->calculateOverrideConfig(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/content/res/Configuration;

    #@88
    move-result-object v2

    #@89
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@8b
    goto :goto_1

    #@8c
    .line 1474
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@8e
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    #@90
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@93
    goto :goto_3

    #@94
    :cond_8
    move v2, v4

    #@95
    .line 1480
    goto :goto_4

    #@96
    :cond_9
    move v3, v4

    #@97
    goto :goto_5

    #@98
    :cond_a
    move-object v2, v5

    #@99
    .line 1487
    goto :goto_2
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "inStack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1621
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@7
    if-ne v0, p1, :cond_0

    #@9
    .line 1622
    return-void

    #@a
    .line 1625
    :cond_0
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@c
    const/4 v1, 0x2

    #@d
    if-ne v0, v1, :cond_4

    #@f
    .line 1626
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 1627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Can not position non-resizeable task="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 1628
    const-string/jumbo v2, " in stack="

    #@2a
    .line 1627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 1630
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@3c
    if-eqz v0, :cond_2

    #@3e
    .line 1631
    return-void

    #@3f
    .line 1633
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    #@41
    if-eqz v0, :cond_3

    #@43
    .line 1634
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    #@45
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@48
    .line 1620
    :goto_0
    return-void

    #@49
    .line 1636
    :cond_3
    invoke-virtual {p1, p0, v2}, Lcom/android/server/am/ActivityStack;->layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    #@4c
    goto :goto_0

    #@4d
    .line 1639
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@4f
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@52
    goto :goto_0
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 2

    #@0
    .prologue
    .line 1576
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    .line 1577
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@b
    .line 1578
    if-eqz v0, :cond_0

    #@d
    .line 1579
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@12
    .line 1581
    :cond_0
    return-object v0
.end method

.method updateTaskDescription()V
    .locals 11

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 1057
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v7

    #@8
    .line 1058
    .local v7, "numActivities":I
    if-nez v7, :cond_5

    #@a
    const/4 v9, 0x0

    #@b
    .line 1060
    .local v9, "relinquish":Z
    :goto_0
    const/4 v0, 0x1

    #@c
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v6

    #@10
    .local v6, "activityNdx":I
    :goto_1
    if-ge v6, v7, :cond_0

    #@12
    .line 1062
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v8

    #@18
    check-cast v8, Lcom/android/server/am/ActivityRecord;

    #@1a
    .line 1063
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_7

    #@1c
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1e
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@20
    and-int/lit16 v0, v0, 0x1000

    #@22
    if-nez v0, :cond_7

    #@24
    .line 1066
    add-int/lit8 v6, v6, 0x1

    #@26
    .line 1074
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-lez v6, :cond_a

    #@28
    .line 1079
    const/4 v1, 0x0

    #@29
    .line 1080
    .local v1, "label":Ljava/lang/String;
    const/4 v3, 0x0

    #@2a
    .line 1081
    .local v3, "iconFilename":Ljava/lang/String;
    const/4 v4, 0x0

    #@2b
    .line 1082
    .local v4, "colorPrimary":I
    const/4 v5, 0x0

    #@2c
    .line 1083
    .local v5, "colorBackground":I
    add-int/lit8 v6, v6, -0x1

    #@2e
    .end local v1    # "label":Ljava/lang/String;
    .end local v3    # "iconFilename":Ljava/lang/String;
    :goto_2
    if-ltz v6, :cond_9

    #@30
    .line 1084
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v8

    #@36
    check-cast v8, Lcom/android/server/am/ActivityRecord;

    #@38
    .line 1085
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    .line 1086
    if-nez v1, :cond_1

    #@3e
    .line 1087
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@40
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 1089
    :cond_1
    if-nez v3, :cond_2

    #@46
    .line 1090
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@48
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    .line 1092
    :cond_2
    if-nez v4, :cond_3

    #@4e
    .line 1093
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@50
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    #@53
    move-result v4

    #@54
    .line 1095
    :cond_3
    if-nez v5, :cond_4

    #@56
    .line 1096
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@58
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    #@5b
    move-result v5

    #@5c
    .line 1083
    :cond_4
    add-int/lit8 v6, v6, -0x1

    #@5e
    goto :goto_2

    #@5f
    .line 1059
    .end local v4    # "colorPrimary":I
    .end local v5    # "colorBackground":I
    .end local v6    # "activityNdx":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "relinquish":Z
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@61
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v0

    #@65
    check-cast v0, Lcom/android/server/am/ActivityRecord;

    #@67
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@69
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@6b
    and-int/lit16 v0, v0, 0x1000

    #@6d
    if-eqz v0, :cond_6

    #@6f
    const/4 v9, 0x1

    #@70
    .restart local v9    # "relinquish":Z
    goto :goto_0

    #@71
    .end local v9    # "relinquish":Z
    :cond_6
    const/4 v9, 0x0

    #@72
    .restart local v9    # "relinquish":Z
    goto :goto_0

    #@73
    .line 1069
    .restart local v6    # "activityNdx":I
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@75
    if-eqz v0, :cond_8

    #@77
    .line 1070
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@79
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@7c
    move-result v0

    #@7d
    const/high16 v10, 0x80000

    #@7f
    and-int/2addr v0, v10

    #@80
    if-nez v0, :cond_0

    #@82
    .line 1061
    :cond_8
    add-int/lit8 v6, v6, 0x1

    #@84
    goto :goto_1

    #@85
    .line 1100
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "colorPrimary":I
    .restart local v5    # "colorBackground":I
    :cond_9
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    #@87
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    #@8a
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@8c
    .line 1103
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@8e
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@90
    if-ne v0, v2, :cond_a

    #@92
    .line 1104
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@94
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    #@97
    move-result v0

    #@98
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    #@9a
    .line 1053
    .end local v4    # "colorPrimary":I
    .end local v5    # "colorBackground":I
    :cond_a
    return-void
.end method

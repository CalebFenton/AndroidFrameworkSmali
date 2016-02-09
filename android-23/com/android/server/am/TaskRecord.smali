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

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_PRIVILEGED:Ljava/lang/String; = "privileged"

.field static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_RESIZEABLE:Ljava/lang/String; = "resizeable"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"

.field static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field static final IGNORE_RETURN_TO_RECENTS:Z = true

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

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

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private final mFilename:Ljava/lang/String;

.field private mLastThumbnail:Landroid/graphics/Bitmap;

.field private final mLastThumbnailFile:Ljava/io/File;

.field mLastTimeMoved:J

.field mLockTaskAuth:I

.field mLockTaskMode:I

.field mLockTaskUid:I

.field mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field private mPrivileged:Z

.field mResizeable:Z

.field mReuseTask:Z

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTaskToReturnTo:I

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

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
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;ZZ)V
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
    .param p25, "taskAffiliation"    # I
    .param p26, "prevTaskId"    # I
    .param p27, "nextTaskId"    # I
    .param p28, "taskAffiliationColor"    # I
    .param p29, "callingUid"    # I
    .param p30, "callingPackage"    # Ljava/lang/String;
    .param p31, "resizeable"    # Z
    .param p32, "privileged"    # Z
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
            "IIIII",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 247
    .local p16, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 146
    const/4 v2, 0x1

    #@4
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@6
    .line 148
    const/4 v2, -0x1

    #@7
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    #@9
    .line 152
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    #@b
    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@e
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@10
    .line 164
    const/4 v2, 0x0

    #@11
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@13
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v2

    #@17
    iput-wide v2, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@19
    .line 175
    const/4 v2, 0x0

    #@1a
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@1c
    .line 178
    const/4 v2, 0x1

    #@1d
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@1f
    .line 182
    const/4 v2, 0x0

    #@20
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@22
    .line 192
    const/4 v2, -0x1

    #@23
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@25
    .line 194
    const/4 v2, -0x1

    #@26
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@28
    .line 256
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2a
    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    const-string/jumbo v3, "_task_thumbnail"

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 258
    const-string/jumbo v3, ".png"

    #@41
    .line 257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@4b
    .line 259
    new-instance v2, Ljava/io/File;

    #@4d
    sget-object v3, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    #@4f
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@51
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@54
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@56
    .line 260
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@58
    .line 261
    iput-object p3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@5a
    .line 262
    iput-object p4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@5c
    .line 263
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@5e
    .line 264
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@60
    .line 265
    const/4 v2, 0x0

    #@61
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@63
    .line 266
    const/4 v2, 0x0

    #@64
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@66
    .line 267
    iput-object p7, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@68
    .line 268
    iput-object p8, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@6a
    .line 269
    iput-boolean p9, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@6c
    .line 270
    const/4 v2, 0x1

    #@6d
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@6f
    .line 271
    iput-boolean p10, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@71
    .line 272
    move/from16 v0, p11

    #@73
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    #@75
    .line 273
    move/from16 v0, p12

    #@77
    iput v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@79
    .line 274
    const/4 v2, 0x1

    #@7a
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@7c
    .line 275
    move/from16 v0, p13

    #@7e
    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@80
    .line 276
    move/from16 v0, p14

    #@82
    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    #@84
    .line 277
    move-wide/from16 v0, p17

    #@86
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    #@88
    .line 278
    move-wide/from16 v0, p19

    #@8a
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@8c
    .line 279
    move-object/from16 v0, p15

    #@8e
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@90
    .line 280
    move-object/from16 v0, p16

    #@92
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@94
    .line 281
    move-wide/from16 v0, p21

    #@96
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@98
    .line 282
    move/from16 v0, p23

    #@9a
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@9c
    .line 283
    move-object/from16 v0, p24

    #@9e
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@a0
    .line 284
    move/from16 v0, p25

    #@a2
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@a4
    .line 285
    move/from16 v0, p28

    #@a6
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    #@a8
    .line 286
    move/from16 v0, p26

    #@aa
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@ac
    .line 287
    move/from16 v0, p27

    #@ae
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@b0
    .line 288
    move/from16 v0, p29

    #@b2
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@b4
    .line 289
    move-object/from16 v0, p30

    #@b6
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@b8
    .line 290
    move/from16 v0, p31

    #@ba
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    #@bc
    .line 291
    move/from16 v0, p32

    #@be
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    #@c0
    .line 255
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

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
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 146
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@9
    .line 148
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    #@b
    .line 152
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    #@d
    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@12
    .line 164
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@14
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@1a
    .line 175
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@1c
    .line 178
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@1e
    .line 182
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@20
    .line 192
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@22
    .line 194
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@24
    .line 221
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@26
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    const-string/jumbo v1, "_task_thumbnail"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 223
    const-string/jumbo v1, ".png"

    #@3d
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@47
    .line 224
    new-instance v0, Ljava/io/File;

    #@49
    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    #@4b
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@4d
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@50
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@52
    .line 225
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@54
    .line 226
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@56
    .line 227
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@58
    .line 228
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@5a
    .line 229
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@5c
    .line 230
    new-instance v0, Ljava/util/ArrayList;

    #@5e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@61
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@63
    .line 231
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@65
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@67
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@69
    .line 232
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@6b
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@6d
    .line 233
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    #@70
    .line 235
    iput v4, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@72
    .line 236
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@74
    .line 238
    iget v0, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@76
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@79
    move-result v0

    #@7a
    .line 239
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    #@7d
    move-result v1

    #@7e
    .line 238
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@81
    move-result v0

    #@82
    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    #@84
    .line 241
    iput v4, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@86
    .line 242
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@88
    .line 243
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8a
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@8c
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@8f
    move-result v0

    #@90
    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@92
    .line 244
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@94
    .line 220
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 146
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@8
    .line 148
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    #@a
    .line 152
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    #@c
    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@11
    .line 164
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@13
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@19
    .line 175
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@1b
    .line 178
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@1d
    .line 182
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@1f
    .line 192
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@21
    .line 194
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@23
    .line 204
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@25
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    const-string/jumbo v1, "_task_thumbnail"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 206
    const-string/jumbo v1, ".png"

    #@3c
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@46
    .line 207
    new-instance v0, Ljava/io/File;

    #@48
    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    #@4a
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@4c
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@4f
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@51
    .line 208
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@53
    .line 209
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@55
    .line 210
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@57
    .line 211
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@59
    .line 212
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@5b
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    #@5d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@60
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@62
    .line 214
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@64
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@66
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@68
    .line 215
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@6a
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@6c
    .line 216
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    #@6f
    .line 203
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .locals 52
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
    .line 984
    const/4 v8, 0x0

    #@1
    .line 985
    .local v8, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    #@2
    .line 986
    .local v9, "affinityIntent":Landroid/content/Intent;
    new-instance v21, Ljava/util/ArrayList;

    #@4
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 987
    .local v21, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v12, 0x0

    #@8
    .line 988
    .local v12, "realActivity":Landroid/content/ComponentName;
    const/4 v13, 0x0

    #@9
    .line 989
    .local v13, "origActivity":Landroid/content/ComponentName;
    const/4 v10, 0x0

    #@a
    .line 990
    .local v10, "affinity":Ljava/lang/String;
    const/4 v11, 0x0

    #@b
    .line 991
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v46, 0x0

    #@d
    .line 992
    .local v46, "hasRootAffinity":Z
    const/4 v14, 0x0

    #@e
    .line 993
    .local v14, "rootHasReset":Z
    const/4 v15, 0x0

    #@f
    .line 994
    .local v15, "autoRemoveRecents":Z
    const/16 v16, 0x0

    #@11
    .line 995
    .local v16, "askedCompatMode":Z
    const/16 v17, 0x0

    #@13
    .line 996
    .local v17, "taskType":I
    const/16 v18, 0x0

    #@15
    .line 997
    .local v18, "userId":I
    const/16 v19, -0x1

    #@17
    .line 998
    .local v19, "effectiveUid":I
    const/16 v20, 0x0

    #@19
    .line 999
    .local v20, "lastDescription":Ljava/lang/String;
    const-wide/16 v22, -0x1

    #@1b
    .line 1000
    .local v22, "firstActiveTime":J
    const-wide/16 v24, -0x1

    #@1d
    .line 1001
    .local v24, "lastActiveTime":J
    const-wide/16 v26, 0x0

    #@1f
    .line 1002
    .local v26, "lastTimeOnTop":J
    const/16 v28, 0x1

    #@21
    .line 1003
    .local v28, "neverRelinquishIdentity":Z
    const/4 v7, -0x1

    #@22
    .line 1004
    .local v7, "taskId":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@25
    move-result v48

    #@26
    .line 1005
    .local v48, "outerDepth":I
    new-instance v29, Landroid/app/ActivityManager$TaskDescription;

    #@28
    invoke-direct/range {v29 .. v29}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@2b
    .line 1006
    .local v29, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/16 v30, -0x1

    #@2d
    .line 1007
    .local v30, "taskAffiliation":I
    const/16 v33, 0x0

    #@2f
    .line 1008
    .local v33, "taskAffiliationColor":I
    const/16 v31, -0x1

    #@31
    .line 1009
    .local v31, "prevTaskId":I
    const/16 v32, -0x1

    #@33
    .line 1010
    .local v32, "nextTaskId":I
    const/16 v34, -0x1

    #@35
    .line 1011
    .local v34, "callingUid":I
    const-string/jumbo v35, ""

    #@38
    .line 1012
    .local v35, "callingPackage":Ljava/lang/String;
    const/16 v36, 0x0

    #@3a
    .line 1013
    .local v36, "resizeable":Z
    const/16 v37, 0x0

    #@3c
    .line 1015
    .local v37, "privileged":Z
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@3f
    move-result v6

    #@40
    add-int/lit8 v41, v6, -0x1

    #@42
    .end local v10    # "affinity":Ljava/lang/String;
    .end local v11    # "rootAffinity":Ljava/lang/String;
    .end local v12    # "realActivity":Landroid/content/ComponentName;
    .end local v13    # "origActivity":Landroid/content/ComponentName;
    .end local v14    # "rootHasReset":Z
    .end local v15    # "autoRemoveRecents":Z
    .end local v16    # "askedCompatMode":Z
    .end local v20    # "lastDescription":Ljava/lang/String;
    .end local v28    # "neverRelinquishIdentity":Z
    .end local v36    # "resizeable":Z
    .end local v37    # "privileged":Z
    .local v41, "attrNdx":I
    :goto_0
    if-ltz v41, :cond_1b

    #@44
    .line 1016
    move-object/from16 v0, p0

    #@46
    move/from16 v1, v41

    #@48
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@4b
    move-result-object v40

    #@4c
    .line 1017
    .local v40, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4e
    move/from16 v1, v41

    #@50
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@53
    move-result-object v42

    #@54
    .line 1020
    .local v42, "attrValue":Ljava/lang/String;
    const-string/jumbo v6, "task_id"

    #@57
    move-object/from16 v0, v40

    #@59
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v6

    #@5d
    if-eqz v6, :cond_1

    #@5f
    .line 1021
    const/4 v6, -0x1

    #@60
    if-ne v7, v6, :cond_0

    #@62
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@69
    move-result v7

    #@6a
    .line 1015
    :cond_0
    :goto_1
    add-int/lit8 v41, v41, -0x1

    #@6c
    goto :goto_0

    #@6d
    .line 1022
    :cond_1
    const-string/jumbo v6, "real_activity"

    #@70
    move-object/from16 v0, v40

    #@72
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v6

    #@76
    if-eqz v6, :cond_2

    #@78
    .line 1023
    invoke-static/range {v42 .. v42}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@7b
    move-result-object v12

    #@7c
    .local v12, "realActivity":Landroid/content/ComponentName;
    goto :goto_1

    #@7d
    .line 1024
    .end local v12    # "realActivity":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v6, "orig_activity"

    #@80
    move-object/from16 v0, v40

    #@82
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v6

    #@86
    if-eqz v6, :cond_3

    #@88
    .line 1025
    invoke-static/range {v42 .. v42}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@8b
    move-result-object v13

    #@8c
    .local v13, "origActivity":Landroid/content/ComponentName;
    goto :goto_1

    #@8d
    .line 1026
    .end local v13    # "origActivity":Landroid/content/ComponentName;
    :cond_3
    const-string/jumbo v6, "affinity"

    #@90
    move-object/from16 v0, v40

    #@92
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v6

    #@96
    if-eqz v6, :cond_4

    #@98
    .line 1027
    move-object/from16 v10, v42

    #@9a
    .local v10, "affinity":Ljava/lang/String;
    goto :goto_1

    #@9b
    .line 1028
    .end local v10    # "affinity":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "root_affinity"

    #@9e
    move-object/from16 v0, v40

    #@a0
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v6

    #@a4
    if-eqz v6, :cond_5

    #@a6
    .line 1029
    move-object/from16 v11, v42

    #@a8
    .line 1030
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v46, 0x1

    #@aa
    goto :goto_1

    #@ab
    .line 1031
    .end local v11    # "rootAffinity":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "root_has_reset"

    #@ae
    move-object/from16 v0, v40

    #@b0
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v6

    #@b4
    if-eqz v6, :cond_6

    #@b6
    .line 1032
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@b9
    move-result-object v6

    #@ba
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@bd
    move-result v14

    #@be
    .local v14, "rootHasReset":Z
    goto :goto_1

    #@bf
    .line 1033
    .end local v14    # "rootHasReset":Z
    :cond_6
    const-string/jumbo v6, "auto_remove_recents"

    #@c2
    move-object/from16 v0, v40

    #@c4
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result v6

    #@c8
    if-eqz v6, :cond_7

    #@ca
    .line 1034
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@cd
    move-result-object v6

    #@ce
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@d1
    move-result v15

    #@d2
    .local v15, "autoRemoveRecents":Z
    goto :goto_1

    #@d3
    .line 1035
    .end local v15    # "autoRemoveRecents":Z
    :cond_7
    const-string/jumbo v6, "asked_compat_mode"

    #@d6
    move-object/from16 v0, v40

    #@d8
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@db
    move-result v6

    #@dc
    if-eqz v6, :cond_8

    #@de
    .line 1036
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@e1
    move-result-object v6

    #@e2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@e5
    move-result v16

    #@e6
    .local v16, "askedCompatMode":Z
    goto :goto_1

    #@e7
    .line 1037
    .end local v16    # "askedCompatMode":Z
    :cond_8
    const-string/jumbo v6, "user_id"

    #@ea
    move-object/from16 v0, v40

    #@ec
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ef
    move-result v6

    #@f0
    if-eqz v6, :cond_9

    #@f2
    .line 1038
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@f5
    move-result-object v6

    #@f6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@f9
    move-result v18

    #@fa
    goto/16 :goto_1

    #@fc
    .line 1039
    :cond_9
    const-string/jumbo v6, "effective_uid"

    #@ff
    move-object/from16 v0, v40

    #@101
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@104
    move-result v6

    #@105
    if-eqz v6, :cond_a

    #@107
    .line 1040
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@10a
    move-result-object v6

    #@10b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@10e
    move-result v19

    #@10f
    goto/16 :goto_1

    #@111
    .line 1041
    :cond_a
    const-string/jumbo v6, "task_type"

    #@114
    move-object/from16 v0, v40

    #@116
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@119
    move-result v6

    #@11a
    if-eqz v6, :cond_b

    #@11c
    .line 1042
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@11f
    move-result-object v6

    #@120
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@123
    move-result v17

    #@124
    goto/16 :goto_1

    #@126
    .line 1043
    :cond_b
    const-string/jumbo v6, "first_active_time"

    #@129
    move-object/from16 v0, v40

    #@12b
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12e
    move-result v6

    #@12f
    if-eqz v6, :cond_c

    #@131
    .line 1044
    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@134
    move-result-object v6

    #@135
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@138
    move-result-wide v22

    #@139
    goto/16 :goto_1

    #@13b
    .line 1045
    :cond_c
    const-string/jumbo v6, "last_active_time"

    #@13e
    move-object/from16 v0, v40

    #@140
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@143
    move-result v6

    #@144
    if-eqz v6, :cond_d

    #@146
    .line 1046
    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@149
    move-result-object v6

    #@14a
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@14d
    move-result-wide v24

    #@14e
    goto/16 :goto_1

    #@150
    .line 1047
    :cond_d
    const-string/jumbo v6, "last_description"

    #@153
    move-object/from16 v0, v40

    #@155
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@158
    move-result v6

    #@159
    if-eqz v6, :cond_e

    #@15b
    .line 1048
    move-object/from16 v20, v42

    #@15d
    .local v20, "lastDescription":Ljava/lang/String;
    goto/16 :goto_1

    #@15f
    .line 1049
    .end local v20    # "lastDescription":Ljava/lang/String;
    :cond_e
    const-string/jumbo v6, "last_time_moved"

    #@162
    move-object/from16 v0, v40

    #@164
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@167
    move-result v6

    #@168
    if-eqz v6, :cond_f

    #@16a
    .line 1050
    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@16d
    move-result-object v6

    #@16e
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@171
    move-result-wide v26

    #@172
    goto/16 :goto_1

    #@174
    .line 1051
    :cond_f
    const-string/jumbo v6, "never_relinquish_identity"

    #@177
    move-object/from16 v0, v40

    #@179
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17c
    move-result v6

    #@17d
    if-eqz v6, :cond_10

    #@17f
    .line 1052
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@182
    move-result-object v6

    #@183
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@186
    move-result v28

    #@187
    .local v28, "neverRelinquishIdentity":Z
    goto/16 :goto_1

    #@189
    .line 1053
    .end local v28    # "neverRelinquishIdentity":Z
    :cond_10
    const-string/jumbo v6, "task_description_"

    #@18c
    move-object/from16 v0, v40

    #@18e
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@191
    move-result v6

    #@192
    if-eqz v6, :cond_11

    #@194
    .line 1054
    move-object/from16 v0, v29

    #@196
    move-object/from16 v1, v40

    #@198
    move-object/from16 v2, v42

    #@19a
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    #@19d
    goto/16 :goto_1

    #@19f
    .line 1055
    :cond_11
    const-string/jumbo v6, "task_affiliation"

    #@1a2
    move-object/from16 v0, v40

    #@1a4
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a7
    move-result v6

    #@1a8
    if-eqz v6, :cond_12

    #@1aa
    .line 1056
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@1ad
    move-result-object v6

    #@1ae
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@1b1
    move-result v30

    #@1b2
    goto/16 :goto_1

    #@1b4
    .line 1057
    :cond_12
    const-string/jumbo v6, "prev_affiliation"

    #@1b7
    move-object/from16 v0, v40

    #@1b9
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bc
    move-result v6

    #@1bd
    if-eqz v6, :cond_13

    #@1bf
    .line 1058
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@1c2
    move-result-object v6

    #@1c3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@1c6
    move-result v31

    #@1c7
    goto/16 :goto_1

    #@1c9
    .line 1059
    :cond_13
    const-string/jumbo v6, "next_affiliation"

    #@1cc
    move-object/from16 v0, v40

    #@1ce
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d1
    move-result v6

    #@1d2
    if-eqz v6, :cond_14

    #@1d4
    .line 1060
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@1d7
    move-result-object v6

    #@1d8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@1db
    move-result v32

    #@1dc
    goto/16 :goto_1

    #@1de
    .line 1061
    :cond_14
    const-string/jumbo v6, "task_affiliation_color"

    #@1e1
    move-object/from16 v0, v40

    #@1e3
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e6
    move-result v6

    #@1e7
    if-eqz v6, :cond_15

    #@1e9
    .line 1062
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@1ec
    move-result-object v6

    #@1ed
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@1f0
    move-result v33

    #@1f1
    goto/16 :goto_1

    #@1f3
    .line 1063
    :cond_15
    const-string/jumbo v6, "calling_uid"

    #@1f6
    move-object/from16 v0, v40

    #@1f8
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fb
    move-result v6

    #@1fc
    if-eqz v6, :cond_16

    #@1fe
    .line 1064
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@201
    move-result-object v6

    #@202
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@205
    move-result v34

    #@206
    goto/16 :goto_1

    #@208
    .line 1065
    :cond_16
    const-string/jumbo v6, "calling_package"

    #@20b
    move-object/from16 v0, v40

    #@20d
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@210
    move-result v6

    #@211
    if-eqz v6, :cond_17

    #@213
    .line 1066
    move-object/from16 v35, v42

    #@215
    goto/16 :goto_1

    #@217
    .line 1067
    :cond_17
    const-string/jumbo v6, "resizeable"

    #@21a
    move-object/from16 v0, v40

    #@21c
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21f
    move-result v6

    #@220
    if-eqz v6, :cond_18

    #@222
    .line 1068
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@225
    move-result-object v6

    #@226
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@229
    move-result v36

    #@22a
    .local v36, "resizeable":Z
    goto/16 :goto_1

    #@22c
    .line 1069
    .end local v36    # "resizeable":Z
    :cond_18
    const-string/jumbo v6, "privileged"

    #@22f
    move-object/from16 v0, v40

    #@231
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@234
    move-result v6

    #@235
    if-eqz v6, :cond_19

    #@237
    .line 1070
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@23a
    move-result-object v6

    #@23b
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@23e
    move-result v37

    #@23f
    .local v37, "privileged":Z
    goto/16 :goto_1

    #@241
    .line 1072
    .end local v37    # "privileged":Z
    :cond_19
    const-string/jumbo v6, "ActivityManager"

    #@244
    new-instance v50, Ljava/lang/StringBuilder;

    #@246
    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    #@249
    const-string/jumbo v51, "TaskRecord: Unknown attribute="

    #@24c
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v50

    #@250
    move-object/from16 v0, v50

    #@252
    move-object/from16 v1, v40

    #@254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v50

    #@258
    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25b
    move-result-object v50

    #@25c
    move-object/from16 v0, v50

    #@25e
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@261
    goto/16 :goto_1

    #@263
    .line 1087
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "affinityIntent":Landroid/content/Intent;
    .end local v40    # "attrName":Ljava/lang/String;
    .end local v42    # "attrValue":Ljava/lang/String;
    .local v45, "event":I
    .local v47, "name":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v6, "activity"

    #@266
    move-object/from16 v0, v47

    #@268
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26b
    move-result v6

    #@26c
    if-eqz v6, :cond_1e

    #@26e
    .line 1088
    invoke-static/range {p0 .. p1}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    #@271
    move-result-object v4

    #@272
    .line 1091
    .local v4, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1b

    #@274
    .line 1092
    move-object/from16 v0, v21

    #@276
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@279
    .line 1077
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v45    # "event":I
    .end local v47    # "name":Ljava/lang/String;
    :cond_1b
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@27c
    move-result v45

    #@27d
    .restart local v45    # "event":I
    const/4 v6, 0x1

    #@27e
    move/from16 v0, v45

    #@280
    if-eq v0, v6, :cond_1f

    #@282
    .line 1078
    const/4 v6, 0x3

    #@283
    move/from16 v0, v45

    #@285
    if-ne v0, v6, :cond_1c

    #@287
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@28a
    move-result v6

    #@28b
    move/from16 v0, v48

    #@28d
    if-ge v6, v0, :cond_1f

    #@28f
    .line 1079
    :cond_1c
    const/4 v6, 0x2

    #@290
    move/from16 v0, v45

    #@292
    if-ne v0, v6, :cond_1b

    #@294
    .line 1080
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@297
    move-result-object v47

    #@298
    .line 1083
    .restart local v47    # "name":Ljava/lang/String;
    const-string/jumbo v6, "affinity_intent"

    #@29b
    move-object/from16 v0, v47

    #@29d
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a0
    move-result v6

    #@2a1
    if-eqz v6, :cond_1d

    #@2a3
    .line 1084
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    #@2a6
    move-result-object v9

    #@2a7
    .local v9, "affinityIntent":Landroid/content/Intent;
    goto :goto_2

    #@2a8
    .line 1085
    .end local v9    # "affinityIntent":Landroid/content/Intent;
    :cond_1d
    const-string/jumbo v6, "intent"

    #@2ab
    move-object/from16 v0, v47

    #@2ad
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b0
    move-result v6

    #@2b1
    if-eqz v6, :cond_1a

    #@2b3
    .line 1086
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    #@2b6
    move-result-object v8

    #@2b7
    .local v8, "intent":Landroid/content/Intent;
    goto :goto_2

    #@2b8
    .line 1095
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1e
    const-string/jumbo v6, "ActivityManager"

    #@2bb
    new-instance v50, Ljava/lang/StringBuilder;

    #@2bd
    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    #@2c0
    const-string/jumbo v51, "restoreTask: Unexpected name="

    #@2c3
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v50

    #@2c7
    move-object/from16 v0, v50

    #@2c9
    move-object/from16 v1, v47

    #@2cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v50

    #@2cf
    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d2
    move-result-object v50

    #@2d3
    move-object/from16 v0, v50

    #@2d5
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d8
    .line 1096
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2db
    goto :goto_2

    #@2dc
    .line 1100
    .end local v47    # "name":Ljava/lang/String;
    :cond_1f
    if-nez v46, :cond_23

    #@2de
    .line 1101
    move-object v11, v10

    #@2df
    .line 1105
    :cond_20
    :goto_3
    if-gtz v19, :cond_22

    #@2e1
    .line 1106
    if-eqz v8, :cond_24

    #@2e3
    move-object/from16 v43, v8

    #@2e5
    .line 1107
    .local v43, "checkIntent":Landroid/content/Intent;
    :goto_4
    const/16 v19, 0x0

    #@2e7
    .line 1108
    if-eqz v43, :cond_21

    #@2e9
    .line 1109
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2ec
    move-result-object v49

    #@2ed
    .line 1112
    .local v49, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-virtual/range {v43 .. v43}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@2f0
    move-result-object v6

    #@2f1
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2f4
    move-result-object v6

    #@2f5
    .line 1113
    const/16 v50, 0x2200

    #@2f7
    .line 1111
    move-object/from16 v0, v49

    #@2f9
    move/from16 v1, v50

    #@2fb
    move/from16 v2, v18

    #@2fd
    invoke-interface {v0, v6, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@300
    move-result-object v39

    #@301
    .line 1115
    .local v39, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v39, :cond_21

    #@303
    .line 1116
    move-object/from16 v0, v39

    #@305
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@307
    move/from16 v19, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@309
    .line 1121
    .end local v39    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v49    # "pm":Landroid/content/pm/IPackageManager;
    :cond_21
    :goto_5
    const-string/jumbo v6, "ActivityManager"

    #@30c
    new-instance v50, Ljava/lang/StringBuilder;

    #@30e
    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    #@311
    const-string/jumbo v51, "Updating task #"

    #@314
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v50

    #@318
    move-object/from16 v0, v50

    #@31a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31d
    move-result-object v50

    #@31e
    const-string/jumbo v51, " for "

    #@321
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@324
    move-result-object v50

    #@325
    move-object/from16 v0, v50

    #@327
    move-object/from16 v1, v43

    #@329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32c
    move-result-object v50

    #@32d
    .line 1122
    const-string/jumbo v51, ": effectiveUid="

    #@330
    .line 1121
    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@333
    move-result-object v50

    #@334
    move-object/from16 v0, v50

    #@336
    move/from16 v1, v19

    #@338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33b
    move-result-object v50

    #@33c
    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33f
    move-result-object v50

    #@340
    move-object/from16 v0, v50

    #@342
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@345
    .line 1125
    .end local v43    # "checkIntent":Landroid/content/Intent;
    :cond_22
    new-instance v5, Lcom/android/server/am/TaskRecord;

    #@347
    move-object/from16 v0, p1

    #@349
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@34b
    invoke-direct/range {v5 .. v37}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;ZZ)V

    #@34e
    .line 1132
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@351
    move-result v6

    #@352
    add-int/lit8 v38, v6, -0x1

    #@354
    .local v38, "activityNdx":I
    :goto_6
    if-ltz v38, :cond_25

    #@356
    .line 1133
    move-object/from16 v0, v21

    #@358
    move/from16 v1, v38

    #@35a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35d
    move-result-object v6

    #@35e
    check-cast v6, Lcom/android/server/am/ActivityRecord;

    #@360
    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@362
    .line 1132
    add-int/lit8 v38, v38, -0x1

    #@364
    goto :goto_6

    #@365
    .line 1102
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v38    # "activityNdx":I
    :cond_23
    const-string/jumbo v6, "@"

    #@368
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36b
    move-result v6

    #@36c
    if-eqz v6, :cond_20

    #@36e
    .line 1103
    const/4 v11, 0x0

    #@36f
    .local v11, "rootAffinity":Ljava/lang/String;
    goto/16 :goto_3

    #@371
    .line 1106
    .end local v11    # "rootAffinity":Ljava/lang/String;
    :cond_24
    move-object/from16 v43, v9

    #@373
    .restart local v43    # "checkIntent":Landroid/content/Intent;
    goto/16 :goto_4

    #@375
    .line 1137
    .end local v43    # "checkIntent":Landroid/content/Intent;
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v38    # "activityNdx":I
    :cond_25
    return-object v5

    #@376
    .line 1118
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v38    # "activityNdx":I
    .restart local v43    # "checkIntent":Landroid/content/Intent;
    .restart local v49    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v44

    #@377
    .local v44, "e":Landroid/os/RemoteException;
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
    .line 314
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@5
    if-nez v4, :cond_6

    #@7
    .line 316
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    #@9
    and-int/lit16 v4, v4, 0x1000

    #@b
    if-nez v4, :cond_5

    #@d
    move v4, v5

    #@e
    .line 315
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@10
    .line 321
    :cond_0
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@12
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@14
    .line 322
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@16
    if-nez v4, :cond_1

    #@18
    .line 326
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@1a
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@1c
    .line 328
    :cond_1
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1e
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@20
    iput v4, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    #@22
    .line 329
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    #@24
    .line 331
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@26
    if-nez v4, :cond_8

    #@28
    .line 332
    if-eqz p1, :cond_3

    #@2a
    .line 336
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
    .line 337
    :cond_2
    new-instance v0, Landroid/content/Intent;

    #@38
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@3b
    .line 338
    .end local p1    # "_intent":Landroid/content/Intent;
    .local v0, "_intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    #@3e
    .line 339
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@41
    move-object p1, v0

    #@42
    .line 343
    .end local v0    # "_intent":Landroid/content/Intent;
    .restart local p1    # "_intent":Landroid/content/Intent;
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@44
    .line 344
    if-eqz p1, :cond_7

    #@46
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@49
    move-result-object v4

    #@4a
    :goto_1
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@4c
    .line 345
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@4e
    .line 366
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@50
    if-nez v4, :cond_a

    #@52
    const/4 v1, 0x0

    #@53
    .line 367
    .local v1, "intentFlags":I
    :goto_3
    const/high16 v4, 0x200000

    #@55
    and-int/2addr v4, v1

    #@56
    if-eqz v4, :cond_4

    #@58
    .line 370
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@5a
    .line 373
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
    .line 374
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    #@66
    and-int/lit16 v4, v4, 0x2000

    #@68
    if-eqz v4, :cond_b

    #@6a
    .line 376
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@6c
    .line 390
    :goto_4
    iget-boolean v4, p2, Landroid/content/pm/ActivityInfo;->resizeable:Z

    #@6e
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    #@70
    .line 391
    iget v4, p2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@72
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    #@74
    .line 392
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@76
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@78
    and-int/lit8 v4, v4, 0x8

    #@7a
    if-eqz v4, :cond_e

    #@7c
    :goto_5
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    #@7e
    .line 393
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    #@81
    .line 313
    return-void

    #@82
    .end local v1    # "intentFlags":I
    :cond_5
    move v4, v6

    #@83
    .line 316
    goto :goto_0

    #@84
    .line 317
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@86
    if-eqz v4, :cond_0

    #@88
    .line 318
    return-void

    #@89
    :cond_7
    move-object v4, v7

    #@8a
    .line 344
    goto :goto_1

    #@8b
    .line 347
    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    #@8d
    .line 348
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@8f
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@91
    .line 347
    invoke-direct {v2, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@94
    .line 349
    .local v2, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_9

    #@96
    .line 350
    new-instance v3, Landroid/content/Intent;

    #@98
    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@9b
    .line 351
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@9e
    .line 352
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    #@a1
    .line 353
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@a4
    .line 356
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@a6
    .line 357
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@a8
    .line 358
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@ab
    move-result-object v4

    #@ac
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@ae
    goto :goto_2

    #@af
    .line 360
    .end local v3    # "targetIntent":Landroid/content/Intent;
    :cond_9
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@b1
    .line 361
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@b3
    .line 362
    new-instance v4, Landroid/content/ComponentName;

    #@b5
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@b7
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@b9
    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@bc
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@be
    goto :goto_2

    #@bf
    .line 366
    .end local v2    # "targetComponent":Landroid/content/ComponentName;
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@c1
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    #@c4
    move-result v1

    #@c5
    .restart local v1    # "intentFlags":I
    goto :goto_3

    #@c6
    .line 377
    :cond_b
    const v4, 0x82000

    #@c9
    and-int/2addr v4, v1

    #@ca
    .line 378
    const/high16 v7, 0x80000

    #@cc
    .line 377
    if-ne v4, v7, :cond_d

    #@ce
    .line 382
    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@d0
    if-eqz v4, :cond_c

    #@d2
    .line 383
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@d4
    goto :goto_4

    #@d5
    .line 385
    :cond_c
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@d7
    goto :goto_4

    #@d8
    .line 388
    :cond_d
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@da
    goto :goto_4

    #@db
    :cond_e
    move v5, v6

    #@dc
    .line 392
    goto :goto_5
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 580
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    #@4
    .line 579
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-boolean v0, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 591
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@12
    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 595
    iget v0, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@1c
    iput v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@1e
    .line 596
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    #@21
    move-result v0

    #@22
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@24
    .line 597
    iget v0, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@26
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@28
    .line 598
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@2a
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@2c
    .line 600
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2e
    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@30
    const/4 v1, 0x1

    #@31
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@34
    move-result v0

    #@35
    .line 601
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    #@38
    move-result v1

    #@39
    .line 600
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    #@3f
    .line 606
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@44
    .line 607
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    #@47
    .line 608
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_1

    #@4d
    .line 609
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4f
    const/4 v1, 0x0

    #@50
    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@53
    .line 587
    :cond_1
    return-void

    #@54
    .line 604
    :cond_2
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@56
    iput v0, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@58
    goto :goto_0
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    #@9
    .line 583
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
    .line 633
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

.method closeRecentsChain()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 417
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 418
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@7
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@c
    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 421
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@12
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@17
    .line 423
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@1a
    .line 424
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@1d
    .line 416
    return-void
.end method

.method disposeThumbnail()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 499
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@3
    .line 500
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@5
    .line 498
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
    .line 1141
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
    .line 1142
    const-string/jumbo v0, " effectiveUid="

    #@16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    #@1b
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@1e
    .line 1143
    const-string/jumbo v0, " mCallingUid="

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@26
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@29
    .line 1144
    const-string/jumbo v0, " mCallingPackage="

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 1145
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@36
    if-nez v0, :cond_0

    #@38
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@3a
    if-eqz v0, :cond_1

    #@3c
    .line 1146
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    const-string/jumbo v0, "affinity="

    #@42
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@47
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 1147
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@4c
    if-eqz v0, :cond_10

    #@4e
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@50
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@52
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_10

    #@58
    .line 1150
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@5b
    .line 1153
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@5d
    if-nez v0, :cond_2

    #@5f
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@61
    if-eqz v0, :cond_3

    #@63
    .line 1154
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    const-string/jumbo v0, "VOICE: session=0x"

    #@69
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c
    .line 1155
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@6e
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@71
    move-result v0

    #@72
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@79
    .line 1156
    const-string/jumbo v0, " interactor=0x"

    #@7c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 1157
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@81
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@84
    move-result v0

    #@85
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c
    .line 1159
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@8e
    if-eqz v0, :cond_4

    #@90
    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    #@92
    const/16 v0, 0x80

    #@94
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@97
    .line 1161
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    const-string/jumbo v0, "intent={"

    #@9d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    .line 1162
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@a2
    move v4, v2

    #@a3
    move v5, v3

    #@a4
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@a7
    .line 1163
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@aa
    .line 1164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v0

    #@ae
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b1
    .line 1166
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@b3
    if-eqz v0, :cond_5

    #@b5
    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    #@b7
    const/16 v0, 0x80

    #@b9
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@bc
    .line 1168
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    const-string/jumbo v0, "affinityIntent={"

    #@c2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    .line 1169
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@c7
    move v4, v2

    #@c8
    move v5, v3

    #@c9
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@cc
    .line 1170
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@cf
    .line 1171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v0

    #@d3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d6
    .line 1173
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@d8
    if-eqz v0, :cond_6

    #@da
    .line 1174
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dd
    const-string/jumbo v0, "origActivity="

    #@e0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e3
    .line 1175
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@e5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@e8
    move-result-object v0

    #@e9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ec
    .line 1177
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@ee
    if-eqz v0, :cond_7

    #@f0
    .line 1178
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f3
    const-string/jumbo v0, "realActivity="

    #@f6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f9
    .line 1179
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@fb
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@fe
    move-result-object v0

    #@ff
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@102
    .line 1181
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@104
    if-nez v0, :cond_8

    #@106
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@108
    if-nez v0, :cond_8

    #@10a
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@10c
    if-eqz v0, :cond_11

    #@10e
    .line 1183
    :cond_8
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@111
    const-string/jumbo v0, "autoRemoveRecents="

    #@114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@117
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@119
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@11c
    .line 1184
    const-string/jumbo v0, " isPersistable="

    #@11f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@124
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@127
    .line 1185
    const-string/jumbo v0, " numFullscreen="

    #@12a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12d
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@12f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@132
    .line 1186
    const-string/jumbo v0, " taskType="

    #@135
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@138
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@13a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@13d
    .line 1187
    const-string/jumbo v0, " mTaskToReturnTo="

    #@140
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@148
    .line 1189
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@14a
    if-nez v0, :cond_a

    #@14c
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@14e
    if-nez v0, :cond_a

    #@150
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@152
    if-nez v0, :cond_a

    #@154
    .line 1190
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@156
    if-eq v0, v3, :cond_b

    #@158
    .line 1191
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    const-string/jumbo v0, "rootWasReset="

    #@15e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@163
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@166
    .line 1192
    const-string/jumbo v0, " mNeverRelinquishIdentity="

    #@169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@16e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@171
    .line 1193
    const-string/jumbo v0, " mReuseTask="

    #@174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@177
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@179
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@17c
    .line 1194
    const-string/jumbo v0, " mLockTaskAuth="

    #@17f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@182
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    #@185
    move-result-object v0

    #@186
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@189
    .line 1196
    :cond_b
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@18b
    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@18d
    if-ne v0, v2, :cond_c

    #@18f
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@191
    if-eq v0, v6, :cond_12

    #@193
    .line 1199
    :cond_c
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@196
    const-string/jumbo v0, "affiliation="

    #@199
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19c
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@19e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1a1
    .line 1200
    const-string/jumbo v0, " prevAffiliation="

    #@1a4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a7
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@1a9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1ac
    .line 1201
    const-string/jumbo v0, " ("

    #@1af
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b2
    .line 1202
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@1b4
    if-nez v0, :cond_13

    #@1b6
    .line 1203
    const-string/jumbo v0, "null"

    #@1b9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1bc
    .line 1207
    :goto_3
    const-string/jumbo v0, ") nextAffiliation="

    #@1bf
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c2
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@1c4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1c7
    .line 1208
    const-string/jumbo v0, " ("

    #@1ca
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cd
    .line 1209
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@1cf
    if-nez v0, :cond_14

    #@1d1
    .line 1210
    const-string/jumbo v0, "null"

    #@1d4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d7
    .line 1214
    :goto_4
    const-string/jumbo v0, ")"

    #@1da
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1dd
    .line 1216
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e0
    const-string/jumbo v0, "Activities="

    #@1e3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1e8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1eb
    .line 1217
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    #@1ed
    if-eqz v0, :cond_15

    #@1ef
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@1f1
    if-eqz v0, :cond_15

    #@1f3
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@1f5
    if-eqz v0, :cond_15

    #@1f7
    .line 1222
    :goto_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fa
    const-string/jumbo v0, "lastThumbnail="

    #@1fd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@200
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@202
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@205
    .line 1223
    const-string/jumbo v0, " lastThumbnailFile="

    #@208
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20b
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@20d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@210
    .line 1224
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@212
    if-eqz v0, :cond_e

    #@214
    .line 1225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@217
    const-string/jumbo v0, "lastDescription="

    #@21a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21d
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@21f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@222
    .line 1227
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@224
    if-eqz v0, :cond_f

    #@226
    .line 1228
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@229
    const-string/jumbo v0, "stackId="

    #@22c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22f
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@231
    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@233
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@236
    .line 1230
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@239
    const-string/jumbo v0, "hasBeenVisible="

    #@23c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23f
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    #@241
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@244
    .line 1231
    const-string/jumbo v0, " mResizeable="

    #@247
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24a
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    #@24c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@24f
    .line 1232
    const-string/jumbo v0, " firstActiveTime="

    #@252
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@255
    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@257
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@25a
    .line 1233
    const-string/jumbo v0, " lastActiveTime="

    #@25d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@260
    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@262
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@265
    .line 1234
    const-string/jumbo v0, " (inactive for "

    #@268
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26b
    .line 1235
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    #@26e
    move-result-wide v2

    #@26f
    const-wide/16 v4, 0x3e8

    #@271
    div-long/2addr v2, v4

    #@272
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@275
    const-string/jumbo v0, "s)"

    #@278
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@27b
    .line 1140
    return-void

    #@27c
    .line 1148
    :cond_10
    const-string/jumbo v0, " root="

    #@27f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@282
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@284
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@287
    goto/16 :goto_0

    #@289
    .line 1181
    :cond_11
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@28b
    if-nez v0, :cond_8

    #@28d
    .line 1182
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@28f
    if-eqz v0, :cond_9

    #@291
    goto/16 :goto_1

    #@293
    .line 1197
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@295
    if-nez v0, :cond_c

    #@297
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@299
    if-ne v0, v6, :cond_c

    #@29b
    .line 1198
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@29d
    if-eqz v0, :cond_d

    #@29f
    goto/16 :goto_2

    #@2a1
    .line 1205
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@2a3
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@2a6
    move-result v0

    #@2a7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2aa
    move-result-object v0

    #@2ab
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ae
    goto/16 :goto_3

    #@2b0
    .line 1212
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@2b2
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@2b5
    move-result v0

    #@2b6
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2b9
    move-result-object v0

    #@2ba
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bd
    goto/16 :goto_4

    #@2bf
    .line 1218
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c2
    const-string/jumbo v0, "askedCompatMode="

    #@2c5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c8
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    #@2ca
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@2cd
    .line 1219
    const-string/jumbo v0, " inRecents="

    #@2d0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d3
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@2d5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@2d8
    .line 1220
    const-string/jumbo v0, " isAvailable="

    #@2db
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2de
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    #@2e0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@2e3
    goto/16 :goto_5
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 821
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@2
    .line 822
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
    .line 823
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@14
    .line 824
    .local v1, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 822
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 827
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@1d
    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 828
    return-object v1

    #@24
    .line 831
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
    .line 887
    const/4 v1, 0x0

    #@1
    .line 888
    .local v1, "effectiveNdx":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v3, v4, -0x1

    #@9
    .line 889
    .local v3, "topActivityNdx":I
    const/4 v0, 0x0

    #@a
    .local v0, "activityNdx":I
    :goto_0
    if-gt v0, v3, :cond_2

    #@c
    .line 890
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@14
    .line 891
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 889
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 894
    :cond_1
    move v1, v0

    #@1c
    .line 895
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1e
    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    #@20
    and-int/lit16 v4, v4, 0x1000

    #@22
    if-nez v4, :cond_0

    #@24
    .line 899
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v1
.end method

.method freeLastThumbnail()V
    .locals 1

    #@0
    .prologue
    .line 495
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@3
    .line 494
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 505
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
    .line 302
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
    .line 479
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@3
    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    #@5
    .line 480
    iput-object v2, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@7
    .line 481
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 482
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@d
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@f
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@11
    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    #@17
    .line 485
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    #@19
    if-nez v1, :cond_1

    #@1b
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@1d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@25
    .line 488
    const/high16 v2, 0x10000000

    #@27
    .line 487
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 478
    :cond_1
    :goto_0
    return-void

    #@2e
    .line 489
    :catch_0
    move-exception v0

    #@2f
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    #@0
    .prologue
    .line 510
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
    .line 511
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@11
    .line 512
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 510
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 515
    :cond_0
    return-object v1

    #@19
    .line 517
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
    .line 730
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 731
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6
    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@8
    .line 732
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@a
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@c
    if-ne v3, p0, :cond_0

    #@e
    .line 733
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@10
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    #@13
    move-result-object v2

    #@14
    .line 734
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    #@17
    .line 737
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskThumbnail;

    #@19
    invoke-direct {v1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>()V

    #@1c
    .line 738
    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V

    #@1f
    .line 739
    return-object v1
.end method

.method getTaskToReturnTo()I
    .locals 1

    #@0
    .prologue
    .line 402
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@2
    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    #@0
    .prologue
    .line 521
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
    .line 522
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@12
    .line 523
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 521
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 526
    :cond_0
    return-object v1

    #@1a
    .line 528
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    #@1b
    return-object v2
.end method

.method isApplicationTask()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 809
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
    .line 805
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
    const/4 v5, 0x0

    #@1
    .line 789
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@3
    if-eqz v3, :cond_0

    #@5
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@7
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 790
    :goto_0
    if-nez v2, :cond_1

    #@d
    .line 791
    return v5

    #@e
    .line 789
    :cond_0
    const/4 v2, 0x0

    #@f
    .local v2, "pkg":Ljava/lang/String;
    goto :goto_0

    #@10
    .line 793
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    #@14
    iget v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@16
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, [Ljava/lang/String;

    #@1c
    .line 794
    .local v1, "packages":[Ljava/lang/String;
    if-nez v1, :cond_2

    #@1e
    .line 795
    return v5

    #@1f
    .line 797
    :cond_2
    array-length v3, v1

    #@20
    add-int/lit8 v0, v3, -0x1

    #@22
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    #@24
    .line 798
    aget-object v3, v1, v0

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_3

    #@2c
    .line 799
    const/4 v3, 0x1

    #@2d
    return v3

    #@2e
    .line 797
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@30
    goto :goto_1

    #@31
    .line 802
    :cond_4
    return v5
.end method

.method isOverHomeStack()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 813
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

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 748
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 754
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
    .line 749
    :pswitch_0
    const-string/jumbo v0, "LOCK_TASK_AUTH_DONT_LOCK"

    #@1f
    return-object v0

    #@20
    .line 750
    :pswitch_1
    const-string/jumbo v0, "LOCK_TASK_AUTH_PINNABLE"

    #@23
    return-object v0

    #@24
    .line 751
    :pswitch_2
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    #@27
    return-object v0

    #@28
    .line 752
    :pswitch_3
    const-string/jumbo v0, "LOCK_TASK_AUTH_WHITELISTED"

    #@2b
    return-object v0

    #@2c
    .line 753
    :pswitch_4
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    #@2f
    return-object v0

    #@30
    .line 748
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
    .line 572
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 573
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 574
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    #@d
    .line 576
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    #@10
    .line 567
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
    .line 641
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v6

    #@8
    .line 642
    .local v6, "numActivities":I
    :goto_0
    if-ge p1, v6, :cond_3

    #@a
    .line 643
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@12
    .line 644
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 642
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 647
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 649
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    #@20
    .line 650
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@25
    .line 651
    add-int/lit8 p1, p1, -0x1

    #@27
    .line 652
    add-int/lit8 v6, v6, -0x1

    #@29
    goto :goto_1

    #@2a
    .line 653
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@2c
    .line 654
    const-string/jumbo v4, "clear-task-index"

    #@2f
    move v5, v2

    #@30
    .line 653
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_0

    #@36
    .line 655
    add-int/lit8 p1, p1, -0x1

    #@38
    .line 656
    add-int/lit8 v6, v6, -0x1

    #@3a
    goto :goto_1

    #@3b
    .line 640
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 12
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v9

    #@6
    .line 683
    .local v9, "numActivities":I
    add-int/lit8 v8, v9, -0x1

    #@8
    .local v8, "activityNdx":I
    :goto_0
    if-ltz v8, :cond_8

    #@a
    .line 684
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@12
    .line 685
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 683
    :cond_0
    add-int/lit8 v8, v8, -0x1

    #@18
    goto :goto_0

    #@19
    .line 688
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
    .line 690
    move-object v11, v1

    #@24
    .line 692
    .local v11, "ret":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v8, v8, 0x1

    #@26
    :goto_1
    if-ge v8, v9, :cond_5

    #@28
    .line 693
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@30
    .line 694
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 692
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@36
    goto :goto_1

    #@37
    .line 697
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    #@3a
    move-result-object v10

    #@3b
    .line 698
    .local v10, "opts":Landroid/app/ActivityOptions;
    if-eqz v10, :cond_4

    #@3d
    .line 699
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    #@40
    .line 701
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@42
    if-eqz v0, :cond_2

    #@44
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@46
    .line 702
    const-string/jumbo v4, "clear-task-stack"

    #@49
    const/4 v2, 0x0

    #@4a
    const/4 v3, 0x0

    #@4b
    const/4 v5, 0x0

    #@4c
    .line 701
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_2

    #@52
    .line 703
    add-int/lit8 v8, v8, -0x1

    #@54
    .line 704
    add-int/lit8 v9, v9, -0x1

    #@56
    goto :goto_2

    #@57
    .line 711
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@59
    if-nez v0, :cond_7

    #@5b
    .line 712
    const/high16 v0, 0x20000000

    #@5d
    and-int/2addr v0, p2

    #@5e
    if-nez v0, :cond_7

    #@60
    .line 713
    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@62
    if-nez v0, :cond_7

    #@64
    .line 714
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@66
    if-eqz v0, :cond_6

    #@68
    .line 715
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6a
    .line 716
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
    .line 715
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@74
    .line 718
    :cond_6
    const/4 v0, 0x0

    #@75
    return-object v0

    #@76
    .line 722
    :cond_7
    return-object v11

    #@77
    .line 726
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
    .line 665
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@4
    .line 666
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    #@7
    .line 667
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@9
    .line 664
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 615
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
    .line 617
    iget v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    iput v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@13
    .line 619
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 620
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1b
    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@1e
    .line 622
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_3

    #@26
    .line 623
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    #@28
    if-eqz v1, :cond_2

    #@2a
    :goto_0
    return v0

    #@2b
    :cond_2
    const/4 v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 625
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    #@30
    .line 626
    return v0
.end method

.method public removeTaskActivitiesLocked()V
    .locals 1

    #@0
    .prologue
    .line 744
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    #@4
    .line 742
    return-void
.end method

.method removedFromRecents()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 428
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    #@4
    .line 429
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    #@7
    .line 430
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 431
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@d
    .line 432
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@f
    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@12
    .line 427
    :cond_0
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
    .line 911
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
    .line 912
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 913
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
    .line 915
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@21
    if-eqz v4, :cond_1

    #@23
    .line 916
    const-string/jumbo v4, "orig_activity"

    #@26
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@28
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 922
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@31
    if-eqz v4, :cond_8

    #@33
    .line 923
    const-string/jumbo v4, "affinity"

    #@36
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@38
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 924
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@3d
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v4

    #@43
    if-nez v4, :cond_2

    #@45
    .line 925
    const-string/jumbo v5, "root_affinity"

    #@48
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@4a
    if-eqz v4, :cond_7

    #@4c
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@4e
    :goto_0
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@51
    .line 930
    :cond_2
    :goto_1
    const-string/jumbo v4, "root_has_reset"

    #@54
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@56
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5d
    .line 931
    const-string/jumbo v4, "auto_remove_recents"

    #@60
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    #@62
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@69
    .line 932
    const-string/jumbo v4, "asked_compat_mode"

    #@6c
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    #@6e
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@75
    .line 933
    const-string/jumbo v4, "user_id"

    #@78
    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@7a
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@81
    .line 934
    const-string/jumbo v4, "effective_uid"

    #@84
    iget v5, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    #@86
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8d
    .line 935
    const-string/jumbo v4, "task_type"

    #@90
    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@92
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@99
    .line 936
    const-string/jumbo v4, "first_active_time"

    #@9c
    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    #@9e
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@a1
    move-result-object v5

    #@a2
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a5
    .line 937
    const-string/jumbo v4, "last_active_time"

    #@a8
    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@aa
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@ad
    move-result-object v5

    #@ae
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b1
    .line 938
    const-string/jumbo v4, "last_time_moved"

    #@b4
    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@b6
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@bd
    .line 939
    const-string/jumbo v4, "never_relinquish_identity"

    #@c0
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    #@c2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@c5
    move-result-object v5

    #@c6
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c9
    .line 940
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@cb
    if-eqz v4, :cond_3

    #@cd
    .line 941
    const-string/jumbo v4, "last_description"

    #@d0
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@d2
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d5
    move-result-object v5

    #@d6
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d9
    .line 943
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@db
    if-eqz v4, :cond_4

    #@dd
    .line 944
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@df
    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@e2
    .line 946
    :cond_4
    const-string/jumbo v4, "task_affiliation_color"

    #@e5
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    #@e7
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@ea
    move-result-object v5

    #@eb
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ee
    .line 947
    const-string/jumbo v4, "task_affiliation"

    #@f1
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@f3
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@f6
    move-result-object v5

    #@f7
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@fa
    .line 948
    const-string/jumbo v4, "prev_affiliation"

    #@fd
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@ff
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@102
    move-result-object v5

    #@103
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@106
    .line 949
    const-string/jumbo v4, "next_affiliation"

    #@109
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@10b
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@10e
    move-result-object v5

    #@10f
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@112
    .line 950
    const-string/jumbo v4, "calling_uid"

    #@115
    iget v5, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@117
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@11a
    move-result-object v5

    #@11b
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11e
    .line 951
    const-string/jumbo v5, "calling_package"

    #@121
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@123
    if-nez v4, :cond_a

    #@125
    const-string/jumbo v4, ""

    #@128
    :goto_2
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12b
    .line 952
    const-string/jumbo v4, "resizeable"

    #@12e
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    #@130
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@133
    move-result-object v5

    #@134
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@137
    .line 953
    const-string/jumbo v4, "privileged"

    #@13a
    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    #@13c
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@13f
    move-result-object v5

    #@140
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@143
    .line 955
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@145
    if-eqz v4, :cond_5

    #@147
    .line 956
    const-string/jumbo v4, "affinity_intent"

    #@14a
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@14d
    .line 957
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@14f
    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@152
    .line 958
    const-string/jumbo v4, "affinity_intent"

    #@155
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@158
    .line 961
    :cond_5
    const-string/jumbo v4, "intent"

    #@15b
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15e
    .line 962
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@160
    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@163
    .line 963
    const-string/jumbo v4, "intent"

    #@166
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@169
    .line 965
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@16b
    .line 966
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@16e
    move-result v2

    #@16f
    .line 967
    .local v2, "numActivities":I
    const/4 v1, 0x0

    #@170
    .local v1, "activityNdx":I
    :goto_3
    if-ge v1, v2, :cond_6

    #@172
    .line 968
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@175
    move-result-object v3

    #@176
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@178
    .line 969
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@17a
    iget v4, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@17c
    if-eqz v4, :cond_6

    #@17e
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    #@181
    move-result v4

    #@182
    if-eqz v4, :cond_6

    #@184
    .line 970
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@186
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    #@189
    move-result v4

    #@18a
    and-int/2addr v4, v9

    #@18b
    or-int/lit16 v4, v4, 0x2000

    #@18d
    if-ne v4, v9, :cond_b

    #@18f
    .line 972
    if-lez v1, :cond_b

    #@191
    .line 908
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    return-void

    #@192
    .line 925
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "numActivities":I
    :cond_7
    const-string/jumbo v4, "@"

    #@195
    goto/16 :goto_0

    #@197
    .line 927
    :cond_8
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@199
    if-eqz v4, :cond_2

    #@19b
    .line 928
    const-string/jumbo v5, "root_affinity"

    #@19e
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@1a0
    if-eqz v4, :cond_9

    #@1a2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@1a4
    :goto_4
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1a7
    goto/16 :goto_1

    #@1a9
    :cond_9
    const-string/jumbo v4, "@"

    #@1ac
    goto :goto_4

    #@1ad
    .line 951
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@1af
    goto/16 :goto_2

    #@1b1
    .line 976
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_b
    const-string/jumbo v4, "activity"

    #@1b4
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b7
    .line 977
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@1ba
    .line 978
    const-string/jumbo v4, "activity"

    #@1bd
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c0
    .line 967
    add-int/lit8 v1, v1, 0x1

    #@1c2
    goto :goto_3
.end method

.method final setFrontOfTask()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 545
    const/4 v1, 0x0

    #@3
    .line 546
    .local v1, "foundFront":Z
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    .line 547
    .local v2, "numActivities":I
    const/4 v0, 0x0

    #@a
    .local v0, "activityNdx":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@c
    .line 548
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@14
    .line 549
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    #@16
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 550
    :cond_0
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@1c
    .line 547
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 552
    :cond_1
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@21
    .line 554
    const/4 v1, 0x1

    #@22
    goto :goto_1

    #@23
    .line 557
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-nez v1, :cond_3

    #@25
    if-lez v2, :cond_3

    #@27
    .line 560
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@2f
    iput-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@31
    .line 544
    :cond_3
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 307
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@2
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@4
    .line 308
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@6
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@8
    .line 309
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@a
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@c
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    #@f
    .line 306
    return-void
.end method

.method setLastThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@2
    if-eq v0, p1, :cond_2

    #@4
    .line 465
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    #@6
    .line 466
    if-nez p1, :cond_1

    #@8
    .line 467
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 468
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    #@e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@11
    .line 473
    :cond_0
    :goto_0
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    #@15
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    #@17
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    #@19
    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    #@1c
    goto :goto_0

    #@1d
    .line 475
    :cond_2
    const/4 v0, 0x0

    #@1e
    return v0
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
    .line 759
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    #@5
    if-nez v2, :cond_1

    #@7
    .line 760
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    #@9
    if-eq v2, v1, :cond_0

    #@b
    .line 761
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    #@d
    if-ne v2, v0, :cond_1

    #@f
    .line 763
    :cond_0
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    #@11
    .line 765
    :cond_1
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    #@13
    packed-switch v2, :pswitch_data_0

    #@16
    .line 758
    :goto_0
    return-void

    #@17
    .line 767
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 768
    const/4 v0, 0x3

    #@1e
    .line 767
    :cond_2
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@20
    goto :goto_0

    #@21
    .line 772
    :pswitch_1
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@23
    goto :goto_0

    #@24
    .line 776
    :pswitch_2
    const/4 v0, 0x4

    #@25
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@27
    goto :goto_0

    #@28
    .line 780
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
    .line 765
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
    .line 411
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@2
    .line 412
    if-nez p1, :cond_0

    #@4
    const/4 v0, -0x1

    #@5
    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@7
    .line 410
    return-void

    #@8
    .line 412
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
    .line 406
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@2
    .line 407
    if-nez p1, :cond_0

    #@4
    const/4 v0, -0x1

    #@5
    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@7
    .line 405
    return-void

    #@8
    .line 407
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
    .line 437
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    #@4
    .line 438
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@6
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@8
    .line 439
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    #@a
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    #@c
    .line 441
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 442
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    #@12
    .line 443
    .local v0, "nextRecents":Lcom/android/server/am/TaskRecord;
    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@14
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@16
    if-eq v1, v2, :cond_2

    #@18
    .line 444
    const-string/jumbo v1, "ActivityManager"

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    const-string/jumbo v3, " affilTaskId="

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 445
    iget v3, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@34
    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 445
    const-string/jumbo v3, " should be "

    #@3b
    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 445
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@41
    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 446
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    #@4e
    if-ne v1, p1, :cond_0

    #@50
    .line 447
    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@53
    .line 449
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@56
    .line 454
    .end local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@59
    .line 455
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@5c
    .line 456
    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@5f
    .line 436
    return-void

    #@60
    .line 452
    .restart local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_2
    move-object p1, v0

    #@61
    goto :goto_0
.end method

.method setTaskToReturnTo(I)V
    .locals 1
    .param p1, "taskToReturnTo"    # I

    #@0
    .prologue
    .line 397
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 398
    const/4 p1, 0x1

    #@4
    .line 397
    .end local p1    # "taskToReturnTo":I
    :cond_0
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    #@6
    .line 396
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1241
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1242
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 1243
    const-string/jumbo v1, " U="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 1244
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    .line 1245
    const-string/jumbo v1, " sz="

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 1246
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    .line 1247
    const/16 v1, 0x7d

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 1248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 1250
    :cond_0
    const-string/jumbo v1, "TaskRecord{"

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 1251
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3d
    move-result v1

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 1252
    const-string/jumbo v1, " #"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 1253
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    .line 1254
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@52
    if-eqz v1, :cond_1

    #@54
    .line 1255
    const-string/jumbo v1, " A="

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 1256
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 1266
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    #@65
    .line 1267
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    return-object v1

    #@6a
    .line 1257
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@6c
    if-eqz v1, :cond_2

    #@6e
    .line 1258
    const-string/jumbo v1, " I="

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 1259
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@76
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    goto :goto_0

    #@82
    .line 1260
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@84
    if-eqz v1, :cond_3

    #@86
    .line 1261
    const-string/jumbo v1, " aI="

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 1262
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@8e
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    goto :goto_0

    #@9a
    .line 1264
    :cond_3
    const-string/jumbo v1, " ??"

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    goto :goto_0
.end method

.method topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 532
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 533
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
    .line 534
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@17
    .line 535
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@19
    if-nez v2, :cond_0

    #@1b
    if-eq v1, p1, :cond_0

    #@1d
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1f
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 536
    return-object v1

    #@26
    .line 533
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@28
    goto :goto_0

    #@29
    .line 540
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v3
.end method

.method touchActiveTime()V
    .locals 4

    #@0
    .prologue
    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@6
    .line 296
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    #@8
    const-wide/16 v2, 0x0

    #@a
    cmp-long v0, v0, v2

    #@c
    if-nez v0, :cond_0

    #@e
    .line 297
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@10
    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    #@12
    .line 294
    :cond_0
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 3

    #@0
    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    #@3
    move-result v0

    #@4
    .line 904
    .local v0, "effectiveRootIndex":I
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@c
    .line 905
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@f
    .line 902
    return-void
.end method

.method updateTaskDescription()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 839
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    .line 840
    .local v4, "numActivities":I
    if-nez v4, :cond_4

    #@9
    const/4 v6, 0x0

    #@a
    .line 842
    .local v6, "relinquish":Z
    :goto_0
    const/4 v7, 0x1

    #@b
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    #@e
    move-result v0

    #@f
    .local v0, "activityNdx":I
    :goto_1
    if-ge v0, v4, :cond_0

    #@11
    .line 844
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    #@19
    .line 845
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_6

    #@1b
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1d
    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    #@1f
    and-int/lit16 v7, v7, 0x1000

    #@21
    if-nez v7, :cond_6

    #@23
    .line 848
    add-int/lit8 v0, v0, 0x1

    #@25
    .line 856
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-lez v0, :cond_9

    #@27
    .line 861
    const/4 v3, 0x0

    #@28
    .line 862
    .local v3, "label":Ljava/lang/String;
    const/4 v2, 0x0

    #@29
    .line 863
    .local v2, "iconFilename":Ljava/lang/String;
    const/4 v1, 0x0

    #@2a
    .line 864
    .local v1, "colorPrimary":I
    add-int/lit8 v0, v0, -0x1

    #@2c
    .end local v2    # "iconFilename":Ljava/lang/String;
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    if-ltz v0, :cond_8

    #@2e
    .line 865
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v5

    #@34
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    #@36
    .line 866
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@38
    if-eqz v7, :cond_3

    #@3a
    .line 867
    if-nez v3, :cond_1

    #@3c
    .line 868
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@3e
    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    .line 870
    :cond_1
    if-nez v2, :cond_2

    #@44
    .line 871
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@46
    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 873
    :cond_2
    if-nez v1, :cond_3

    #@4c
    .line 874
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@4e
    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    #@51
    move-result v1

    #@52
    .line 864
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@54
    goto :goto_2

    #@55
    .line 841
    .end local v0    # "activityNdx":I
    .end local v1    # "colorPrimary":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "relinquish":Z
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5a
    move-result-object v7

    #@5b
    check-cast v7, Lcom/android/server/am/ActivityRecord;

    #@5d
    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@5f
    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    #@61
    and-int/lit16 v7, v7, 0x1000

    #@63
    if-eqz v7, :cond_5

    #@65
    const/4 v6, 0x1

    #@66
    .restart local v6    # "relinquish":Z
    goto :goto_0

    #@67
    .end local v6    # "relinquish":Z
    :cond_5
    const/4 v6, 0x0

    #@68
    .restart local v6    # "relinquish":Z
    goto :goto_0

    #@69
    .line 851
    .restart local v0    # "activityNdx":I
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@6b
    if-eqz v7, :cond_7

    #@6d
    .line 852
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@6f
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    #@72
    move-result v7

    #@73
    const/high16 v8, 0x80000

    #@75
    and-int/2addr v7, v8

    #@76
    if-nez v7, :cond_0

    #@78
    .line 843
    :cond_7
    add-int/lit8 v0, v0, 0x1

    #@7a
    goto :goto_1

    #@7b
    .line 878
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "colorPrimary":I
    :cond_8
    new-instance v7, Landroid/app/ActivityManager$TaskDescription;

    #@7d
    invoke-direct {v7, v3, v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@80
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@82
    .line 880
    iget v7, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@84
    iget v8, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    #@86
    if-ne v7, v8, :cond_9

    #@88
    .line 881
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    #@8a
    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    #@8d
    move-result v7

    #@8e
    iput v7, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    #@90
    .line 835
    .end local v1    # "colorPrimary":I
    :cond_9
    return-void
.end method
